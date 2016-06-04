; ModuleID = 'local-alloc.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qty = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.equivalence = type { i8, %struct.rtx_def*, %struct.rtx_def**, i32, %struct.rtx_def* }
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
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
%struct.anon = type { i32, i32 }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@recorded_label_ref = internal global i32 0, align 4
@max_regno = external global i32, align 4
@qty = internal global %struct.qty* null, align 8
@qty_phys_copy_sugg = internal global i64* null, align 8
@qty_phys_num_copy_sugg = internal global i16* null, align 8
@qty_phys_sugg = internal global i64* null, align 8
@qty_phys_num_sugg = internal global i16* null, align 8
@reg_qty = internal global i32* null, align 8
@reg_offset = internal global i8* null, align 8
@reg_next_in_qty = internal global i32* null, align 8
@reg_n_info = external global %struct.varray_head_tag*, align 8
@next_qty = internal global i32 0, align 4
@n_basic_blocks = external global i32, align 4
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@reg_renumber = common global i16* null, align 8
@.str = private unnamed_addr constant [23 x i8] c";; Register %d in %d.\0A\00", align 1
@reg_equiv = internal global %struct.equivalence* null, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@rtx_class = external constant [153 x i8], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@optimize = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"local-alloc.c\00", align 1
@__FUNCTION__.update_equiv_regs = private unnamed_addr constant [18 x i8] c"update_equiv_regs\00", align 1
@cfun = external global %struct.function*, align 8
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@equiv_mem = internal global %struct.rtx_def* null, align 8
@equiv_mem_modified = internal global i32 0, align 4
@__FUNCTION__.block_alloc = private unnamed_addr constant [12 x i8] c"block_alloc\00", align 1
@regs_live_at = internal global i64* null, align 8
@regs_live = internal global i64 0, align 8
@this_insn_number = internal global i32 0, align 4
@this_insn = internal global %struct.rtx_def* null, align 8
@which_alternative = external global i32, align 4
@recog_data = external global %struct.recog_data, align 8
@call_used_regs = external global [53 x i8], align 16
@flag_schedule_insns_after_reload = external global i32, align 4
@optimize_size = external global i32, align 4
@_sch_istable = external constant [256 x i16], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@mode_class = external constant [59 x i32], align 16
@x86_partial_reg_stall = external constant i32, align 4
@ix86_cpu = external global i32, align 4
@find_free_reg.eliminables = internal constant [4 x %struct.anon] [%struct.anon { i32 16, i32 7 }, %struct.anon { i32 16, i32 6 }, %struct.anon { i32 20, i32 7 }, %struct.anon { i32 20, i32 6 }], align 16
@__FUNCTION__.find_free_reg = private unnamed_addr constant [14 x i8] c"find_free_reg\00", align 1
@call_fixed_reg_set = external global i64, align 8
@fixed_reg_set = external global i64, align 8
@call_used_reg_set = external global i64, align 8
@losing_caller_save_reg_set = external global i64, align 8
@reg_class_contents = external global [25 x i64], align 16
@reg_alloc_order = external global [53 x i32], align 16
@flag_caller_saves = external global i32, align 4
@caller_save_needed = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @local_alloc() #0 {
entry:
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %max_qty = alloca i32, align 4
  store i32 0, i32* @recorded_label_ref, align 4
  call void @x86_order_regs_for_local_alloc()
  call void @update_equiv_regs()
  %0 = load i32, i32* @max_regno, align 4
  %sub = sub nsw i32 %0, 53
  store i32 %sub, i32* %max_qty, align 4
  %1 = load i32, i32* %max_qty, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 44
  %call = call noalias i8* @xmalloc(i64 %mul)
  %2 = bitcast i8* %call to %struct.qty*
  store %struct.qty* %2, %struct.qty** @qty, align 8
  %3 = load i32, i32* %max_qty, align 4
  %conv1 = sext i32 %3 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call noalias i8* @xmalloc(i64 %mul2)
  %4 = bitcast i8* %call3 to i64*
  store i64* %4, i64** @qty_phys_copy_sugg, align 8
  %5 = load i32, i32* %max_qty, align 4
  %conv4 = sext i32 %5 to i64
  %mul5 = mul i64 %conv4, 2
  %call6 = call noalias i8* @xmalloc(i64 %mul5)
  %6 = bitcast i8* %call6 to i16*
  store i16* %6, i16** @qty_phys_num_copy_sugg, align 8
  %7 = load i32, i32* %max_qty, align 4
  %conv7 = sext i32 %7 to i64
  %mul8 = mul i64 %conv7, 8
  %call9 = call noalias i8* @xmalloc(i64 %mul8)
  %8 = bitcast i8* %call9 to i64*
  store i64* %8, i64** @qty_phys_sugg, align 8
  %9 = load i32, i32* %max_qty, align 4
  %conv10 = sext i32 %9 to i64
  %mul11 = mul i64 %conv10, 2
  %call12 = call noalias i8* @xmalloc(i64 %mul11)
  %10 = bitcast i8* %call12 to i16*
  store i16* %10, i16** @qty_phys_num_sugg, align 8
  %11 = load i32, i32* @max_regno, align 4
  %conv13 = sext i32 %11 to i64
  %mul14 = mul i64 %conv13, 4
  %call15 = call noalias i8* @xmalloc(i64 %mul14)
  %12 = bitcast i8* %call15 to i32*
  store i32* %12, i32** @reg_qty, align 8
  %13 = load i32, i32* @max_regno, align 4
  %conv16 = sext i32 %13 to i64
  %mul17 = mul i64 %conv16, 1
  %call18 = call noalias i8* @xmalloc(i64 %mul17)
  store i8* %call18, i8** @reg_offset, align 8
  %14 = load i32, i32* @max_regno, align 4
  %conv19 = sext i32 %14 to i64
  %mul20 = mul i64 %conv19, 4
  %call21 = call noalias i8* @xmalloc(i64 %mul20)
  %15 = bitcast i8* %call21 to i32*
  store i32* %15, i32** @reg_next_in_qty, align 8
  store i32 53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @max_regno, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %20 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %20, i32 0, i32 9
  %21 = load i32, i32* %basic_block, align 4
  %cmp23 = icmp sge i32 %21, 0
  br i1 %cmp23, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %22 to i64
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data26 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 4
  %reg27 = bitcast %union.varray_data_tag* %data26 to [1 x %struct.reg_info_def*]*
  %arrayidx28 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg27, i32 0, i64 %idxprom25
  %24 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx28, align 8
  %deaths = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %24, i32 0, i32 6
  %25 = load i32, i32* %deaths, align 4
  %cmp29 = icmp eq i32 %25, 1
  br i1 %cmp29, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %26 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %27 = load i32*, i32** @reg_qty, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %27, i64 %idxprom31
  store i32 -2, i32* %arrayidx32, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %28 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %28 to i64
  %29 = load i32*, i32** @reg_qty, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %29, i64 %idxprom33
  store i32 -1, i32* %arrayidx34, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %max_qty, align 4
  store i32 %31, i32* @next_qty, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.67, %for.end
  %32 = load i32, i32* %b, align 4
  %33 = load i32, i32* @n_basic_blocks, align 4
  %cmp36 = icmp slt i32 %32, %33
  br i1 %cmp36, label %for.body.38, label %for.end.69

for.body.38:                                      ; preds = %for.cond.35
  %34 = load i32, i32* @next_qty, align 4
  %cmp39 = icmp slt i32 %34, 6
  br i1 %cmp39, label %if.then.41, label %if.else.57

if.then.41:                                       ; preds = %for.body.38
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.54, %if.then.41
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* @next_qty, align 4
  %cmp43 = icmp slt i32 %35, %36
  br i1 %cmp43, label %for.body.45, label %for.end.56

for.body.45:                                      ; preds = %for.cond.42
  %37 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %37 to i64
  %38 = load i64*, i64** @qty_phys_copy_sugg, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %38, i64 %idxprom46
  store i64 0, i64* %arrayidx47, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %39 to i64
  %40 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %40, i64 %idxprom48
  store i16 0, i16* %arrayidx49, align 2
  %41 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %41 to i64
  %42 = load i64*, i64** @qty_phys_sugg, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %42, i64 %idxprom50
  store i64 0, i64* %arrayidx51, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %43 to i64
  %44 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %44, i64 %idxprom52
  store i16 0, i16* %arrayidx53, align 2
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.45
  %45 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %45, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.42

for.end.56:                                       ; preds = %for.cond.42
  br label %if.end.66

if.else.57:                                       ; preds = %for.body.38
  %46 = load i64*, i64** @qty_phys_copy_sugg, align 8
  %47 = bitcast i64* %46 to i8*
  %48 = load i32, i32* @next_qty, align 4
  %conv58 = sext i32 %48 to i64
  %mul59 = mul i64 8, %conv58
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 %mul59, i32 1, i1 false)
  %49 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %50 = bitcast i16* %49 to i8*
  %51 = load i32, i32* @next_qty, align 4
  %conv60 = sext i32 %51 to i64
  %mul61 = mul i64 2, %conv60
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 %mul61, i32 1, i1 false)
  %52 = load i64*, i64** @qty_phys_sugg, align 8
  %53 = bitcast i64* %52 to i8*
  %54 = load i32, i32* @next_qty, align 4
  %conv62 = sext i32 %54 to i64
  %mul63 = mul i64 8, %conv62
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 %mul63, i32 1, i1 false)
  %55 = load i16*, i16** @qty_phys_num_sugg, align 8
  %56 = bitcast i16* %55 to i8*
  %57 = load i32, i32* @next_qty, align 4
  %conv64 = sext i32 %57 to i64
  %mul65 = mul i64 2, %conv64
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 %mul65, i32 1, i1 false)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.57, %for.end.56
  store i32 0, i32* @next_qty, align 4
  %58 = load i32, i32* %b, align 4
  call void @block_alloc(i32 %58)
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %59 = load i32, i32* %b, align 4
  %inc68 = add nsw i32 %59, 1
  store i32 %inc68, i32* %b, align 4
  br label %for.cond.35

for.end.69:                                       ; preds = %for.cond.35
  %60 = load %struct.qty*, %struct.qty** @qty, align 8
  %61 = bitcast %struct.qty* %60 to i8*
  call void @free(i8* %61) #2
  %62 = load i64*, i64** @qty_phys_copy_sugg, align 8
  %63 = bitcast i64* %62 to i8*
  call void @free(i8* %63) #2
  %64 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %65 = bitcast i16* %64 to i8*
  call void @free(i8* %65) #2
  %66 = load i64*, i64** @qty_phys_sugg, align 8
  %67 = bitcast i64* %66 to i8*
  call void @free(i8* %67) #2
  %68 = load i16*, i16** @qty_phys_num_sugg, align 8
  %69 = bitcast i16* %68 to i8*
  call void @free(i8* %69) #2
  %70 = load i32*, i32** @reg_qty, align 8
  %71 = bitcast i32* %70 to i8*
  call void @free(i8* %71) #2
  %72 = load i8*, i8** @reg_offset, align 8
  call void @free(i8* %72) #2
  %73 = load i32*, i32** @reg_next_in_qty, align 8
  %74 = bitcast i32* %73 to i8*
  call void @free(i8* %74) #2
  %75 = load i32, i32* @recorded_label_ref, align 4
  ret i32 %75
}

declare void @x86_order_regs_for_local_alloc() #1

; Function Attrs: nounwind uwtable
define internal void @update_equiv_regs() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %block = alloca i32, align 4
  %loop_depth = alloca i32, align 4
  %cleared_regs = alloca %struct.bitmap_head_def, align 8
  %clear_regnos = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %i = alloca i32, align 4
  %part = alloca %struct.rtx_def*, align 8
  %init_insn = alloca %struct.rtx_def*, align 8
  %regno332 = alloca i32, align 4
  %bb450 = alloca %struct.basic_block_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %regno495 = alloca i32, align 4
  %equiv_insn = alloca %struct.rtx_def*, align 8
  %equiv_link = alloca %struct.rtx_def*, align 8
  %last_link = alloca %struct.rtx_def*, align 8
  %note554 = alloca %struct.rtx_def*, align 8
  %new_insn = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store i32 0, i32* %clear_regnos, align 4
  %0 = load i32, i32* @max_regno, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 40)
  %1 = bitcast i8* %call to %struct.equivalence*
  store %struct.equivalence* %1, %struct.equivalence** @reg_equiv, align 8
  %call1 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %cleared_regs)
  call void @init_alias_analysis()
  store i32 0, i32* %block, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.443, %entry
  %2 = load i32, i32* %block, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.444

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %block, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %bb, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %loop_depth4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 12
  %8 = load i32, i32* %loop_depth4, align 4
  store i32 %8, i32* %loop_depth, align 4
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.438, %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp7 = icmp ne %struct.rtx_def* %11, %14
  br i1 %cmp7, label %for.body.9, label %for.end.442

for.body.9:                                       ; preds = %for.cond.5
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom10 = sext i32 %bf.clear to i64
  %arrayidx11 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 105
  br i1 %cmp13, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.9
  br label %for.inc.438

if.end:                                           ; preds = %for.body.9
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 6
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %note, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %20, null
  br i1 %tobool, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.18
  %21 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load20 = load i32, i32* %22, align 8
  %bf.lshr = lshr i32 %bf.load20, 16
  %bf.clear21 = and i32 %bf.lshr, 255
  %cmp22 = icmp eq i32 %bf.clear21, 2
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %for.body.19
  %23 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @no_equiv(%struct.rtx_def* %24, %struct.rtx_def* %25, i8* null)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %26 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %note, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load32 = load i32, i32* %29, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %idxprom34 = sext i32 %bf.clear33 to i64
  %arrayidx35 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom34
  %30 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %30 to i32
  %cmp37 = icmp eq i32 %conv36, 105
  br i1 %cmp37, label %cond.true, label %cond.false.54

cond.true:                                        ; preds = %for.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 3
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load42 = load i32, i32* %33, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 47
  br i1 %cmp44, label %cond.true.46, label %cond.false

cond.true.46:                                     ; preds = %cond.true
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 3
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 3
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %call53 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %36, %struct.rtx_def* %38)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.46
  %cond = phi %struct.rtx_def* [ %35, %cond.true.46 ], [ %call53, %cond.false ]
  br label %cond.end.55

cond.false.54:                                    ; preds = %for.end
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.end
  %cond56 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.54 ]
  store %struct.rtx_def* %cond56, %struct.rtx_def** %set, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp57 = icmp eq %struct.rtx_def* %39, null
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %cond.end.55
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 3
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  call void @note_stores(%struct.rtx_def* %41, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @no_equiv, i8* null)
  br label %for.inc.438

if.else:                                          ; preds = %cond.end.55
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 3
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load66 = load i32, i32* %44, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 39
  br i1 %cmp68, label %if.then.70, label %if.end.94

if.then.70:                                       ; preds = %if.else
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 3
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtvec_def**
  %47 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %47, i32 0, i32 0
  %48 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %48, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.92, %if.then.70
  %49 = load i32, i32* %i, align 4
  %cmp77 = icmp sge i32 %49, 0
  br i1 %cmp77, label %for.body.79, label %for.end.93

for.body.79:                                      ; preds = %for.cond.76
  %50 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %50 to i64
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 3
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtvec86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtvec_def**
  %53 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec86, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %53, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom80
  %54 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx87, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %part, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %part, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp88 = icmp ne %struct.rtx_def* %55, %56
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %for.body.79
  %57 = load %struct.rtx_def*, %struct.rtx_def** %part, align 8
  call void @note_stores(%struct.rtx_def* %57, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @no_equiv, i8* null)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %for.body.79
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %58 = load i32, i32* %i, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.76

for.end.93:                                       ; preds = %for.cond.76
  br label %if.end.94

if.end.94:                                        ; preds = %for.end.93, %if.else
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94
  %59 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  store %struct.rtx_def* %60, %struct.rtx_def** %dest, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 1
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %src, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load102 = load i32, i32* %64, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp eq i32 %bf.clear103, 66
  br i1 %cmp104, label %land.lhs.true, label %if.end.175

land.lhs.true:                                    ; preds = %if.end.95
  %65 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load106 = load i32, i32* %66, align 8
  %bf.clear107 = and i32 %bf.load106, 65535
  %cmp108 = icmp eq i32 %bf.clear107, 61
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.175

land.lhs.true.110:                                ; preds = %land.lhs.true
  %67 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %68 = load i32, i32* %rtuint, align 4
  store i32 %68, i32* %regno, align 4
  %cmp113 = icmp sge i32 %68, 53
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.175

land.lhs.true.115:                                ; preds = %land.lhs.true.110
  %69 = load i32, i32* %regno, align 4
  %idxprom116 = sext i32 %69 to i64
  %70 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data117 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %70, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data117 to [1 x %struct.reg_info_def*]*
  %arrayidx118 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom116
  %71 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx118, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %71, i32 0, i32 9
  %72 = load i32, i32* %basic_block, align 4
  %cmp119 = icmp sge i32 %72, 0
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.175

land.lhs.true.121:                                ; preds = %land.lhs.true.115
  %73 = load i32, i32* %regno, align 4
  %idxprom122 = sext i32 %73 to i64
  %74 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data123 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %74, i32 0, i32 4
  %reg124 = bitcast %union.varray_data_tag* %data123 to [1 x %struct.reg_info_def*]*
  %arrayidx125 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg124, i32 0, i64 %idxprom122
  %75 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx125, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %75, i32 0, i32 3
  %76 = load i32, i32* %sets, align 4
  %cmp126 = icmp eq i32 %76, 1
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.175

land.lhs.true.128:                                ; preds = %land.lhs.true.121
  %77 = load i32, i32* %regno, align 4
  %idxprom129 = sext i32 %77 to i64
  %78 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx130 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %78, i64 %idxprom129
  %init_insns = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx130, i32 0, i32 4
  %79 = load %struct.rtx_def*, %struct.rtx_def** %init_insns, align 8
  %cmp131 = icmp ne %struct.rtx_def* %79, null
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.175

land.lhs.true.133:                                ; preds = %land.lhs.true.128
  %80 = load i32, i32* %regno, align 4
  %idxprom134 = sext i32 %80 to i64
  %81 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx135 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %81, i64 %idxprom134
  %init_insns136 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx135, i32 0, i32 4
  %82 = load %struct.rtx_def*, %struct.rtx_def** %init_insns136, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp137 = icmp ne %struct.rtx_def* %82, %83
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.175

land.lhs.true.139:                                ; preds = %land.lhs.true.133
  %84 = load i32, i32* %regno, align 4
  %idxprom140 = sext i32 %84 to i64
  %85 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx141 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %85, i64 %idxprom140
  %init_insns142 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx141, i32 0, i32 4
  %86 = load %struct.rtx_def*, %struct.rtx_def** %init_insns142, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %call146 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %87, i32 3, %struct.rtx_def* null)
  %tobool147 = icmp ne %struct.rtx_def* %call146, null
  br i1 %tobool147, label %if.end.175, label %land.lhs.true.148

land.lhs.true.148:                                ; preds = %land.lhs.true.139
  %88 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtx151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx151, align 8
  %call152 = call i32 @contains_replace_regs(%struct.rtx_def* %89)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.end.175, label %if.then.154

if.then.154:                                      ; preds = %land.lhs.true.148
  %90 = load i32, i32* %regno, align 4
  %idxprom155 = sext i32 %90 to i64
  %91 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx156 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %91, i64 %idxprom155
  %init_insns157 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx156, i32 0, i32 4
  %92 = load %struct.rtx_def*, %struct.rtx_def** %init_insns157, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 0
  %rtx160 = bitcast %union.rtunion_def* %arrayidx159 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx160, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %init_insn, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %init_insn, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call161 = call i32 @validate_equiv_mem(%struct.rtx_def* %94, %struct.rtx_def* %95, %struct.rtx_def* %96)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %land.lhs.true.163, label %if.end.174

land.lhs.true.163:                                ; preds = %if.then.154
  %97 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %init_insn, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call164 = call i32 @memref_used_between_p(%struct.rtx_def* %97, %struct.rtx_def* %98, %struct.rtx_def* %99)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.end.174, label %if.then.166

if.then.166:                                      ; preds = %land.lhs.true.163
  %100 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %init_insn, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 6
  %rtx169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx169, align 8
  %call170 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 3, %struct.rtx_def* %100, %struct.rtx_def* %102)
  %103 = load %struct.rtx_def*, %struct.rtx_def** %init_insn, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 6
  %rtx173 = bitcast %union.rtunion_def* %arrayidx172 to %struct.rtx_def**
  store %struct.rtx_def* %call170, %struct.rtx_def** %rtx173, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.166, %land.lhs.true.163, %if.then.154
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %land.lhs.true.148, %land.lhs.true.139, %land.lhs.true.133, %land.lhs.true.128, %land.lhs.true.121, %land.lhs.true.115, %land.lhs.true.110, %land.lhs.true, %if.end.95
  %104 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load176 = load i32, i32* %105, align 8
  %bf.clear177 = and i32 %bf.load176, 65535
  %cmp178 = icmp ne i32 %bf.clear177, 61
  br i1 %cmp178, label %if.then.224, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.175
  %106 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld180, i32 0, i64 0
  %rtuint182 = bitcast %union.rtunion_def* %arrayidx181 to i32*
  %107 = load i32, i32* %rtuint182, align 4
  store i32 %107, i32* %regno, align 4
  %cmp183 = icmp slt i32 %107, 53
  br i1 %cmp183, label %if.then.224, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %lor.lhs.false
  %108 = load i32, i32* %regno, align 4
  %idxprom186 = sext i32 %108 to i64
  %109 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx187 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %109, i64 %idxprom186
  %init_insns188 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx187, i32 0, i32 4
  %110 = load %struct.rtx_def*, %struct.rtx_def** %init_insns188, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp189 = icmp eq %struct.rtx_def* %110, %111
  br i1 %cmp189, label %if.then.224, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %lor.lhs.false.185
  %112 = load i32, i32* %regno, align 4
  %call192 = call i32 @reg_preferred_class(i32 %112)
  %cmp193 = icmp eq i32 %call192, 1
  br i1 %cmp193, label %land.lhs.true.219, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %lor.lhs.false.191
  %113 = load i32, i32* %regno, align 4
  %call196 = call i32 @reg_preferred_class(i32 %113)
  %cmp197 = icmp eq i32 %call196, 2
  br i1 %cmp197, label %land.lhs.true.219, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %lor.lhs.false.195
  %114 = load i32, i32* %regno, align 4
  %call200 = call i32 @reg_preferred_class(i32 %114)
  %cmp201 = icmp eq i32 %call200, 3
  br i1 %cmp201, label %land.lhs.true.219, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %lor.lhs.false.199
  %115 = load i32, i32* %regno, align 4
  %call204 = call i32 @reg_preferred_class(i32 %115)
  %cmp205 = icmp eq i32 %call204, 4
  br i1 %cmp205, label %land.lhs.true.219, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %lor.lhs.false.203
  %116 = load i32, i32* %regno, align 4
  %call208 = call i32 @reg_preferred_class(i32 %116)
  %cmp209 = icmp eq i32 %call208, 7
  br i1 %cmp209, label %land.lhs.true.219, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %lor.lhs.false.207
  %117 = load i32, i32* %regno, align 4
  %call212 = call i32 @reg_preferred_class(i32 %117)
  %cmp213 = icmp eq i32 %call212, 5
  br i1 %cmp213, label %land.lhs.true.219, label %lor.lhs.false.215

lor.lhs.false.215:                                ; preds = %lor.lhs.false.211
  %118 = load i32, i32* %regno, align 4
  %call216 = call i32 @reg_preferred_class(i32 %118)
  %cmp217 = icmp eq i32 %call216, 6
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.225

land.lhs.true.219:                                ; preds = %lor.lhs.false.215, %lor.lhs.false.211, %lor.lhs.false.207, %lor.lhs.false.203, %lor.lhs.false.199, %lor.lhs.false.195, %lor.lhs.false.191
  %119 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load220 = load i32, i32* %120, align 8
  %bf.clear221 = and i32 %bf.load220, 65535
  %cmp222 = icmp eq i32 %bf.clear221, 66
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %land.lhs.true.219, %lor.lhs.false.185, %lor.lhs.false, %if.end.175
  %121 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  call void @note_stores(%struct.rtx_def* %121, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @no_equiv, i8* null)
  br label %for.inc.438

if.end.225:                                       ; preds = %land.lhs.true.219, %lor.lhs.false.215
  %122 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call226 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %122, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call226, %struct.rtx_def** %note, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool227 = icmp ne %struct.rtx_def* %123, null
  br i1 %tobool227, label %if.end.233, label %land.lhs.true.228

land.lhs.true.228:                                ; preds = %if.end.225
  %124 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call229 = call i32 @rtx_varies_p(%struct.rtx_def* %124, i32 0)
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.end.233, label %if.then.231

if.then.231:                                      ; preds = %land.lhs.true.228
  %125 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call232 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %125, i32 4, %struct.rtx_def* %126)
  store %struct.rtx_def* %call232, %struct.rtx_def** %note, align 8
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %land.lhs.true.228, %if.end.225
  %127 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool234 = icmp ne %struct.rtx_def* %127, null
  br i1 %tobool234, label %land.lhs.true.235, label %if.end.244

land.lhs.true.235:                                ; preds = %if.end.233
  %128 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld236, i32 0, i64 0
  %rtx238 = bitcast %union.rtunion_def* %arrayidx237 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx238, align 8
  %130 = bitcast %struct.rtx_def* %129 to i32*
  %bf.load239 = load i32, i32* %130, align 8
  %bf.clear240 = and i32 %bf.load239, 65535
  %cmp241 = icmp eq i32 %bf.clear240, 3
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %land.lhs.true.235
  store %struct.rtx_def* null, %struct.rtx_def** %note, align 8
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %land.lhs.true.235, %if.end.233
  %131 = load i32, i32* %regno, align 4
  %idxprom245 = sext i32 %131 to i64
  %132 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data246 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %132, i32 0, i32 4
  %reg247 = bitcast %union.varray_data_tag* %data246 to [1 x %struct.reg_info_def*]*
  %arrayidx248 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg247, i32 0, i64 %idxprom245
  %133 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx248, align 8
  %sets249 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %133, i32 0, i32 3
  %134 = load i32, i32* %sets249, align 4
  %cmp250 = icmp ne i32 %134, 1
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.274

land.lhs.true.252:                                ; preds = %if.end.244
  %135 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool253 = icmp ne %struct.rtx_def* %135, null
  br i1 %tobool253, label %lor.lhs.false.254, label %if.then.273

lor.lhs.false.254:                                ; preds = %land.lhs.true.252
  %136 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 0
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  %call258 = call i32 @rtx_varies_p(%struct.rtx_def* %137, i32 0)
  %tobool259 = icmp ne i32 %call258, 0
  br i1 %tobool259, label %if.then.273, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %lor.lhs.false.254
  %138 = load i32, i32* %regno, align 4
  %idxprom261 = sext i32 %138 to i64
  %139 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx262 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %139, i64 %idxprom261
  %replacement = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx262, i32 0, i32 1
  %140 = load %struct.rtx_def*, %struct.rtx_def** %replacement, align 8
  %tobool263 = icmp ne %struct.rtx_def* %140, null
  br i1 %tobool263, label %land.lhs.true.264, label %if.end.274

land.lhs.true.264:                                ; preds = %lor.lhs.false.260
  %141 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld265 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld265, i32 0, i64 0
  %rtx267 = bitcast %union.rtunion_def* %arrayidx266 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx267, align 8
  %143 = load i32, i32* %regno, align 4
  %idxprom268 = sext i32 %143 to i64
  %144 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx269 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %144, i64 %idxprom268
  %replacement270 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx269, i32 0, i32 1
  %145 = load %struct.rtx_def*, %struct.rtx_def** %replacement270, align 8
  %call271 = call i32 @rtx_equal_p(%struct.rtx_def* %142, %struct.rtx_def* %145)
  %tobool272 = icmp ne i32 %call271, 0
  br i1 %tobool272, label %if.end.274, label %if.then.273

if.then.273:                                      ; preds = %land.lhs.true.264, %lor.lhs.false.254, %land.lhs.true.252
  %146 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %147 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  call void @no_equiv(%struct.rtx_def* %146, %struct.rtx_def* %147, i8* null)
  br label %for.inc.438

if.end.274:                                       ; preds = %land.lhs.true.264, %lor.lhs.false.260, %if.end.244
  %148 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %149 = load i32, i32* %regno, align 4
  %idxprom275 = sext i32 %149 to i64
  %150 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx276 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %150, i64 %idxprom275
  %init_insns277 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx276, i32 0, i32 4
  %151 = load %struct.rtx_def*, %struct.rtx_def** %init_insns277, align 8
  %call278 = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 0, %struct.rtx_def* %148, %struct.rtx_def* %151)
  %152 = load i32, i32* %regno, align 4
  %idxprom279 = sext i32 %152 to i64
  %153 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx280 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %153, i64 %idxprom279
  %init_insns281 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx280, i32 0, i32 4
  store %struct.rtx_def* %call278, %struct.rtx_def** %init_insns281, align 8
  %154 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool282 = icmp ne %struct.rtx_def* %154, null
  br i1 %tobool282, label %land.lhs.true.283, label %if.end.292

land.lhs.true.283:                                ; preds = %if.end.274
  %155 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 0
  %rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**
  %156 = load %struct.rtx_def*, %struct.rtx_def** %rtx286, align 8
  %call287 = call i32 @rtx_varies_p(%struct.rtx_def* %156, i32 0)
  %tobool288 = icmp ne i32 %call287, 0
  br i1 %tobool288, label %if.end.292, label %if.then.289

if.then.289:                                      ; preds = %land.lhs.true.283
  %157 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load290 = load i32, i32* %158, align 8
  %bf.clear291 = and i32 %bf.load290, -16711681
  %bf.set = or i32 %bf.clear291, 196608
  store i32 %bf.set, i32* %158, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.289, %land.lhs.true.283, %if.end.274
  %159 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call293 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %159, i32 3, %struct.rtx_def* null)
  store %struct.rtx_def* %call293, %struct.rtx_def** %note, align 8
  %160 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %cmp294 = icmp eq %struct.rtx_def* %160, null
  br i1 %cmp294, label %land.lhs.true.296, label %if.end.329

land.lhs.true.296:                                ; preds = %if.end.292
  %161 = load i32, i32* %regno, align 4
  %idxprom297 = sext i32 %161 to i64
  %162 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data298 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %162, i32 0, i32 4
  %reg299 = bitcast %union.varray_data_tag* %data298 to [1 x %struct.reg_info_def*]*
  %arrayidx300 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg299, i32 0, i64 %idxprom297
  %163 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx300, align 8
  %basic_block301 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %163, i32 0, i32 9
  %164 = load i32, i32* %basic_block301, align 4
  %cmp302 = icmp sge i32 %164, 0
  br i1 %cmp302, label %land.lhs.true.304, label %if.end.329

land.lhs.true.304:                                ; preds = %land.lhs.true.296
  %165 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld305 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx306 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld305, i32 0, i64 1
  %rtx307 = bitcast %union.rtunion_def* %arrayidx306 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %rtx307, align 8
  %167 = bitcast %struct.rtx_def* %166 to i32*
  %bf.load308 = load i32, i32* %167, align 8
  %bf.clear309 = and i32 %bf.load308, 65535
  %cmp310 = icmp eq i32 %bf.clear309, 66
  br i1 %cmp310, label %land.lhs.true.312, label %if.end.329

land.lhs.true.312:                                ; preds = %land.lhs.true.304
  %168 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %170 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld313, i32 0, i64 1
  %rtx315 = bitcast %union.rtunion_def* %arrayidx314 to %struct.rtx_def**
  %171 = load %struct.rtx_def*, %struct.rtx_def** %rtx315, align 8
  %call316 = call i32 @validate_equiv_mem(%struct.rtx_def* %168, %struct.rtx_def* %169, %struct.rtx_def* %171)
  %tobool317 = icmp ne i32 %call316, 0
  br i1 %tobool317, label %if.then.318, label %if.end.329

if.then.318:                                      ; preds = %land.lhs.true.312
  %172 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld319 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %172, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld319, i32 0, i64 1
  %rtx321 = bitcast %union.rtunion_def* %arrayidx320 to %struct.rtx_def**
  %173 = load %struct.rtx_def*, %struct.rtx_def** %rtx321, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx323 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld322, i32 0, i64 6
  %rtx324 = bitcast %union.rtunion_def* %arrayidx323 to %struct.rtx_def**
  %175 = load %struct.rtx_def*, %struct.rtx_def** %rtx324, align 8
  %call325 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 3, %struct.rtx_def* %173, %struct.rtx_def* %175)
  store %struct.rtx_def* %call325, %struct.rtx_def** %note, align 8
  %176 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 6
  %rtx328 = bitcast %union.rtunion_def* %arrayidx327 to %struct.rtx_def**
  store %struct.rtx_def* %call325, %struct.rtx_def** %rtx328, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.318, %land.lhs.true.312, %land.lhs.true.304, %land.lhs.true.296, %if.end.292
  %177 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool330 = icmp ne %struct.rtx_def* %177, null
  br i1 %tobool330, label %if.then.331, label %if.end.437

if.then.331:                                      ; preds = %if.end.329
  %178 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld333 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx334 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld333, i32 0, i64 0
  %rtuint335 = bitcast %union.rtunion_def* %arrayidx334 to i32*
  %179 = load i32, i32* %rtuint335, align 4
  store i32 %179, i32* %regno332, align 4
  %180 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld336 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %180, i32 0, i32 1
  %arrayidx337 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld336, i32 0, i64 0
  %rtx338 = bitcast %union.rtunion_def* %arrayidx337 to %struct.rtx_def**
  %181 = load %struct.rtx_def*, %struct.rtx_def** %rtx338, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %bf.load339 = load i32, i32* %182, align 8
  %bf.clear340 = and i32 %bf.load339, 65535
  %cmp341 = icmp eq i32 %bf.clear340, 67
  br i1 %cmp341, label %if.then.376, label %lor.lhs.false.343

lor.lhs.false.343:                                ; preds = %if.then.331
  %183 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld344, i32 0, i64 0
  %rtx346 = bitcast %union.rtunion_def* %arrayidx345 to %struct.rtx_def**
  %184 = load %struct.rtx_def*, %struct.rtx_def** %rtx346, align 8
  %185 = bitcast %struct.rtx_def* %184 to i32*
  %bf.load347 = load i32, i32* %185, align 8
  %bf.clear348 = and i32 %bf.load347, 65535
  %cmp349 = icmp eq i32 %bf.clear348, 58
  br i1 %cmp349, label %land.lhs.true.351, label %if.end.377

land.lhs.true.351:                                ; preds = %lor.lhs.false.343
  %186 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld352 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %arrayidx353 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld352, i32 0, i64 0
  %rtx354 = bitcast %union.rtunion_def* %arrayidx353 to %struct.rtx_def**
  %187 = load %struct.rtx_def*, %struct.rtx_def** %rtx354, align 8
  %fld355 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld355, i32 0, i64 0
  %rtx357 = bitcast %union.rtunion_def* %arrayidx356 to %struct.rtx_def**
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtx357, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load358 = load i32, i32* %189, align 8
  %bf.clear359 = and i32 %bf.load358, 65535
  %cmp360 = icmp eq i32 %bf.clear359, 75
  br i1 %cmp360, label %land.lhs.true.362, label %if.end.377

land.lhs.true.362:                                ; preds = %land.lhs.true.351
  %190 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld363 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx364 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld363, i32 0, i64 0
  %rtx365 = bitcast %union.rtunion_def* %arrayidx364 to %struct.rtx_def**
  %191 = load %struct.rtx_def*, %struct.rtx_def** %rtx365, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 0
  %rtx368 = bitcast %union.rtunion_def* %arrayidx367 to %struct.rtx_def**
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtx368, align 8
  %fld369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld369, i32 0, i64 0
  %rtx371 = bitcast %union.rtunion_def* %arrayidx370 to %struct.rtx_def**
  %193 = load %struct.rtx_def*, %struct.rtx_def** %rtx371, align 8
  %194 = bitcast %struct.rtx_def* %193 to i32*
  %bf.load372 = load i32, i32* %194, align 8
  %bf.clear373 = and i32 %bf.load372, 65535
  %cmp374 = icmp eq i32 %bf.clear373, 67
  br i1 %cmp374, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %land.lhs.true.362, %if.then.331
  store i32 1, i32* @recorded_label_ref, align 4
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.376, %land.lhs.true.362, %land.lhs.true.351, %lor.lhs.false.343
  %195 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld378 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx379 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld378, i32 0, i64 0
  %rtx380 = bitcast %union.rtunion_def* %arrayidx379 to %struct.rtx_def**
  %196 = load %struct.rtx_def*, %struct.rtx_def** %rtx380, align 8
  %197 = load i32, i32* %regno332, align 4
  %idxprom381 = sext i32 %197 to i64
  %198 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx382 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %198, i64 %idxprom381
  %replacement383 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx382, i32 0, i32 1
  store %struct.rtx_def* %196, %struct.rtx_def** %replacement383, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld384 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx385 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld384, i32 0, i64 1
  %rtx386 = bitcast %union.rtunion_def* %arrayidx385 to %struct.rtx_def**
  %200 = load i32, i32* %regno332, align 4
  %idxprom387 = sext i32 %200 to i64
  %201 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx388 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %201, i64 %idxprom387
  %src_p = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx388, i32 0, i32 2
  store %struct.rtx_def** %rtx386, %struct.rtx_def*** %src_p, align 8
  %202 = load i32, i32* %loop_depth, align 4
  %203 = load i32, i32* %regno332, align 4
  %idxprom389 = sext i32 %203 to i64
  %204 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx390 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %204, i64 %idxprom389
  %loop_depth391 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx390, i32 0, i32 3
  store i32 %202, i32* %loop_depth391, align 4
  %205 = load i32, i32* %regno332, align 4
  %idxprom392 = sext i32 %205 to i64
  %206 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data393 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %206, i32 0, i32 4
  %reg394 = bitcast %union.varray_data_tag* %data393 to [1 x %struct.reg_info_def*]*
  %arrayidx395 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg394, i32 0, i64 %idxprom392
  %207 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx395, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %207, i32 0, i32 7
  %208 = load i32, i32* %live_length, align 4
  %cmp396 = icmp sge i32 %208, 0
  br i1 %cmp396, label %land.lhs.true.398, label %if.end.436

land.lhs.true.398:                                ; preds = %if.end.377
  %209 = load i32, i32* @optimize, align 4
  %tobool399 = icmp ne i32 %209, 0
  br i1 %tobool399, label %if.then.400, label %if.end.436

if.then.400:                                      ; preds = %land.lhs.true.398
  %210 = load i32, i32* %regno332, align 4
  %idxprom401 = sext i32 %210 to i64
  %211 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data402 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %211, i32 0, i32 4
  %reg403 = bitcast %union.varray_data_tag* %data402 to [1 x %struct.reg_info_def*]*
  %arrayidx404 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg403, i32 0, i64 %idxprom401
  %212 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx404, align 8
  %live_length405 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %212, i32 0, i32 7
  %213 = load i32, i32* %live_length405, align 4
  %mul = mul nsw i32 %213, 2
  store i32 %mul, i32* %live_length405, align 4
  %214 = load i32, i32* %regno332, align 4
  %idxprom406 = sext i32 %214 to i64
  %215 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data407 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %215, i32 0, i32 4
  %reg408 = bitcast %union.varray_data_tag* %data407 to [1 x %struct.reg_info_def*]*
  %arrayidx409 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg408, i32 0, i64 %idxprom406
  %216 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx409, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %216, i32 0, i32 4
  %217 = load i32, i32* %refs, align 4
  %cmp410 = icmp eq i32 %217, 2
  br i1 %cmp410, label %land.lhs.true.412, label %if.end.435

land.lhs.true.412:                                ; preds = %if.then.400
  %218 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld413 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx414 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld413, i32 0, i64 0
  %rtx415 = bitcast %union.rtunion_def* %arrayidx414 to %struct.rtx_def**
  %219 = load %struct.rtx_def*, %struct.rtx_def** %rtx415, align 8
  %220 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call416 = call i32 @rtx_equal_p(%struct.rtx_def* %219, %struct.rtx_def* %220)
  %tobool417 = icmp ne i32 %call416, 0
  br i1 %tobool417, label %land.lhs.true.421, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %land.lhs.true.412
  %221 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call419 = call i32 @equiv_init_varies_p(%struct.rtx_def* %221)
  %tobool420 = icmp ne i32 %call419, 0
  br i1 %tobool420, label %if.end.435, label %land.lhs.true.421

land.lhs.true.421:                                ; preds = %lor.lhs.false.418, %land.lhs.true.412
  %222 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %223 = bitcast %struct.rtx_def* %222 to i32*
  %bf.load422 = load i32, i32* %223, align 8
  %bf.clear423 = and i32 %bf.load422, 65535
  %cmp424 = icmp eq i32 %bf.clear423, 32
  br i1 %cmp424, label %land.lhs.true.426, label %if.end.435

land.lhs.true.426:                                ; preds = %land.lhs.true.421
  %224 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld427 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %arrayidx428 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld427, i32 0, i64 3
  %rtx429 = bitcast %union.rtunion_def* %arrayidx428 to %struct.rtx_def**
  %225 = load %struct.rtx_def*, %struct.rtx_def** %rtx429, align 8
  %226 = load i32, i32* %regno332, align 4
  %call430 = call i32 @equiv_init_movable_p(%struct.rtx_def* %225, i32 %226)
  %tobool431 = icmp ne i32 %call430, 0
  br i1 %tobool431, label %if.then.432, label %if.end.435

if.then.432:                                      ; preds = %land.lhs.true.426
  %227 = load i32, i32* %regno332, align 4
  %idxprom433 = sext i32 %227 to i64
  %228 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx434 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %228, i64 %idxprom433
  %replace = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx434, i32 0, i32 0
  store i8 1, i8* %replace, align 1
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.432, %land.lhs.true.426, %land.lhs.true.421, %lor.lhs.false.418, %if.then.400
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435, %land.lhs.true.398, %if.end.377
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %if.end.329
  br label %for.inc.438

for.inc.438:                                      ; preds = %if.end.437, %if.then.273, %if.then.224, %if.then.59, %if.then
  %229 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld439 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %arrayidx440 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld439, i32 0, i64 2
  %rtx441 = bitcast %union.rtunion_def* %arrayidx440 to %struct.rtx_def**
  %230 = load %struct.rtx_def*, %struct.rtx_def** %rtx441, align 8
  store %struct.rtx_def* %230, %struct.rtx_def** %insn, align 8
  br label %for.cond.5

for.end.442:                                      ; preds = %for.cond.5
  br label %for.inc.443

for.inc.443:                                      ; preds = %for.end.442
  %231 = load i32, i32* %block, align 4
  %inc = add nsw i32 %231, 1
  store i32 %inc, i32* %block, align 4
  br label %for.cond

for.end.444:                                      ; preds = %for.cond
  %232 = load i32, i32* @n_basic_blocks, align 4
  %sub445 = sub nsw i32 %232, 1
  store i32 %sub445, i32* %block, align 4
  br label %for.cond.446

for.cond.446:                                     ; preds = %for.inc.692, %for.end.444
  %233 = load i32, i32* %block, align 4
  %cmp447 = icmp sge i32 %233, 0
  br i1 %cmp447, label %for.body.449, label %for.end.694

for.body.449:                                     ; preds = %for.cond.446
  %234 = load i32, i32* %block, align 4
  %idxprom451 = sext i32 %234 to i64
  %235 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data452 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %235, i32 0, i32 4
  %bb453 = bitcast %union.varray_data_tag* %data452 to [1 x %struct.basic_block_def*]*
  %arrayidx454 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb453, i32 0, i64 %idxprom451
  %236 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx454, align 8
  store %struct.basic_block_def* %236, %struct.basic_block_def** %bb450, align 8
  %237 = load %struct.basic_block_def*, %struct.basic_block_def** %bb450, align 8
  %loop_depth455 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %237, i32 0, i32 12
  %238 = load i32, i32* %loop_depth455, align 4
  store i32 %238, i32* %loop_depth, align 4
  %239 = load %struct.basic_block_def*, %struct.basic_block_def** %bb450, align 8
  %end456 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %239, i32 0, i32 1
  %240 = load %struct.rtx_def*, %struct.rtx_def** %end456, align 8
  store %struct.rtx_def* %240, %struct.rtx_def** %insn, align 8
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.687, %for.body.449
  %241 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %242 = load %struct.basic_block_def*, %struct.basic_block_def** %bb450, align 8
  %head458 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %242, i32 0, i32 0
  %243 = load %struct.rtx_def*, %struct.rtx_def** %head458, align 8
  %fld459 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %arrayidx460 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld459, i32 0, i64 1
  %rtx461 = bitcast %union.rtunion_def* %arrayidx460 to %struct.rtx_def**
  %244 = load %struct.rtx_def*, %struct.rtx_def** %rtx461, align 8
  %cmp462 = icmp ne %struct.rtx_def* %241, %244
  br i1 %cmp462, label %for.body.464, label %for.end.691

for.body.464:                                     ; preds = %for.cond.457
  %245 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %246 = bitcast %struct.rtx_def* %245 to i32*
  %bf.load465 = load i32, i32* %246, align 8
  %bf.clear466 = and i32 %bf.load465, 65535
  %idxprom467 = sext i32 %bf.clear466 to i64
  %arrayidx468 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom467
  %247 = load i8, i8* %arrayidx468, align 1
  %conv469 = sext i8 %247 to i32
  %cmp470 = icmp eq i32 %conv469, 105
  br i1 %cmp470, label %if.end.473, label %if.then.472

if.then.472:                                      ; preds = %for.body.464
  br label %for.inc.687

if.end.473:                                       ; preds = %for.body.464
  %248 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld474 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx475 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld474, i32 0, i64 6
  %rtx476 = bitcast %union.rtunion_def* %arrayidx475 to %struct.rtx_def**
  %249 = load %struct.rtx_def*, %struct.rtx_def** %rtx476, align 8
  store %struct.rtx_def* %249, %struct.rtx_def** %link, align 8
  br label %for.cond.477

for.cond.477:                                     ; preds = %for.inc.682, %if.end.473
  %250 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool478 = icmp ne %struct.rtx_def* %250, null
  br i1 %tobool478, label %for.body.479, label %for.end.686

for.body.479:                                     ; preds = %for.cond.477
  %251 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %252 = bitcast %struct.rtx_def* %251 to i32*
  %bf.load480 = load i32, i32* %252, align 8
  %bf.lshr481 = lshr i32 %bf.load480, 16
  %bf.clear482 = and i32 %bf.lshr481, 255
  %cmp483 = icmp eq i32 %bf.clear482, 1
  br i1 %cmp483, label %land.lhs.true.485, label %if.end.681

land.lhs.true.485:                                ; preds = %for.body.479
  %253 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld486 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %arrayidx487 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld486, i32 0, i64 0
  %rtx488 = bitcast %union.rtunion_def* %arrayidx487 to %struct.rtx_def**
  %254 = load %struct.rtx_def*, %struct.rtx_def** %rtx488, align 8
  %255 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld489 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %arrayidx490 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld489, i32 0, i64 3
  %rtx491 = bitcast %union.rtunion_def* %arrayidx490 to %struct.rtx_def**
  %256 = load %struct.rtx_def*, %struct.rtx_def** %rtx491, align 8
  %call492 = call i32 @reg_mentioned_p(%struct.rtx_def* %254, %struct.rtx_def* %256)
  %tobool493 = icmp ne i32 %call492, 0
  br i1 %tobool493, label %if.then.494, label %if.end.681

if.then.494:                                      ; preds = %land.lhs.true.485
  %257 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld496 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx497 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld496, i32 0, i64 0
  %rtx498 = bitcast %union.rtunion_def* %arrayidx497 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %rtx498, align 8
  %fld499 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %258, i32 0, i32 1
  %arrayidx500 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld499, i32 0, i64 0
  %rtuint501 = bitcast %union.rtunion_def* %arrayidx500 to i32*
  %259 = load i32, i32* %rtuint501, align 4
  store i32 %259, i32* %regno495, align 4
  %260 = load i32, i32* %regno495, align 4
  %idxprom502 = sext i32 %260 to i64
  %261 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx503 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %261, i64 %idxprom502
  %replace504 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx503, i32 0, i32 0
  %262 = load i8, i8* %replace504, align 1
  %tobool505 = icmp ne i8 %262, 0
  br i1 %tobool505, label %lor.lhs.false.506, label %if.then.512

lor.lhs.false.506:                                ; preds = %if.then.494
  %263 = load i32, i32* %regno495, align 4
  %idxprom507 = sext i32 %263 to i64
  %264 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx508 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %264, i64 %idxprom507
  %loop_depth509 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx508, i32 0, i32 3
  %265 = load i32, i32* %loop_depth509, align 4
  %266 = load i32, i32* %loop_depth, align 4
  %cmp510 = icmp slt i32 %265, %266
  br i1 %cmp510, label %if.then.512, label %if.end.513

if.then.512:                                      ; preds = %lor.lhs.false.506, %if.then.494
  br label %for.inc.682

if.end.513:                                       ; preds = %lor.lhs.false.506
  %267 = load i32, i32* %regno495, align 4
  %idxprom514 = sext i32 %267 to i64
  %268 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx515 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %268, i64 %idxprom514
  %init_insns516 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx515, i32 0, i32 4
  %269 = load %struct.rtx_def*, %struct.rtx_def** %init_insns516, align 8
  %cmp517 = icmp eq %struct.rtx_def* %269, null
  br i1 %cmp517, label %if.then.528, label %lor.lhs.false.519

lor.lhs.false.519:                                ; preds = %if.end.513
  %270 = load i32, i32* %regno495, align 4
  %idxprom520 = sext i32 %270 to i64
  %271 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx521 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %271, i64 %idxprom520
  %init_insns522 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx521, i32 0, i32 4
  %272 = load %struct.rtx_def*, %struct.rtx_def** %init_insns522, align 8
  %fld523 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %272, i32 0, i32 1
  %arrayidx524 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld523, i32 0, i64 1
  %rtx525 = bitcast %union.rtunion_def* %arrayidx524 to %struct.rtx_def**
  %273 = load %struct.rtx_def*, %struct.rtx_def** %rtx525, align 8
  %cmp526 = icmp ne %struct.rtx_def* %273, null
  br i1 %cmp526, label %if.then.528, label %if.end.529

if.then.528:                                      ; preds = %lor.lhs.false.519, %if.end.513
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1078, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.update_equiv_regs, i32 0, i32 0)) #5
  unreachable

if.end.529:                                       ; preds = %lor.lhs.false.519
  %274 = load i32, i32* %regno495, align 4
  %idxprom530 = sext i32 %274 to i64
  %275 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx531 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %275, i64 %idxprom530
  %init_insns532 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx531, i32 0, i32 4
  %276 = load %struct.rtx_def*, %struct.rtx_def** %init_insns532, align 8
  %fld533 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %276, i32 0, i32 1
  %arrayidx534 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld533, i32 0, i64 0
  %rtx535 = bitcast %union.rtunion_def* %arrayidx534 to %struct.rtx_def**
  %277 = load %struct.rtx_def*, %struct.rtx_def** %rtx535, align 8
  store %struct.rtx_def* %277, %struct.rtx_def** %equiv_insn, align 8
  %278 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %call536 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %278)
  br i1 %call536, label %if.then.537, label %if.end.538

if.then.537:                                      ; preds = %if.end.529
  br label %for.inc.682

if.end.538:                                       ; preds = %if.end.529
  %279 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %fld539 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx540 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld539, i32 0, i64 3
  %rtx541 = bitcast %union.rtunion_def* %arrayidx540 to %struct.rtx_def**
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtx541, align 8
  %call542 = call i32 @asm_noperands(%struct.rtx_def* %280)
  %cmp543 = icmp slt i32 %call542, 0
  br i1 %cmp543, label %land.lhs.true.545, label %if.else.606

land.lhs.true.545:                                ; preds = %if.end.538
  %281 = load i32, i32* %regno495, align 4
  %idxprom546 = sext i32 %281 to i64
  %282 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %282, i32 0, i32 3
  %283 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %283, i32 0, i32 12
  %284 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx547 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %284, i64 %idxprom546
  %285 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx547, align 8
  %286 = load i32, i32* %regno495, align 4
  %idxprom548 = sext i32 %286 to i64
  %287 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx549 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %287, i64 %idxprom548
  %src_p550 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx549, i32 0, i32 2
  %288 = load %struct.rtx_def**, %struct.rtx_def*** %src_p550, align 8
  %289 = load %struct.rtx_def*, %struct.rtx_def** %288, align 8
  %290 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call551 = call i32 @validate_replace_rtx(%struct.rtx_def* %285, %struct.rtx_def* %289, %struct.rtx_def* %290)
  %tobool552 = icmp ne i32 %call551, 0
  br i1 %tobool552, label %if.then.553, label %if.else.606

if.then.553:                                      ; preds = %land.lhs.true.545
  %291 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  store %struct.rtx_def* %291, %struct.rtx_def** %last_link, align 8
  br label %for.cond.555

for.cond.555:                                     ; preds = %for.inc.561, %if.then.553
  %292 = load %struct.rtx_def*, %struct.rtx_def** %last_link, align 8
  %fld556 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx557 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld556, i32 0, i64 1
  %rtx558 = bitcast %union.rtunion_def* %arrayidx557 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rtx558, align 8
  %tobool559 = icmp ne %struct.rtx_def* %293, null
  br i1 %tobool559, label %for.body.560, label %for.end.565

for.body.560:                                     ; preds = %for.cond.555
  br label %for.inc.561

for.inc.561:                                      ; preds = %for.body.560
  %294 = load %struct.rtx_def*, %struct.rtx_def** %last_link, align 8
  %fld562 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %294, i32 0, i32 1
  %arrayidx563 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld562, i32 0, i64 1
  %rtx564 = bitcast %union.rtunion_def* %arrayidx563 to %struct.rtx_def**
  %295 = load %struct.rtx_def*, %struct.rtx_def** %rtx564, align 8
  store %struct.rtx_def* %295, %struct.rtx_def** %last_link, align 8
  br label %for.cond.555

for.end.565:                                      ; preds = %for.cond.555
  %296 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %fld566 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %296, i32 0, i32 1
  %arrayidx567 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld566, i32 0, i64 6
  %rtx568 = bitcast %union.rtunion_def* %arrayidx567 to %struct.rtx_def**
  %297 = load %struct.rtx_def*, %struct.rtx_def** %rtx568, align 8
  store %struct.rtx_def* %297, %struct.rtx_def** %equiv_link, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.585, %for.end.565
  %298 = load %struct.rtx_def*, %struct.rtx_def** %equiv_link, align 8
  %tobool569 = icmp ne %struct.rtx_def* %298, null
  br i1 %tobool569, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %299 = load %struct.rtx_def*, %struct.rtx_def** %equiv_link, align 8
  store %struct.rtx_def* %299, %struct.rtx_def** %note554, align 8
  %300 = load %struct.rtx_def*, %struct.rtx_def** %equiv_link, align 8
  %fld570 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %300, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld570, i32 0, i64 1
  %rtx572 = bitcast %union.rtunion_def* %arrayidx571 to %struct.rtx_def**
  %301 = load %struct.rtx_def*, %struct.rtx_def** %rtx572, align 8
  store %struct.rtx_def* %301, %struct.rtx_def** %equiv_link, align 8
  %302 = load %struct.rtx_def*, %struct.rtx_def** %note554, align 8
  %303 = bitcast %struct.rtx_def* %302 to i32*
  %bf.load573 = load i32, i32* %303, align 8
  %bf.lshr574 = lshr i32 %bf.load573, 16
  %bf.clear575 = and i32 %bf.lshr574, 255
  %cmp576 = icmp eq i32 %bf.clear575, 1
  br i1 %cmp576, label %if.then.578, label %if.end.585

if.then.578:                                      ; preds = %while.body
  %304 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %305 = load %struct.rtx_def*, %struct.rtx_def** %note554, align 8
  call void @remove_note(%struct.rtx_def* %304, %struct.rtx_def* %305)
  %306 = load %struct.rtx_def*, %struct.rtx_def** %note554, align 8
  %307 = load %struct.rtx_def*, %struct.rtx_def** %last_link, align 8
  %fld579 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %307, i32 0, i32 1
  %arrayidx580 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld579, i32 0, i64 1
  %rtx581 = bitcast %union.rtunion_def* %arrayidx580 to %struct.rtx_def**
  store %struct.rtx_def* %306, %struct.rtx_def** %rtx581, align 8
  %308 = load %struct.rtx_def*, %struct.rtx_def** %note554, align 8
  %fld582 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %arrayidx583 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld582, i32 0, i64 1
  %rtx584 = bitcast %union.rtunion_def* %arrayidx583 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx584, align 8
  %309 = load %struct.rtx_def*, %struct.rtx_def** %note554, align 8
  store %struct.rtx_def* %309, %struct.rtx_def** %last_link, align 8
  br label %if.end.585

if.end.585:                                       ; preds = %if.then.578, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %310 = load i32, i32* %regno495, align 4
  %311 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call586 = call %struct.rtx_def* @remove_death(i32 %310, %struct.rtx_def* %311)
  %312 = load i32, i32* %regno495, align 4
  %idxprom587 = sext i32 %312 to i64
  %313 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data588 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %313, i32 0, i32 4
  %reg589 = bitcast %union.varray_data_tag* %data588 to [1 x %struct.reg_info_def*]*
  %arrayidx590 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg589, i32 0, i64 %idxprom587
  %314 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx590, align 8
  %refs591 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %314, i32 0, i32 4
  store i32 0, i32* %refs591, align 4
  %315 = load i32, i32* %regno495, align 4
  %idxprom592 = sext i32 %315 to i64
  %316 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data593 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %316, i32 0, i32 4
  %reg594 = bitcast %union.varray_data_tag* %data593 to [1 x %struct.reg_info_def*]*
  %arrayidx595 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg594, i32 0, i64 %idxprom592
  %317 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx595, align 8
  %freq = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %317, i32 0, i32 5
  store i32 0, i32* %freq, align 4
  %318 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %call596 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %318)
  %319 = load i32, i32* %regno495, align 4
  %idxprom597 = sext i32 %319 to i64
  %320 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx598 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %320, i64 %idxprom597
  %init_insns599 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx598, i32 0, i32 4
  %321 = load %struct.rtx_def*, %struct.rtx_def** %init_insns599, align 8
  %fld600 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %321, i32 0, i32 1
  %arrayidx601 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld600, i32 0, i64 1
  %rtx602 = bitcast %union.rtunion_def* %arrayidx601 to %struct.rtx_def**
  %322 = load %struct.rtx_def*, %struct.rtx_def** %rtx602, align 8
  %323 = load i32, i32* %regno495, align 4
  %idxprom603 = sext i32 %323 to i64
  %324 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx604 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %324, i64 %idxprom603
  %init_insns605 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx604, i32 0, i32 4
  store %struct.rtx_def* %322, %struct.rtx_def** %init_insns605, align 8
  br label %if.end.680

if.else.606:                                      ; preds = %land.lhs.true.545, %if.end.538
  %325 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld607 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %325, i32 0, i32 1
  %arrayidx608 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld607, i32 0, i64 1
  %rtx609 = bitcast %union.rtunion_def* %arrayidx608 to %struct.rtx_def**
  %326 = load %struct.rtx_def*, %struct.rtx_def** %rtx609, align 8
  %327 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %cmp610 = icmp ne %struct.rtx_def* %326, %327
  br i1 %cmp610, label %if.then.612, label %if.end.679

if.then.612:                                      ; preds = %if.else.606
  %328 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %fld613 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %328, i32 0, i32 1
  %arrayidx614 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld613, i32 0, i64 3
  %rtx615 = bitcast %union.rtunion_def* %arrayidx614 to %struct.rtx_def**
  %329 = load %struct.rtx_def*, %struct.rtx_def** %rtx615, align 8
  %330 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call616 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %329, %struct.rtx_def* %330)
  store %struct.rtx_def* %call616, %struct.rtx_def** %new_insn, align 8
  %331 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %fld617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %331, i32 0, i32 1
  %arrayidx618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld617, i32 0, i64 6
  %rtx619 = bitcast %union.rtunion_def* %arrayidx618 to %struct.rtx_def**
  %332 = load %struct.rtx_def*, %struct.rtx_def** %rtx619, align 8
  %333 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld620 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %333, i32 0, i32 1
  %arrayidx621 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld620, i32 0, i64 6
  %rtx622 = bitcast %union.rtunion_def* %arrayidx621 to %struct.rtx_def**
  store %struct.rtx_def* %332, %struct.rtx_def** %rtx622, align 8
  %334 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %fld623 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %334, i32 0, i32 1
  %arrayidx624 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld623, i32 0, i64 6
  %rtx625 = bitcast %union.rtunion_def* %arrayidx624 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx625, align 8
  %335 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %fld626 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %335, i32 0, i32 1
  %arrayidx627 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld626, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx627 to i32*
  %336 = load i32, i32* %rtint, align 4
  %337 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld628 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %337, i32 0, i32 1
  %arrayidx629 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld628, i32 0, i64 4
  %rtint630 = bitcast %union.rtunion_def* %arrayidx629 to i32*
  store i32 %336, i32* %rtint630, align 4
  %338 = load %struct.rtx_def*, %struct.rtx_def** %equiv_insn, align 8
  %call631 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %338)
  %339 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %340 = load i32, i32* %regno495, align 4
  %idxprom632 = sext i32 %340 to i64
  %341 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx633 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %341, i64 %idxprom632
  %init_insns634 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx633, i32 0, i32 4
  %342 = load %struct.rtx_def*, %struct.rtx_def** %init_insns634, align 8
  %fld635 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %342, i32 0, i32 1
  %arrayidx636 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld635, i32 0, i64 0
  %rtx637 = bitcast %union.rtunion_def* %arrayidx636 to %struct.rtx_def**
  store %struct.rtx_def* %339, %struct.rtx_def** %rtx637, align 8
  %343 = load i32, i32* %block, align 4
  %cmp638 = icmp sge i32 %343, 0
  br i1 %cmp638, label %cond.true.640, label %cond.false.641

cond.true.640:                                    ; preds = %if.then.612
  %344 = load i32, i32* %block, align 4
  br label %cond.end.642

cond.false.641:                                   ; preds = %if.then.612
  br label %cond.end.642

cond.end.642:                                     ; preds = %cond.false.641, %cond.true.640
  %cond643 = phi i32 [ %344, %cond.true.640 ], [ 0, %cond.false.641 ]
  %345 = load i32, i32* %regno495, align 4
  %idxprom644 = sext i32 %345 to i64
  %346 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data645 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %346, i32 0, i32 4
  %reg646 = bitcast %union.varray_data_tag* %data645 to [1 x %struct.reg_info_def*]*
  %arrayidx647 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg646, i32 0, i64 %idxprom644
  %347 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx647, align 8
  %basic_block648 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %347, i32 0, i32 9
  store i32 %cond643, i32* %basic_block648, align 4
  %348 = load i32, i32* %regno495, align 4
  %idxprom649 = sext i32 %348 to i64
  %349 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data650 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %349, i32 0, i32 4
  %reg651 = bitcast %union.varray_data_tag* %data650 to [1 x %struct.reg_info_def*]*
  %arrayidx652 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg651, i32 0, i64 %idxprom649
  %350 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx652, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %350, i32 0, i32 8
  store i32 0, i32* %calls_crossed, align 4
  %351 = load i32, i32* %regno495, align 4
  %idxprom653 = sext i32 %351 to i64
  %352 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data654 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %352, i32 0, i32 4
  %reg655 = bitcast %union.varray_data_tag* %data654 to [1 x %struct.reg_info_def*]*
  %arrayidx656 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg655, i32 0, i64 %idxprom653
  %353 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx656, align 8
  %live_length657 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %353, i32 0, i32 7
  store i32 2, i32* %live_length657, align 4
  %354 = load i32, i32* %block, align 4
  %cmp658 = icmp sge i32 %354, 0
  br i1 %cmp658, label %land.lhs.true.660, label %if.end.677

land.lhs.true.660:                                ; preds = %cond.end.642
  %355 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %356 = load i32, i32* %block, align 4
  %idxprom661 = sext i32 %356 to i64
  %357 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data662 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %357, i32 0, i32 4
  %bb663 = bitcast %union.varray_data_tag* %data662 to [1 x %struct.basic_block_def*]*
  %arrayidx664 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb663, i32 0, i64 %idxprom661
  %358 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx664, align 8
  %head665 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %358, i32 0, i32 0
  %359 = load %struct.rtx_def*, %struct.rtx_def** %head665, align 8
  %cmp666 = icmp eq %struct.rtx_def* %355, %359
  br i1 %cmp666, label %if.then.668, label %if.end.677

if.then.668:                                      ; preds = %land.lhs.true.660
  %360 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld669 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %360, i32 0, i32 1
  %arrayidx670 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld669, i32 0, i64 1
  %rtx671 = bitcast %union.rtunion_def* %arrayidx670 to %struct.rtx_def**
  %361 = load %struct.rtx_def*, %struct.rtx_def** %rtx671, align 8
  %362 = load i32, i32* %block, align 4
  %idxprom672 = sext i32 %362 to i64
  %363 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data673 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %363, i32 0, i32 4
  %bb674 = bitcast %union.varray_data_tag* %data673 to [1 x %struct.basic_block_def*]*
  %arrayidx675 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb674, i32 0, i64 %idxprom672
  %364 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx675, align 8
  %head676 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %364, i32 0, i32 0
  store %struct.rtx_def* %361, %struct.rtx_def** %head676, align 8
  br label %if.end.677

if.end.677:                                       ; preds = %if.then.668, %land.lhs.true.660, %cond.end.642
  %365 = load i32, i32* %regno495, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %cleared_regs, i32 %365)
  %366 = load i32, i32* %clear_regnos, align 4
  %inc678 = add nsw i32 %366, 1
  store i32 %inc678, i32* %clear_regnos, align 4
  br label %if.end.679

if.end.679:                                       ; preds = %if.end.677, %if.else.606
  br label %if.end.680

if.end.680:                                       ; preds = %if.end.679, %while.end
  br label %if.end.681

if.end.681:                                       ; preds = %if.end.680, %land.lhs.true.485, %for.body.479
  br label %for.inc.682

for.inc.682:                                      ; preds = %if.end.681, %if.then.537, %if.then.512
  %367 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld683 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %367, i32 0, i32 1
  %arrayidx684 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld683, i32 0, i64 1
  %rtx685 = bitcast %union.rtunion_def* %arrayidx684 to %struct.rtx_def**
  %368 = load %struct.rtx_def*, %struct.rtx_def** %rtx685, align 8
  store %struct.rtx_def* %368, %struct.rtx_def** %link, align 8
  br label %for.cond.477

for.end.686:                                      ; preds = %for.cond.477
  br label %for.inc.687

for.inc.687:                                      ; preds = %for.end.686, %if.then.472
  %369 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld688 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %369, i32 0, i32 1
  %arrayidx689 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld688, i32 0, i64 1
  %rtx690 = bitcast %union.rtunion_def* %arrayidx689 to %struct.rtx_def**
  %370 = load %struct.rtx_def*, %struct.rtx_def** %rtx690, align 8
  store %struct.rtx_def* %370, %struct.rtx_def** %insn, align 8
  br label %for.cond.457

for.end.691:                                      ; preds = %for.cond.457
  br label %for.inc.692

for.inc.692:                                      ; preds = %for.end.691
  %371 = load i32, i32* %block, align 4
  %dec693 = add nsw i32 %371, -1
  store i32 %dec693, i32* %block, align 4
  br label %for.cond.446

for.end.694:                                      ; preds = %for.cond.446
  %372 = load i32, i32* %clear_regnos, align 4
  %tobool695 = icmp ne i32 %372, 0
  br i1 %tobool695, label %if.then.696, label %if.end.801

if.then.696:                                      ; preds = %for.end.694
  %373 = load i32, i32* %clear_regnos, align 4
  %cmp697 = icmp sgt i32 %373, 8
  br i1 %cmp697, label %if.then.699, label %if.else.727

if.then.699:                                      ; preds = %if.then.696
  store i32 0, i32* %l, align 4
  br label %for.cond.700

for.cond.700:                                     ; preds = %for.inc.724, %if.then.699
  %374 = load i32, i32* %l, align 4
  %375 = load i32, i32* @n_basic_blocks, align 4
  %cmp701 = icmp slt i32 %374, %375
  br i1 %cmp701, label %for.body.703, label %for.end.726

for.body.703:                                     ; preds = %for.cond.700
  %376 = load i32, i32* %l, align 4
  %idxprom704 = sext i32 %376 to i64
  %377 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data705 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %377, i32 0, i32 4
  %bb706 = bitcast %union.varray_data_tag* %data705 to [1 x %struct.basic_block_def*]*
  %arrayidx707 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb706, i32 0, i64 %idxprom704
  %378 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx707, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %378, i32 0, i32 8
  %379 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %380 = load i32, i32* %l, align 4
  %idxprom708 = sext i32 %380 to i64
  %381 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data709 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %381, i32 0, i32 4
  %bb710 = bitcast %union.varray_data_tag* %data709 to [1 x %struct.basic_block_def*]*
  %arrayidx711 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb710, i32 0, i64 %idxprom708
  %382 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx711, align 8
  %global_live_at_start712 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %382, i32 0, i32 8
  %383 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start712, align 8
  %call713 = call i32 @bitmap_operation(%struct.bitmap_head_def* %379, %struct.bitmap_head_def* %383, %struct.bitmap_head_def* %cleared_regs, i32 1)
  %384 = load i32, i32* %l, align 4
  %idxprom714 = sext i32 %384 to i64
  %385 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data715 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %385, i32 0, i32 4
  %bb716 = bitcast %union.varray_data_tag* %data715 to [1 x %struct.basic_block_def*]*
  %arrayidx717 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb716, i32 0, i64 %idxprom714
  %386 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx717, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %386, i32 0, i32 9
  %387 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %388 = load i32, i32* %l, align 4
  %idxprom718 = sext i32 %388 to i64
  %389 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data719 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %389, i32 0, i32 4
  %bb720 = bitcast %union.varray_data_tag* %data719 to [1 x %struct.basic_block_def*]*
  %arrayidx721 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb720, i32 0, i64 %idxprom718
  %390 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx721, align 8
  %global_live_at_end722 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %390, i32 0, i32 9
  %391 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end722, align 8
  %call723 = call i32 @bitmap_operation(%struct.bitmap_head_def* %387, %struct.bitmap_head_def* %391, %struct.bitmap_head_def* %cleared_regs, i32 1)
  br label %for.inc.724

for.inc.724:                                      ; preds = %for.body.703
  %392 = load i32, i32* %l, align 4
  %inc725 = add nsw i32 %392, 1
  store i32 %inc725, i32* %l, align 4
  br label %for.cond.700

for.end.726:                                      ; preds = %for.cond.700
  br label %if.end.800

if.else.727:                                      ; preds = %if.then.696
  br label %do.body

do.body:                                          ; preds = %if.else.727
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %cleared_regs, i32 0, i32 0
  %393 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %393, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond.728

while.cond.728:                                   ; preds = %while.body.733, %do.body
  %394 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp729 = icmp ne %struct.bitmap_element_def* %394, null
  br i1 %cmp729, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.728
  %395 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %395, i32 0, i32 2
  %396 = load i32, i32* %indx, align 4
  %397 = load i32, i32* %indx_, align 4
  %cmp731 = icmp ult i32 %396, %397
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.728
  %398 = phi i1 [ false, %while.cond.728 ], [ %cmp731, %land.rhs ]
  br i1 %398, label %while.body.733, label %while.end.734

while.body.733:                                   ; preds = %land.end
  %399 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %399, i32 0, i32 0
  %400 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %400, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond.728

while.end.734:                                    ; preds = %land.end
  %401 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp735 = icmp ne %struct.bitmap_element_def* %401, null
  br i1 %cmp735, label %land.lhs.true.737, label %if.end.742

land.lhs.true.737:                                ; preds = %while.end.734
  %402 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx738 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %402, i32 0, i32 2
  %403 = load i32, i32* %indx738, align 4
  %404 = load i32, i32* %indx_, align 4
  %cmp739 = icmp ne i32 %403, %404
  br i1 %cmp739, label %if.then.741, label %if.end.742

if.then.741:                                      ; preds = %land.lhs.true.737
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.742

if.end.742:                                       ; preds = %if.then.741, %land.lhs.true.737, %while.end.734
  br label %for.cond.743

for.cond.743:                                     ; preds = %for.inc.797, %if.end.742
  %405 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp744 = icmp ne %struct.bitmap_element_def* %405, null
  br i1 %cmp744, label %for.body.746, label %for.end.799

for.body.746:                                     ; preds = %for.cond.743
  br label %for.cond.747

for.cond.747:                                     ; preds = %for.inc.794, %for.body.746
  %406 = load i32, i32* %word_num_, align 4
  %cmp748 = icmp ult i32 %406, 2
  br i1 %cmp748, label %for.body.750, label %for.end.796

for.body.750:                                     ; preds = %for.cond.747
  %407 = load i32, i32* %word_num_, align 4
  %idxprom751 = zext i32 %407 to i64
  %408 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %408, i32 0, i32 3
  %arrayidx752 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom751
  %409 = load i64, i64* %arrayidx752, align 8
  store i64 %409, i64* %word_, align 8
  %410 = load i64, i64* %word_, align 8
  %cmp753 = icmp ne i64 %410, 0
  br i1 %cmp753, label %if.then.755, label %if.end.793

if.then.755:                                      ; preds = %for.body.750
  br label %for.cond.756

for.cond.756:                                     ; preds = %for.inc.790, %if.then.755
  %411 = load i32, i32* %bit_num_, align 4
  %cmp757 = icmp ult i32 %411, 64
  br i1 %cmp757, label %for.body.759, label %for.end.792

for.body.759:                                     ; preds = %for.cond.756
  %412 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %412 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %413 = load i64, i64* %word_, align 8
  %414 = load i64, i64* %mask_, align 8
  %and = and i64 %413, %414
  %cmp760 = icmp ne i64 %and, 0
  br i1 %cmp760, label %if.then.762, label %if.end.789

if.then.762:                                      ; preds = %for.body.759
  %415 = load i64, i64* %mask_, align 8
  %neg = xor i64 %415, -1
  %416 = load i64, i64* %word_, align 8
  %and763 = and i64 %416, %neg
  store i64 %and763, i64* %word_, align 8
  %417 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx764 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %417, i32 0, i32 2
  %418 = load i32, i32* %indx764, align 4
  %mul765 = mul i32 %418, 128
  %419 = load i32, i32* %word_num_, align 4
  %mul766 = mul i32 %419, 64
  %add = add i32 %mul765, %mul766
  %420 = load i32, i32* %bit_num_, align 4
  %add767 = add i32 %add, %420
  store i32 %add767, i32* %j, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.768

for.cond.768:                                     ; preds = %for.inc.782, %if.then.762
  %421 = load i32, i32* %l, align 4
  %422 = load i32, i32* @n_basic_blocks, align 4
  %cmp769 = icmp slt i32 %421, %422
  br i1 %cmp769, label %for.body.771, label %for.end.784

for.body.771:                                     ; preds = %for.cond.768
  %423 = load i32, i32* %l, align 4
  %idxprom772 = sext i32 %423 to i64
  %424 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data773 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %424, i32 0, i32 4
  %bb774 = bitcast %union.varray_data_tag* %data773 to [1 x %struct.basic_block_def*]*
  %arrayidx775 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb774, i32 0, i64 %idxprom772
  %425 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx775, align 8
  %global_live_at_start776 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %425, i32 0, i32 8
  %426 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start776, align 8
  %427 = load i32, i32* %j, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %426, i32 %427)
  %428 = load i32, i32* %l, align 4
  %idxprom777 = sext i32 %428 to i64
  %429 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data778 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %429, i32 0, i32 4
  %bb779 = bitcast %union.varray_data_tag* %data778 to [1 x %struct.basic_block_def*]*
  %arrayidx780 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb779, i32 0, i64 %idxprom777
  %430 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx780, align 8
  %global_live_at_end781 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %430, i32 0, i32 9
  %431 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end781, align 8
  %432 = load i32, i32* %j, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %431, i32 %432)
  br label %for.inc.782

for.inc.782:                                      ; preds = %for.body.771
  %433 = load i32, i32* %l, align 4
  %inc783 = add nsw i32 %433, 1
  store i32 %inc783, i32* %l, align 4
  br label %for.cond.768

for.end.784:                                      ; preds = %for.cond.768
  %434 = load i64, i64* %word_, align 8
  %cmp785 = icmp eq i64 %434, 0
  br i1 %cmp785, label %if.then.787, label %if.end.788

if.then.787:                                      ; preds = %for.end.784
  br label %for.end.792

if.end.788:                                       ; preds = %for.end.784
  br label %if.end.789

if.end.789:                                       ; preds = %if.end.788, %for.body.759
  br label %for.inc.790

for.inc.790:                                      ; preds = %if.end.789
  %435 = load i32, i32* %bit_num_, align 4
  %inc791 = add i32 %435, 1
  store i32 %inc791, i32* %bit_num_, align 4
  br label %for.cond.756

for.end.792:                                      ; preds = %if.then.787, %for.cond.756
  br label %if.end.793

if.end.793:                                       ; preds = %for.end.792, %for.body.750
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.794

for.inc.794:                                      ; preds = %if.end.793
  %436 = load i32, i32* %word_num_, align 4
  %inc795 = add i32 %436, 1
  store i32 %inc795, i32* %word_num_, align 4
  br label %for.cond.747

for.end.796:                                      ; preds = %for.cond.747
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.797

for.inc.797:                                      ; preds = %for.end.796
  %437 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next798 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %437, i32 0, i32 0
  %438 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next798, align 8
  store %struct.bitmap_element_def* %438, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.743

for.end.799:                                      ; preds = %for.cond.743
  br label %do.end

do.end:                                           ; preds = %for.end.799
  br label %if.end.800

if.end.800:                                       ; preds = %do.end, %for.end.726
  br label %if.end.801

if.end.801:                                       ; preds = %if.end.800, %for.end.694
  call void @end_alias_analysis()
  call void @bitmap_clear(%struct.bitmap_head_def* %cleared_regs)
  %439 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %440 = bitcast %struct.equivalence* %439 to i8*
  call void @free(i8* %440) #2
  ret void
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @block_alloc(i32 %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %hard_reg = alloca %struct.rtx_def*, align 8
  %insn_number = alloca i32, align 4
  %insn_count = alloca i32, align 4
  %max_uid = alloca i32, align 4
  %qty_order = alloca i32*, align 8
  %no_conflict_combined_regno = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %win = alloca i32, align 4
  %r0 = alloca %struct.rtx_def*, align 8
  %r1 = alloca %struct.rtx_def*, align 8
  %combined_regno = alloca i32, align 4
  %i38 = alloca i32, align 4
  %must_match_0 = alloca i32, align 4
  %n_matching_alts = alloca i32, align 4
  %p = alloca i8*, align 8
  %this_match = alloca i32, align 4
  %may_save_copy = alloca i32, align 4
  %fake_birth = alloca i32, align 4
  %fake_death = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 0, i32* %insn_number, align 4
  store i32 0, i32* %insn_count, align 4
  %call = call i32 @get_max_uid()
  store i32 %call, i32* %max_uid, align 4
  store i32 -1, i32* %no_conflict_combined_regno, align 4
  %0 = load i32, i32* %b.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.10
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 37
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %insn_count, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %insn_count, align 4
  %7 = load i32, i32* %max_uid, align 4
  %cmp1 = icmp sgt i32 %inc, %7
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 1242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.block_alloc, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %while.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = load i32, i32* %b.addr, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb6 = bitcast %union.varray_data_tag* %data5 to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb6, i32 0, i64 %idxprom4
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp8 = icmp eq %struct.rtx_def* %8, %12
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.3
  br label %while.end

if.end.10:                                        ; preds = %if.end.3
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %insn, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.9
  %15 = load i32, i32* %insn_count, align 4
  %mul = mul nsw i32 2, %15
  %add = add nsw i32 %mul, 2
  %conv = sext i32 %add to i64
  %call12 = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %16 = bitcast i8* %call12 to i64*
  store i64* %16, i64** @regs_live_at, align 8
  br label %do.body

do.body:                                          ; preds = %while.end
  store i64 0, i64* @regs_live, align 8
  %17 = load i32, i32* %b.addr, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data14 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb15 = bitcast %union.varray_data_tag* %data14 to [1 x %struct.basic_block_def*]*
  %arrayidx16 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb15, i32 0, i64 %idxprom13
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx16, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 8
  %20 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  call void @reg_set_to_hard_reg_set(i64* @regs_live, %struct.bitmap_head_def* %20)
  br label %do.end

do.end:                                           ; preds = %do.body
  %21 = load i32, i32* %b.addr, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data18 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %bb19 = bitcast %union.varray_data_tag* %data18 to [1 x %struct.basic_block_def*]*
  %arrayidx20 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb19, i32 0, i64 %idxprom17
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx20, align 8
  %head21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 0
  %24 = load %struct.rtx_def*, %struct.rtx_def** %head21, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  br label %while.body.22

while.body.22:                                    ; preds = %do.end, %if.end.543
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load23 = load i32, i32* %26, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp ne i32 %bf.clear24, 37
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %while.body.22
  %27 = load i32, i32* %insn_number, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %insn_number, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %while.body.22
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load30 = load i32, i32* %29, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %idxprom32 = sext i32 %bf.clear31 to i64
  %arrayidx33 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom32
  %30 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %30 to i32
  %cmp35 = icmp eq i32 %conv34, 105
  br i1 %cmp35, label %if.then.37, label %if.end.526

if.then.37:                                       ; preds = %if.end.29
  store i32 0, i32* %win, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %r1, align 8
  store i32 -1, i32* %combined_regno, align 4
  %31 = load i32, i32* %insn_number, align 4
  store i32 %31, i32* @this_insn_number, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** @this_insn, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @extract_insn(%struct.rtx_def* %33)
  store i32 -1, i32* @which_alternative, align 4
  %34 = load i32, i32* @optimize, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.194

land.lhs.true:                                    ; preds = %if.then.37
  %35 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv39 = sext i8 %35 to i32
  %cmp40 = icmp sgt i32 %conv39, 1
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.194

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %36 = load i8*, i8** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2, i64 0), align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 61
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.194

land.lhs.true.47:                                 ; preds = %land.lhs.true.42
  %38 = load i8*, i8** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2, i64 0), align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %39 to i32
  %cmp50 = icmp ne i32 %conv49, 38
  br i1 %cmp50, label %if.then.52, label %if.end.194

if.then.52:                                       ; preds = %land.lhs.true.47
  store i32 -1, i32* %must_match_0, align 4
  store i32 0, i32* %n_matching_alts, align 4
  store i32 1, i32* %i38, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.52
  %40 = load i32, i32* %i38, align 4
  %41 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv53 = sext i8 %41 to i32
  %cmp54 = icmp slt i32 %40, %conv53
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i38, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom56
  %43 = load i8*, i8** %arrayidx57, align 8
  store i8* %43, i8** %p, align 8
  %44 = load i8*, i8** %p, align 8
  %call58 = call i32 @requires_inout(i8* %44)
  store i32 %call58, i32* %this_match, align 4
  %45 = load i32, i32* %this_match, align 4
  %46 = load i32, i32* %n_matching_alts, align 4
  %add59 = add nsw i32 %46, %45
  store i32 %add59, i32* %n_matching_alts, align 4
  %47 = load i32, i32* %this_match, align 4
  %48 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv60 = sext i8 %48 to i32
  %cmp61 = icmp eq i32 %47, %conv60
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.body
  %49 = load i32, i32* %i38, align 4
  store i32 %49, i32* %must_match_0, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %50 = load i32, i32* %i38, align 4
  %inc65 = add nsw i32 %50, 1
  store i32 %inc65, i32* %i38, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %r0, align 8
  store i32 1, i32* %i38, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.191, %for.end
  %52 = load i32, i32* %i38, align 4
  %53 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv67 = sext i8 %53 to i32
  %cmp68 = icmp slt i32 %52, %conv67
  br i1 %cmp68, label %for.body.70, label %for.end.193

for.body.70:                                      ; preds = %for.cond.66
  %54 = load i32, i32* %must_match_0, align 4
  %cmp71 = icmp sge i32 %54, 0
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.99

land.lhs.true.73:                                 ; preds = %for.body.70
  %55 = load i32, i32* %i38, align 4
  %56 = load i32, i32* %must_match_0, align 4
  %cmp74 = icmp ne i32 %55, %56
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.99

land.lhs.true.76:                                 ; preds = %land.lhs.true.73
  %57 = load i32, i32* %i38, align 4
  %58 = load i32, i32* %must_match_0, align 4
  %add77 = add nsw i32 %58, 1
  %cmp78 = icmp eq i32 %57, %add77
  br i1 %cmp78, label %land.lhs.true.80, label %land.lhs.true.87

land.lhs.true.80:                                 ; preds = %land.lhs.true.76
  %59 = load i32, i32* %i38, align 4
  %sub = sub nsw i32 %59, 1
  %idxprom81 = sext i32 %sub to i64
  %arrayidx82 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom81
  %60 = load i8*, i8** %arrayidx82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %61 to i32
  %cmp85 = icmp eq i32 %conv84, 37
  br i1 %cmp85, label %if.end.99, label %land.lhs.true.87

land.lhs.true.87:                                 ; preds = %land.lhs.true.80, %land.lhs.true.76
  %62 = load i32, i32* %i38, align 4
  %63 = load i32, i32* %must_match_0, align 4
  %sub88 = sub nsw i32 %63, 1
  %cmp89 = icmp eq i32 %62, %sub88
  br i1 %cmp89, label %land.lhs.true.91, label %if.then.98

land.lhs.true.91:                                 ; preds = %land.lhs.true.87
  %64 = load i32, i32* %i38, align 4
  %idxprom92 = sext i32 %64 to i64
  %arrayidx93 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom92
  %65 = load i8*, i8** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %65, i64 0
  %66 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %66 to i32
  %cmp96 = icmp eq i32 %conv95, 37
  br i1 %cmp96, label %if.end.99, label %if.then.98

if.then.98:                                       ; preds = %land.lhs.true.91, %land.lhs.true.87
  br label %for.inc.191

if.end.99:                                        ; preds = %land.lhs.true.91, %land.lhs.true.80, %land.lhs.true.73, %for.body.70
  %67 = load i32, i32* %n_matching_alts, align 4
  %68 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv100 = sext i8 %68 to i32
  %cmp101 = icmp eq i32 %67, %conv100
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.110

land.lhs.true.103:                                ; preds = %if.end.99
  %69 = load i32, i32* %i38, align 4
  %idxprom104 = sext i32 %69 to i64
  %arrayidx105 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom104
  %70 = load i8*, i8** %arrayidx105, align 8
  %call106 = call i32 @requires_inout(i8* %70)
  %cmp107 = icmp eq i32 0, %call106
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true.103
  br label %for.inc.191

if.end.110:                                       ; preds = %land.lhs.true.103, %if.end.99
  %71 = load i32, i32* %i38, align 4
  %idxprom111 = sext i32 %71 to i64
  %arrayidx112 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom111
  %72 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx112, align 8
  store %struct.rtx_def* %72, %struct.rtx_def** %r1, align 8
  %73 = load i32, i32* %i38, align 4
  %idxprom113 = sext i32 %73 to i64
  %arrayidx114 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom113
  %74 = load i8*, i8** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %74, i64 0
  %75 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %75 to i32
  %cmp117 = icmp eq i32 %conv116, 112
  br i1 %cmp117, label %if.then.119, label %if.end.134

if.then.119:                                      ; preds = %if.end.110
  br label %while.cond.120

while.cond.120:                                   ; preds = %while.body.129, %if.then.119
  %76 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load121 = load i32, i32* %77, align 8
  %bf.clear122 = and i32 %bf.load121, 65535
  %cmp123 = icmp eq i32 %bf.clear122, 75
  br i1 %cmp123, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.120
  %78 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load125 = load i32, i32* %79, align 8
  %bf.clear126 = and i32 %bf.load125, 65535
  %cmp127 = icmp eq i32 %bf.clear126, 78
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.120
  %80 = phi i1 [ true, %while.cond.120 ], [ %cmp127, %lor.rhs ]
  br i1 %80, label %while.body.129, label %while.end.133

while.body.129:                                   ; preds = %lor.end
  %81 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx132, align 8
  store %struct.rtx_def* %82, %struct.rtx_def** %r1, align 8
  br label %while.cond.120

while.end.133:                                    ; preds = %lor.end
  br label %if.end.134

if.end.134:                                       ; preds = %while.end.133, %if.end.110
  %83 = load %struct.function*, %struct.function** @cfun, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %call135 = call %struct.rtx_def* @get_hard_reg_initial_reg(%struct.function* %83, %struct.rtx_def* %84)
  store %struct.rtx_def* %call135, %struct.rtx_def** %hard_reg, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  %cmp136 = icmp ne %struct.rtx_def* %85, null
  br i1 %cmp136, label %if.then.138, label %if.end.159

if.then.138:                                      ; preds = %if.end.134
  %86 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load139 = load i32, i32* %87, align 8
  %bf.clear140 = and i32 %bf.load139, 65535
  %cmp141 = icmp eq i32 %bf.clear140, 61
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.158

land.lhs.true.143:                                ; preds = %if.then.138
  %88 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx145 to i32*
  %89 = load i32, i32* %rtuint, align 4
  %sub146 = sub i32 %89, 0
  %conv147 = zext i32 %sub146 to i64
  %cmp148 = icmp ule i64 %conv147, 52
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.158

land.lhs.true.150:                                ; preds = %land.lhs.true.143
  %90 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 0
  %rtuint153 = bitcast %union.rtunion_def* %arrayidx152 to i32*
  %91 = load i32, i32* %rtuint153, align 4
  %idxprom154 = zext i32 %91 to i64
  %arrayidx155 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom154
  %92 = load i8, i8* %arrayidx155, align 1
  %tobool156 = icmp ne i8 %92, 0
  br i1 %tobool156, label %if.end.158, label %if.then.157

if.then.157:                                      ; preds = %land.lhs.true.150
  br label %for.inc.191

if.end.158:                                       ; preds = %land.lhs.true.150, %land.lhs.true.143, %if.then.138
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.134
  %93 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load160 = load i32, i32* %94, align 8
  %bf.clear161 = and i32 %bf.load160, 65535
  %cmp162 = icmp eq i32 %bf.clear161, 61
  br i1 %cmp162, label %if.then.168, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.159
  %95 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load164 = load i32, i32* %96, align 8
  %bf.clear165 = and i32 %bf.load164, 65535
  %cmp166 = icmp eq i32 %bf.clear165, 63
  br i1 %cmp166, label %if.then.168, label %if.end.187

if.then.168:                                      ; preds = %lor.lhs.false, %if.end.159
  %97 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %98 = load i32, i32* %i38, align 4
  %idxprom169 = sext i32 %98 to i64
  %arrayidx170 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom169
  %99 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx170, align 8
  %cmp171 = icmp eq %struct.rtx_def* %97, %99
  br i1 %cmp171, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.168
  %100 = load i32, i32* %must_match_0, align 4
  %cmp173 = icmp sge i32 %100, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.168
  %101 = phi i1 [ false, %if.then.168 ], [ %cmp173, %land.rhs ]
  %land.ext = zext i1 %101 to i32
  store i32 %land.ext, i32* %may_save_copy, align 4
  %102 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %103 = bitcast %struct.rtx_def* %102 to i32*
  %bf.load175 = load i32, i32* %103, align 8
  %bf.clear176 = and i32 %bf.load175, 65535
  %cmp177 = icmp eq i32 %bf.clear176, 61
  br i1 %cmp177, label %if.then.184, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %land.end
  %104 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load180 = load i32, i32* %105, align 8
  %bf.clear181 = and i32 %bf.load180, 65535
  %cmp182 = icmp eq i32 %bf.clear181, 63
  br i1 %cmp182, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %lor.lhs.false.179, %land.end
  %106 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %108 = load i32, i32* %may_save_copy, align 4
  %109 = load i32, i32* %insn_number, align 4
  %110 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call185 = call i32 @combine_regs(%struct.rtx_def* %106, %struct.rtx_def* %107, i32 %108, i32 %109, %struct.rtx_def* %110, i32 0)
  store i32 %call185, i32* %win, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %lor.lhs.false.179
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %lor.lhs.false
  %111 = load i32, i32* %win, align 4
  %tobool188 = icmp ne i32 %111, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.187
  br label %for.end.193

if.end.190:                                       ; preds = %if.end.187
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190, %if.then.157, %if.then.109, %if.then.98
  %112 = load i32, i32* %i38, align 4
  %inc192 = add nsw i32 %112, 1
  store i32 %inc192, i32* %i38, align 4
  br label %for.cond.66

for.end.193:                                      ; preds = %if.then.189, %for.cond.66
  br label %if.end.194

if.end.194:                                       ; preds = %for.end.193, %land.lhs.true.47, %land.lhs.true.42, %land.lhs.true, %if.then.37
  %113 = load i32, i32* @optimize, align 4
  %tobool195 = icmp ne i32 %113, 0
  br i1 %tobool195, label %land.lhs.true.196, label %if.end.401

land.lhs.true.196:                                ; preds = %if.end.194
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld197, i32 0, i64 3
  %rtx199 = bitcast %union.rtunion_def* %arrayidx198 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx199, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load200 = load i32, i32* %116, align 8
  %bf.clear201 = and i32 %bf.load200, 65535
  %cmp202 = icmp eq i32 %bf.clear201, 49
  br i1 %cmp202, label %land.lhs.true.204, label %if.end.401

land.lhs.true.204:                                ; preds = %land.lhs.true.196
  %117 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld205 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld205, i32 0, i64 3
  %rtx207 = bitcast %union.rtunion_def* %arrayidx206 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx207, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 0
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  store %struct.rtx_def* %119, %struct.rtx_def** %r0, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load211 = load i32, i32* %121, align 8
  %bf.clear212 = and i32 %bf.load211, 65535
  %cmp213 = icmp eq i32 %bf.clear212, 61
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.401

land.lhs.true.215:                                ; preds = %land.lhs.true.204
  %122 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call216 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %122, i32 7, %struct.rtx_def* null)
  store %struct.rtx_def* %call216, %struct.rtx_def** %link, align 8
  %cmp217 = icmp ne %struct.rtx_def* %call216, null
  br i1 %cmp217, label %land.lhs.true.219, label %if.end.401

land.lhs.true.219:                                ; preds = %land.lhs.true.215
  %123 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld220, i32 0, i64 0
  %rtx222 = bitcast %union.rtunion_def* %arrayidx221 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx222, align 8
  %cmp223 = icmp ne %struct.rtx_def* %124, null
  br i1 %cmp223, label %land.lhs.true.225, label %if.end.401

land.lhs.true.225:                                ; preds = %land.lhs.true.219
  %125 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld226, i32 0, i64 0
  %rtx228 = bitcast %union.rtunion_def* %arrayidx227 to %struct.rtx_def**
  %126 = load %struct.rtx_def*, %struct.rtx_def** %rtx228, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load229 = load i32, i32* %127, align 8
  %bf.clear230 = and i32 %bf.load229, 65535
  %cmp231 = icmp eq i32 %bf.clear230, 32
  br i1 %cmp231, label %land.lhs.true.233, label %if.end.401

land.lhs.true.233:                                ; preds = %land.lhs.true.225
  %128 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld234, i32 0, i64 0
  %rtx236 = bitcast %union.rtunion_def* %arrayidx235 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx236, align 8
  %130 = bitcast %struct.rtx_def* %129 to i32*
  %bf.load237 = load i32, i32* %130, align 8
  %bf.clear238 = and i32 %bf.load237, 65535
  %idxprom239 = sext i32 %bf.clear238 to i64
  %arrayidx240 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom239
  %131 = load i8, i8* %arrayidx240, align 1
  %conv241 = sext i8 %131 to i32
  %cmp242 = icmp eq i32 %conv241, 105
  br i1 %cmp242, label %cond.true, label %cond.false.271

cond.true:                                        ; preds = %land.lhs.true.233
  %132 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 0
  %rtx246 = bitcast %union.rtunion_def* %arrayidx245 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx246, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 3
  %rtx249 = bitcast %union.rtunion_def* %arrayidx248 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx249, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load250 = load i32, i32* %135, align 8
  %bf.clear251 = and i32 %bf.load250, 65535
  %cmp252 = icmp eq i32 %bf.clear251, 47
  br i1 %cmp252, label %cond.true.254, label %cond.false

cond.true.254:                                    ; preds = %cond.true
  %136 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 0
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 3
  %rtx260 = bitcast %union.rtunion_def* %arrayidx259 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx260, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %139 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld261 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx262 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld261, i32 0, i64 0
  %rtx263 = bitcast %union.rtunion_def* %arrayidx262 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %rtx263, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld264, i32 0, i64 0
  %rtx266 = bitcast %union.rtunion_def* %arrayidx265 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx266, align 8
  %fld267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld267, i32 0, i64 3
  %rtx269 = bitcast %union.rtunion_def* %arrayidx268 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx269, align 8
  %call270 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %140, %struct.rtx_def* %143)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.254
  %cond = phi %struct.rtx_def* [ %138, %cond.true.254 ], [ %call270, %cond.false ]
  br label %cond.end.272

cond.false.271:                                   ; preds = %land.lhs.true.233
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.271, %cond.end
  %cond273 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.271 ]
  store %struct.rtx_def* %cond273, %struct.rtx_def** %set, align 8
  %cmp274 = icmp ne %struct.rtx_def* %cond273, null
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.401

land.lhs.true.276:                                ; preds = %cond.end.272
  %144 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 0
  %rtx279 = bitcast %union.rtunion_def* %arrayidx278 to %struct.rtx_def**
  %145 = load %struct.rtx_def*, %struct.rtx_def** %rtx279, align 8
  %146 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %cmp280 = icmp eq %struct.rtx_def* %145, %146
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.401

land.lhs.true.282:                                ; preds = %land.lhs.true.276
  %147 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 1
  %rtx285 = bitcast %union.rtunion_def* %arrayidx284 to %struct.rtx_def**
  %148 = load %struct.rtx_def*, %struct.rtx_def** %rtx285, align 8
  %149 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %cmp286 = icmp eq %struct.rtx_def* %148, %149
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.401

land.lhs.true.288:                                ; preds = %land.lhs.true.282
  %150 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld289 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx290 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld289, i32 0, i64 0
  %rtx291 = bitcast %union.rtunion_def* %arrayidx290 to %struct.rtx_def**
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rtx291, align 8
  %call292 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %151, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call292, %struct.rtx_def** %note, align 8
  %cmp293 = icmp ne %struct.rtx_def* %call292, null
  br i1 %cmp293, label %if.then.295, label %if.end.401

if.then.295:                                      ; preds = %land.lhs.true.288
  %152 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld296, i32 0, i64 0
  %rtx298 = bitcast %union.rtunion_def* %arrayidx297 to %struct.rtx_def**
  %153 = load %struct.rtx_def*, %struct.rtx_def** %rtx298, align 8
  store %struct.rtx_def* %153, %struct.rtx_def** %r1, align 8
  %154 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %155 = bitcast %struct.rtx_def* %154 to i32*
  %bf.load299 = load i32, i32* %155, align 8
  %bf.clear300 = and i32 %bf.load299, 65535
  %cmp301 = icmp eq i32 %bf.clear300, 61
  br i1 %cmp301, label %land.rhs.303, label %land.end.306

land.rhs.303:                                     ; preds = %if.then.295
  %156 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %158 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %call304 = call i32 @no_conflict_p(%struct.rtx_def* %156, %struct.rtx_def* %157, %struct.rtx_def* %158)
  %tobool305 = icmp ne i32 %call304, 0
  br label %land.end.306

land.end.306:                                     ; preds = %land.rhs.303, %if.then.295
  %159 = phi i1 [ false, %if.then.295 ], [ %tobool305, %land.rhs.303 ]
  br i1 %159, label %if.then.308, label %if.else

if.then.308:                                      ; preds = %land.end.306
  %160 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %162 = load i32, i32* %insn_number, align 4
  %163 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call309 = call i32 @combine_regs(%struct.rtx_def* %160, %struct.rtx_def* %161, i32 1, i32 %162, %struct.rtx_def* %163, i32 1)
  store i32 %call309, i32* %win, align 4
  br label %if.end.394

if.else:                                          ; preds = %land.end.306
  %164 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld310 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %arrayidx311 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld310, i32 0, i64 0
  %rtx312 = bitcast %union.rtunion_def* %arrayidx311 to %struct.rtx_def**
  %165 = load %struct.rtx_def*, %struct.rtx_def** %rtx312, align 8
  %166 = bitcast %struct.rtx_def* %165 to i32*
  %bf.load313 = load i32, i32* %166, align 8
  %bf.clear314 = and i32 %bf.load313, 65535
  %idxprom315 = sext i32 %bf.clear314 to i64
  %arrayidx316 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom315
  %167 = load i8*, i8** %arrayidx316, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %167, i64 0
  %168 = load i8, i8* %arrayidx317, align 1
  %conv318 = sext i8 %168 to i32
  %cmp319 = icmp eq i32 %conv318, 101
  br i1 %cmp319, label %land.lhs.true.321, label %if.else.343

land.lhs.true.321:                                ; preds = %if.else
  %169 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx323 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld322, i32 0, i64 0
  %rtx324 = bitcast %union.rtunion_def* %arrayidx323 to %struct.rtx_def**
  %170 = load %struct.rtx_def*, %struct.rtx_def** %rtx324, align 8
  %fld325 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx326 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld325, i32 0, i64 0
  %rtx327 = bitcast %union.rtunion_def* %arrayidx326 to %struct.rtx_def**
  %171 = load %struct.rtx_def*, %struct.rtx_def** %rtx327, align 8
  store %struct.rtx_def* %171, %struct.rtx_def** %r1, align 8
  %172 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load328 = load i32, i32* %173, align 8
  %bf.clear329 = and i32 %bf.load328, 65535
  %cmp330 = icmp eq i32 %bf.clear329, 61
  br i1 %cmp330, label %lor.end.337, label %lor.rhs.332

lor.rhs.332:                                      ; preds = %land.lhs.true.321
  %174 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load333 = load i32, i32* %175, align 8
  %bf.clear334 = and i32 %bf.load333, 65535
  %cmp335 = icmp eq i32 %bf.clear334, 63
  br label %lor.end.337

lor.end.337:                                      ; preds = %lor.rhs.332, %land.lhs.true.321
  %176 = phi i1 [ true, %land.lhs.true.321 ], [ %cmp335, %lor.rhs.332 ]
  br i1 %176, label %land.lhs.true.338, label %if.else.343

land.lhs.true.338:                                ; preds = %lor.end.337
  %177 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %call339 = call i32 @no_conflict_p(%struct.rtx_def* %177, %struct.rtx_def* %178, %struct.rtx_def* %179)
  %tobool340 = icmp ne i32 %call339, 0
  br i1 %tobool340, label %if.then.341, label %if.else.343

if.then.341:                                      ; preds = %land.lhs.true.338
  %180 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %181 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %182 = load i32, i32* %insn_number, align 4
  %183 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call342 = call i32 @combine_regs(%struct.rtx_def* %180, %struct.rtx_def* %181, i32 0, i32 %182, %struct.rtx_def* %183, i32 1)
  store i32 %call342, i32* %win, align 4
  br label %if.end.393

if.else.343:                                      ; preds = %land.lhs.true.338, %lor.end.337, %if.else
  %184 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld344, i32 0, i64 0
  %rtx346 = bitcast %union.rtunion_def* %arrayidx345 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %rtx346, align 8
  %186 = bitcast %struct.rtx_def* %185 to i32*
  %bf.load347 = load i32, i32* %186, align 8
  %bf.clear348 = and i32 %bf.load347, 65535
  %cmp349 = icmp eq i32 %bf.clear348, 103
  br i1 %cmp349, label %land.lhs.true.370, label %lor.lhs.false.351

lor.lhs.false.351:                                ; preds = %if.else.343
  %187 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld352 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx353 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld352, i32 0, i64 0
  %rtx354 = bitcast %union.rtunion_def* %arrayidx353 to %struct.rtx_def**
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtx354, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load355 = load i32, i32* %189, align 8
  %bf.clear356 = and i32 %bf.load355, 65535
  %cmp357 = icmp eq i32 %bf.clear356, 102
  br i1 %cmp357, label %land.lhs.true.370, label %lor.lhs.false.359

lor.lhs.false.359:                                ; preds = %lor.lhs.false.351
  %190 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld360, i32 0, i64 0
  %rtx362 = bitcast %union.rtunion_def* %arrayidx361 to %struct.rtx_def**
  %191 = load %struct.rtx_def*, %struct.rtx_def** %rtx362, align 8
  %192 = bitcast %struct.rtx_def* %191 to i32*
  %bf.load363 = load i32, i32* %192, align 8
  %bf.clear364 = and i32 %bf.load363, 65535
  %idxprom365 = sext i32 %bf.clear364 to i64
  %arrayidx366 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom365
  %193 = load i8, i8* %arrayidx366, align 1
  %conv367 = sext i8 %193 to i32
  %cmp368 = icmp eq i32 %conv367, 99
  br i1 %cmp368, label %land.lhs.true.370, label %if.end.392

land.lhs.true.370:                                ; preds = %lor.lhs.false.359, %lor.lhs.false.351, %if.else.343
  %194 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld371 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx372 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld371, i32 0, i64 0
  %rtx373 = bitcast %union.rtunion_def* %arrayidx372 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx373, align 8
  %fld374 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld374, i32 0, i64 1
  %rtx376 = bitcast %union.rtunion_def* %arrayidx375 to %struct.rtx_def**
  %196 = load %struct.rtx_def*, %struct.rtx_def** %rtx376, align 8
  store %struct.rtx_def* %196, %struct.rtx_def** %r1, align 8
  %197 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %198 = bitcast %struct.rtx_def* %197 to i32*
  %bf.load377 = load i32, i32* %198, align 8
  %bf.clear378 = and i32 %bf.load377, 65535
  %cmp379 = icmp eq i32 %bf.clear378, 61
  br i1 %cmp379, label %lor.end.386, label %lor.rhs.381

lor.rhs.381:                                      ; preds = %land.lhs.true.370
  %199 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %200 = bitcast %struct.rtx_def* %199 to i32*
  %bf.load382 = load i32, i32* %200, align 8
  %bf.clear383 = and i32 %bf.load382, 65535
  %cmp384 = icmp eq i32 %bf.clear383, 63
  br label %lor.end.386

lor.end.386:                                      ; preds = %lor.rhs.381, %land.lhs.true.370
  %201 = phi i1 [ true, %land.lhs.true.370 ], [ %cmp384, %lor.rhs.381 ]
  br i1 %201, label %land.lhs.true.387, label %if.end.392

land.lhs.true.387:                                ; preds = %lor.end.386
  %202 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %203 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %204 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %call388 = call i32 @no_conflict_p(%struct.rtx_def* %202, %struct.rtx_def* %203, %struct.rtx_def* %204)
  %tobool389 = icmp ne i32 %call388, 0
  br i1 %tobool389, label %if.then.390, label %if.end.392

if.then.390:                                      ; preds = %land.lhs.true.387
  %205 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %206 = load %struct.rtx_def*, %struct.rtx_def** %r0, align 8
  %207 = load i32, i32* %insn_number, align 4
  %208 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call391 = call i32 @combine_regs(%struct.rtx_def* %205, %struct.rtx_def* %206, i32 0, i32 %207, %struct.rtx_def* %208, i32 1)
  store i32 %call391, i32* %win, align 4
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.390, %land.lhs.true.387, %lor.end.386, %lor.lhs.false.359
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.392, %if.then.341
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393, %if.then.308
  %209 = load i32, i32* %win, align 4
  %tobool395 = icmp ne i32 %209, 0
  br i1 %tobool395, label %if.then.396, label %if.end.400

if.then.396:                                      ; preds = %if.end.394
  %210 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %fld397 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx398 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld397, i32 0, i64 0
  %rtuint399 = bitcast %union.rtunion_def* %arrayidx398 to i32*
  %211 = load i32, i32* %rtuint399, align 4
  store i32 %211, i32* %no_conflict_combined_regno, align 4
  br label %if.end.400

if.end.400:                                       ; preds = %if.then.396, %if.end.394
  br label %if.end.401

if.end.401:                                       ; preds = %if.end.400, %land.lhs.true.288, %land.lhs.true.282, %land.lhs.true.276, %cond.end.272, %land.lhs.true.225, %land.lhs.true.219, %land.lhs.true.215, %land.lhs.true.204, %land.lhs.true.196, %if.end.194
  %212 = load i32, i32* %win, align 4
  %tobool402 = icmp ne i32 %212, 0
  br i1 %tobool402, label %if.then.403, label %if.end.417

if.then.403:                                      ; preds = %if.end.401
  br label %while.cond.404

while.cond.404:                                   ; preds = %while.body.409, %if.then.403
  %213 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %214 = bitcast %struct.rtx_def* %213 to i32*
  %bf.load405 = load i32, i32* %214, align 8
  %bf.clear406 = and i32 %bf.load405, 65535
  %cmp407 = icmp eq i32 %bf.clear406, 63
  br i1 %cmp407, label %while.body.409, label %while.end.413

while.body.409:                                   ; preds = %while.cond.404
  %215 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %fld410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %215, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld410, i32 0, i64 0
  %rtx412 = bitcast %union.rtunion_def* %arrayidx411 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %rtx412, align 8
  store %struct.rtx_def* %216, %struct.rtx_def** %r1, align 8
  br label %while.cond.404

while.end.413:                                    ; preds = %while.cond.404
  %217 = load %struct.rtx_def*, %struct.rtx_def** %r1, align 8
  %fld414 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx415 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld414, i32 0, i64 0
  %rtuint416 = bitcast %union.rtunion_def* %arrayidx415 to i32*
  %218 = load i32, i32* %rtuint416, align 4
  store i32 %218, i32* %combined_regno, align 4
  br label %if.end.417

if.end.417:                                       ; preds = %while.end.413, %if.end.401
  %219 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %219, i32 0, i32 1
  %arrayidx419 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld418, i32 0, i64 6
  %rtx420 = bitcast %union.rtunion_def* %arrayidx419 to %struct.rtx_def**
  %220 = load %struct.rtx_def*, %struct.rtx_def** %rtx420, align 8
  store %struct.rtx_def* %220, %struct.rtx_def** %link, align 8
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.465, %if.end.417
  %221 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool422 = icmp ne %struct.rtx_def* %221, null
  br i1 %tobool422, label %for.body.423, label %for.end.469

for.body.423:                                     ; preds = %for.cond.421
  %222 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %223 = bitcast %struct.rtx_def* %222 to i32*
  %bf.load424 = load i32, i32* %223, align 8
  %bf.lshr = lshr i32 %bf.load424, 16
  %bf.clear425 = and i32 %bf.lshr, 255
  %cmp426 = icmp eq i32 %bf.clear425, 1
  br i1 %cmp426, label %land.lhs.true.428, label %if.end.464

land.lhs.true.428:                                ; preds = %for.body.423
  %224 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld429 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %arrayidx430 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld429, i32 0, i64 0
  %rtx431 = bitcast %union.rtunion_def* %arrayidx430 to %struct.rtx_def**
  %225 = load %struct.rtx_def*, %struct.rtx_def** %rtx431, align 8
  %226 = bitcast %struct.rtx_def* %225 to i32*
  %bf.load432 = load i32, i32* %226, align 8
  %bf.clear433 = and i32 %bf.load432, 65535
  %cmp434 = icmp eq i32 %bf.clear433, 61
  br i1 %cmp434, label %land.lhs.true.436, label %if.end.464

land.lhs.true.436:                                ; preds = %land.lhs.true.428
  %227 = load i32, i32* %combined_regno, align 4
  %228 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld437 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %arrayidx438 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld437, i32 0, i64 0
  %rtx439 = bitcast %union.rtunion_def* %arrayidx438 to %struct.rtx_def**
  %229 = load %struct.rtx_def*, %struct.rtx_def** %rtx439, align 8
  %fld440 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld440, i32 0, i64 0
  %rtuint442 = bitcast %union.rtunion_def* %arrayidx441 to i32*
  %230 = load i32, i32* %rtuint442, align 4
  %cmp443 = icmp ne i32 %227, %230
  br i1 %cmp443, label %land.lhs.true.445, label %if.end.464

land.lhs.true.445:                                ; preds = %land.lhs.true.436
  %231 = load i32, i32* %no_conflict_combined_regno, align 4
  %232 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld446, i32 0, i64 0
  %rtx448 = bitcast %union.rtunion_def* %arrayidx447 to %struct.rtx_def**
  %233 = load %struct.rtx_def*, %struct.rtx_def** %rtx448, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 0
  %rtuint451 = bitcast %union.rtunion_def* %arrayidx450 to i32*
  %234 = load i32, i32* %rtuint451, align 4
  %cmp452 = icmp ne i32 %231, %234
  br i1 %cmp452, label %if.then.460, label %lor.lhs.false.454

lor.lhs.false.454:                                ; preds = %land.lhs.true.445
  %235 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %236 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %arrayidx456 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld455, i32 0, i64 0
  %rtx457 = bitcast %union.rtunion_def* %arrayidx456 to %struct.rtx_def**
  %237 = load %struct.rtx_def*, %struct.rtx_def** %rtx457, align 8
  %call458 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %235, i32 9, %struct.rtx_def* %237)
  %tobool459 = icmp ne %struct.rtx_def* %call458, null
  br i1 %tobool459, label %if.end.464, label %if.then.460

if.then.460:                                      ; preds = %lor.lhs.false.454, %land.lhs.true.445
  %238 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx462 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld461, i32 0, i64 0
  %rtx463 = bitcast %union.rtunion_def* %arrayidx462 to %struct.rtx_def**
  %239 = load %struct.rtx_def*, %struct.rtx_def** %rtx463, align 8
  call void @wipe_dead_reg(%struct.rtx_def* %239, i32 0)
  br label %if.end.464

if.end.464:                                       ; preds = %if.then.460, %lor.lhs.false.454, %land.lhs.true.436, %land.lhs.true.428, %for.body.423
  br label %for.inc.465

for.inc.465:                                      ; preds = %if.end.464
  %240 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %240, i32 0, i32 1
  %arrayidx467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld466, i32 0, i64 1
  %rtx468 = bitcast %union.rtunion_def* %arrayidx467 to %struct.rtx_def**
  %241 = load %struct.rtx_def*, %struct.rtx_def** %rtx468, align 8
  store %struct.rtx_def* %241, %struct.rtx_def** %link, align 8
  br label %for.cond.421

for.end.469:                                      ; preds = %for.cond.421
  %242 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld470 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %arrayidx471 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld470, i32 0, i64 3
  %rtx472 = bitcast %union.rtunion_def* %arrayidx471 to %struct.rtx_def**
  %243 = load %struct.rtx_def*, %struct.rtx_def** %rtx472, align 8
  call void @note_stores(%struct.rtx_def* %243, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @reg_is_set, i8* null)
  %244 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld473 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx474 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld473, i32 0, i64 6
  %rtx475 = bitcast %union.rtunion_def* %arrayidx474 to %struct.rtx_def**
  %245 = load %struct.rtx_def*, %struct.rtx_def** %rtx475, align 8
  store %struct.rtx_def* %245, %struct.rtx_def** %link, align 8
  br label %for.cond.476

for.cond.476:                                     ; preds = %for.inc.497, %for.end.469
  %246 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool477 = icmp ne %struct.rtx_def* %246, null
  br i1 %tobool477, label %for.body.478, label %for.end.501

for.body.478:                                     ; preds = %for.cond.476
  %247 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %248 = bitcast %struct.rtx_def* %247 to i32*
  %bf.load479 = load i32, i32* %248, align 8
  %bf.lshr480 = lshr i32 %bf.load479, 16
  %bf.clear481 = and i32 %bf.lshr480, 255
  %cmp482 = icmp eq i32 %bf.clear481, 10
  br i1 %cmp482, label %land.lhs.true.484, label %if.end.496

land.lhs.true.484:                                ; preds = %for.body.478
  %249 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld485 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %249, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld485, i32 0, i64 0
  %rtx487 = bitcast %union.rtunion_def* %arrayidx486 to %struct.rtx_def**
  %250 = load %struct.rtx_def*, %struct.rtx_def** %rtx487, align 8
  %251 = bitcast %struct.rtx_def* %250 to i32*
  %bf.load488 = load i32, i32* %251, align 8
  %bf.clear489 = and i32 %bf.load488, 65535
  %cmp490 = icmp eq i32 %bf.clear489, 61
  br i1 %cmp490, label %if.then.492, label %if.end.496

if.then.492:                                      ; preds = %land.lhs.true.484
  %252 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld493 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %252, i32 0, i32 1
  %arrayidx494 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld493, i32 0, i64 0
  %rtx495 = bitcast %union.rtunion_def* %arrayidx494 to %struct.rtx_def**
  %253 = load %struct.rtx_def*, %struct.rtx_def** %rtx495, align 8
  call void @wipe_dead_reg(%struct.rtx_def* %253, i32 1)
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.492, %land.lhs.true.484, %for.body.478
  br label %for.inc.497

for.inc.497:                                      ; preds = %if.end.496
  %254 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %254, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 1
  %rtx500 = bitcast %union.rtunion_def* %arrayidx499 to %struct.rtx_def**
  %255 = load %struct.rtx_def*, %struct.rtx_def** %rtx500, align 8
  store %struct.rtx_def* %255, %struct.rtx_def** %link, align 8
  br label %for.cond.476

for.end.501:                                      ; preds = %for.cond.476
  %256 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call502 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %256, i32 6, %struct.rtx_def* null)
  store %struct.rtx_def* %call502, %struct.rtx_def** %note, align 8
  %cmp503 = icmp ne %struct.rtx_def* %call502, null
  br i1 %cmp503, label %land.lhs.true.505, label %if.end.525

land.lhs.true.505:                                ; preds = %for.end.501
  %257 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld506, i32 0, i64 0
  %rtx508 = bitcast %union.rtunion_def* %arrayidx507 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %rtx508, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %bf.load509 = load i32, i32* %259, align 8
  %bf.clear510 = and i32 %bf.load509, 65535
  %cmp511 = icmp eq i32 %bf.clear510, 32
  br i1 %cmp511, label %land.lhs.true.513, label %if.end.525

land.lhs.true.513:                                ; preds = %land.lhs.true.505
  %260 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld514 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %260, i32 0, i32 1
  %arrayidx515 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld514, i32 0, i64 0
  %rtx516 = bitcast %union.rtunion_def* %arrayidx515 to %struct.rtx_def**
  %261 = load %struct.rtx_def*, %struct.rtx_def** %rtx516, align 8
  %fld517 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %261, i32 0, i32 1
  %arrayidx518 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld517, i32 0, i64 3
  %rtx519 = bitcast %union.rtunion_def* %arrayidx518 to %struct.rtx_def**
  %262 = load %struct.rtx_def*, %struct.rtx_def** %rtx519, align 8
  %263 = bitcast %struct.rtx_def* %262 to i32*
  %bf.load520 = load i32, i32* %263, align 8
  %bf.clear521 = and i32 %bf.load520, 65535
  %cmp522 = icmp eq i32 %bf.clear521, 49
  br i1 %cmp522, label %if.then.524, label %if.end.525

if.then.524:                                      ; preds = %land.lhs.true.513
  store i32 -1, i32* %no_conflict_combined_regno, align 4
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.524, %land.lhs.true.513, %land.lhs.true.505, %for.end.501
  br label %if.end.526

if.end.526:                                       ; preds = %if.end.525, %if.end.29
  %264 = load i64, i64* @regs_live, align 8
  %265 = load i32, i32* %insn_number, align 4
  %mul527 = mul nsw i32 2, %265
  %idxprom528 = sext i32 %mul527 to i64
  %266 = load i64*, i64** @regs_live_at, align 8
  %arrayidx529 = getelementptr inbounds i64, i64* %266, i64 %idxprom528
  %267 = load i64, i64* %arrayidx529, align 8
  %or = or i64 %267, %264
  store i64 %or, i64* %arrayidx529, align 8
  %268 = load i64, i64* @regs_live, align 8
  %269 = load i32, i32* %insn_number, align 4
  %mul530 = mul nsw i32 2, %269
  %add531 = add nsw i32 %mul530, 1
  %idxprom532 = sext i32 %add531 to i64
  %270 = load i64*, i64** @regs_live_at, align 8
  %arrayidx533 = getelementptr inbounds i64, i64* %270, i64 %idxprom532
  %271 = load i64, i64* %arrayidx533, align 8
  %or534 = or i64 %271, %268
  store i64 %or534, i64* %arrayidx533, align 8
  %272 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %273 = load i32, i32* %b.addr, align 4
  %idxprom535 = sext i32 %273 to i64
  %274 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data536 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %274, i32 0, i32 4
  %bb537 = bitcast %union.varray_data_tag* %data536 to [1 x %struct.basic_block_def*]*
  %arrayidx538 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb537, i32 0, i64 %idxprom535
  %275 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx538, align 8
  %end539 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %275, i32 0, i32 1
  %276 = load %struct.rtx_def*, %struct.rtx_def** %end539, align 8
  %cmp540 = icmp eq %struct.rtx_def* %272, %276
  br i1 %cmp540, label %if.then.542, label %if.end.543

if.then.542:                                      ; preds = %if.end.526
  br label %while.end.547

if.end.543:                                       ; preds = %if.end.526
  %277 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld544 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %277, i32 0, i32 1
  %arrayidx545 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld544, i32 0, i64 2
  %rtx546 = bitcast %union.rtunion_def* %arrayidx545 to %struct.rtx_def**
  %278 = load %struct.rtx_def*, %struct.rtx_def** %rtx546, align 8
  store %struct.rtx_def* %278, %struct.rtx_def** %insn, align 8
  br label %while.body.22

while.end.547:                                    ; preds = %if.then.542
  %279 = load i32, i32* @next_qty, align 4
  %conv548 = sext i32 %279 to i64
  %mul549 = mul i64 %conv548, 4
  %call550 = call noalias i8* @xmalloc(i64 %mul549)
  %280 = bitcast i8* %call550 to i32*
  store i32* %280, i32** %qty_order, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.551

for.cond.551:                                     ; preds = %for.inc.557, %while.end.547
  %281 = load i32, i32* %i, align 4
  %282 = load i32, i32* @next_qty, align 4
  %cmp552 = icmp slt i32 %281, %282
  br i1 %cmp552, label %for.body.554, label %for.end.559

for.body.554:                                     ; preds = %for.cond.551
  %283 = load i32, i32* %i, align 4
  %284 = load i32, i32* %i, align 4
  %idxprom555 = sext i32 %284 to i64
  %285 = load i32*, i32** %qty_order, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %285, i64 %idxprom555
  store i32 %283, i32* %arrayidx556, align 4
  br label %for.inc.557

for.inc.557:                                      ; preds = %for.body.554
  %286 = load i32, i32* %i, align 4
  %inc558 = add nsw i32 %286, 1
  store i32 %inc558, i32* %i, align 4
  br label %for.cond.551

for.end.559:                                      ; preds = %for.cond.551
  %287 = load i32, i32* @next_qty, align 4
  switch i32 %287, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.578
    i32 1, label %sw.bb.588
    i32 0, label %sw.bb.588
  ]

sw.bb:                                            ; preds = %for.end.559
  %call560 = call i32 @qty_sugg_compare(i32 0, i32 1)
  %cmp561 = icmp sgt i32 %call560, 0
  br i1 %cmp561, label %if.then.563, label %if.end.568

if.then.563:                                      ; preds = %sw.bb
  %288 = load i32*, i32** %qty_order, align 8
  %arrayidx564 = getelementptr inbounds i32, i32* %288, i64 0
  %289 = load i32, i32* %arrayidx564, align 4
  store i32 %289, i32* %i, align 4
  %290 = load i32*, i32** %qty_order, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %290, i64 1
  %291 = load i32, i32* %arrayidx565, align 4
  %292 = load i32*, i32** %qty_order, align 8
  %arrayidx566 = getelementptr inbounds i32, i32* %292, i64 0
  store i32 %291, i32* %arrayidx566, align 4
  %293 = load i32, i32* %i, align 4
  %294 = load i32*, i32** %qty_order, align 8
  %arrayidx567 = getelementptr inbounds i32, i32* %294, i64 1
  store i32 %293, i32* %arrayidx567, align 4
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.563, %sw.bb
  %call569 = call i32 @qty_sugg_compare(i32 1, i32 2)
  %cmp570 = icmp sgt i32 %call569, 0
  br i1 %cmp570, label %if.then.572, label %if.end.577

if.then.572:                                      ; preds = %if.end.568
  %295 = load i32*, i32** %qty_order, align 8
  %arrayidx573 = getelementptr inbounds i32, i32* %295, i64 2
  %296 = load i32, i32* %arrayidx573, align 4
  store i32 %296, i32* %i, align 4
  %297 = load i32*, i32** %qty_order, align 8
  %arrayidx574 = getelementptr inbounds i32, i32* %297, i64 1
  %298 = load i32, i32* %arrayidx574, align 4
  %299 = load i32*, i32** %qty_order, align 8
  %arrayidx575 = getelementptr inbounds i32, i32* %299, i64 2
  store i32 %298, i32* %arrayidx575, align 4
  %300 = load i32, i32* %i, align 4
  %301 = load i32*, i32** %qty_order, align 8
  %arrayidx576 = getelementptr inbounds i32, i32* %301, i64 1
  store i32 %300, i32* %arrayidx576, align 4
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.572, %if.end.568
  br label %sw.bb.578

sw.bb.578:                                        ; preds = %for.end.559, %if.end.577
  %call579 = call i32 @qty_sugg_compare(i32 0, i32 1)
  %cmp580 = icmp sgt i32 %call579, 0
  br i1 %cmp580, label %if.then.582, label %if.end.587

if.then.582:                                      ; preds = %sw.bb.578
  %302 = load i32*, i32** %qty_order, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %302, i64 0
  %303 = load i32, i32* %arrayidx583, align 4
  store i32 %303, i32* %i, align 4
  %304 = load i32*, i32** %qty_order, align 8
  %arrayidx584 = getelementptr inbounds i32, i32* %304, i64 1
  %305 = load i32, i32* %arrayidx584, align 4
  %306 = load i32*, i32** %qty_order, align 8
  %arrayidx585 = getelementptr inbounds i32, i32* %306, i64 0
  store i32 %305, i32* %arrayidx585, align 4
  %307 = load i32, i32* %i, align 4
  %308 = load i32*, i32** %qty_order, align 8
  %arrayidx586 = getelementptr inbounds i32, i32* %308, i64 1
  store i32 %307, i32* %arrayidx586, align 4
  br label %if.end.587

if.end.587:                                       ; preds = %if.then.582, %sw.bb.578
  br label %sw.bb.588

sw.bb.588:                                        ; preds = %for.end.559, %for.end.559, %if.end.587
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.559
  %309 = load i32*, i32** %qty_order, align 8
  %310 = bitcast i32* %309 to i8*
  %311 = load i32, i32* @next_qty, align 4
  call void @specqsort(i8* %310, i32 %311, i32 4, i32 (...)* bitcast (i32 (i8*, i8*)* @qty_sugg_compare_1 to i32 (...)*))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.588
  store i32 0, i32* %i, align 4
  br label %for.cond.589

for.cond.589:                                     ; preds = %for.inc.624, %sw.epilog
  %312 = load i32, i32* %i, align 4
  %313 = load i32, i32* @next_qty, align 4
  %cmp590 = icmp slt i32 %312, %313
  br i1 %cmp590, label %for.body.592, label %for.end.626

for.body.592:                                     ; preds = %for.cond.589
  %314 = load i32, i32* %i, align 4
  %idxprom593 = sext i32 %314 to i64
  %315 = load i32*, i32** %qty_order, align 8
  %arrayidx594 = getelementptr inbounds i32, i32* %315, i64 %idxprom593
  %316 = load i32, i32* %arrayidx594, align 4
  store i32 %316, i32* %q, align 4
  %317 = load i32, i32* %q, align 4
  %idxprom595 = sext i32 %317 to i64
  %318 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx596 = getelementptr inbounds i16, i16* %318, i64 %idxprom595
  %319 = load i16, i16* %arrayidx596, align 2
  %conv597 = sext i16 %319 to i32
  %cmp598 = icmp ne i32 %conv597, 0
  br i1 %cmp598, label %if.then.606, label %lor.lhs.false.600

lor.lhs.false.600:                                ; preds = %for.body.592
  %320 = load i32, i32* %q, align 4
  %idxprom601 = sext i32 %320 to i64
  %321 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx602 = getelementptr inbounds i16, i16* %321, i64 %idxprom601
  %322 = load i16, i16* %arrayidx602, align 2
  %conv603 = sext i16 %322 to i32
  %cmp604 = icmp ne i32 %conv603, 0
  br i1 %cmp604, label %if.then.606, label %if.else.619

if.then.606:                                      ; preds = %lor.lhs.false.600, %for.body.592
  %323 = load i32, i32* %q, align 4
  %idxprom607 = sext i32 %323 to i64
  %324 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx608 = getelementptr inbounds %struct.qty, %struct.qty* %324, i64 %idxprom607
  %min_class = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx608, i32 0, i32 7
  %325 = load i32, i32* %min_class, align 4
  %326 = load i32, i32* %q, align 4
  %idxprom609 = sext i32 %326 to i64
  %327 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx610 = getelementptr inbounds %struct.qty, %struct.qty* %327, i64 %idxprom609
  %mode = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx610, i32 0, i32 9
  %328 = load i32, i32* %mode, align 4
  %329 = load i32, i32* %q, align 4
  %330 = load i32, i32* %q, align 4
  %idxprom611 = sext i32 %330 to i64
  %331 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx612 = getelementptr inbounds %struct.qty, %struct.qty* %331, i64 %idxprom611
  %birth = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx612, i32 0, i32 2
  %332 = load i32, i32* %birth, align 4
  %333 = load i32, i32* %q, align 4
  %idxprom613 = sext i32 %333 to i64
  %334 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx614 = getelementptr inbounds %struct.qty, %struct.qty* %334, i64 %idxprom613
  %death = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx614, i32 0, i32 3
  %335 = load i32, i32* %death, align 4
  %call615 = call i32 @find_free_reg(i32 %325, i32 %328, i32 %329, i32 0, i32 1, i32 %332, i32 %335)
  %conv616 = trunc i32 %call615 to i16
  %336 = load i32, i32* %q, align 4
  %idxprom617 = sext i32 %336 to i64
  %337 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx618 = getelementptr inbounds %struct.qty, %struct.qty* %337, i64 %idxprom617
  %phys_reg = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx618, i32 0, i32 10
  store i16 %conv616, i16* %phys_reg, align 2
  br label %if.end.623

if.else.619:                                      ; preds = %lor.lhs.false.600
  %338 = load i32, i32* %q, align 4
  %idxprom620 = sext i32 %338 to i64
  %339 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx621 = getelementptr inbounds %struct.qty, %struct.qty* %339, i64 %idxprom620
  %phys_reg622 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx621, i32 0, i32 10
  store i16 -1, i16* %phys_reg622, align 2
  br label %if.end.623

if.end.623:                                       ; preds = %if.else.619, %if.then.606
  br label %for.inc.624

for.inc.624:                                      ; preds = %if.end.623
  %340 = load i32, i32* %i, align 4
  %inc625 = add nsw i32 %340, 1
  store i32 %inc625, i32* %i, align 4
  br label %for.cond.589

for.end.626:                                      ; preds = %for.cond.589
  store i32 0, i32* %i, align 4
  br label %for.cond.627

for.cond.627:                                     ; preds = %for.inc.633, %for.end.626
  %341 = load i32, i32* %i, align 4
  %342 = load i32, i32* @next_qty, align 4
  %cmp628 = icmp slt i32 %341, %342
  br i1 %cmp628, label %for.body.630, label %for.end.635

for.body.630:                                     ; preds = %for.cond.627
  %343 = load i32, i32* %i, align 4
  %344 = load i32, i32* %i, align 4
  %idxprom631 = sext i32 %344 to i64
  %345 = load i32*, i32** %qty_order, align 8
  %arrayidx632 = getelementptr inbounds i32, i32* %345, i64 %idxprom631
  store i32 %343, i32* %arrayidx632, align 4
  br label %for.inc.633

for.inc.633:                                      ; preds = %for.body.630
  %346 = load i32, i32* %i, align 4
  %inc634 = add nsw i32 %346, 1
  store i32 %inc634, i32* %i, align 4
  br label %for.cond.627

for.end.635:                                      ; preds = %for.cond.627
  %347 = load i32, i32* @next_qty, align 4
  switch i32 %347, label %sw.default.666 [
    i32 3, label %sw.bb.636
    i32 2, label %sw.bb.655
    i32 1, label %sw.bb.665
    i32 0, label %sw.bb.665
  ]

sw.bb.636:                                        ; preds = %for.end.635
  %call637 = call i32 @qty_compare(i32 0, i32 1)
  %cmp638 = icmp sgt i32 %call637, 0
  br i1 %cmp638, label %if.then.640, label %if.end.645

if.then.640:                                      ; preds = %sw.bb.636
  %348 = load i32*, i32** %qty_order, align 8
  %arrayidx641 = getelementptr inbounds i32, i32* %348, i64 0
  %349 = load i32, i32* %arrayidx641, align 4
  store i32 %349, i32* %i, align 4
  %350 = load i32*, i32** %qty_order, align 8
  %arrayidx642 = getelementptr inbounds i32, i32* %350, i64 1
  %351 = load i32, i32* %arrayidx642, align 4
  %352 = load i32*, i32** %qty_order, align 8
  %arrayidx643 = getelementptr inbounds i32, i32* %352, i64 0
  store i32 %351, i32* %arrayidx643, align 4
  %353 = load i32, i32* %i, align 4
  %354 = load i32*, i32** %qty_order, align 8
  %arrayidx644 = getelementptr inbounds i32, i32* %354, i64 1
  store i32 %353, i32* %arrayidx644, align 4
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.640, %sw.bb.636
  %call646 = call i32 @qty_compare(i32 1, i32 2)
  %cmp647 = icmp sgt i32 %call646, 0
  br i1 %cmp647, label %if.then.649, label %if.end.654

if.then.649:                                      ; preds = %if.end.645
  %355 = load i32*, i32** %qty_order, align 8
  %arrayidx650 = getelementptr inbounds i32, i32* %355, i64 2
  %356 = load i32, i32* %arrayidx650, align 4
  store i32 %356, i32* %i, align 4
  %357 = load i32*, i32** %qty_order, align 8
  %arrayidx651 = getelementptr inbounds i32, i32* %357, i64 1
  %358 = load i32, i32* %arrayidx651, align 4
  %359 = load i32*, i32** %qty_order, align 8
  %arrayidx652 = getelementptr inbounds i32, i32* %359, i64 2
  store i32 %358, i32* %arrayidx652, align 4
  %360 = load i32, i32* %i, align 4
  %361 = load i32*, i32** %qty_order, align 8
  %arrayidx653 = getelementptr inbounds i32, i32* %361, i64 1
  store i32 %360, i32* %arrayidx653, align 4
  br label %if.end.654

if.end.654:                                       ; preds = %if.then.649, %if.end.645
  br label %sw.bb.655

sw.bb.655:                                        ; preds = %for.end.635, %if.end.654
  %call656 = call i32 @qty_compare(i32 0, i32 1)
  %cmp657 = icmp sgt i32 %call656, 0
  br i1 %cmp657, label %if.then.659, label %if.end.664

if.then.659:                                      ; preds = %sw.bb.655
  %362 = load i32*, i32** %qty_order, align 8
  %arrayidx660 = getelementptr inbounds i32, i32* %362, i64 0
  %363 = load i32, i32* %arrayidx660, align 4
  store i32 %363, i32* %i, align 4
  %364 = load i32*, i32** %qty_order, align 8
  %arrayidx661 = getelementptr inbounds i32, i32* %364, i64 1
  %365 = load i32, i32* %arrayidx661, align 4
  %366 = load i32*, i32** %qty_order, align 8
  %arrayidx662 = getelementptr inbounds i32, i32* %366, i64 0
  store i32 %365, i32* %arrayidx662, align 4
  %367 = load i32, i32* %i, align 4
  %368 = load i32*, i32** %qty_order, align 8
  %arrayidx663 = getelementptr inbounds i32, i32* %368, i64 1
  store i32 %367, i32* %arrayidx663, align 4
  br label %if.end.664

if.end.664:                                       ; preds = %if.then.659, %sw.bb.655
  br label %sw.bb.665

sw.bb.665:                                        ; preds = %for.end.635, %for.end.635, %if.end.664
  br label %sw.epilog.667

sw.default.666:                                   ; preds = %for.end.635
  %369 = load i32*, i32** %qty_order, align 8
  %370 = bitcast i32* %369 to i8*
  %371 = load i32, i32* @next_qty, align 4
  call void @specqsort(i8* %370, i32 %371, i32 4, i32 (...)* bitcast (i32 (i8*, i8*)* @qty_compare_1 to i32 (...)*))
  br label %sw.epilog.667

sw.epilog.667:                                    ; preds = %sw.default.666, %sw.bb.665
  store i32 0, i32* %i, align 4
  br label %for.cond.668

for.cond.668:                                     ; preds = %for.inc.829, %sw.epilog.667
  %372 = load i32, i32* %i, align 4
  %373 = load i32, i32* @next_qty, align 4
  %cmp669 = icmp slt i32 %372, %373
  br i1 %cmp669, label %for.body.671, label %for.end.831

for.body.671:                                     ; preds = %for.cond.668
  %374 = load i32, i32* %i, align 4
  %idxprom672 = sext i32 %374 to i64
  %375 = load i32*, i32** %qty_order, align 8
  %arrayidx673 = getelementptr inbounds i32, i32* %375, i64 %idxprom672
  %376 = load i32, i32* %arrayidx673, align 4
  store i32 %376, i32* %q, align 4
  %377 = load i32, i32* %q, align 4
  %idxprom674 = sext i32 %377 to i64
  %378 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx675 = getelementptr inbounds %struct.qty, %struct.qty* %378, i64 %idxprom674
  %phys_reg676 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx675, i32 0, i32 10
  %379 = load i16, i16* %phys_reg676, align 2
  %conv677 = sext i16 %379 to i32
  %cmp678 = icmp slt i32 %conv677, 0
  br i1 %cmp678, label %if.then.680, label %if.end.828

if.then.680:                                      ; preds = %for.body.671
  %380 = load i32, i32* %q, align 4
  %idxprom681 = sext i32 %380 to i64
  %381 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx682 = getelementptr inbounds %struct.qty, %struct.qty* %381, i64 %idxprom681
  %birth683 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx682, i32 0, i32 2
  %382 = load i32, i32* %birth683, align 4
  %sub684 = sub nsw i32 %382, 2
  %383 = load i32, i32* %q, align 4
  %idxprom685 = sext i32 %383 to i64
  %384 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx686 = getelementptr inbounds %struct.qty, %struct.qty* %384, i64 %idxprom685
  %birth687 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx686, i32 0, i32 2
  %385 = load i32, i32* %birth687, align 4
  %rem = srem i32 %385, 2
  %add688 = add nsw i32 %sub684, %rem
  %cmp689 = icmp sgt i32 0, %add688
  br i1 %cmp689, label %cond.true.691, label %cond.false.692

cond.true.691:                                    ; preds = %if.then.680
  br label %cond.end.702

cond.false.692:                                   ; preds = %if.then.680
  %386 = load i32, i32* %q, align 4
  %idxprom693 = sext i32 %386 to i64
  %387 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx694 = getelementptr inbounds %struct.qty, %struct.qty* %387, i64 %idxprom693
  %birth695 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx694, i32 0, i32 2
  %388 = load i32, i32* %birth695, align 4
  %sub696 = sub nsw i32 %388, 2
  %389 = load i32, i32* %q, align 4
  %idxprom697 = sext i32 %389 to i64
  %390 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx698 = getelementptr inbounds %struct.qty, %struct.qty* %390, i64 %idxprom697
  %birth699 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx698, i32 0, i32 2
  %391 = load i32, i32* %birth699, align 4
  %rem700 = srem i32 %391, 2
  %add701 = add nsw i32 %sub696, %rem700
  br label %cond.end.702

cond.end.702:                                     ; preds = %cond.false.692, %cond.true.691
  %cond703 = phi i32 [ 0, %cond.true.691 ], [ %add701, %cond.false.692 ]
  store i32 %cond703, i32* %fake_birth, align 4
  %392 = load i32, i32* %insn_number, align 4
  %mul704 = mul nsw i32 %392, 2
  %add705 = add nsw i32 %mul704, 1
  %393 = load i32, i32* %q, align 4
  %idxprom706 = sext i32 %393 to i64
  %394 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx707 = getelementptr inbounds %struct.qty, %struct.qty* %394, i64 %idxprom706
  %death708 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx707, i32 0, i32 3
  %395 = load i32, i32* %death708, align 4
  %add709 = add nsw i32 %395, 2
  %396 = load i32, i32* %q, align 4
  %idxprom710 = sext i32 %396 to i64
  %397 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx711 = getelementptr inbounds %struct.qty, %struct.qty* %397, i64 %idxprom710
  %death712 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx711, i32 0, i32 3
  %398 = load i32, i32* %death712, align 4
  %rem713 = srem i32 %398, 2
  %sub714 = sub nsw i32 %add709, %rem713
  %cmp715 = icmp slt i32 %add705, %sub714
  br i1 %cmp715, label %cond.true.717, label %cond.false.720

cond.true.717:                                    ; preds = %cond.end.702
  %399 = load i32, i32* %insn_number, align 4
  %mul718 = mul nsw i32 %399, 2
  %add719 = add nsw i32 %mul718, 1
  br label %cond.end.730

cond.false.720:                                   ; preds = %cond.end.702
  %400 = load i32, i32* %q, align 4
  %idxprom721 = sext i32 %400 to i64
  %401 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx722 = getelementptr inbounds %struct.qty, %struct.qty* %401, i64 %idxprom721
  %death723 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx722, i32 0, i32 3
  %402 = load i32, i32* %death723, align 4
  %add724 = add nsw i32 %402, 2
  %403 = load i32, i32* %q, align 4
  %idxprom725 = sext i32 %403 to i64
  %404 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx726 = getelementptr inbounds %struct.qty, %struct.qty* %404, i64 %idxprom725
  %death727 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx726, i32 0, i32 3
  %405 = load i32, i32* %death727, align 4
  %rem728 = srem i32 %405, 2
  %sub729 = sub nsw i32 %add724, %rem728
  br label %cond.end.730

cond.end.730:                                     ; preds = %cond.false.720, %cond.true.717
  %cond731 = phi i32 [ %add719, %cond.true.717 ], [ %sub729, %cond.false.720 ]
  store i32 %cond731, i32* %fake_death, align 4
  %406 = load i32, i32* @flag_schedule_insns_after_reload, align 4
  %tobool732 = icmp ne i32 %406, 0
  br i1 %tobool732, label %land.lhs.true.733, label %if.end.756

land.lhs.true.733:                                ; preds = %cond.end.730
  %407 = load i32, i32* @optimize_size, align 4
  %tobool734 = icmp ne i32 %407, 0
  br i1 %tobool734, label %if.end.756, label %land.lhs.true.735

land.lhs.true.735:                                ; preds = %land.lhs.true.733
  br i1 true, label %if.end.756, label %if.then.736

if.then.736:                                      ; preds = %land.lhs.true.735
  %408 = load i32, i32* %q, align 4
  %idxprom737 = sext i32 %408 to i64
  %409 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx738 = getelementptr inbounds %struct.qty, %struct.qty* %409, i64 %idxprom737
  %min_class739 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx738, i32 0, i32 7
  %410 = load i32, i32* %min_class739, align 4
  %411 = load i32, i32* %q, align 4
  %idxprom740 = sext i32 %411 to i64
  %412 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx741 = getelementptr inbounds %struct.qty, %struct.qty* %412, i64 %idxprom740
  %mode742 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx741, i32 0, i32 9
  %413 = load i32, i32* %mode742, align 4
  %414 = load i32, i32* %q, align 4
  %415 = load i32, i32* %fake_birth, align 4
  %416 = load i32, i32* %fake_death, align 4
  %call743 = call i32 @find_free_reg(i32 %410, i32 %413, i32 %414, i32 0, i32 0, i32 %415, i32 %416)
  %conv744 = trunc i32 %call743 to i16
  %417 = load i32, i32* %q, align 4
  %idxprom745 = sext i32 %417 to i64
  %418 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx746 = getelementptr inbounds %struct.qty, %struct.qty* %418, i64 %idxprom745
  %phys_reg747 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx746, i32 0, i32 10
  store i16 %conv744, i16* %phys_reg747, align 2
  %419 = load i32, i32* %q, align 4
  %idxprom748 = sext i32 %419 to i64
  %420 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx749 = getelementptr inbounds %struct.qty, %struct.qty* %420, i64 %idxprom748
  %phys_reg750 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx749, i32 0, i32 10
  %421 = load i16, i16* %phys_reg750, align 2
  %conv751 = sext i16 %421 to i32
  %cmp752 = icmp sge i32 %conv751, 0
  br i1 %cmp752, label %if.then.754, label %if.end.755

if.then.754:                                      ; preds = %if.then.736
  br label %for.inc.829

if.end.755:                                       ; preds = %if.then.736
  br label %if.end.756

if.end.756:                                       ; preds = %if.end.755, %land.lhs.true.735, %land.lhs.true.733, %cond.end.730
  %422 = load i32, i32* %q, align 4
  %idxprom757 = sext i32 %422 to i64
  %423 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx758 = getelementptr inbounds %struct.qty, %struct.qty* %423, i64 %idxprom757
  %min_class759 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx758, i32 0, i32 7
  %424 = load i32, i32* %min_class759, align 4
  %425 = load i32, i32* %q, align 4
  %idxprom760 = sext i32 %425 to i64
  %426 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx761 = getelementptr inbounds %struct.qty, %struct.qty* %426, i64 %idxprom760
  %mode762 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx761, i32 0, i32 9
  %427 = load i32, i32* %mode762, align 4
  %428 = load i32, i32* %q, align 4
  %429 = load i32, i32* %q, align 4
  %idxprom763 = sext i32 %429 to i64
  %430 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx764 = getelementptr inbounds %struct.qty, %struct.qty* %430, i64 %idxprom763
  %birth765 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx764, i32 0, i32 2
  %431 = load i32, i32* %birth765, align 4
  %432 = load i32, i32* %q, align 4
  %idxprom766 = sext i32 %432 to i64
  %433 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx767 = getelementptr inbounds %struct.qty, %struct.qty* %433, i64 %idxprom766
  %death768 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx767, i32 0, i32 3
  %434 = load i32, i32* %death768, align 4
  %call769 = call i32 @find_free_reg(i32 %424, i32 %427, i32 %428, i32 0, i32 0, i32 %431, i32 %434)
  %conv770 = trunc i32 %call769 to i16
  %435 = load i32, i32* %q, align 4
  %idxprom771 = sext i32 %435 to i64
  %436 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx772 = getelementptr inbounds %struct.qty, %struct.qty* %436, i64 %idxprom771
  %phys_reg773 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx772, i32 0, i32 10
  store i16 %conv770, i16* %phys_reg773, align 2
  %437 = load i32, i32* %q, align 4
  %idxprom774 = sext i32 %437 to i64
  %438 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx775 = getelementptr inbounds %struct.qty, %struct.qty* %438, i64 %idxprom774
  %phys_reg776 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx775, i32 0, i32 10
  %439 = load i16, i16* %phys_reg776, align 2
  %conv777 = sext i16 %439 to i32
  %cmp778 = icmp sge i32 %conv777, 0
  br i1 %cmp778, label %if.then.780, label %if.end.781

if.then.780:                                      ; preds = %if.end.756
  br label %for.inc.829

if.end.781:                                       ; preds = %if.end.756
  %440 = load i32, i32* @flag_schedule_insns_after_reload, align 4
  %tobool782 = icmp ne i32 %440, 0
  br i1 %tobool782, label %land.lhs.true.783, label %if.end.803

land.lhs.true.783:                                ; preds = %if.end.781
  %441 = load i32, i32* @optimize_size, align 4
  %tobool784 = icmp ne i32 %441, 0
  br i1 %tobool784, label %if.end.803, label %land.lhs.true.785

land.lhs.true.785:                                ; preds = %land.lhs.true.783
  br i1 true, label %if.end.803, label %land.lhs.true.786

land.lhs.true.786:                                ; preds = %land.lhs.true.785
  %442 = load i32, i32* %q, align 4
  %idxprom787 = sext i32 %442 to i64
  %443 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx788 = getelementptr inbounds %struct.qty, %struct.qty* %443, i64 %idxprom787
  %alternate_class = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx788, i32 0, i32 8
  %444 = load i32, i32* %alternate_class, align 4
  %cmp789 = icmp ne i32 %444, 0
  br i1 %cmp789, label %if.then.791, label %if.end.803

if.then.791:                                      ; preds = %land.lhs.true.786
  %445 = load i32, i32* %q, align 4
  %idxprom792 = sext i32 %445 to i64
  %446 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx793 = getelementptr inbounds %struct.qty, %struct.qty* %446, i64 %idxprom792
  %alternate_class794 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx793, i32 0, i32 8
  %447 = load i32, i32* %alternate_class794, align 4
  %448 = load i32, i32* %q, align 4
  %idxprom795 = sext i32 %448 to i64
  %449 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx796 = getelementptr inbounds %struct.qty, %struct.qty* %449, i64 %idxprom795
  %mode797 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx796, i32 0, i32 9
  %450 = load i32, i32* %mode797, align 4
  %451 = load i32, i32* %q, align 4
  %452 = load i32, i32* %fake_birth, align 4
  %453 = load i32, i32* %fake_death, align 4
  %call798 = call i32 @find_free_reg(i32 %447, i32 %450, i32 %451, i32 0, i32 0, i32 %452, i32 %453)
  %conv799 = trunc i32 %call798 to i16
  %454 = load i32, i32* %q, align 4
  %idxprom800 = sext i32 %454 to i64
  %455 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx801 = getelementptr inbounds %struct.qty, %struct.qty* %455, i64 %idxprom800
  %phys_reg802 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx801, i32 0, i32 10
  store i16 %conv799, i16* %phys_reg802, align 2
  br label %if.end.803

if.end.803:                                       ; preds = %if.then.791, %land.lhs.true.786, %land.lhs.true.785, %land.lhs.true.783, %if.end.781
  %456 = load i32, i32* %q, align 4
  %idxprom804 = sext i32 %456 to i64
  %457 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx805 = getelementptr inbounds %struct.qty, %struct.qty* %457, i64 %idxprom804
  %alternate_class806 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx805, i32 0, i32 8
  %458 = load i32, i32* %alternate_class806, align 4
  %cmp807 = icmp ne i32 %458, 0
  br i1 %cmp807, label %if.then.809, label %if.end.827

if.then.809:                                      ; preds = %if.end.803
  %459 = load i32, i32* %q, align 4
  %idxprom810 = sext i32 %459 to i64
  %460 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx811 = getelementptr inbounds %struct.qty, %struct.qty* %460, i64 %idxprom810
  %alternate_class812 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx811, i32 0, i32 8
  %461 = load i32, i32* %alternate_class812, align 4
  %462 = load i32, i32* %q, align 4
  %idxprom813 = sext i32 %462 to i64
  %463 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx814 = getelementptr inbounds %struct.qty, %struct.qty* %463, i64 %idxprom813
  %mode815 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx814, i32 0, i32 9
  %464 = load i32, i32* %mode815, align 4
  %465 = load i32, i32* %q, align 4
  %466 = load i32, i32* %q, align 4
  %idxprom816 = sext i32 %466 to i64
  %467 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx817 = getelementptr inbounds %struct.qty, %struct.qty* %467, i64 %idxprom816
  %birth818 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx817, i32 0, i32 2
  %468 = load i32, i32* %birth818, align 4
  %469 = load i32, i32* %q, align 4
  %idxprom819 = sext i32 %469 to i64
  %470 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx820 = getelementptr inbounds %struct.qty, %struct.qty* %470, i64 %idxprom819
  %death821 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx820, i32 0, i32 3
  %471 = load i32, i32* %death821, align 4
  %call822 = call i32 @find_free_reg(i32 %461, i32 %464, i32 %465, i32 0, i32 0, i32 %468, i32 %471)
  %conv823 = trunc i32 %call822 to i16
  %472 = load i32, i32* %q, align 4
  %idxprom824 = sext i32 %472 to i64
  %473 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx825 = getelementptr inbounds %struct.qty, %struct.qty* %473, i64 %idxprom824
  %phys_reg826 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx825, i32 0, i32 10
  store i16 %conv823, i16* %phys_reg826, align 2
  br label %if.end.827

if.end.827:                                       ; preds = %if.then.809, %if.end.803
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.827, %for.body.671
  br label %for.inc.829

for.inc.829:                                      ; preds = %if.end.828, %if.then.780, %if.then.754
  %474 = load i32, i32* %i, align 4
  %inc830 = add nsw i32 %474, 1
  store i32 %inc830, i32* %i, align 4
  br label %for.cond.668

for.end.831:                                      ; preds = %for.cond.668
  store i32 0, i32* %q, align 4
  br label %for.cond.832

for.cond.832:                                     ; preds = %for.inc.865, %for.end.831
  %475 = load i32, i32* %q, align 4
  %476 = load i32, i32* @next_qty, align 4
  %cmp833 = icmp slt i32 %475, %476
  br i1 %cmp833, label %for.body.835, label %for.end.867

for.body.835:                                     ; preds = %for.cond.832
  %477 = load i32, i32* %q, align 4
  %idxprom836 = sext i32 %477 to i64
  %478 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx837 = getelementptr inbounds %struct.qty, %struct.qty* %478, i64 %idxprom836
  %phys_reg838 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx837, i32 0, i32 10
  %479 = load i16, i16* %phys_reg838, align 2
  %conv839 = sext i16 %479 to i32
  %cmp840 = icmp sge i32 %conv839, 0
  br i1 %cmp840, label %if.then.842, label %if.end.864

if.then.842:                                      ; preds = %for.body.835
  %480 = load i32, i32* %q, align 4
  %idxprom843 = sext i32 %480 to i64
  %481 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx844 = getelementptr inbounds %struct.qty, %struct.qty* %481, i64 %idxprom843
  %first_reg = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx844, i32 0, i32 6
  %482 = load i32, i32* %first_reg, align 4
  store i32 %482, i32* %i, align 4
  br label %for.cond.845

for.cond.845:                                     ; preds = %for.inc.860, %if.then.842
  %483 = load i32, i32* %i, align 4
  %cmp846 = icmp sge i32 %483, 0
  br i1 %cmp846, label %for.body.848, label %for.end.863

for.body.848:                                     ; preds = %for.cond.845
  %484 = load i32, i32* %q, align 4
  %idxprom849 = sext i32 %484 to i64
  %485 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx850 = getelementptr inbounds %struct.qty, %struct.qty* %485, i64 %idxprom849
  %phys_reg851 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx850, i32 0, i32 10
  %486 = load i16, i16* %phys_reg851, align 2
  %conv852 = sext i16 %486 to i32
  %487 = load i32, i32* %i, align 4
  %idxprom853 = sext i32 %487 to i64
  %488 = load i8*, i8** @reg_offset, align 8
  %arrayidx854 = getelementptr inbounds i8, i8* %488, i64 %idxprom853
  %489 = load i8, i8* %arrayidx854, align 1
  %conv855 = sext i8 %489 to i32
  %add856 = add nsw i32 %conv852, %conv855
  %conv857 = trunc i32 %add856 to i16
  %490 = load i32, i32* %i, align 4
  %idxprom858 = sext i32 %490 to i64
  %491 = load i16*, i16** @reg_renumber, align 8
  %arrayidx859 = getelementptr inbounds i16, i16* %491, i64 %idxprom858
  store i16 %conv857, i16* %arrayidx859, align 2
  br label %for.inc.860

for.inc.860:                                      ; preds = %for.body.848
  %492 = load i32, i32* %i, align 4
  %idxprom861 = sext i32 %492 to i64
  %493 = load i32*, i32** @reg_next_in_qty, align 8
  %arrayidx862 = getelementptr inbounds i32, i32* %493, i64 %idxprom861
  %494 = load i32, i32* %arrayidx862, align 4
  store i32 %494, i32* %i, align 4
  br label %for.cond.845

for.end.863:                                      ; preds = %for.cond.845
  br label %if.end.864

if.end.864:                                       ; preds = %for.end.863, %for.body.835
  br label %for.inc.865

for.inc.865:                                      ; preds = %if.end.864
  %495 = load i32, i32* %q, align 4
  %inc866 = add nsw i32 %495, 1
  store i32 %inc866, i32* %q, align 4
  br label %for.cond.832

for.end.867:                                      ; preds = %for.cond.832
  %496 = load i64*, i64** @regs_live_at, align 8
  %497 = bitcast i64* %496 to i8*
  call void @free(i8* %497) #2
  %498 = load i32*, i32** %qty_order, align 8
  %499 = bitcast i32* %498 to i8*
  call void @free(i8* %499) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @function_invariant_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 67
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 68
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 54
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load9 = load i32, i32* %7, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 55
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load13 = load i32, i32* %9, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 58
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load17 = load i32, i32* %11, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 134
  br i1 %cmp19, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load21 = load i32, i32* %13, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 56
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load25 = load i32, i32* %15, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 140
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.24
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp28 = icmp eq %struct.rtx_def* %16, %17
  br i1 %cmp28, label %if.then.31, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp30 = icmp eq %struct.rtx_def* %18, %19
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.29, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.29
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load33 = load i32, i32* %21, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 75
  br i1 %cmp35, label %land.lhs.true, label %if.end.99

land.lhs.true:                                    ; preds = %if.end.32
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp36 = icmp eq %struct.rtx_def* %23, %24
  br i1 %cmp36, label %land.lhs.true.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp41 = icmp eq %struct.rtx_def* %26, %27
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.99

land.lhs.true.42:                                 ; preds = %lor.lhs.false.37, %land.lhs.true
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load46 = load i32, i32* %30, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 67
  br i1 %cmp48, label %if.then.98, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %land.lhs.true.42
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load53 = load i32, i32* %33, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 68
  br i1 %cmp55, label %if.then.98, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.49
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 1
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load60 = load i32, i32* %36, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp eq i32 %bf.clear61, 54
  br i1 %cmp62, label %if.then.98, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.56
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 1
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load67 = load i32, i32* %39, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 55
  br i1 %cmp69, label %if.then.98, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.63
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 1
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load74 = load i32, i32* %42, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 58
  br i1 %cmp76, label %if.then.98, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.70
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 1
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load81 = load i32, i32* %45, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 134
  br i1 %cmp83, label %if.then.98, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.77
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 1
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load88 = load i32, i32* %48, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 56
  br i1 %cmp90, label %if.then.98, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.84
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 1
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load95 = load i32, i32* %51, align 8
  %bf.clear96 = and i32 %bf.load95, 65535
  %cmp97 = icmp eq i32 %bf.clear96, 140
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %lor.lhs.false.91, %lor.lhs.false.84, %lor.lhs.false.77, %lor.lhs.false.70, %lor.lhs.false.63, %lor.lhs.false.56, %lor.lhs.false.49, %land.lhs.true.42
  store i32 1, i32* %retval
  br label %return

if.end.99:                                        ; preds = %lor.lhs.false.91, %lor.lhs.false.37, %if.end.32
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.99, %if.then.98, %if.then.31, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define void @dump_local_alloc(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_regno, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** @reg_renumber, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp ne i32 %conv, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i16*, i16** @reg_renumber, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %8, i64 %idxprom3
  %9 = load i16, i16* %arrayidx4, align 2
  %conv5 = sext i16 %9 to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %6, i32 %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare noalias i8* @xcalloc(i64, i64) #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @init_alias_analysis() #1

; Function Attrs: nounwind uwtable
define internal void @no_equiv(%struct.rtx_def* %reg, %struct.rtx_def* %store, i8* %data) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %store.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %list = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %store, %struct.rtx_def** %store.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %regno, align 4
  %4 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx1 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %5, i64 %idxprom
  %init_insns = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx1, i32 0, i32 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %init_insns, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %list, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp2 = icmp eq %struct.rtx_def* %7, %8
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %13, i32 3, %struct.rtx_def* null)
  call void @remove_note(%struct.rtx_def* %12, %struct.rtx_def* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %list, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %17 = load i32, i32* %regno, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx11 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %18, i64 %idxprom10
  %init_insns12 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx11, i32 0, i32 4
  store %struct.rtx_def* %16, %struct.rtx_def** %init_insns12, align 8
  %19 = load i32, i32* %regno, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx14 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %20, i64 %idxprom13
  %replacement = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx14, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %replacement, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  ret void
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @contains_replace_regs(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 134, label %sw.bb
    i32 61, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx2 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %5, i64 %idxprom
  %replace = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx2, i32 0, i32 0
  %6 = load i8, i8* %replace, align 1
  %conv = sext i8 %6 to i32
  store i32 %conv, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %7 = load i32, i32* %code, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom3
  %8 = load i8*, i8** %arrayidx4, align 8
  store i8* %8, i8** %fmt, align 8
  %9 = load i32, i32* %code, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %sub = sub nsw i32 %conv7, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %sw.epilog
  %11 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i8*, i8** %fmt, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  switch i32 %conv11, label %sw.epilog.35 [
    i32 101, label %sw.bb.12
    i32 69, label %sw.bb.16
  ]

sw.bb.12:                                         ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 %idxprom13
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @contains_replace_regs(%struct.rtx_def* %17)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.12
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.12
  br label %sw.epilog.35

sw.bb.16:                                         ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 %idxprom17
  %rtvec = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtvec_def**
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 0
  %21 = load i32, i32* %num_elem, align 4
  %sub20 = sub nsw i32 %21, 1
  store i32 %sub20, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %sw.bb.16
  %22 = load i32, i32* %j, align 4
  %cmp22 = icmp sge i32 %22, 0
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.21
  %23 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 %idxprom26
  %rtvec29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec29, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom25
  %27 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx30, align 8
  %call31 = call i32 @contains_replace_regs(%struct.rtx_def* %27)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body.24
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %28 = load i32, i32* %j, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %sw.epilog.35

sw.epilog.35:                                     ; preds = %for.body, %for.end, %if.end
  br label %for.inc.36

for.inc.36:                                       ; preds = %sw.epilog.35
  %29 = load i32, i32* %i, align 4
  %dec37 = add nsw i32 %29, -1
  store i32 %dec37, i32* %i, align 4
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.38, %if.then.33, %if.then, %sw.bb.1, %sw.bb
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @validate_equiv_mem(%struct.rtx_def* %start, %struct.rtx_def* %reg, %struct.rtx_def* %memref) #0 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca %struct.rtx_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %memref.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %start, %struct.rtx_def** %start.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** @equiv_mem, align 8
  store i32 0, i32* @equiv_mem_modified, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %call = call i32 @side_effects_p(%struct.rtx_def* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool1 = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* @equiv_mem_modified, align 4
  %tobool2 = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %for.body, label %for.end.64

for.body:                                         ; preds = %land.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %for.body
  br label %for.inc.60

if.end.5:                                         ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call6 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %9, i32 1, %struct.rtx_def* %10)
  %tobool7 = icmp ne %struct.rtx_def* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 34
  br i1 %cmp12, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.9
  %13 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load14 = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load14, 26
  %bf.clear15 = and i32 %bf.lshr, 1
  %tobool16 = icmp ne i32 %bf.clear15, 0
  br i1 %tobool16, label %if.end.23, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load18 = load i32, i32* %16, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 26
  %bf.clear20 = and i32 %bf.lshr19, 1
  %tobool21 = icmp ne i32 %bf.clear20, 0
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.17
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true.17, %land.lhs.true, %if.end.9
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @note_stores(%struct.rtx_def* %18, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @validate_equiv_mem_from_store, i8* null)
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 6
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %note, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.end.23
  %21 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool29 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %22 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load31 = load i32, i32* %23, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 16
  %bf.clear33 = and i32 %bf.lshr32, 255
  %cmp34 = icmp eq i32 %bf.clear33, 2
  br i1 %cmp34, label %land.lhs.true.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.30
  %24 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load36 = load i32, i32* %25, align 8
  %bf.lshr37 = lshr i32 %bf.load36, 16
  %bf.clear38 = and i32 %bf.lshr37, 255
  %cmp39 = icmp eq i32 %bf.clear38, 1
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.56

land.lhs.true.41:                                 ; preds = %lor.lhs.false, %for.body.30
  %26 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load45 = load i32, i32* %28, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 61
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.56

land.lhs.true.49:                                 ; preds = %land.lhs.true.41
  %29 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %call53 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %30, %struct.rtx_def* %31)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.49
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %land.lhs.true.49, %land.lhs.true.41, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 1
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %note, align 8
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.end, %if.then.4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 2
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.64:                                       ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.64, %if.then.55, %if.then.22, %if.then.8, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @memref_used_between_p(%struct.rtx_def* %memref, %struct.rtx_def* %start, %struct.rtx_def* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %memref.addr = alloca %struct.rtx_def*, align 8
  %start.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store %struct.rtx_def* %start, %struct.rtx_def** %start.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %cmp = icmp ne %struct.rtx_def* %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx4 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 105
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %call = call i32 @memref_referenced_p(%struct.rtx_def* %8, %struct.rtx_def* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_preferred_class(i32) #1

declare i32 @rtx_varies_p(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ue(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @equiv_init_varies_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 66, label %sw.bb
    i32 71, label %sw.bb.4
    i32 58, label %sw.bb.5
    i32 54, label %sw.bb.5
    i32 55, label %sw.bb.5
    i32 56, label %sw.bb.5
    i32 68, label %sw.bb.5
    i32 67, label %sw.bb.5
    i32 61, label %sw.bb.6
    i32 41, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 26
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %sw.bb
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @equiv_init_varies_p(%struct.rtx_def* %6)
  %tobool3 = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %7 = phi i1 [ true, %sw.bb ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %9 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx9 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %10, i64 %idxprom
  %replace = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx9, i32 0, i32 0
  %11 = load i8, i8* %replace, align 1
  %conv = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.6
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call11 = call i32 @rtx_varies_p(%struct.rtx_def* %12, i32 0)
  %tobool12 = icmp ne i32 %call11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.6
  %13 = phi i1 [ false, %sw.bb.6 ], [ %tobool12, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load14 = load i32, i32* %15, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 27
  %bf.clear16 = and i32 %bf.lshr15, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.13
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.13
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %16 = load i32, i32* %code, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom18
  %17 = load i8*, i8** %arrayidx19, align 8
  store i8* %17, i8** %fmt, align 8
  %18 = load i32, i32* %code, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom20
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %19 to i32
  %sub = sub nsw i32 %conv22, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %sw.epilog
  %20 = load i32, i32* %i, align 4
  %cmp23 = icmp sge i32 %20, 0
  br i1 %cmp23, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8*, i8** %fmt, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %22, i64 %idxprom25
  %23 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 101
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 %idxprom31
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %call35 = call i32 @equiv_init_varies_p(%struct.rtx_def* %26)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.30
  store i32 1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.30
  br label %if.end.63

if.else:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %27 to i64
  %28 = load i8*, i8** %fmt, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %28, i64 %idxprom39
  %29 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %29 to i32
  %cmp42 = icmp eq i32 %conv41, 69
  br i1 %cmp42, label %if.then.44, label %if.end.62

if.then.44:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %if.then.44
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %31 to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 %idxprom46
  %rtvec = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 0
  %34 = load i32, i32* %num_elem, align 4
  %cmp49 = icmp slt i32 %30, %34
  br i1 %cmp49, label %for.body.51, label %for.end

for.body.51:                                      ; preds = %for.cond.45
  %35 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %36 to i64
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 %idxprom53
  %rtvec56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtvec_def**
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec56, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom52
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx57, align 8
  %call58 = call i32 @equiv_init_varies_p(%struct.rtx_def* %39)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body.51
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %for.body.51
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %40 = load i32, i32* %j, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  br label %if.end.62

if.end.62:                                        ; preds = %for.end, %if.else
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.38
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63
  %41 = load i32, i32* %i, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.65, %if.then.60, %if.then.37, %if.then, %land.end, %sw.bb.5, %sw.bb.4, %lor.end
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @equiv_init_movable_p(%struct.rtx_def* %x, i32 %regno) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 47, label %sw.bb
    i32 69, label %sw.bb.1
    i32 49, label %sw.bb.1
    i32 97, label %sw.bb.2
    i32 96, label %sw.bb.2
    i32 99, label %sw.bb.2
    i32 98, label %sw.bb.2
    i32 100, label %sw.bb.2
    i32 101, label %sw.bb.2
    i32 61, label %sw.bb.3
    i32 43, label %sw.bb.24
    i32 41, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = load i32, i32* %regno.addr, align 4
  %call = call i32 @equiv_init_movable_p(%struct.rtx_def* %4, i32 %5)
  store i32 %call, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %7 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx6 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %8, i64 %idxprom
  %loop_depth = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx6, i32 0, i32 3
  %9 = load i32, i32* %loop_depth, align 4
  %10 = load i32, i32* %regno.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx8 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %11, i64 %idxprom7
  %loop_depth9 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx8, i32 0, i32 3
  %12 = load i32, i32* %loop_depth9, align 4
  %cmp = icmp sge i32 %9, %12
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %sw.bb.3
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtuint12 = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %14 = load i32, i32* %rtuint12, align 4
  %idxprom13 = zext i32 %14 to i64
  %15 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx14 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %15, i64 %idxprom13
  %replace = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx14, i32 0, i32 0
  %16 = load i8, i8* %replace, align 1
  %conv = sext i8 %16 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %sw.bb.3
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtuint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %18 = load i32, i32* %rtuint17, align 4
  %idxprom18 = zext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx19 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom18
  %20 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx19, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %20, i32 0, i32 9
  %21 = load i32, i32* %basic_block, align 4
  %cmp20 = icmp slt i32 %21, 0
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call22 = call i32 @rtx_varies_p(%struct.rtx_def* %22, i32 0)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool23, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %23 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %24 = phi i1 [ true, %land.lhs.true ], [ %23, %land.end ]
  %lor.ext = zext i1 %24 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load26 = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load26, 27
  %bf.clear27 = and i32 %bf.lshr, 1
  %tobool28 = icmp ne i32 %bf.clear27, 0
  br i1 %tobool28, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.25
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.25
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %27 = load i32, i32* %code, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom29
  %28 = load i8*, i8** %arrayidx30, align 8
  store i8* %28, i8** %fmt, align 8
  %29 = load i32, i32* %code, align 4
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom31
  %30 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %30 to i32
  %sub = sub nsw i32 %conv33, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %sw.epilog
  %31 = load i32, i32* %i, align 4
  %cmp34 = icmp sge i32 %31, 0
  br i1 %cmp34, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %32 to i64
  %33 = load i8*, i8** %fmt, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %33, i64 %idxprom36
  %34 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %34 to i32
  switch i32 %conv38, label %sw.epilog.67 [
    i32 101, label %sw.bb.39
    i32 69, label %sw.bb.48
  ]

sw.bb.39:                                         ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %35 to i64
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 %idxprom40
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %38 = load i32, i32* %regno.addr, align 4
  %call44 = call i32 @equiv_init_movable_p(%struct.rtx_def* %37, i32 %38)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %sw.bb.39
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %sw.bb.39
  br label %sw.epilog.67

sw.bb.48:                                         ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %39 to i64
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 %idxprom49
  %rtvec = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtvec_def**
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 0
  %42 = load i32, i32* %num_elem, align 4
  %sub52 = sub nsw i32 %42, 1
  store i32 %sub52, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %sw.bb.48
  %43 = load i32, i32* %j, align 4
  %cmp54 = icmp sge i32 %43, 0
  br i1 %cmp54, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.53
  %44 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 %idxprom58
  %rtvec61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtvec_def**
  %47 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec61, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %47, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom57
  %48 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx62, align 8
  %49 = load i32, i32* %regno.addr, align 4
  %call63 = call i32 @equiv_init_movable_p(%struct.rtx_def* %48, i32 %49)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %for.body.56
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %for.body.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.66
  %50 = load i32, i32* %j, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %sw.epilog.67

sw.epilog.67:                                     ; preds = %for.body, %for.end, %if.end.47
  br label %for.inc.68

for.inc.68:                                       ; preds = %sw.epilog.67
  %51 = load i32, i32* %i, align 4
  %dec69 = add nsw i32 %51, -1
  store i32 %dec69, i32* %i, align 4
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.70, %if.then.65, %if.then.46, %if.then, %sw.bb.24, %lor.end, %sw.bb.2, %sw.bb.1, %sw.bb
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

declare i32 @asm_noperands(%struct.rtx_def*) #1

declare i32 @validate_replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @remove_death(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare void @bitmap_clear_bit(%struct.bitmap_head_def*, i32) #1

declare void @end_alias_analysis() #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @validate_equiv_mem_from_store(%struct.rtx_def* %dest, %struct.rtx_def* %set, i8* %data) #0 {
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
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** @equiv_mem, align 8
  %call = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %2, %struct.rtx_def* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 66
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** @equiv_mem, align 8
  %call5 = call i32 @true_dependence(%struct.rtx_def* %6, i32 0, %struct.rtx_def* %7, i32 (%struct.rtx_def*, i32)* @rtx_varies_p)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4, %land.lhs.true
  store i32 1, i32* @equiv_mem_modified, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.4, %lor.lhs.false
  ret void
}

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @true_dependence(%struct.rtx_def*, i32, %struct.rtx_def*, i32 (%struct.rtx_def*, i32)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @memref_referenced_p(%struct.rtx_def* %memref, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %memref.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %code = alloca i32, align 4
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 134, label %sw.bb
    i32 135, label %sw.bb
    i32 61, label %sw.bb.1
    i32 66, label %sw.bb.10
    i32 47, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx2 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %5, i64 %idxprom
  %replacement = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx2, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %replacement, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %9 = load i32, i32* %rtuint5, align 4
  %idxprom6 = zext i32 %9 to i64
  %10 = load %struct.equivalence*, %struct.equivalence** @reg_equiv, align 8
  %arrayidx7 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %10, i64 %idxprom6
  %replacement8 = getelementptr inbounds %struct.equivalence, %struct.equivalence* %arrayidx7, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %replacement8, align 8
  %call = call i32 @memref_referenced_p(%struct.rtx_def* %7, %struct.rtx_def* %11)
  %tobool9 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.1
  %12 = phi i1 [ false, %sw.bb.1 ], [ %tobool9, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %13 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call11 = call i32 @true_dependence(%struct.rtx_def* %13, i32 0, %struct.rtx_def* %14, i32 (%struct.rtx_def*, i32)* @rtx_varies_p)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.10
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.10
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load16 = load i32, i32* %17, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp = icmp eq i32 %bf.clear17, 66
  br i1 %cmp, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %sw.bb.13
  %18 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %call25 = call i32 @memref_referenced_p(%struct.rtx_def* %18, %struct.rtx_def* %21)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.18
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.18
  br label %if.end.36

if.else:                                          ; preds = %sw.bb.13
  %22 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %call32 = call i32 @memref_referenced_p(%struct.rtx_def* %22, %struct.rtx_def* %24)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.28
  %25 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %call40 = call i32 @memref_referenced_p(%struct.rtx_def* %25, %struct.rtx_def* %27)
  store i32 %call40, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %28 = load i32, i32* %code, align 4
  %idxprom41 = sext i32 %28 to i64
  %arrayidx42 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom41
  %29 = load i8*, i8** %arrayidx42, align 8
  store i8* %29, i8** %fmt, align 8
  %30 = load i32, i32* %code, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom43
  %31 = load i8, i8* %arrayidx44, align 1
  %conv = zext i8 %31 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %sw.epilog
  %32 = load i32, i32* %i, align 4
  %cmp45 = icmp sge i32 %32, 0
  br i1 %cmp45, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %33 to i64
  %34 = load i8*, i8** %fmt, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %34, i64 %idxprom47
  %35 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %35 to i32
  switch i32 %conv49, label %sw.epilog.78 [
    i32 101, label %sw.bb.50
    i32 69, label %sw.bb.59
  ]

sw.bb.50:                                         ; preds = %for.body
  %36 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 %idxprom51
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %call55 = call i32 @memref_referenced_p(%struct.rtx_def* %36, %struct.rtx_def* %39)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %sw.bb.50
  store i32 1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %sw.bb.50
  br label %sw.epilog.78

sw.bb.59:                                         ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %40 to i64
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 %idxprom60
  %rtvec = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtvec_def**
  %42 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %42, i32 0, i32 0
  %43 = load i32, i32* %num_elem, align 4
  %sub63 = sub nsw i32 %43, 1
  store i32 %sub63, i32* %j, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc, %sw.bb.59
  %44 = load i32, i32* %j, align 4
  %cmp65 = icmp sge i32 %44, 0
  br i1 %cmp65, label %for.body.67, label %for.end

for.body.67:                                      ; preds = %for.cond.64
  %45 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %46 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %46 to i64
  %47 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %47 to i64
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 %idxprom69
  %rtvec72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtvec_def**
  %49 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec72, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %49, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom68
  %50 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx73, align 8
  %call74 = call i32 @memref_referenced_p(%struct.rtx_def* %45, %struct.rtx_def* %50)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.body.67
  store i32 1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %for.body.67
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %51 = load i32, i32* %j, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.64

for.end:                                          ; preds = %for.cond.64
  br label %sw.epilog.78

sw.epilog.78:                                     ; preds = %for.body, %for.end, %if.end.58
  br label %for.inc.79

for.inc.79:                                       ; preds = %sw.epilog.78
  %52 = load i32, i32* %i, align 4
  %dec80 = add nsw i32 %52, -1
  store i32 %dec80, i32* %i, align 4
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.81, %if.then.76, %if.then.57, %if.end.36, %if.then.34, %if.then.27, %if.then, %land.end, %sw.bb
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @get_max_uid() #1

declare void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) #1

declare void @extract_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @requires_inout(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  %found_zero = alloca i32, align 4
  %reg_allowed = alloca i32, align 4
  %num_matching_alts = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 0, i32* %found_zero, align 4
  store i32 0, i32* %reg_allowed, align 4
  store i32 0, i32* %num_matching_alts, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end.163

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %c, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 61, label %sw.bb
    i32 43, label %sw.bb
    i32 63, label %sw.bb
    i32 35, label %sw.bb
    i32 38, label %sw.bb
    i32 33, label %sw.bb
    i32 42, label %sw.bb
    i32 37, label %sw.bb
    i32 109, label %sw.bb
    i32 60, label %sw.bb
    i32 62, label %sw.bb
    i32 86, label %sw.bb
    i32 111, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 115, label %sw.bb
    i32 105, label %sw.bb
    i32 110, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 88, label %sw.bb
    i32 44, label %sw.bb.1
    i32 48, label %sw.bb.4
    i32 49, label %sw.bb.5
    i32 50, label %sw.bb.5
    i32 51, label %sw.bb.5
    i32 52, label %sw.bb.5
    i32 53, label %sw.bb.5
    i32 54, label %sw.bb.5
    i32 55, label %sw.bb.5
    i32 56, label %sw.bb.5
    i32 57, label %sw.bb.5
    i32 112, label %sw.bb.162
    i32 103, label %sw.bb.162
    i32 114, label %sw.bb.162
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %3 = load i32, i32* %found_zero, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.1
  %4 = load i32, i32* %reg_allowed, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %num_matching_alts, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %num_matching_alts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb.1
  store i32 0, i32* %reg_allowed, align 4
  store i32 0, i32* %found_zero, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  store i32 1, i32* %found_zero, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.11, %sw.bb.5
  %6 = load i8*, i8** %p.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv7 = sext i8 %7 to i32
  %and = and i32 %conv7, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv8 = zext i16 %8 to i32
  %and9 = and i32 %conv8, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.6
  %9 = load i8*, i8** %p.addr, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr12, i8** %p.addr, align 8
  br label %while.cond.6

while.end:                                        ; preds = %while.cond.6
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %10 = load i8, i8* %c, align 1
  %conv13 = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv13, 114
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  br label %cond.end.156

cond.false:                                       ; preds = %sw.default
  %11 = load i8, i8* %c, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp eq i32 %conv15, 82
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false
  br label %cond.end.154

cond.false.19:                                    ; preds = %cond.false
  %12 = load i8, i8* %c, align 1
  %conv20 = sext i8 %12 to i32
  %cmp21 = icmp eq i32 %conv20, 113
  br i1 %cmp21, label %cond.true.23, label %cond.false.26

cond.true.23:                                     ; preds = %cond.false.19
  %13 = load i32, i32* @target_flags, align 4
  %and24 = and i32 %13, 33554432
  %tobool25 = icmp ne i32 %and24, 0
  %cond = select i1 %tobool25, i32 12, i32 8
  br label %cond.end.152

cond.false.26:                                    ; preds = %cond.false.19
  %14 = load i8, i8* %c, align 1
  %conv27 = sext i8 %14 to i32
  %cmp28 = icmp eq i32 %conv27, 81
  br i1 %cmp28, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %cond.false.26
  br label %cond.end.150

cond.false.31:                                    ; preds = %cond.false.26
  %15 = load i8, i8* %c, align 1
  %conv32 = sext i8 %15 to i32
  %cmp33 = icmp eq i32 %conv32, 102
  br i1 %cmp33, label %cond.true.35, label %cond.false.41

cond.true.35:                                     ; preds = %cond.false.31
  %16 = load i32, i32* @target_flags, align 4
  %and36 = and i32 %16, 1
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.35
  %17 = load i32, i32* @target_flags, align 4
  %and38 = and i32 %17, 32
  %tobool39 = icmp ne i32 %and38, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.35
  %18 = phi i1 [ true, %cond.true.35 ], [ %tobool39, %lor.rhs ]
  %cond40 = select i1 %18, i32 15, i32 0
  br label %cond.end.148

cond.false.41:                                    ; preds = %cond.false.31
  %19 = load i8, i8* %c, align 1
  %conv42 = sext i8 %19 to i32
  %cmp43 = icmp eq i32 %conv42, 116
  br i1 %cmp43, label %cond.true.45, label %cond.false.53

cond.true.45:                                     ; preds = %cond.false.41
  %20 = load i32, i32* @target_flags, align 4
  %and46 = and i32 %20, 1
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %lor.end.51, label %lor.rhs.48

lor.rhs.48:                                       ; preds = %cond.true.45
  %21 = load i32, i32* @target_flags, align 4
  %and49 = and i32 %21, 32
  %tobool50 = icmp ne i32 %and49, 0
  br label %lor.end.51

lor.end.51:                                       ; preds = %lor.rhs.48, %cond.true.45
  %22 = phi i1 [ true, %cond.true.45 ], [ %tobool50, %lor.rhs.48 ]
  %cond52 = select i1 %22, i32 13, i32 0
  br label %cond.end.146

cond.false.53:                                    ; preds = %cond.false.41
  %23 = load i8, i8* %c, align 1
  %conv54 = sext i8 %23 to i32
  %cmp55 = icmp eq i32 %conv54, 117
  br i1 %cmp55, label %cond.true.57, label %cond.false.65

cond.true.57:                                     ; preds = %cond.false.53
  %24 = load i32, i32* @target_flags, align 4
  %and58 = and i32 %24, 1
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %lor.end.63, label %lor.rhs.60

lor.rhs.60:                                       ; preds = %cond.true.57
  %25 = load i32, i32* @target_flags, align 4
  %and61 = and i32 %25, 32
  %tobool62 = icmp ne i32 %and61, 0
  br label %lor.end.63

lor.end.63:                                       ; preds = %lor.rhs.60, %cond.true.57
  %26 = phi i1 [ true, %cond.true.57 ], [ %tobool62, %lor.rhs.60 ]
  %cond64 = select i1 %26, i32 14, i32 0
  br label %cond.end.144

cond.false.65:                                    ; preds = %cond.false.53
  %27 = load i8, i8* %c, align 1
  %conv66 = sext i8 %27 to i32
  %cmp67 = icmp eq i32 %conv66, 97
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false.65
  br label %cond.end.142

cond.false.70:                                    ; preds = %cond.false.65
  %28 = load i8, i8* %c, align 1
  %conv71 = sext i8 %28 to i32
  %cmp72 = icmp eq i32 %conv71, 98
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %cond.false.70
  br label %cond.end.140

cond.false.75:                                    ; preds = %cond.false.70
  %29 = load i8, i8* %c, align 1
  %conv76 = sext i8 %29 to i32
  %cmp77 = icmp eq i32 %conv76, 99
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %cond.false.75
  br label %cond.end.138

cond.false.80:                                    ; preds = %cond.false.75
  %30 = load i8, i8* %c, align 1
  %conv81 = sext i8 %30 to i32
  %cmp82 = icmp eq i32 %conv81, 100
  br i1 %cmp82, label %cond.true.84, label %cond.false.85

cond.true.84:                                     ; preds = %cond.false.80
  br label %cond.end.136

cond.false.85:                                    ; preds = %cond.false.80
  %31 = load i8, i8* %c, align 1
  %conv86 = sext i8 %31 to i32
  %cmp87 = icmp eq i32 %conv86, 120
  br i1 %cmp87, label %cond.true.89, label %cond.false.94

cond.true.89:                                     ; preds = %cond.false.85
  %32 = load i32, i32* @target_flags, align 4
  %and90 = and i32 %32, 327680
  %cmp91 = icmp ne i32 %and90, 0
  %cond93 = select i1 %cmp91, i32 16, i32 0
  br label %cond.end.134

cond.false.94:                                    ; preds = %cond.false.85
  %33 = load i8, i8* %c, align 1
  %conv95 = sext i8 %33 to i32
  %cmp96 = icmp eq i32 %conv95, 89
  br i1 %cmp96, label %cond.true.98, label %cond.false.103

cond.true.98:                                     ; preds = %cond.false.94
  %34 = load i32, i32* @target_flags, align 4
  %and99 = and i32 %34, 262144
  %cmp100 = icmp ne i32 %and99, 0
  %cond102 = select i1 %cmp100, i32 16, i32 0
  br label %cond.end.132

cond.false.103:                                   ; preds = %cond.false.94
  %35 = load i8, i8* %c, align 1
  %conv104 = sext i8 %35 to i32
  %cmp105 = icmp eq i32 %conv104, 121
  br i1 %cmp105, label %cond.true.107, label %cond.false.112

cond.true.107:                                    ; preds = %cond.false.103
  %36 = load i32, i32* @target_flags, align 4
  %and108 = and i32 %36, 16384
  %cmp109 = icmp ne i32 %and108, 0
  %cond111 = select i1 %cmp109, i32 17, i32 0
  br label %cond.end.130

cond.false.112:                                   ; preds = %cond.false.103
  %37 = load i8, i8* %c, align 1
  %conv113 = sext i8 %37 to i32
  %cmp114 = icmp eq i32 %conv113, 65
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.112
  br label %cond.end.128

cond.false.117:                                   ; preds = %cond.false.112
  %38 = load i8, i8* %c, align 1
  %conv118 = sext i8 %38 to i32
  %cmp119 = icmp eq i32 %conv118, 68
  br i1 %cmp119, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.false.117
  br label %cond.end

cond.false.122:                                   ; preds = %cond.false.117
  %39 = load i8, i8* %c, align 1
  %conv123 = sext i8 %39 to i32
  %cmp124 = icmp eq i32 %conv123, 83
  %cond126 = select i1 %cmp124, i32 5, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.122, %cond.true.121
  %cond127 = phi i32 [ 6, %cond.true.121 ], [ %cond126, %cond.false.122 ]
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.end, %cond.true.116
  %cond129 = phi i32 [ 7, %cond.true.116 ], [ %cond127, %cond.end ]
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.end.128, %cond.true.107
  %cond131 = phi i32 [ %cond111, %cond.true.107 ], [ %cond129, %cond.end.128 ]
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.end.130, %cond.true.98
  %cond133 = phi i32 [ %cond102, %cond.true.98 ], [ %cond131, %cond.end.130 ]
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.end.132, %cond.true.89
  %cond135 = phi i32 [ %cond93, %cond.true.89 ], [ %cond133, %cond.end.132 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.134, %cond.true.84
  %cond137 = phi i32 [ 2, %cond.true.84 ], [ %cond135, %cond.end.134 ]
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.end.136, %cond.true.79
  %cond139 = phi i32 [ 3, %cond.true.79 ], [ %cond137, %cond.end.136 ]
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.end.138, %cond.true.74
  %cond141 = phi i32 [ 4, %cond.true.74 ], [ %cond139, %cond.end.138 ]
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.end.140, %cond.true.69
  %cond143 = phi i32 [ 1, %cond.true.69 ], [ %cond141, %cond.end.140 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %lor.end.63
  %cond145 = phi i32 [ %cond64, %lor.end.63 ], [ %cond143, %cond.end.142 ]
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.end.144, %lor.end.51
  %cond147 = phi i32 [ %cond52, %lor.end.51 ], [ %cond145, %cond.end.144 ]
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.end.146, %lor.end
  %cond149 = phi i32 [ %cond40, %lor.end ], [ %cond147, %cond.end.146 ]
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.148, %cond.true.30
  %cond151 = phi i32 [ 8, %cond.true.30 ], [ %cond149, %cond.end.148 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.true.23
  %cond153 = phi i32 [ %cond, %cond.true.23 ], [ %cond151, %cond.end.150 ]
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.end.152, %cond.true.18
  %cond155 = phi i32 [ 11, %cond.true.18 ], [ %cond153, %cond.end.152 ]
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.end.154, %cond.true
  %cond157 = phi i32 [ 12, %cond.true ], [ %cond155, %cond.end.154 ]
  %cmp158 = icmp eq i32 %cond157, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %cond.end.156
  br label %sw.epilog

if.end.161:                                       ; preds = %cond.end.156
  br label %sw.bb.162

sw.bb.162:                                        ; preds = %while.body, %while.body, %while.body, %if.end.161
  store i32 1, i32* %reg_allowed, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.162, %if.then.160, %while.end, %sw.bb.4, %if.end, %sw.bb
  br label %while.cond

while.end.163:                                    ; preds = %while.cond
  %40 = load i32, i32* %found_zero, align 4
  %tobool164 = icmp ne i32 %40, 0
  br i1 %tobool164, label %land.lhs.true.165, label %if.end.169

land.lhs.true.165:                                ; preds = %while.end.163
  %41 = load i32, i32* %reg_allowed, align 4
  %tobool166 = icmp ne i32 %41, 0
  br i1 %tobool166, label %if.end.169, label %if.then.167

if.then.167:                                      ; preds = %land.lhs.true.165
  %42 = load i32, i32* %num_matching_alts, align 4
  %inc168 = add nsw i32 %42, 1
  store i32 %inc168, i32* %num_matching_alts, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %land.lhs.true.165, %while.end.163
  %43 = load i32, i32* %num_matching_alts, align 4
  ret i32 %43
}

declare %struct.rtx_def* @get_hard_reg_initial_reg(%struct.function*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @combine_regs(%struct.rtx_def* %usedreg, %struct.rtx_def* %setreg, i32 %may_save_copy, i32 %insn_number, %struct.rtx_def* %insn, i32 %already_dead) #0 {
entry:
  %retval = alloca i32, align 4
  %usedreg.addr = alloca %struct.rtx_def*, align 8
  %setreg.addr = alloca %struct.rtx_def*, align 8
  %may_save_copy.addr = alloca i32, align 4
  %insn_number.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %already_dead.addr = alloca i32, align 4
  %ureg = alloca i32, align 4
  %sreg = alloca i32, align 4
  %offset = alloca i32, align 4
  %usize = alloca i32, align 4
  %ssize = alloca i32, align 4
  %sqty = alloca i32, align 4
  %subreg = alloca %struct.rtx_def*, align 8
  %subreg146 = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %usedreg, %struct.rtx_def** %usedreg.addr, align 8
  store %struct.rtx_def* %setreg, %struct.rtx_def** %setreg.addr, align 8
  store i32 %may_save_copy, i32* %may_save_copy.addr, align 4
  store i32 %insn_number, i32* %insn_number.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %already_dead, i32* %already_dead.addr, align 4
  store i32 0, i32* %offset, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %subreg, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then, label %if.end.35

if.then:                                          ; preds = %while.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load4, 16
  %bf.clear5 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear5 to i64
  %arrayidx6 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* @target_flags, align 4
  %and = and i32 %9, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %cmp7 = icmp sgt i32 %conv, %cond
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  store i32 0, i32* %may_save_copy.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %11 = load i32, i32* %rtuint, align 4
  %cmp12 = icmp ult i32 %11, 53
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtuint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %13 = load i32, i32* %rtuint17, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load18 = load i32, i32* %15, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 16
  %bf.clear20 = and i32 %bf.lshr19, 255
  %16 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtuint23 = bitcast %union.rtunion_def* %arrayidx22 to i32*
  %17 = load i32, i32* %rtuint23, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load24 = load i32, i32* %19, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %call = call i32 @subreg_regno_offset(i32 %13, i32 %bf.clear20, i32 %17, i32 %bf.clear26)
  %20 = load i32, i32* %offset, align 4
  %add = add i32 %20, %call
  store i32 %add, i32* %offset, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtuint29 = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %22 = load i32, i32* %rtuint29, align 4
  %23 = load i32, i32* @target_flags, align 4
  %and30 = and i32 %23, 33554432
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 8, i32 4
  %div = udiv i32 %22, %cond32
  %24 = load i32, i32* %offset, align 4
  %add33 = add i32 %24, %div
  store i32 %add33, i32* %offset, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.14
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %while.body
  %25 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %usedreg.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load36 = load i32, i32* %27, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp ne i32 %bf.clear37, 61
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.41:                                        ; preds = %while.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtuint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %29 = load i32, i32* %rtuint44, align 4
  store i32 %29, i32* %ureg, align 4
  %30 = load i32, i32* %ureg, align 4
  %cmp45 = icmp slt i32 %30, 53
  br i1 %cmp45, label %if.then.47, label %if.else.123

if.then.47:                                       ; preds = %if.end.41
  %31 = load i32, i32* %ureg, align 4
  %cmp48 = icmp sge i32 %31, 8
  br i1 %cmp48, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.47
  %32 = load i32, i32* %ureg, align 4
  %cmp50 = icmp sle i32 %32, 15
  br i1 %cmp50, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.47
  %33 = load i32, i32* %ureg, align 4
  %cmp52 = icmp sge i32 %33, 21
  br i1 %cmp52, label %land.lhs.true.54, label %lor.lhs.false.57

land.lhs.true.54:                                 ; preds = %lor.lhs.false
  %34 = load i32, i32* %ureg, align 4
  %cmp55 = icmp sle i32 %34, 28
  br i1 %cmp55, label %cond.true, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.54, %lor.lhs.false
  %35 = load i32, i32* %ureg, align 4
  %cmp58 = icmp sge i32 %35, 45
  br i1 %cmp58, label %land.lhs.true.60, label %lor.lhs.false.63

land.lhs.true.60:                                 ; preds = %lor.lhs.false.57
  %36 = load i32, i32* %ureg, align 4
  %cmp61 = icmp sle i32 %36, 52
  br i1 %cmp61, label %cond.true, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.60, %lor.lhs.false.57
  %37 = load i32, i32* %ureg, align 4
  %cmp64 = icmp sge i32 %37, 29
  br i1 %cmp64, label %land.lhs.true.66, label %cond.false

land.lhs.true.66:                                 ; preds = %lor.lhs.false.63
  %38 = load i32, i32* %ureg, align 4
  %cmp67 = icmp sle i32 %38, 36
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.66, %land.lhs.true.60, %land.lhs.true.54, %land.lhs.true
  %39 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load69 = load i32, i32* %40, align 8
  %bf.lshr70 = lshr i32 %bf.load69, 16
  %bf.clear71 = and i32 %bf.lshr70, 255
  %idxprom72 = sext i32 %bf.clear71 to i64
  %arrayidx73 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom72
  %41 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp eq i32 %41, 5
  br i1 %cmp74, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %42 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load76 = load i32, i32* %43, align 8
  %bf.lshr77 = lshr i32 %bf.load76, 16
  %bf.clear78 = and i32 %bf.lshr77, 255
  %idxprom79 = sext i32 %bf.clear78 to i64
  %arrayidx80 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom79
  %44 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp eq i32 %44, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %45 = phi i1 [ true, %cond.true ], [ %cmp81, %lor.rhs ]
  %cond83 = select i1 %45, i32 2, i32 1
  br label %cond.end.121

cond.false:                                       ; preds = %land.lhs.true.66, %lor.lhs.false.63
  %46 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load84 = load i32, i32* %47, align 8
  %bf.lshr85 = lshr i32 %bf.load84, 16
  %bf.clear86 = and i32 %bf.lshr85, 255
  %cmp87 = icmp eq i32 %bf.clear86, 18
  br i1 %cmp87, label %cond.true.89, label %cond.false.93

cond.true.89:                                     ; preds = %cond.false
  %48 = load i32, i32* @target_flags, align 4
  %and90 = and i32 %48, 33554432
  %tobool91 = icmp ne i32 %and90, 0
  %cond92 = select i1 %tobool91, i32 2, i32 3
  br label %cond.end.119

cond.false.93:                                    ; preds = %cond.false
  %49 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load94 = load i32, i32* %50, align 8
  %bf.lshr95 = lshr i32 %bf.load94, 16
  %bf.clear96 = and i32 %bf.lshr95, 255
  %cmp97 = icmp eq i32 %bf.clear96, 24
  br i1 %cmp97, label %cond.true.99, label %cond.false.103

cond.true.99:                                     ; preds = %cond.false.93
  %51 = load i32, i32* @target_flags, align 4
  %and100 = and i32 %51, 33554432
  %tobool101 = icmp ne i32 %and100, 0
  %cond102 = select i1 %tobool101, i32 4, i32 6
  br label %cond.end

cond.false.103:                                   ; preds = %cond.false.93
  %52 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load104 = load i32, i32* %53, align 8
  %bf.lshr105 = lshr i32 %bf.load104, 16
  %bf.clear106 = and i32 %bf.lshr105, 255
  %idxprom107 = sext i32 %bf.clear106 to i64
  %arrayidx108 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom107
  %54 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %54 to i32
  %55 = load i32, i32* @target_flags, align 4
  %and110 = and i32 %55, 33554432
  %tobool111 = icmp ne i32 %and110, 0
  %cond112 = select i1 %tobool111, i32 8, i32 4
  %add113 = add nsw i32 %conv109, %cond112
  %sub = sub nsw i32 %add113, 1
  %56 = load i32, i32* @target_flags, align 4
  %and114 = and i32 %56, 33554432
  %tobool115 = icmp ne i32 %and114, 0
  %cond116 = select i1 %tobool115, i32 8, i32 4
  %div117 = sdiv i32 %sub, %cond116
  br label %cond.end

cond.end:                                         ; preds = %cond.false.103, %cond.true.99
  %cond118 = phi i32 [ %cond102, %cond.true.99 ], [ %div117, %cond.false.103 ]
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.end, %cond.true.89
  %cond120 = phi i32 [ %cond92, %cond.true.89 ], [ %cond118, %cond.end ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %lor.end
  %cond122 = phi i32 [ %cond83, %lor.end ], [ %cond120, %cond.end.119 ]
  store i32 %cond122, i32* %usize, align 4
  br label %if.end.139

if.else.123:                                      ; preds = %if.end.41
  %57 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load124 = load i32, i32* %58, align 8
  %bf.lshr125 = lshr i32 %bf.load124, 16
  %bf.clear126 = and i32 %bf.lshr125, 255
  %idxprom127 = sext i32 %bf.clear126 to i64
  %arrayidx128 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom127
  %59 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %59 to i32
  %60 = load i32, i32* @target_flags, align 4
  %and130 = and i32 %60, 33554432
  %tobool131 = icmp ne i32 %and130, 0
  %cond132 = select i1 %tobool131, i32 8, i32 4
  %sub133 = sub nsw i32 %cond132, 1
  %add134 = add nsw i32 %conv129, %sub133
  %61 = load i32, i32* @target_flags, align 4
  %and135 = and i32 %61, 33554432
  %tobool136 = icmp ne i32 %and135, 0
  %cond137 = select i1 %tobool136, i32 8, i32 4
  %div138 = sdiv i32 %add134, %cond137
  store i32 %div138, i32* %usize, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.123, %cond.end.121
  br label %while.cond.140

while.cond.140:                                   ; preds = %if.end.198, %if.end.139
  %62 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load141 = load i32, i32* %63, align 8
  %bf.clear142 = and i32 %bf.load141, 65535
  %cmp143 = icmp eq i32 %bf.clear142, 63
  br i1 %cmp143, label %while.body.145, label %while.end.199

while.body.145:                                   ; preds = %while.cond.140
  %64 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 0
  %rtx149 = bitcast %union.rtunion_def* %arrayidx148 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx149, align 8
  store %struct.rtx_def* %65, %struct.rtx_def** %subreg146, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %subreg146, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load150 = load i32, i32* %67, align 8
  %bf.clear151 = and i32 %bf.load150, 65535
  %cmp152 = icmp eq i32 %bf.clear151, 61
  br i1 %cmp152, label %if.then.154, label %if.end.198

if.then.154:                                      ; preds = %while.body.145
  %68 = load %struct.rtx_def*, %struct.rtx_def** %subreg146, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load155 = load i32, i32* %69, align 8
  %bf.lshr156 = lshr i32 %bf.load155, 16
  %bf.clear157 = and i32 %bf.lshr156, 255
  %idxprom158 = sext i32 %bf.clear157 to i64
  %arrayidx159 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom158
  %70 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %70 to i32
  %71 = load i32, i32* @target_flags, align 4
  %and161 = and i32 %71, 33554432
  %tobool162 = icmp ne i32 %and161, 0
  %cond163 = select i1 %tobool162, i32 8, i32 4
  %cmp164 = icmp sgt i32 %conv160, %cond163
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.then.154
  store i32 0, i32* %may_save_copy.addr, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.then.154
  %72 = load %struct.rtx_def*, %struct.rtx_def** %subreg146, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 0
  %rtuint170 = bitcast %union.rtunion_def* %arrayidx169 to i32*
  %73 = load i32, i32* %rtuint170, align 4
  %cmp171 = icmp ult i32 %73, 53
  br i1 %cmp171, label %if.then.173, label %if.else.188

if.then.173:                                      ; preds = %if.end.167
  %74 = load %struct.rtx_def*, %struct.rtx_def** %subreg146, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 0
  %rtuint176 = bitcast %union.rtunion_def* %arrayidx175 to i32*
  %75 = load i32, i32* %rtuint176, align 4
  %76 = load %struct.rtx_def*, %struct.rtx_def** %subreg146, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load177 = load i32, i32* %77, align 8
  %bf.lshr178 = lshr i32 %bf.load177, 16
  %bf.clear179 = and i32 %bf.lshr178, 255
  %78 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %fld180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld180, i32 0, i64 1
  %rtuint182 = bitcast %union.rtunion_def* %arrayidx181 to i32*
  %79 = load i32, i32* %rtuint182, align 4
  %80 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load183 = load i32, i32* %81, align 8
  %bf.lshr184 = lshr i32 %bf.load183, 16
  %bf.clear185 = and i32 %bf.lshr184, 255
  %call186 = call i32 @subreg_regno_offset(i32 %75, i32 %bf.clear179, i32 %79, i32 %bf.clear185)
  %82 = load i32, i32* %offset, align 4
  %sub187 = sub i32 %82, %call186
  store i32 %sub187, i32* %offset, align 4
  br label %if.end.197

if.else.188:                                      ; preds = %if.end.167
  %83 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 1
  %rtuint191 = bitcast %union.rtunion_def* %arrayidx190 to i32*
  %84 = load i32, i32* %rtuint191, align 4
  %85 = load i32, i32* @target_flags, align 4
  %and192 = and i32 %85, 33554432
  %tobool193 = icmp ne i32 %and192, 0
  %cond194 = select i1 %tobool193, i32 8, i32 4
  %div195 = udiv i32 %84, %cond194
  %86 = load i32, i32* %offset, align 4
  %sub196 = sub i32 %86, %div195
  store i32 %sub196, i32* %offset, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.188, %if.then.173
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %while.body.145
  %87 = load %struct.rtx_def*, %struct.rtx_def** %subreg146, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %setreg.addr, align 8
  br label %while.cond.140

while.end.199:                                    ; preds = %while.cond.140
  %88 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load200 = load i32, i32* %89, align 8
  %bf.clear201 = and i32 %bf.load200, 65535
  %cmp202 = icmp ne i32 %bf.clear201, 61
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %while.end.199
  store i32 0, i32* %retval
  br label %return

if.end.205:                                       ; preds = %while.end.199
  %90 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtuint208 = bitcast %union.rtunion_def* %arrayidx207 to i32*
  %91 = load i32, i32* %rtuint208, align 4
  store i32 %91, i32* %sreg, align 4
  %92 = load i32, i32* %sreg, align 4
  %cmp209 = icmp slt i32 %92, 53
  br i1 %cmp209, label %if.then.211, label %if.else.295

if.then.211:                                      ; preds = %if.end.205
  %93 = load i32, i32* %sreg, align 4
  %cmp212 = icmp sge i32 %93, 8
  br i1 %cmp212, label %land.lhs.true.214, label %lor.lhs.false.217

land.lhs.true.214:                                ; preds = %if.then.211
  %94 = load i32, i32* %sreg, align 4
  %cmp215 = icmp sle i32 %94, 15
  br i1 %cmp215, label %cond.true.235, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %land.lhs.true.214, %if.then.211
  %95 = load i32, i32* %sreg, align 4
  %cmp218 = icmp sge i32 %95, 21
  br i1 %cmp218, label %land.lhs.true.220, label %lor.lhs.false.223

land.lhs.true.220:                                ; preds = %lor.lhs.false.217
  %96 = load i32, i32* %sreg, align 4
  %cmp221 = icmp sle i32 %96, 28
  br i1 %cmp221, label %cond.true.235, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %land.lhs.true.220, %lor.lhs.false.217
  %97 = load i32, i32* %sreg, align 4
  %cmp224 = icmp sge i32 %97, 45
  br i1 %cmp224, label %land.lhs.true.226, label %lor.lhs.false.229

land.lhs.true.226:                                ; preds = %lor.lhs.false.223
  %98 = load i32, i32* %sreg, align 4
  %cmp227 = icmp sle i32 %98, 52
  br i1 %cmp227, label %cond.true.235, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %land.lhs.true.226, %lor.lhs.false.223
  %99 = load i32, i32* %sreg, align 4
  %cmp230 = icmp sge i32 %99, 29
  br i1 %cmp230, label %land.lhs.true.232, label %cond.false.253

land.lhs.true.232:                                ; preds = %lor.lhs.false.229
  %100 = load i32, i32* %sreg, align 4
  %cmp233 = icmp sle i32 %100, 36
  br i1 %cmp233, label %cond.true.235, label %cond.false.253

cond.true.235:                                    ; preds = %land.lhs.true.232, %land.lhs.true.226, %land.lhs.true.220, %land.lhs.true.214
  %101 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load236 = load i32, i32* %102, align 8
  %bf.lshr237 = lshr i32 %bf.load236, 16
  %bf.clear238 = and i32 %bf.lshr237, 255
  %idxprom239 = sext i32 %bf.clear238 to i64
  %arrayidx240 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom239
  %103 = load i32, i32* %arrayidx240, align 4
  %cmp241 = icmp eq i32 %103, 5
  br i1 %cmp241, label %lor.end.251, label %lor.rhs.243

lor.rhs.243:                                      ; preds = %cond.true.235
  %104 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load244 = load i32, i32* %105, align 8
  %bf.lshr245 = lshr i32 %bf.load244, 16
  %bf.clear246 = and i32 %bf.lshr245, 255
  %idxprom247 = sext i32 %bf.clear246 to i64
  %arrayidx248 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom247
  %106 = load i32, i32* %arrayidx248, align 4
  %cmp249 = icmp eq i32 %106, 6
  br label %lor.end.251

lor.end.251:                                      ; preds = %lor.rhs.243, %cond.true.235
  %107 = phi i1 [ true, %cond.true.235 ], [ %cmp249, %lor.rhs.243 ]
  %cond252 = select i1 %107, i32 2, i32 1
  br label %cond.end.293

cond.false.253:                                   ; preds = %land.lhs.true.232, %lor.lhs.false.229
  %108 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load254 = load i32, i32* %109, align 8
  %bf.lshr255 = lshr i32 %bf.load254, 16
  %bf.clear256 = and i32 %bf.lshr255, 255
  %cmp257 = icmp eq i32 %bf.clear256, 18
  br i1 %cmp257, label %cond.true.259, label %cond.false.263

cond.true.259:                                    ; preds = %cond.false.253
  %110 = load i32, i32* @target_flags, align 4
  %and260 = and i32 %110, 33554432
  %tobool261 = icmp ne i32 %and260, 0
  %cond262 = select i1 %tobool261, i32 2, i32 3
  br label %cond.end.291

cond.false.263:                                   ; preds = %cond.false.253
  %111 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load264 = load i32, i32* %112, align 8
  %bf.lshr265 = lshr i32 %bf.load264, 16
  %bf.clear266 = and i32 %bf.lshr265, 255
  %cmp267 = icmp eq i32 %bf.clear266, 24
  br i1 %cmp267, label %cond.true.269, label %cond.false.273

cond.true.269:                                    ; preds = %cond.false.263
  %113 = load i32, i32* @target_flags, align 4
  %and270 = and i32 %113, 33554432
  %tobool271 = icmp ne i32 %and270, 0
  %cond272 = select i1 %tobool271, i32 4, i32 6
  br label %cond.end.289

cond.false.273:                                   ; preds = %cond.false.263
  %114 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load274 = load i32, i32* %115, align 8
  %bf.lshr275 = lshr i32 %bf.load274, 16
  %bf.clear276 = and i32 %bf.lshr275, 255
  %idxprom277 = sext i32 %bf.clear276 to i64
  %arrayidx278 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom277
  %116 = load i8, i8* %arrayidx278, align 1
  %conv279 = zext i8 %116 to i32
  %117 = load i32, i32* @target_flags, align 4
  %and280 = and i32 %117, 33554432
  %tobool281 = icmp ne i32 %and280, 0
  %cond282 = select i1 %tobool281, i32 8, i32 4
  %add283 = add nsw i32 %conv279, %cond282
  %sub284 = sub nsw i32 %add283, 1
  %118 = load i32, i32* @target_flags, align 4
  %and285 = and i32 %118, 33554432
  %tobool286 = icmp ne i32 %and285, 0
  %cond287 = select i1 %tobool286, i32 8, i32 4
  %div288 = sdiv i32 %sub284, %cond287
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.273, %cond.true.269
  %cond290 = phi i32 [ %cond272, %cond.true.269 ], [ %div288, %cond.false.273 ]
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.end.289, %cond.true.259
  %cond292 = phi i32 [ %cond262, %cond.true.259 ], [ %cond290, %cond.end.289 ]
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.end.291, %lor.end.251
  %cond294 = phi i32 [ %cond252, %lor.end.251 ], [ %cond292, %cond.end.291 ]
  store i32 %cond294, i32* %ssize, align 4
  br label %if.end.311

if.else.295:                                      ; preds = %if.end.205
  %119 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load296 = load i32, i32* %120, align 8
  %bf.lshr297 = lshr i32 %bf.load296, 16
  %bf.clear298 = and i32 %bf.lshr297, 255
  %idxprom299 = sext i32 %bf.clear298 to i64
  %arrayidx300 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom299
  %121 = load i8, i8* %arrayidx300, align 1
  %conv301 = zext i8 %121 to i32
  %122 = load i32, i32* @target_flags, align 4
  %and302 = and i32 %122, 33554432
  %tobool303 = icmp ne i32 %and302, 0
  %cond304 = select i1 %tobool303, i32 8, i32 4
  %sub305 = sub nsw i32 %cond304, 1
  %add306 = add nsw i32 %conv301, %sub305
  %123 = load i32, i32* @target_flags, align 4
  %and307 = and i32 %123, 33554432
  %tobool308 = icmp ne i32 %and307, 0
  %cond309 = select i1 %tobool308, i32 8, i32 4
  %div310 = sdiv i32 %add306, %cond309
  store i32 %div310, i32* %ssize, align 4
  br label %if.end.311

if.end.311:                                       ; preds = %if.else.295, %cond.end.293
  %124 = load i32, i32* %ureg, align 4
  %cmp312 = icmp sge i32 %124, 53
  br i1 %cmp312, label %land.lhs.true.314, label %lor.lhs.false.319

land.lhs.true.314:                                ; preds = %if.end.311
  %125 = load i32, i32* %ureg, align 4
  %idxprom315 = sext i32 %125 to i64
  %126 = load i32*, i32** @reg_qty, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %126, i64 %idxprom315
  %127 = load i32, i32* %arrayidx316, align 4
  %cmp317 = icmp slt i32 %127, 0
  br i1 %cmp317, label %if.then.445, label %lor.lhs.false.319

lor.lhs.false.319:                                ; preds = %land.lhs.true.314, %if.end.311
  %128 = load i32, i32* %offset, align 4
  %cmp320 = icmp sgt i32 %128, 0
  br i1 %cmp320, label %land.lhs.true.322, label %lor.lhs.false.326

land.lhs.true.322:                                ; preds = %lor.lhs.false.319
  %129 = load i32, i32* %usize, align 4
  %130 = load i32, i32* %offset, align 4
  %add323 = add nsw i32 %129, %130
  %131 = load i32, i32* %ssize, align 4
  %cmp324 = icmp sgt i32 %add323, %131
  br i1 %cmp324, label %if.then.445, label %lor.lhs.false.326

lor.lhs.false.326:                                ; preds = %land.lhs.true.322, %lor.lhs.false.319
  %132 = load i32, i32* %offset, align 4
  %cmp327 = icmp slt i32 %132, 0
  br i1 %cmp327, label %land.lhs.true.329, label %lor.lhs.false.333

land.lhs.true.329:                                ; preds = %lor.lhs.false.326
  %133 = load i32, i32* %usize, align 4
  %134 = load i32, i32* %offset, align 4
  %add330 = add nsw i32 %133, %134
  %135 = load i32, i32* %ssize, align 4
  %cmp331 = icmp slt i32 %add330, %135
  br i1 %cmp331, label %if.then.445, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %land.lhs.true.329, %lor.lhs.false.326
  %136 = load i32, i32* %ssize, align 4
  %137 = load i32, i32* %usize, align 4
  %cmp334 = icmp sgt i32 %136, %137
  br i1 %cmp334, label %land.lhs.true.336, label %lor.lhs.false.346

land.lhs.true.336:                                ; preds = %lor.lhs.false.333
  %138 = load i32, i32* %ureg, align 4
  %cmp337 = icmp sge i32 %138, 53
  br i1 %cmp337, label %land.lhs.true.339, label %lor.lhs.false.346

land.lhs.true.339:                                ; preds = %land.lhs.true.336
  %139 = load i32, i32* %usize, align 4
  %140 = load i32, i32* %ureg, align 4
  %idxprom340 = sext i32 %140 to i64
  %141 = load i32*, i32** @reg_qty, align 8
  %arrayidx341 = getelementptr inbounds i32, i32* %141, i64 %idxprom340
  %142 = load i32, i32* %arrayidx341, align 4
  %idxprom342 = sext i32 %142 to i64
  %143 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx343 = getelementptr inbounds %struct.qty, %struct.qty* %143, i64 %idxprom342
  %size = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx343, i32 0, i32 4
  %144 = load i32, i32* %size, align 4
  %cmp344 = icmp slt i32 %139, %144
  br i1 %cmp344, label %if.then.445, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %land.lhs.true.339, %land.lhs.true.336, %lor.lhs.false.333
  %145 = load i32, i32* %sreg, align 4
  %cmp347 = icmp sge i32 %145, 53
  br i1 %cmp347, label %land.lhs.true.349, label %lor.lhs.false.354

land.lhs.true.349:                                ; preds = %lor.lhs.false.346
  %146 = load i32, i32* %sreg, align 4
  %idxprom350 = sext i32 %146 to i64
  %147 = load i32*, i32** @reg_qty, align 8
  %arrayidx351 = getelementptr inbounds i32, i32* %147, i64 %idxprom350
  %148 = load i32, i32* %arrayidx351, align 4
  %cmp352 = icmp eq i32 %148, -1
  br i1 %cmp352, label %if.then.445, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %land.lhs.true.349, %lor.lhs.false.346
  %149 = load i32, i32* %ureg, align 4
  %cmp355 = icmp sge i32 %149, 53
  br i1 %cmp355, label %land.lhs.true.357, label %lor.lhs.false.360

land.lhs.true.357:                                ; preds = %lor.lhs.false.354
  %150 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %151 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %call358 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %150, i32 9, %struct.rtx_def* %151)
  %tobool359 = icmp ne %struct.rtx_def* %call358, null
  br i1 %tobool359, label %if.then.445, label %lor.lhs.false.360

lor.lhs.false.360:                                ; preds = %land.lhs.true.357, %lor.lhs.false.354
  %152 = load i32, i32* %ureg, align 4
  %153 = load i32, i32* %sreg, align 4
  %cmp361 = icmp eq i32 %152, %153
  br i1 %cmp361, label %if.then.445, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %lor.lhs.false.360
  %154 = load i32, i32* %ureg, align 4
  %cmp364 = icmp slt i32 %154, 53
  br i1 %cmp364, label %land.lhs.true.366, label %lor.lhs.false.369

land.lhs.true.366:                                ; preds = %lor.lhs.false.363
  %155 = load i32, i32* %sreg, align 4
  %cmp367 = icmp slt i32 %155, 53
  br i1 %cmp367, label %if.then.445, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %land.lhs.true.366, %lor.lhs.false.363
  %156 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %157 = bitcast %struct.rtx_def* %156 to i32*
  %bf.load370 = load i32, i32* %157, align 8
  %bf.lshr371 = lshr i32 %bf.load370, 16
  %bf.clear372 = and i32 %bf.lshr371, 255
  %158 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %159 = bitcast %struct.rtx_def* %158 to i32*
  %bf.load373 = load i32, i32* %159, align 8
  %bf.lshr374 = lshr i32 %bf.load373, 16
  %bf.clear375 = and i32 %bf.lshr374, 255
  %cmp376 = icmp eq i32 %bf.clear372, %bf.clear375
  br i1 %cmp376, label %if.end.446, label %lor.lhs.false.378

lor.lhs.false.378:                                ; preds = %lor.lhs.false.369
  %160 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load379 = load i32, i32* %161, align 8
  %bf.lshr380 = lshr i32 %bf.load379, 16
  %bf.clear381 = and i32 %bf.lshr380, 255
  %cmp382 = icmp eq i32 %bf.clear381, 3
  br i1 %cmp382, label %land.lhs.true.411, label %lor.lhs.false.384

lor.lhs.false.384:                                ; preds = %lor.lhs.false.378
  %162 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %163 = bitcast %struct.rtx_def* %162 to i32*
  %bf.load385 = load i32, i32* %163, align 8
  %bf.lshr386 = lshr i32 %bf.load385, 16
  %bf.clear387 = and i32 %bf.lshr386, 255
  %cmp388 = icmp eq i32 %bf.clear387, 4
  br i1 %cmp388, label %land.lhs.true.411, label %lor.lhs.false.390

lor.lhs.false.390:                                ; preds = %lor.lhs.false.384
  %164 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %bf.load391 = load i32, i32* %165, align 8
  %bf.lshr392 = lshr i32 %bf.load391, 16
  %bf.clear393 = and i32 %bf.lshr392, 255
  %cmp394 = icmp eq i32 %bf.clear393, 2
  br i1 %cmp394, label %land.lhs.true.396, label %lor.lhs.false.402

land.lhs.true.396:                                ; preds = %lor.lhs.false.390
  %166 = load i32, i32* @target_flags, align 4
  %and397 = and i32 %166, 33554432
  %tobool398 = icmp ne i32 %and397, 0
  br i1 %tobool398, label %land.lhs.true.411, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %land.lhs.true.396
  %167 = load i32, i32* @x86_partial_reg_stall, align 4
  %168 = load i32, i32* @ix86_cpu, align 4
  %shl = shl i32 1, %168
  %and400 = and i32 %167, %shl
  %tobool401 = icmp ne i32 %and400, 0
  br i1 %tobool401, label %lor.lhs.false.402, label %land.lhs.true.411

lor.lhs.false.402:                                ; preds = %lor.lhs.false.399, %lor.lhs.false.390
  %169 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load403 = load i32, i32* %170, align 8
  %bf.lshr404 = lshr i32 %bf.load403, 16
  %bf.clear405 = and i32 %bf.lshr404, 255
  %cmp406 = icmp eq i32 %bf.clear405, 5
  br i1 %cmp406, label %land.lhs.true.408, label %if.then.445

land.lhs.true.408:                                ; preds = %lor.lhs.false.402
  %171 = load i32, i32* @target_flags, align 4
  %and409 = and i32 %171, 33554432
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %land.lhs.true.411, label %if.then.445

land.lhs.true.411:                                ; preds = %land.lhs.true.408, %lor.lhs.false.399, %land.lhs.true.396, %lor.lhs.false.384, %lor.lhs.false.378
  %172 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load412 = load i32, i32* %173, align 8
  %bf.lshr413 = lshr i32 %bf.load412, 16
  %bf.clear414 = and i32 %bf.lshr413, 255
  %cmp415 = icmp eq i32 %bf.clear414, 3
  br i1 %cmp415, label %if.end.446, label %lor.lhs.false.417

lor.lhs.false.417:                                ; preds = %land.lhs.true.411
  %174 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load418 = load i32, i32* %175, align 8
  %bf.lshr419 = lshr i32 %bf.load418, 16
  %bf.clear420 = and i32 %bf.lshr419, 255
  %cmp421 = icmp eq i32 %bf.clear420, 4
  br i1 %cmp421, label %if.end.446, label %lor.lhs.false.423

lor.lhs.false.423:                                ; preds = %lor.lhs.false.417
  %176 = load %struct.rtx_def*, %struct.rtx_def** %usedreg.addr, align 8
  %177 = bitcast %struct.rtx_def* %176 to i32*
  %bf.load424 = load i32, i32* %177, align 8
  %bf.lshr425 = lshr i32 %bf.load424, 16
  %bf.clear426 = and i32 %bf.lshr425, 255
  %cmp427 = icmp eq i32 %bf.clear426, 2
  br i1 %cmp427, label %land.lhs.true.429, label %lor.lhs.false.436

land.lhs.true.429:                                ; preds = %lor.lhs.false.423
  %178 = load i32, i32* @target_flags, align 4
  %and430 = and i32 %178, 33554432
  %tobool431 = icmp ne i32 %and430, 0
  br i1 %tobool431, label %if.end.446, label %lor.lhs.false.432

lor.lhs.false.432:                                ; preds = %land.lhs.true.429
  %179 = load i32, i32* @x86_partial_reg_stall, align 4
  %180 = load i32, i32* @ix86_cpu, align 4
  %shl433 = shl i32 1, %180
  %and434 = and i32 %179, %shl433
  %tobool435 = icmp ne i32 %and434, 0
  br i1 %tobool435, label %lor.lhs.false.436, label %if.end.446

lor.lhs.false.436:                                ; preds = %lor.lhs.false.432, %lor.lhs.false.423
  %181 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %bf.load437 = load i32, i32* %182, align 8
  %bf.lshr438 = lshr i32 %bf.load437, 16
  %bf.clear439 = and i32 %bf.lshr438, 255
  %cmp440 = icmp eq i32 %bf.clear439, 5
  br i1 %cmp440, label %land.lhs.true.442, label %if.then.445

land.lhs.true.442:                                ; preds = %lor.lhs.false.436
  %183 = load i32, i32* @target_flags, align 4
  %and443 = and i32 %183, 33554432
  %tobool444 = icmp ne i32 %and443, 0
  br i1 %tobool444, label %if.end.446, label %if.then.445

if.then.445:                                      ; preds = %land.lhs.true.442, %lor.lhs.false.436, %land.lhs.true.408, %lor.lhs.false.402, %land.lhs.true.366, %lor.lhs.false.360, %land.lhs.true.357, %land.lhs.true.349, %land.lhs.true.339, %land.lhs.true.329, %land.lhs.true.322, %land.lhs.true.314
  store i32 0, i32* %retval
  br label %return

if.end.446:                                       ; preds = %land.lhs.true.442, %lor.lhs.false.432, %land.lhs.true.429, %lor.lhs.false.417, %land.lhs.true.411, %lor.lhs.false.369
  %184 = load i32, i32* %ureg, align 4
  %cmp447 = icmp slt i32 %184, 53
  br i1 %cmp447, label %if.then.449, label %if.end.506

if.then.449:                                      ; preds = %if.end.446
  %185 = load i32, i32* %sreg, align 4
  %idxprom450 = sext i32 %185 to i64
  %186 = load i32*, i32** @reg_qty, align 8
  %arrayidx451 = getelementptr inbounds i32, i32* %186, i64 %idxprom450
  %187 = load i32, i32* %arrayidx451, align 4
  %cmp452 = icmp eq i32 %187, -2
  br i1 %cmp452, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %if.then.449
  %188 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %189 = load i32, i32* %insn_number.addr, align 4
  %mul = mul nsw i32 2, %189
  call void @reg_is_born(%struct.rtx_def* %188, i32 %mul)
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.454, %if.then.449
  %190 = load i32, i32* %sreg, align 4
  %idxprom456 = sext i32 %190 to i64
  %191 = load i32*, i32** @reg_qty, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %191, i64 %idxprom456
  %192 = load i32, i32* %arrayidx457, align 4
  %cmp458 = icmp sge i32 %192, 0
  br i1 %cmp458, label %if.then.460, label %if.end.505

if.then.460:                                      ; preds = %if.end.455
  %193 = load i32, i32* %may_save_copy.addr, align 4
  %tobool461 = icmp ne i32 %193, 0
  br i1 %tobool461, label %land.lhs.true.462, label %if.else.481

land.lhs.true.462:                                ; preds = %if.then.460
  %194 = load i32, i32* %sreg, align 4
  %idxprom463 = sext i32 %194 to i64
  %195 = load i32*, i32** @reg_qty, align 8
  %arrayidx464 = getelementptr inbounds i32, i32* %195, i64 %idxprom463
  %196 = load i32, i32* %arrayidx464, align 4
  %idxprom465 = sext i32 %196 to i64
  %197 = load i64*, i64** @qty_phys_copy_sugg, align 8
  %arrayidx466 = getelementptr inbounds i64, i64* %197, i64 %idxprom465
  %198 = load i64, i64* %arrayidx466, align 8
  %199 = load i32, i32* %ureg, align 4
  %sh_prom = zext i32 %199 to i64
  %shl467 = shl i64 1, %sh_prom
  %and468 = and i64 %198, %shl467
  %tobool469 = icmp ne i64 %and468, 0
  br i1 %tobool469, label %if.else.481, label %if.then.470

if.then.470:                                      ; preds = %land.lhs.true.462
  %200 = load i32, i32* %ureg, align 4
  %sh_prom471 = zext i32 %200 to i64
  %shl472 = shl i64 1, %sh_prom471
  %201 = load i32, i32* %sreg, align 4
  %idxprom473 = sext i32 %201 to i64
  %202 = load i32*, i32** @reg_qty, align 8
  %arrayidx474 = getelementptr inbounds i32, i32* %202, i64 %idxprom473
  %203 = load i32, i32* %arrayidx474, align 4
  %idxprom475 = sext i32 %203 to i64
  %204 = load i64*, i64** @qty_phys_copy_sugg, align 8
  %arrayidx476 = getelementptr inbounds i64, i64* %204, i64 %idxprom475
  %205 = load i64, i64* %arrayidx476, align 8
  %or = or i64 %205, %shl472
  store i64 %or, i64* %arrayidx476, align 8
  %206 = load i32, i32* %sreg, align 4
  %idxprom477 = sext i32 %206 to i64
  %207 = load i32*, i32** @reg_qty, align 8
  %arrayidx478 = getelementptr inbounds i32, i32* %207, i64 %idxprom477
  %208 = load i32, i32* %arrayidx478, align 4
  %idxprom479 = sext i32 %208 to i64
  %209 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx480 = getelementptr inbounds i16, i16* %209, i64 %idxprom479
  %210 = load i16, i16* %arrayidx480, align 2
  %inc = add i16 %210, 1
  store i16 %inc, i16* %arrayidx480, align 2
  br label %if.end.504

if.else.481:                                      ; preds = %land.lhs.true.462, %if.then.460
  %211 = load i32, i32* %sreg, align 4
  %idxprom482 = sext i32 %211 to i64
  %212 = load i32*, i32** @reg_qty, align 8
  %arrayidx483 = getelementptr inbounds i32, i32* %212, i64 %idxprom482
  %213 = load i32, i32* %arrayidx483, align 4
  %idxprom484 = sext i32 %213 to i64
  %214 = load i64*, i64** @qty_phys_sugg, align 8
  %arrayidx485 = getelementptr inbounds i64, i64* %214, i64 %idxprom484
  %215 = load i64, i64* %arrayidx485, align 8
  %216 = load i32, i32* %ureg, align 4
  %sh_prom486 = zext i32 %216 to i64
  %shl487 = shl i64 1, %sh_prom486
  %and488 = and i64 %215, %shl487
  %tobool489 = icmp ne i64 %and488, 0
  br i1 %tobool489, label %if.end.503, label %if.then.490

if.then.490:                                      ; preds = %if.else.481
  %217 = load i32, i32* %ureg, align 4
  %sh_prom491 = zext i32 %217 to i64
  %shl492 = shl i64 1, %sh_prom491
  %218 = load i32, i32* %sreg, align 4
  %idxprom493 = sext i32 %218 to i64
  %219 = load i32*, i32** @reg_qty, align 8
  %arrayidx494 = getelementptr inbounds i32, i32* %219, i64 %idxprom493
  %220 = load i32, i32* %arrayidx494, align 4
  %idxprom495 = sext i32 %220 to i64
  %221 = load i64*, i64** @qty_phys_sugg, align 8
  %arrayidx496 = getelementptr inbounds i64, i64* %221, i64 %idxprom495
  %222 = load i64, i64* %arrayidx496, align 8
  %or497 = or i64 %222, %shl492
  store i64 %or497, i64* %arrayidx496, align 8
  %223 = load i32, i32* %sreg, align 4
  %idxprom498 = sext i32 %223 to i64
  %224 = load i32*, i32** @reg_qty, align 8
  %arrayidx499 = getelementptr inbounds i32, i32* %224, i64 %idxprom498
  %225 = load i32, i32* %arrayidx499, align 4
  %idxprom500 = sext i32 %225 to i64
  %226 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx501 = getelementptr inbounds i16, i16* %226, i64 %idxprom500
  %227 = load i16, i16* %arrayidx501, align 2
  %inc502 = add i16 %227, 1
  store i16 %inc502, i16* %arrayidx501, align 2
  br label %if.end.503

if.end.503:                                       ; preds = %if.then.490, %if.else.481
  br label %if.end.504

if.end.504:                                       ; preds = %if.end.503, %if.then.470
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %if.end.455
  store i32 0, i32* %retval
  br label %return

if.end.506:                                       ; preds = %if.end.446
  %228 = load i32, i32* %sreg, align 4
  %cmp507 = icmp slt i32 %228, 53
  br i1 %cmp507, label %if.then.509, label %if.end.557

if.then.509:                                      ; preds = %if.end.506
  %229 = load i32, i32* %may_save_copy.addr, align 4
  %tobool510 = icmp ne i32 %229, 0
  br i1 %tobool510, label %land.lhs.true.511, label %if.else.533

land.lhs.true.511:                                ; preds = %if.then.509
  %230 = load i32, i32* %ureg, align 4
  %idxprom512 = sext i32 %230 to i64
  %231 = load i32*, i32** @reg_qty, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %231, i64 %idxprom512
  %232 = load i32, i32* %arrayidx513, align 4
  %idxprom514 = sext i32 %232 to i64
  %233 = load i64*, i64** @qty_phys_copy_sugg, align 8
  %arrayidx515 = getelementptr inbounds i64, i64* %233, i64 %idxprom514
  %234 = load i64, i64* %arrayidx515, align 8
  %235 = load i32, i32* %sreg, align 4
  %sh_prom516 = zext i32 %235 to i64
  %shl517 = shl i64 1, %sh_prom516
  %and518 = and i64 %234, %shl517
  %tobool519 = icmp ne i64 %and518, 0
  br i1 %tobool519, label %if.else.533, label %if.then.520

if.then.520:                                      ; preds = %land.lhs.true.511
  %236 = load i32, i32* %sreg, align 4
  %sh_prom521 = zext i32 %236 to i64
  %shl522 = shl i64 1, %sh_prom521
  %237 = load i32, i32* %ureg, align 4
  %idxprom523 = sext i32 %237 to i64
  %238 = load i32*, i32** @reg_qty, align 8
  %arrayidx524 = getelementptr inbounds i32, i32* %238, i64 %idxprom523
  %239 = load i32, i32* %arrayidx524, align 4
  %idxprom525 = sext i32 %239 to i64
  %240 = load i64*, i64** @qty_phys_copy_sugg, align 8
  %arrayidx526 = getelementptr inbounds i64, i64* %240, i64 %idxprom525
  %241 = load i64, i64* %arrayidx526, align 8
  %or527 = or i64 %241, %shl522
  store i64 %or527, i64* %arrayidx526, align 8
  %242 = load i32, i32* %ureg, align 4
  %idxprom528 = sext i32 %242 to i64
  %243 = load i32*, i32** @reg_qty, align 8
  %arrayidx529 = getelementptr inbounds i32, i32* %243, i64 %idxprom528
  %244 = load i32, i32* %arrayidx529, align 4
  %idxprom530 = sext i32 %244 to i64
  %245 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx531 = getelementptr inbounds i16, i16* %245, i64 %idxprom530
  %246 = load i16, i16* %arrayidx531, align 2
  %inc532 = add i16 %246, 1
  store i16 %inc532, i16* %arrayidx531, align 2
  br label %if.end.556

if.else.533:                                      ; preds = %land.lhs.true.511, %if.then.509
  %247 = load i32, i32* %ureg, align 4
  %idxprom534 = sext i32 %247 to i64
  %248 = load i32*, i32** @reg_qty, align 8
  %arrayidx535 = getelementptr inbounds i32, i32* %248, i64 %idxprom534
  %249 = load i32, i32* %arrayidx535, align 4
  %idxprom536 = sext i32 %249 to i64
  %250 = load i64*, i64** @qty_phys_sugg, align 8
  %arrayidx537 = getelementptr inbounds i64, i64* %250, i64 %idxprom536
  %251 = load i64, i64* %arrayidx537, align 8
  %252 = load i32, i32* %sreg, align 4
  %sh_prom538 = zext i32 %252 to i64
  %shl539 = shl i64 1, %sh_prom538
  %and540 = and i64 %251, %shl539
  %tobool541 = icmp ne i64 %and540, 0
  br i1 %tobool541, label %if.end.555, label %if.then.542

if.then.542:                                      ; preds = %if.else.533
  %253 = load i32, i32* %sreg, align 4
  %sh_prom543 = zext i32 %253 to i64
  %shl544 = shl i64 1, %sh_prom543
  %254 = load i32, i32* %ureg, align 4
  %idxprom545 = sext i32 %254 to i64
  %255 = load i32*, i32** @reg_qty, align 8
  %arrayidx546 = getelementptr inbounds i32, i32* %255, i64 %idxprom545
  %256 = load i32, i32* %arrayidx546, align 4
  %idxprom547 = sext i32 %256 to i64
  %257 = load i64*, i64** @qty_phys_sugg, align 8
  %arrayidx548 = getelementptr inbounds i64, i64* %257, i64 %idxprom547
  %258 = load i64, i64* %arrayidx548, align 8
  %or549 = or i64 %258, %shl544
  store i64 %or549, i64* %arrayidx548, align 8
  %259 = load i32, i32* %ureg, align 4
  %idxprom550 = sext i32 %259 to i64
  %260 = load i32*, i32** @reg_qty, align 8
  %arrayidx551 = getelementptr inbounds i32, i32* %260, i64 %idxprom550
  %261 = load i32, i32* %arrayidx551, align 4
  %idxprom552 = sext i32 %261 to i64
  %262 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx553 = getelementptr inbounds i16, i16* %262, i64 %idxprom552
  %263 = load i16, i16* %arrayidx553, align 2
  %inc554 = add i16 %263, 1
  store i16 %inc554, i16* %arrayidx553, align 2
  br label %if.end.555

if.end.555:                                       ; preds = %if.then.542, %if.else.533
  br label %if.end.556

if.end.556:                                       ; preds = %if.end.555, %if.then.520
  store i32 0, i32* %retval
  br label %return

if.end.557:                                       ; preds = %if.end.506
  %264 = load i32, i32* %sreg, align 4
  %idxprom558 = sext i32 %264 to i64
  %265 = load i32*, i32** @reg_qty, align 8
  %arrayidx559 = getelementptr inbounds i32, i32* %265, i64 %idxprom558
  %266 = load i32, i32* %arrayidx559, align 4
  %cmp560 = icmp sge i32 %266, -1
  br i1 %cmp560, label %if.then.581, label %lor.lhs.false.562

lor.lhs.false.562:                                ; preds = %if.end.557
  %267 = load %struct.function*, %struct.function** @cfun, align 8
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %267, i32 0, i32 56
  %268 = bitcast i24* %has_nonlocal_label to i32*
  %bf.load563 = load i32, i32* %268, align 8
  %bf.lshr564 = lshr i32 %bf.load563, 8
  %bf.clear565 = and i32 %bf.lshr564, 1
  %tobool566 = icmp ne i32 %bf.clear565, 0
  br i1 %tobool566, label %land.lhs.true.567, label %if.end.582

land.lhs.true.567:                                ; preds = %lor.lhs.false.562
  %269 = load i32, i32* %ureg, align 4
  %idxprom568 = sext i32 %269 to i64
  %270 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %270, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx569 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom568
  %271 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx569, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %271, i32 0, i32 8
  %272 = load i32, i32* %calls_crossed, align 4
  %cmp570 = icmp sgt i32 %272, 0
  %conv571 = zext i1 %cmp570 to i32
  %273 = load i32, i32* %sreg, align 4
  %idxprom572 = sext i32 %273 to i64
  %274 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data573 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %274, i32 0, i32 4
  %reg574 = bitcast %union.varray_data_tag* %data573 to [1 x %struct.reg_info_def*]*
  %arrayidx575 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg574, i32 0, i64 %idxprom572
  %275 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx575, align 8
  %calls_crossed576 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %275, i32 0, i32 8
  %276 = load i32, i32* %calls_crossed576, align 4
  %cmp577 = icmp sgt i32 %276, 0
  %conv578 = zext i1 %cmp577 to i32
  %cmp579 = icmp ne i32 %conv571, %conv578
  br i1 %cmp579, label %if.then.581, label %if.end.582

if.then.581:                                      ; preds = %land.lhs.true.567, %if.end.557
  store i32 0, i32* %retval
  br label %return

if.end.582:                                       ; preds = %land.lhs.true.567, %lor.lhs.false.562
  %277 = load i32, i32* %already_dead.addr, align 4
  %tobool583 = icmp ne i32 %277, 0
  br i1 %tobool583, label %land.lhs.true.587, label %lor.lhs.false.584

lor.lhs.false.584:                                ; preds = %if.end.582
  %278 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %279 = load i32, i32* %ureg, align 4
  %call585 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %278, i32 1, i32 %279)
  %tobool586 = icmp ne %struct.rtx_def* %call585, null
  br i1 %tobool586, label %land.lhs.true.587, label %if.else.660

land.lhs.true.587:                                ; preds = %lor.lhs.false.584, %if.end.582
  %280 = load i32, i32* %sreg, align 4
  %281 = load i32, i32* %ureg, align 4
  %idxprom588 = sext i32 %281 to i64
  %282 = load i32*, i32** @reg_qty, align 8
  %arrayidx589 = getelementptr inbounds i32, i32* %282, i64 %idxprom588
  %283 = load i32, i32* %arrayidx589, align 4
  %idxprom590 = sext i32 %283 to i64
  %284 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx591 = getelementptr inbounds %struct.qty, %struct.qty* %284, i64 %idxprom590
  %min_class = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx591, i32 0, i32 7
  %285 = load i32, i32* %min_class, align 4
  %call592 = call i32 @reg_meets_class_p(i32 %280, i32 %285)
  %tobool593 = icmp ne i32 %call592, 0
  br i1 %tobool593, label %if.then.594, label %if.else.660

if.then.594:                                      ; preds = %land.lhs.true.587
  %286 = load i32, i32* %ureg, align 4
  %idxprom595 = sext i32 %286 to i64
  %287 = load i32*, i32** @reg_qty, align 8
  %arrayidx596 = getelementptr inbounds i32, i32* %287, i64 %idxprom595
  %288 = load i32, i32* %arrayidx596, align 4
  store i32 %288, i32* %sqty, align 4
  %289 = load i32, i32* %sqty, align 4
  %290 = load i32, i32* %sreg, align 4
  %idxprom597 = sext i32 %290 to i64
  %291 = load i32*, i32** @reg_qty, align 8
  %arrayidx598 = getelementptr inbounds i32, i32* %291, i64 %idxprom597
  store i32 %289, i32* %arrayidx598, align 4
  %292 = load i32, i32* %ureg, align 4
  %idxprom599 = sext i32 %292 to i64
  %293 = load i8*, i8** @reg_offset, align 8
  %arrayidx600 = getelementptr inbounds i8, i8* %293, i64 %idxprom599
  %294 = load i8, i8* %arrayidx600, align 1
  %conv601 = sext i8 %294 to i32
  %295 = load i32, i32* %offset, align 4
  %add602 = add nsw i32 %conv601, %295
  %conv603 = trunc i32 %add602 to i8
  %296 = load i32, i32* %sreg, align 4
  %idxprom604 = sext i32 %296 to i64
  %297 = load i8*, i8** @reg_offset, align 8
  %arrayidx605 = getelementptr inbounds i8, i8* %297, i64 %idxprom604
  store i8 %conv603, i8* %arrayidx605, align 1
  %298 = load i32, i32* %sqty, align 4
  %idxprom606 = sext i32 %298 to i64
  %299 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx607 = getelementptr inbounds %struct.qty, %struct.qty* %299, i64 %idxprom606
  %first_reg = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx607, i32 0, i32 6
  %300 = load i32, i32* %first_reg, align 4
  %301 = load i32, i32* %sreg, align 4
  %idxprom608 = sext i32 %301 to i64
  %302 = load i32*, i32** @reg_next_in_qty, align 8
  %arrayidx609 = getelementptr inbounds i32, i32* %302, i64 %idxprom608
  store i32 %300, i32* %arrayidx609, align 4
  %303 = load i32, i32* %sreg, align 4
  %304 = load i32, i32* %sqty, align 4
  %idxprom610 = sext i32 %304 to i64
  %305 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx611 = getelementptr inbounds %struct.qty, %struct.qty* %305, i64 %idxprom610
  %first_reg612 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx611, i32 0, i32 6
  store i32 %303, i32* %first_reg612, align 4
  %306 = load i32, i32* %sqty, align 4
  %307 = load i32, i32* %sreg, align 4
  call void @update_qty_class(i32 %306, i32 %307)
  %308 = load i32, i32* %sreg, align 4
  %idxprom613 = sext i32 %308 to i64
  %309 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data614 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %309, i32 0, i32 4
  %reg615 = bitcast %union.varray_data_tag* %data614 to [1 x %struct.reg_info_def*]*
  %arrayidx616 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg615, i32 0, i64 %idxprom613
  %310 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx616, align 8
  %calls_crossed617 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %310, i32 0, i32 8
  %311 = load i32, i32* %calls_crossed617, align 4
  %312 = load i32, i32* %sqty, align 4
  %idxprom618 = sext i32 %312 to i64
  %313 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx619 = getelementptr inbounds %struct.qty, %struct.qty* %313, i64 %idxprom618
  %n_calls_crossed = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx619, i32 0, i32 5
  %314 = load i32, i32* %n_calls_crossed, align 4
  %add620 = add nsw i32 %314, %311
  store i32 %add620, i32* %n_calls_crossed, align 4
  %315 = load i32, i32* %sreg, align 4
  %idxprom621 = sext i32 %315 to i64
  %316 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data622 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %316, i32 0, i32 4
  %reg623 = bitcast %union.varray_data_tag* %data622 to [1 x %struct.reg_info_def*]*
  %arrayidx624 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg623, i32 0, i64 %idxprom621
  %317 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx624, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %317, i32 0, i32 4
  %318 = load i32, i32* %refs, align 4
  %319 = load i32, i32* %sqty, align 4
  %idxprom625 = sext i32 %319 to i64
  %320 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx626 = getelementptr inbounds %struct.qty, %struct.qty* %320, i64 %idxprom625
  %n_refs = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx626, i32 0, i32 0
  %321 = load i32, i32* %n_refs, align 4
  %add627 = add nsw i32 %321, %318
  store i32 %add627, i32* %n_refs, align 4
  %322 = load i32, i32* %sreg, align 4
  %idxprom628 = sext i32 %322 to i64
  %323 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data629 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %323, i32 0, i32 4
  %reg630 = bitcast %union.varray_data_tag* %data629 to [1 x %struct.reg_info_def*]*
  %arrayidx631 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg630, i32 0, i64 %idxprom628
  %324 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx631, align 8
  %freq = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %324, i32 0, i32 5
  %325 = load i32, i32* %freq, align 4
  %326 = load i32, i32* %sqty, align 4
  %idxprom632 = sext i32 %326 to i64
  %327 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx633 = getelementptr inbounds %struct.qty, %struct.qty* %327, i64 %idxprom632
  %freq634 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx633, i32 0, i32 1
  %328 = load i32, i32* %freq634, align 4
  %add635 = add nsw i32 %328, %325
  store i32 %add635, i32* %freq634, align 4
  %329 = load i32, i32* %usize, align 4
  %330 = load i32, i32* %ssize, align 4
  %cmp636 = icmp slt i32 %329, %330
  br i1 %cmp636, label %if.then.638, label %if.end.659

if.then.638:                                      ; preds = %if.then.594
  %331 = load i32, i32* %sqty, align 4
  %idxprom639 = sext i32 %331 to i64
  %332 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx640 = getelementptr inbounds %struct.qty, %struct.qty* %332, i64 %idxprom639
  %first_reg641 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx640, i32 0, i32 6
  %333 = load i32, i32* %first_reg641, align 4
  store i32 %333, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.638
  %334 = load i32, i32* %i, align 4
  %cmp642 = icmp sge i32 %334, 0
  br i1 %cmp642, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %335 = load i32, i32* %offset, align 4
  %336 = load i32, i32* %i, align 4
  %idxprom644 = sext i32 %336 to i64
  %337 = load i8*, i8** @reg_offset, align 8
  %arrayidx645 = getelementptr inbounds i8, i8* %337, i64 %idxprom644
  %338 = load i8, i8* %arrayidx645, align 1
  %conv646 = sext i8 %338 to i32
  %sub647 = sub nsw i32 %conv646, %335
  %conv648 = trunc i32 %sub647 to i8
  store i8 %conv648, i8* %arrayidx645, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %339 = load i32, i32* %i, align 4
  %idxprom649 = sext i32 %339 to i64
  %340 = load i32*, i32** @reg_next_in_qty, align 8
  %arrayidx650 = getelementptr inbounds i32, i32* %340, i64 %idxprom649
  %341 = load i32, i32* %arrayidx650, align 4
  store i32 %341, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %342 = load i32, i32* %ssize, align 4
  %343 = load i32, i32* %sqty, align 4
  %idxprom651 = sext i32 %343 to i64
  %344 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx652 = getelementptr inbounds %struct.qty, %struct.qty* %344, i64 %idxprom651
  %size653 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx652, i32 0, i32 4
  store i32 %342, i32* %size653, align 4
  %345 = load %struct.rtx_def*, %struct.rtx_def** %setreg.addr, align 8
  %346 = bitcast %struct.rtx_def* %345 to i32*
  %bf.load654 = load i32, i32* %346, align 8
  %bf.lshr655 = lshr i32 %bf.load654, 16
  %bf.clear656 = and i32 %bf.lshr655, 255
  %347 = load i32, i32* %sqty, align 4
  %idxprom657 = sext i32 %347 to i64
  %348 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx658 = getelementptr inbounds %struct.qty, %struct.qty* %348, i64 %idxprom657
  %mode = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx658, i32 0, i32 9
  store i32 %bf.clear656, i32* %mode, align 4
  br label %if.end.659

if.end.659:                                       ; preds = %for.end, %if.then.594
  br label %if.end.661

if.else.660:                                      ; preds = %land.lhs.true.587, %lor.lhs.false.584
  store i32 0, i32* %retval
  br label %return

if.end.661:                                       ; preds = %if.end.659
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.661, %if.else.660, %if.then.581, %if.end.556, %if.end.505, %if.then.445, %if.then.204, %if.then.40
  %349 = load i32, i32* %retval
  ret i32 %349
}

; Function Attrs: nounwind uwtable
define internal i32 @no_conflict_p(%struct.rtx_def* %insn, %struct.rtx_def* %r0, %struct.rtx_def* %r1) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %r0.addr = alloca %struct.rtx_def*, align 8
  %r1.addr = alloca %struct.rtx_def*, align 8
  %ok = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %r0, %struct.rtx_def** %r0.addr, align 8
  store %struct.rtx_def* %r1, %struct.rtx_def** %r1.addr, align 8
  store i32 0, i32* %ok, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %0, i32 7, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 61
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.3

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  %cmp2 = icmp ult i32 %5, 53
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 63
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %lor.lhs.false.3
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load10 = load i32, i32* %10, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 61
  br i1 %cmp12, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtuint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %13 = load i32, i32* %rtuint19, align 4
  %cmp20 = icmp ult i32 %13, 53
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.13, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.13, %land.lhs.true.7, %lor.lhs.false.3
  %14 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %last, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 2
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool = icmp ne %struct.rtx_def* %18, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp27 = icmp ne %struct.rtx_def* %19, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp27, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load28 = load i32, i32* %23, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %idxprom = sext i32 %bf.clear29 to i64
  %arrayidx30 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx30, align 1
  %conv = sext i8 %24 to i32
  %cmp31 = icmp eq i32 %conv, 105
  br i1 %cmp31, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %for.body
  %25 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %call34 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %25, i32 1, %struct.rtx_def* %26)
  %tobool35 = icmp ne %struct.rtx_def* %call34, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  store i32 1, i32* %ok, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  %27 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %call38 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %27, i32 9, %struct.rtx_def* %28)
  %tobool39 = icmp ne %struct.rtx_def* %call38, null
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.37
  store i32 0, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %29 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 2
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %31 = load i32, i32* %ok, align 4
  store i32 %31, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.40, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @wipe_dead_reg(%struct.rtx_def* %reg, i32 %output_p) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %output_p.addr = alloca i32, align 4
  %regno = alloca i32, align 4
  %i = alloca i32, align 4
  %set = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i32 %output_p, i32* %output_p.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %regno, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** @this_insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** @this_insn, align 8
  %call = call i32 @multiple_sets(%struct.rtx_def* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.39

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** @this_insn, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 3
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 0
  %9 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %10, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.rtx_def*, %struct.rtx_def** @this_insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 3
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtvec14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec14, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx15, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %set, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load16 = load i32, i32* %17, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 47
  br i1 %cmp18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %for.body
  %18 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load23 = load i32, i32* %20, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp ne i32 %bf.clear24, 61
  br i1 %cmp25, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %land.lhs.true.19
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %call30 = call i32 @rtx_equal_p(%struct.rtx_def* %21, %struct.rtx_def* %23)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %land.lhs.true.26
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %call36 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %24, %struct.rtx_def* %26)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %output_p.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.38, %land.lhs.true.32, %land.lhs.true.26, %land.lhs.true.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end, %land.lhs.true, %entry
  %28 = load i32, i32* %output_p.addr, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.end.45, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %if.end.39
  %29 = load %struct.rtx_def*, %struct.rtx_def** @this_insn, align 8
  %30 = load i32, i32* %regno, align 4
  %call42 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %29, i32 2, i32 %30)
  %tobool43 = icmp ne %struct.rtx_def* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %output_p.addr, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %land.lhs.true.41, %if.end.39
  %31 = load i32, i32* %regno, align 4
  %cmp46 = icmp slt i32 %31, 53
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.end.45
  %32 = load i32, i32* %regno, align 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load48 = load i32, i32* %34, align 8
  %bf.lshr = lshr i32 %bf.load48, 16
  %bf.clear49 = and i32 %bf.lshr, 255
  call void @mark_life(i32 %32, i32 %bf.clear49, i32 0)
  %35 = load i32, i32* %output_p.addr, align 4
  %tobool50 = icmp ne i32 %35, 0
  br i1 %tobool50, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.then.47
  %36 = load i32, i32* %regno, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load52 = load i32, i32* %38, align 8
  %bf.lshr53 = lshr i32 %bf.load52, 16
  %bf.clear54 = and i32 %bf.lshr53, 255
  %39 = load i32, i32* @this_insn_number, align 4
  %mul = mul nsw i32 2, %39
  %40 = load i32, i32* @this_insn_number, align 4
  %mul55 = mul nsw i32 2, %40
  %add = add nsw i32 %mul55, 1
  call void @post_mark_life(i32 %36, i32 %bf.clear54, i32 1, i32 %mul, i32 %add)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.then.47
  br label %if.end.68

if.else:                                          ; preds = %if.end.45
  %41 = load i32, i32* %regno, align 4
  %idxprom57 = sext i32 %41 to i64
  %42 = load i32*, i32** @reg_qty, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %42, i64 %idxprom57
  %43 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp sge i32 %43, 0
  br i1 %cmp59, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %if.else
  %44 = load i32, i32* @this_insn_number, align 4
  %mul61 = mul nsw i32 2, %44
  %45 = load i32, i32* %output_p.addr, align 4
  %add62 = add nsw i32 %mul61, %45
  %46 = load i32, i32* %regno, align 4
  %idxprom63 = sext i32 %46 to i64
  %47 = load i32*, i32** @reg_qty, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %47, i64 %idxprom63
  %48 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = sext i32 %48 to i64
  %49 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx66 = getelementptr inbounds %struct.qty, %struct.qty* %49, i64 %idxprom65
  %death = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx66, i32 0, i32 3
  store i32 %add62, i32* %death, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.60, %if.else
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reg_is_set(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 63
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %5 = load i32, i32* @this_insn_number, align 4
  %mul = mul nsw i32 2, %5
  %6 = load %struct.rtx_def*, %struct.rtx_def** %setter.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 49
  %conv = zext i1 %cmp6 to i32
  %sub = sub nsw i32 %mul, %conv
  call void @reg_is_born(%struct.rtx_def* %4, i32 %sub)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @qty_sugg_compare(i32 %q1, i32 %q2) #0 {
entry:
  %retval = alloca i32, align 4
  %q1.addr = alloca i32, align 4
  %q2.addr = alloca i32, align 4
  %tem = alloca i32, align 4
  store i32 %q1, i32* %q1.addr, align 4
  store i32 %q2, i32* %q2.addr, align 4
  %0 = load i32, i32* %q1.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %q1.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %q1.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %7, i64 %idxprom4
  %8 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %8 to i32
  %mul = mul nsw i32 %conv6, 53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %mul, %cond.false ]
  %9 = load i32, i32* %q2.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %10, i64 %idxprom7
  %11 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %11 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.end
  %12 = load i32, i32* %q2.addr, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %13, i64 %idxprom12
  %14 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %14 to i32
  br label %cond.end.20

cond.false.15:                                    ; preds = %cond.end
  %15 = load i32, i32* %q2.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %16, i64 %idxprom16
  %17 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %17 to i32
  %mul19 = mul nsw i32 %conv18, 53
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.15, %cond.true.11
  %cond21 = phi i32 [ %conv14, %cond.true.11 ], [ %mul19, %cond.false.15 ]
  %sub = sub nsw i32 %cond, %cond21
  store i32 %sub, i32* %tem, align 4
  %18 = load i32, i32* %tem, align 4
  %cmp = icmp ne i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.20
  %19 = load i32, i32* %tem, align 4
  store i32 %19, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.20
  %20 = load i32, i32* %q2.addr, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx24 = getelementptr inbounds %struct.qty, %struct.qty* %21, i64 %idxprom23
  %n_refs = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx24, i32 0, i32 0
  %22 = load i32, i32* %n_refs, align 4
  %conv25 = sext i32 %22 to i64
  %call = call i32 @floor_log2_wide(i64 %conv25)
  %23 = load i32, i32* %q2.addr, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx27 = getelementptr inbounds %struct.qty, %struct.qty* %24, i64 %idxprom26
  %freq = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx27, i32 0, i32 1
  %25 = load i32, i32* %freq, align 4
  %mul28 = mul nsw i32 %call, %25
  %26 = load i32, i32* %q2.addr, align 4
  %idxprom29 = sext i32 %26 to i64
  %27 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx30 = getelementptr inbounds %struct.qty, %struct.qty* %27, i64 %idxprom29
  %size = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx30, i32 0, i32 4
  %28 = load i32, i32* %size, align 4
  %mul31 = mul nsw i32 %mul28, %28
  %mul32 = mul nsw i32 10, %mul31
  %29 = load i32, i32* %q2.addr, align 4
  %idxprom33 = sext i32 %29 to i64
  %30 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx34 = getelementptr inbounds %struct.qty, %struct.qty* %30, i64 %idxprom33
  %death = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx34, i32 0, i32 3
  %31 = load i32, i32* %death, align 4
  %32 = load i32, i32* %q2.addr, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx36 = getelementptr inbounds %struct.qty, %struct.qty* %33, i64 %idxprom35
  %birth = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx36, i32 0, i32 2
  %34 = load i32, i32* %birth, align 4
  %sub37 = sub nsw i32 %31, %34
  %div = sdiv i32 %mul32, %sub37
  %35 = load i32, i32* %q1.addr, align 4
  %idxprom38 = sext i32 %35 to i64
  %36 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx39 = getelementptr inbounds %struct.qty, %struct.qty* %36, i64 %idxprom38
  %n_refs40 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx39, i32 0, i32 0
  %37 = load i32, i32* %n_refs40, align 4
  %conv41 = sext i32 %37 to i64
  %call42 = call i32 @floor_log2_wide(i64 %conv41)
  %38 = load i32, i32* %q1.addr, align 4
  %idxprom43 = sext i32 %38 to i64
  %39 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx44 = getelementptr inbounds %struct.qty, %struct.qty* %39, i64 %idxprom43
  %freq45 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx44, i32 0, i32 1
  %40 = load i32, i32* %freq45, align 4
  %mul46 = mul nsw i32 %call42, %40
  %41 = load i32, i32* %q1.addr, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx48 = getelementptr inbounds %struct.qty, %struct.qty* %42, i64 %idxprom47
  %size49 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx48, i32 0, i32 4
  %43 = load i32, i32* %size49, align 4
  %mul50 = mul nsw i32 %mul46, %43
  %mul51 = mul nsw i32 10, %mul50
  %44 = load i32, i32* %q1.addr, align 4
  %idxprom52 = sext i32 %44 to i64
  %45 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx53 = getelementptr inbounds %struct.qty, %struct.qty* %45, i64 %idxprom52
  %death54 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx53, i32 0, i32 3
  %46 = load i32, i32* %death54, align 4
  %47 = load i32, i32* %q1.addr, align 4
  %idxprom55 = sext i32 %47 to i64
  %48 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx56 = getelementptr inbounds %struct.qty, %struct.qty* %48, i64 %idxprom55
  %birth57 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx56, i32 0, i32 2
  %49 = load i32, i32* %birth57, align 4
  %sub58 = sub nsw i32 %46, %49
  %div59 = sdiv i32 %mul51, %sub58
  %sub60 = sub nsw i32 %div, %div59
  store i32 %sub60, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare void @specqsort(i8*, i32, i32, i32 (...)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @qty_sugg_compare_1(i8* %q1p, i8* %q2p) #0 {
entry:
  %retval = alloca i32, align 4
  %q1p.addr = alloca i8*, align 8
  %q2p.addr = alloca i8*, align 8
  %q1 = alloca i32, align 4
  %q2 = alloca i32, align 4
  %tem = alloca i32, align 4
  store i8* %q1p, i8** %q1p.addr, align 8
  store i8* %q2p, i8** %q2p.addr, align 8
  %0 = load i8*, i8** %q1p.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %q1, align 4
  %3 = load i8*, i8** %q2p.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %q2, align 4
  %6 = load i32, i32* %q1, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %8 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, i32* %q1, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i64 %idxprom1
  %11 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %11 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %q1, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %13, i64 %idxprom4
  %14 = load i16, i16* %arrayidx5, align 2
  %conv6 = sext i16 %14 to i32
  %mul = mul nsw i32 %conv6, 53
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %mul, %cond.false ]
  %15 = load i32, i32* %q2, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %16, i64 %idxprom7
  %17 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %17 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.end
  %18 = load i32, i32* %q2, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %19, i64 %idxprom12
  %20 = load i16, i16* %arrayidx13, align 2
  %conv14 = sext i16 %20 to i32
  br label %cond.end.20

cond.false.15:                                    ; preds = %cond.end
  %21 = load i32, i32* %q2, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %22, i64 %idxprom16
  %23 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %23 to i32
  %mul19 = mul nsw i32 %conv18, 53
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.15, %cond.true.11
  %cond21 = phi i32 [ %conv14, %cond.true.11 ], [ %mul19, %cond.false.15 ]
  %sub = sub nsw i32 %cond, %cond21
  store i32 %sub, i32* %tem, align 4
  %24 = load i32, i32* %tem, align 4
  %cmp = icmp ne i32 %24, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.20
  %25 = load i32, i32* %tem, align 4
  store i32 %25, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.20
  %26 = load i32, i32* %q2, align 4
  %idxprom23 = sext i32 %26 to i64
  %27 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx24 = getelementptr inbounds %struct.qty, %struct.qty* %27, i64 %idxprom23
  %n_refs = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx24, i32 0, i32 0
  %28 = load i32, i32* %n_refs, align 4
  %conv25 = sext i32 %28 to i64
  %call = call i32 @floor_log2_wide(i64 %conv25)
  %29 = load i32, i32* %q2, align 4
  %idxprom26 = sext i32 %29 to i64
  %30 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx27 = getelementptr inbounds %struct.qty, %struct.qty* %30, i64 %idxprom26
  %freq = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx27, i32 0, i32 1
  %31 = load i32, i32* %freq, align 4
  %mul28 = mul nsw i32 %call, %31
  %32 = load i32, i32* %q2, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx30 = getelementptr inbounds %struct.qty, %struct.qty* %33, i64 %idxprom29
  %size = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx30, i32 0, i32 4
  %34 = load i32, i32* %size, align 4
  %mul31 = mul nsw i32 %mul28, %34
  %mul32 = mul nsw i32 10, %mul31
  %35 = load i32, i32* %q2, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx34 = getelementptr inbounds %struct.qty, %struct.qty* %36, i64 %idxprom33
  %death = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx34, i32 0, i32 3
  %37 = load i32, i32* %death, align 4
  %38 = load i32, i32* %q2, align 4
  %idxprom35 = sext i32 %38 to i64
  %39 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx36 = getelementptr inbounds %struct.qty, %struct.qty* %39, i64 %idxprom35
  %birth = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx36, i32 0, i32 2
  %40 = load i32, i32* %birth, align 4
  %sub37 = sub nsw i32 %37, %40
  %div = sdiv i32 %mul32, %sub37
  %41 = load i32, i32* %q1, align 4
  %idxprom38 = sext i32 %41 to i64
  %42 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx39 = getelementptr inbounds %struct.qty, %struct.qty* %42, i64 %idxprom38
  %n_refs40 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx39, i32 0, i32 0
  %43 = load i32, i32* %n_refs40, align 4
  %conv41 = sext i32 %43 to i64
  %call42 = call i32 @floor_log2_wide(i64 %conv41)
  %44 = load i32, i32* %q1, align 4
  %idxprom43 = sext i32 %44 to i64
  %45 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx44 = getelementptr inbounds %struct.qty, %struct.qty* %45, i64 %idxprom43
  %freq45 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx44, i32 0, i32 1
  %46 = load i32, i32* %freq45, align 4
  %mul46 = mul nsw i32 %call42, %46
  %47 = load i32, i32* %q1, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx48 = getelementptr inbounds %struct.qty, %struct.qty* %48, i64 %idxprom47
  %size49 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx48, i32 0, i32 4
  %49 = load i32, i32* %size49, align 4
  %mul50 = mul nsw i32 %mul46, %49
  %mul51 = mul nsw i32 10, %mul50
  %50 = load i32, i32* %q1, align 4
  %idxprom52 = sext i32 %50 to i64
  %51 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx53 = getelementptr inbounds %struct.qty, %struct.qty* %51, i64 %idxprom52
  %death54 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx53, i32 0, i32 3
  %52 = load i32, i32* %death54, align 4
  %53 = load i32, i32* %q1, align 4
  %idxprom55 = sext i32 %53 to i64
  %54 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx56 = getelementptr inbounds %struct.qty, %struct.qty* %54, i64 %idxprom55
  %birth57 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx56, i32 0, i32 2
  %55 = load i32, i32* %birth57, align 4
  %sub58 = sub nsw i32 %52, %55
  %div59 = sdiv i32 %mul51, %sub58
  %sub60 = sub nsw i32 %div, %div59
  store i32 %sub60, i32* %tem, align 4
  %56 = load i32, i32* %tem, align 4
  %cmp61 = icmp ne i32 %56, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end
  %57 = load i32, i32* %tem, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end
  %58 = load i32, i32* %q1, align 4
  %59 = load i32, i32* %q2, align 4
  %sub65 = sub nsw i32 %58, %59
  store i32 %sub65, i32* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.63, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @find_free_reg(i32 %class, i32 %mode, i32 %qtyno, i32 %accept_call_clobbered, i32 %just_try_suggested, i32 %born_index, i32 %dead_index) #0 {
entry:
  %retval = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %qtyno.addr = alloca i32, align 4
  %accept_call_clobbered.addr = alloca i32, align 4
  %just_try_suggested.addr = alloca i32, align 4
  %born_index.addr = alloca i32, align 4
  %dead_index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ins = alloca i32, align 4
  %used = alloca i64, align 8
  %first_used = alloca i64, align 8
  %regno = alloca i32, align 4
  %j = alloca i32, align 4
  %size1 = alloca i32, align 4
  store i32 %class, i32* %class.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %qtyno, i32* %qtyno.addr, align 4
  store i32 %accept_call_clobbered, i32* %accept_call_clobbered.addr, align 4
  store i32 %just_try_suggested, i32* %just_try_suggested.addr, align 4
  store i32 %born_index, i32* %born_index.addr, align 4
  store i32 %dead_index, i32* %dead_index.addr, align 4
  %0 = load i32, i32* %born_index.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %born_index.addr, align 4
  %2 = load i32, i32* %dead_index.addr, align 4
  %cmp1 = icmp sgt i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 2206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.find_free_reg, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 56
  %4 = bitcast i24* %has_nonlocal_label to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %qtyno.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx = getelementptr inbounds %struct.qty, %struct.qty* %6, i64 %idxprom
  %n_calls_crossed = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx, i32 0, i32 5
  %7 = load i32, i32* %n_calls_crossed, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %9 = load i64, i64* @call_fixed_reg_set, align 8
  store i64 %9, i64* %used, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.4
  %10 = load i32, i32* %qtyno.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx8 = getelementptr inbounds %struct.qty, %struct.qty* %11, i64 %idxprom7
  %n_calls_crossed9 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx8, i32 0, i32 5
  %12 = load i32, i32* %n_calls_crossed9, align 4
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %13 = load i64, i64* @fixed_reg_set, align 8
  store i64 %13, i64* %used, align 8
  br label %if.end.13

if.else.12:                                       ; preds = %if.else
  %14 = load i64, i64* @call_used_reg_set, align 8
  store i64 %14, i64* %used, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.6
  %15 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool15 = icmp ne i32 %15, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %16 = load i64, i64* @losing_caller_save_reg_set, align 8
  %17 = load i64, i64* %used, align 8
  %or = or i64 %17, %16
  store i64 %or, i64* %used, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %18 = load i32, i32* %born_index.addr, align 4
  store i32 %18, i32* %ins, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %19 = load i32, i32* %ins, align 4
  %20 = load i32, i32* %dead_index.addr, align 4
  %cmp18 = icmp slt i32 %19, %20
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %ins, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i64*, i64** @regs_live_at, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %22, i64 %idxprom19
  %23 = load i64, i64* %arrayidx20, align 8
  %24 = load i64, i64* %used, align 8
  %or21 = or i64 %24, %23
  store i64 %or21, i64* %used, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %ins, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ins, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %class.addr, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom22
  %27 = load i64, i64* %arrayidx23, align 8
  %neg = xor i64 %27, -1
  %28 = load i64, i64* %used, align 8
  %or24 = or i64 %28, %neg
  store i64 %or24, i64* %used, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.31, %for.end
  %29 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %29, 4
  br i1 %cmp26, label %for.body.27, label %for.end.33

for.body.27:                                      ; preds = %for.cond.25
  %30 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @find_free_reg.eliminables, i32 0, i64 %idxprom28
  %from = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx29, i32 0, i32 0
  %31 = load i32, i32* %from, align 4
  %sh_prom = zext i32 %31 to i64
  %shl = shl i64 1, %sh_prom
  %32 = load i64, i64* %used, align 8
  %or30 = or i64 %32, %shl
  store i64 %or30, i64* %used, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.27
  %33 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %33, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.25

for.end.33:                                       ; preds = %for.cond.25
  %34 = load i64, i64* %used, align 8
  %or34 = or i64 %34, 64
  store i64 %or34, i64* %used, align 8
  %35 = load i64, i64* %used, align 8
  store i64 %35, i64* %first_used, align 8
  %36 = load i32, i32* %just_try_suggested.addr, align 4
  %tobool35 = icmp ne i32 %36, 0
  br i1 %tobool35, label %if.then.36, label %if.end.52

if.then.36:                                       ; preds = %for.end.33
  %37 = load i32, i32* %qtyno.addr, align 4
  %idxprom37 = sext i32 %37 to i64
  %38 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %38, i64 %idxprom37
  %39 = load i16, i16* %arrayidx38, align 2
  %conv = sext i16 %39 to i32
  %cmp39 = icmp ne i32 %conv, 0
  br i1 %cmp39, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %if.then.36
  %40 = load i32, i32* %qtyno.addr, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load i64*, i64** @qty_phys_copy_sugg, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %41, i64 %idxprom42
  %42 = load i64, i64* %arrayidx43, align 8
  %neg44 = xor i64 %42, -1
  %43 = load i64, i64* %first_used, align 8
  %or45 = or i64 %43, %neg44
  store i64 %or45, i64* %first_used, align 8
  br label %if.end.51

if.else.46:                                       ; preds = %if.then.36
  %44 = load i32, i32* %qtyno.addr, align 4
  %idxprom47 = sext i32 %44 to i64
  %45 = load i64*, i64** @qty_phys_sugg, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %45, i64 %idxprom47
  %46 = load i64, i64* %arrayidx48, align 8
  %neg49 = xor i64 %46, -1
  %47 = load i64, i64* %first_used, align 8
  %or50 = or i64 %47, %neg49
  store i64 %or50, i64* %first_used, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.46, %if.then.41
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.end.33
  %48 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 24), align 8
  %49 = load i64, i64* %first_used, align 8
  %neg53 = xor i64 %49, -1
  %and = and i64 %48, %neg53
  %cmp54 = icmp eq i64 0, %and
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  br label %fail

if.end.57:                                        ; preds = %if.end.52
  store i32 0, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.156, %if.end.57
  %50 = load i32, i32* %i, align 4
  %cmp59 = icmp slt i32 %50, 53
  br i1 %cmp59, label %for.body.61, label %for.end.158

for.body.61:                                      ; preds = %for.cond.58
  %51 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %51 to i64
  %arrayidx63 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i32 0, i64 %idxprom62
  %52 = load i32, i32* %arrayidx63, align 4
  store i32 %52, i32* %regno, align 4
  %53 = load i64, i64* %first_used, align 8
  %54 = load i32, i32* %regno, align 4
  %sh_prom64 = zext i32 %54 to i64
  %shl65 = shl i64 1, %sh_prom64
  %and66 = and i64 %53, %shl65
  %tobool67 = icmp ne i64 %and66, 0
  br i1 %tobool67, label %if.end.155, label %land.lhs.true.68

land.lhs.true.68:                                 ; preds = %for.body.61
  %55 = load i32, i32* %regno, align 4
  %56 = load i32, i32* %mode.addr, align 4
  %call = call i32 @ix86_hard_regno_mode_ok(i32 %55, i32 %56)
  %tobool69 = icmp ne i32 %call, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.155

land.lhs.true.70:                                 ; preds = %land.lhs.true.68
  %57 = load i32, i32* %qtyno.addr, align 4
  %idxprom71 = sext i32 %57 to i64
  %58 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx72 = getelementptr inbounds %struct.qty, %struct.qty* %58, i64 %idxprom71
  %n_calls_crossed73 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx72, i32 0, i32 5
  %59 = load i32, i32* %n_calls_crossed73, align 4
  %cmp74 = icmp eq i32 %59, 0
  br i1 %cmp74, label %if.then.79, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.70
  %60 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool77 = icmp ne i32 %60, 0
  br i1 %tobool77, label %if.then.79, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.76
  br i1 false, label %if.end.155, label %if.then.79

if.then.79:                                       ; preds = %lor.lhs.false.78, %lor.lhs.false.76, %land.lhs.true.70
  %61 = load i32, i32* %regno, align 4
  %cmp80 = icmp sge i32 %61, 8
  br i1 %cmp80, label %land.lhs.true.82, label %lor.lhs.false.85

land.lhs.true.82:                                 ; preds = %if.then.79
  %62 = load i32, i32* %regno, align 4
  %cmp83 = icmp sle i32 %62, 15
  br i1 %cmp83, label %cond.true, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %land.lhs.true.82, %if.then.79
  %63 = load i32, i32* %regno, align 4
  %cmp86 = icmp sge i32 %63, 21
  br i1 %cmp86, label %land.lhs.true.88, label %lor.lhs.false.91

land.lhs.true.88:                                 ; preds = %lor.lhs.false.85
  %64 = load i32, i32* %regno, align 4
  %cmp89 = icmp sle i32 %64, 28
  br i1 %cmp89, label %cond.true, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.88, %lor.lhs.false.85
  %65 = load i32, i32* %regno, align 4
  %cmp92 = icmp sge i32 %65, 45
  br i1 %cmp92, label %land.lhs.true.94, label %lor.lhs.false.97

land.lhs.true.94:                                 ; preds = %lor.lhs.false.91
  %66 = load i32, i32* %regno, align 4
  %cmp95 = icmp sle i32 %66, 52
  br i1 %cmp95, label %cond.true, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %land.lhs.true.94, %lor.lhs.false.91
  %67 = load i32, i32* %regno, align 4
  %cmp98 = icmp sge i32 %67, 29
  br i1 %cmp98, label %land.lhs.true.100, label %cond.false

land.lhs.true.100:                                ; preds = %lor.lhs.false.97
  %68 = load i32, i32* %regno, align 4
  %cmp101 = icmp sle i32 %68, 36
  br i1 %cmp101, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.100, %land.lhs.true.94, %land.lhs.true.88, %land.lhs.true.82
  %69 = load i32, i32* %mode.addr, align 4
  %idxprom103 = sext i32 %69 to i64
  %arrayidx104 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom103
  %70 = load i32, i32* %arrayidx104, align 4
  %cmp105 = icmp eq i32 %70, 5
  br i1 %cmp105, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %71 = load i32, i32* %mode.addr, align 4
  %idxprom107 = sext i32 %71 to i64
  %arrayidx108 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom107
  %72 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp eq i32 %72, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %73 = phi i1 [ true, %cond.true ], [ %cmp109, %lor.rhs ]
  %cond = select i1 %73, i32 2, i32 1
  br label %cond.end.137

cond.false:                                       ; preds = %land.lhs.true.100, %lor.lhs.false.97
  %74 = load i32, i32* %mode.addr, align 4
  %cmp111 = icmp eq i32 %74, 18
  br i1 %cmp111, label %cond.true.113, label %cond.false.117

cond.true.113:                                    ; preds = %cond.false
  %75 = load i32, i32* @target_flags, align 4
  %and114 = and i32 %75, 33554432
  %tobool115 = icmp ne i32 %and114, 0
  %cond116 = select i1 %tobool115, i32 2, i32 3
  br label %cond.end.135

cond.false.117:                                   ; preds = %cond.false
  %76 = load i32, i32* %mode.addr, align 4
  %cmp118 = icmp eq i32 %76, 24
  br i1 %cmp118, label %cond.true.120, label %cond.false.124

cond.true.120:                                    ; preds = %cond.false.117
  %77 = load i32, i32* @target_flags, align 4
  %and121 = and i32 %77, 33554432
  %tobool122 = icmp ne i32 %and121, 0
  %cond123 = select i1 %tobool122, i32 4, i32 6
  br label %cond.end

cond.false.124:                                   ; preds = %cond.false.117
  %78 = load i32, i32* %mode.addr, align 4
  %idxprom125 = sext i32 %78 to i64
  %arrayidx126 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom125
  %79 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %79 to i32
  %80 = load i32, i32* @target_flags, align 4
  %and128 = and i32 %80, 33554432
  %tobool129 = icmp ne i32 %and128, 0
  %cond130 = select i1 %tobool129, i32 8, i32 4
  %add = add nsw i32 %conv127, %cond130
  %sub = sub nsw i32 %add, 1
  %81 = load i32, i32* @target_flags, align 4
  %and131 = and i32 %81, 33554432
  %tobool132 = icmp ne i32 %and131, 0
  %cond133 = select i1 %tobool132, i32 8, i32 4
  %div = sdiv i32 %sub, %cond133
  br label %cond.end

cond.end:                                         ; preds = %cond.false.124, %cond.true.120
  %cond134 = phi i32 [ %cond123, %cond.true.120 ], [ %div, %cond.false.124 ]
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.end, %cond.true.113
  %cond136 = phi i32 [ %cond116, %cond.true.113 ], [ %cond134, %cond.end ]
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.end.135, %lor.end
  %cond138 = phi i32 [ %cond, %lor.end ], [ %cond136, %cond.end.135 ]
  store i32 %cond138, i32* %size1, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.139

for.cond.139:                                     ; preds = %for.inc.148, %cond.end.137
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %size1, align 4
  %cmp140 = icmp slt i32 %82, %83
  br i1 %cmp140, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.139
  %84 = load i64, i64* %used, align 8
  %85 = load i32, i32* %regno, align 4
  %86 = load i32, i32* %j, align 4
  %add142 = add nsw i32 %85, %86
  %sh_prom143 = zext i32 %add142 to i64
  %shl144 = shl i64 1, %sh_prom143
  %and145 = and i64 %84, %shl144
  %tobool146 = icmp ne i64 %and145, 0
  %lnot = xor i1 %tobool146, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.139
  %87 = phi i1 [ false, %for.cond.139 ], [ %lnot, %land.rhs ]
  br i1 %87, label %for.body.147, label %for.end.150

for.body.147:                                     ; preds = %land.end
  br label %for.inc.148

for.inc.148:                                      ; preds = %for.body.147
  %88 = load i32, i32* %j, align 4
  %inc149 = add nsw i32 %88, 1
  store i32 %inc149, i32* %j, align 4
  br label %for.cond.139

for.end.150:                                      ; preds = %land.end
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %size1, align 4
  %cmp151 = icmp eq i32 %89, %90
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %for.end.150
  %91 = load i32, i32* %regno, align 4
  %92 = load i32, i32* %mode.addr, align 4
  %93 = load i32, i32* %born_index.addr, align 4
  %94 = load i32, i32* %dead_index.addr, align 4
  call void @post_mark_life(i32 %91, i32 %92, i32 1, i32 %93, i32 %94)
  %95 = load i32, i32* %regno, align 4
  store i32 %95, i32* %retval
  br label %return

if.end.154:                                       ; preds = %for.end.150
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %lor.lhs.false.78, %land.lhs.true.68, %for.body.61
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %96 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %96, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.58

for.end.158:                                      ; preds = %for.cond.58
  br label %fail

fail:                                             ; preds = %for.end.158, %if.then.56
  %97 = load i32, i32* %just_try_suggested.addr, align 4
  %tobool159 = icmp ne i32 %97, 0
  br i1 %tobool159, label %land.lhs.true.160, label %if.end.176

land.lhs.true.160:                                ; preds = %fail
  %98 = load i32, i32* %qtyno.addr, align 4
  %idxprom161 = sext i32 %98 to i64
  %99 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx162 = getelementptr inbounds i16, i16* %99, i64 %idxprom161
  %100 = load i16, i16* %arrayidx162, align 2
  %conv163 = sext i16 %100 to i32
  %cmp164 = icmp ne i32 %conv163, 0
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.176

land.lhs.true.166:                                ; preds = %land.lhs.true.160
  %101 = load i32, i32* %qtyno.addr, align 4
  %idxprom167 = sext i32 %101 to i64
  %102 = load i16*, i16** @qty_phys_num_sugg, align 8
  %arrayidx168 = getelementptr inbounds i16, i16* %102, i64 %idxprom167
  %103 = load i16, i16* %arrayidx168, align 2
  %conv169 = sext i16 %103 to i32
  %cmp170 = icmp ne i32 %conv169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.176

if.then.172:                                      ; preds = %land.lhs.true.166
  %104 = load i32, i32* %qtyno.addr, align 4
  %idxprom173 = sext i32 %104 to i64
  %105 = load i16*, i16** @qty_phys_num_copy_sugg, align 8
  %arrayidx174 = getelementptr inbounds i16, i16* %105, i64 %idxprom173
  store i16 0, i16* %arrayidx174, align 2
  %106 = load i32, i32* %class.addr, align 4
  %107 = load i32, i32* %mode.addr, align 4
  %108 = load i32, i32* %qtyno.addr, align 4
  %109 = load i32, i32* %accept_call_clobbered.addr, align 4
  %110 = load i32, i32* %born_index.addr, align 4
  %111 = load i32, i32* %dead_index.addr, align 4
  %call175 = call i32 @find_free_reg(i32 %106, i32 %107, i32 %108, i32 %109, i32 1, i32 %110, i32 %111)
  store i32 %call175, i32* %retval
  br label %return

if.end.176:                                       ; preds = %land.lhs.true.166, %land.lhs.true.160, %fail
  %112 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool177 = icmp ne i32 %112, 0
  br i1 %tobool177, label %if.end.202, label %land.lhs.true.178

land.lhs.true.178:                                ; preds = %if.end.176
  %113 = load i32, i32* @flag_caller_saves, align 4
  %tobool179 = icmp ne i32 %113, 0
  br i1 %tobool179, label %land.lhs.true.180, label %if.end.202

land.lhs.true.180:                                ; preds = %land.lhs.true.178
  %114 = load i32, i32* %just_try_suggested.addr, align 4
  %tobool181 = icmp ne i32 %114, 0
  br i1 %tobool181, label %if.end.202, label %land.lhs.true.182

land.lhs.true.182:                                ; preds = %land.lhs.true.180
  %115 = load i32, i32* %qtyno.addr, align 4
  %idxprom183 = sext i32 %115 to i64
  %116 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx184 = getelementptr inbounds %struct.qty, %struct.qty* %116, i64 %idxprom183
  %n_calls_crossed185 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx184, i32 0, i32 5
  %117 = load i32, i32* %n_calls_crossed185, align 4
  %cmp186 = icmp ne i32 %117, 0
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.202

land.lhs.true.188:                                ; preds = %land.lhs.true.182
  %118 = load i32, i32* %qtyno.addr, align 4
  %idxprom189 = sext i32 %118 to i64
  %119 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx190 = getelementptr inbounds %struct.qty, %struct.qty* %119, i64 %idxprom189
  %n_calls_crossed191 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx190, i32 0, i32 5
  %120 = load i32, i32* %n_calls_crossed191, align 4
  %mul = mul nsw i32 4, %120
  %121 = load i32, i32* %qtyno.addr, align 4
  %idxprom192 = sext i32 %121 to i64
  %122 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx193 = getelementptr inbounds %struct.qty, %struct.qty* %122, i64 %idxprom192
  %n_refs = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx193, i32 0, i32 0
  %123 = load i32, i32* %n_refs, align 4
  %cmp194 = icmp slt i32 %mul, %123
  br i1 %cmp194, label %if.then.196, label %if.end.202

if.then.196:                                      ; preds = %land.lhs.true.188
  %124 = load i32, i32* %class.addr, align 4
  %125 = load i32, i32* %mode.addr, align 4
  %126 = load i32, i32* %qtyno.addr, align 4
  %127 = load i32, i32* %born_index.addr, align 4
  %128 = load i32, i32* %dead_index.addr, align 4
  %call197 = call i32 @find_free_reg(i32 %124, i32 %125, i32 %126, i32 1, i32 0, i32 %127, i32 %128)
  store i32 %call197, i32* %i, align 4
  %129 = load i32, i32* %i, align 4
  %cmp198 = icmp sge i32 %129, 0
  br i1 %cmp198, label %if.then.200, label %if.end.201

if.then.200:                                      ; preds = %if.then.196
  store i32 1, i32* @caller_save_needed, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %if.then.196
  %130 = load i32, i32* %i, align 4
  store i32 %130, i32* %retval
  br label %return

if.end.202:                                       ; preds = %land.lhs.true.188, %land.lhs.true.182, %land.lhs.true.180, %land.lhs.true.178, %if.end.176
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.202, %if.end.201, %if.then.172, %if.then.153, %if.then.3
  %131 = load i32, i32* %retval
  ret i32 %131
}

; Function Attrs: nounwind uwtable
define internal i32 @qty_compare(i32 %q1, i32 %q2) #0 {
entry:
  %q1.addr = alloca i32, align 4
  %q2.addr = alloca i32, align 4
  store i32 %q1, i32* %q1.addr, align 4
  store i32 %q2, i32* %q2.addr, align 4
  %0 = load i32, i32* %q2.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx = getelementptr inbounds %struct.qty, %struct.qty* %1, i64 %idxprom
  %n_refs = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %n_refs, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 @floor_log2_wide(i64 %conv)
  %3 = load i32, i32* %q2.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx2 = getelementptr inbounds %struct.qty, %struct.qty* %4, i64 %idxprom1
  %freq = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx2, i32 0, i32 1
  %5 = load i32, i32* %freq, align 4
  %mul = mul nsw i32 %call, %5
  %6 = load i32, i32* %q2.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx4 = getelementptr inbounds %struct.qty, %struct.qty* %7, i64 %idxprom3
  %size = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx4, i32 0, i32 4
  %8 = load i32, i32* %size, align 4
  %mul5 = mul nsw i32 %mul, %8
  %mul6 = mul nsw i32 10, %mul5
  %9 = load i32, i32* %q2.addr, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx8 = getelementptr inbounds %struct.qty, %struct.qty* %10, i64 %idxprom7
  %death = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx8, i32 0, i32 3
  %11 = load i32, i32* %death, align 4
  %12 = load i32, i32* %q2.addr, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx10 = getelementptr inbounds %struct.qty, %struct.qty* %13, i64 %idxprom9
  %birth = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx10, i32 0, i32 2
  %14 = load i32, i32* %birth, align 4
  %sub = sub nsw i32 %11, %14
  %div = sdiv i32 %mul6, %sub
  %15 = load i32, i32* %q1.addr, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx12 = getelementptr inbounds %struct.qty, %struct.qty* %16, i64 %idxprom11
  %n_refs13 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx12, i32 0, i32 0
  %17 = load i32, i32* %n_refs13, align 4
  %conv14 = sext i32 %17 to i64
  %call15 = call i32 @floor_log2_wide(i64 %conv14)
  %18 = load i32, i32* %q1.addr, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx17 = getelementptr inbounds %struct.qty, %struct.qty* %19, i64 %idxprom16
  %freq18 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx17, i32 0, i32 1
  %20 = load i32, i32* %freq18, align 4
  %mul19 = mul nsw i32 %call15, %20
  %21 = load i32, i32* %q1.addr, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx21 = getelementptr inbounds %struct.qty, %struct.qty* %22, i64 %idxprom20
  %size22 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx21, i32 0, i32 4
  %23 = load i32, i32* %size22, align 4
  %mul23 = mul nsw i32 %mul19, %23
  %mul24 = mul nsw i32 10, %mul23
  %24 = load i32, i32* %q1.addr, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx26 = getelementptr inbounds %struct.qty, %struct.qty* %25, i64 %idxprom25
  %death27 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx26, i32 0, i32 3
  %26 = load i32, i32* %death27, align 4
  %27 = load i32, i32* %q1.addr, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx29 = getelementptr inbounds %struct.qty, %struct.qty* %28, i64 %idxprom28
  %birth30 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx29, i32 0, i32 2
  %29 = load i32, i32* %birth30, align 4
  %sub31 = sub nsw i32 %26, %29
  %div32 = sdiv i32 %mul24, %sub31
  %sub33 = sub nsw i32 %div, %div32
  ret i32 %sub33
}

; Function Attrs: nounwind uwtable
define internal i32 @qty_compare_1(i8* %q1p, i8* %q2p) #0 {
entry:
  %retval = alloca i32, align 4
  %q1p.addr = alloca i8*, align 8
  %q2p.addr = alloca i8*, align 8
  %q1 = alloca i32, align 4
  %q2 = alloca i32, align 4
  %tem = alloca i32, align 4
  store i8* %q1p, i8** %q1p.addr, align 8
  store i8* %q2p, i8** %q2p.addr, align 8
  %0 = load i8*, i8** %q1p.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %q1, align 4
  %3 = load i8*, i8** %q2p.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %q2, align 4
  %6 = load i32, i32* %q2, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx = getelementptr inbounds %struct.qty, %struct.qty* %7, i64 %idxprom
  %n_refs = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %n_refs, align 4
  %conv = sext i32 %8 to i64
  %call = call i32 @floor_log2_wide(i64 %conv)
  %9 = load i32, i32* %q2, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx2 = getelementptr inbounds %struct.qty, %struct.qty* %10, i64 %idxprom1
  %freq = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx2, i32 0, i32 1
  %11 = load i32, i32* %freq, align 4
  %mul = mul nsw i32 %call, %11
  %12 = load i32, i32* %q2, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx4 = getelementptr inbounds %struct.qty, %struct.qty* %13, i64 %idxprom3
  %size = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx4, i32 0, i32 4
  %14 = load i32, i32* %size, align 4
  %mul5 = mul nsw i32 %mul, %14
  %mul6 = mul nsw i32 10, %mul5
  %15 = load i32, i32* %q2, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx8 = getelementptr inbounds %struct.qty, %struct.qty* %16, i64 %idxprom7
  %death = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx8, i32 0, i32 3
  %17 = load i32, i32* %death, align 4
  %18 = load i32, i32* %q2, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx10 = getelementptr inbounds %struct.qty, %struct.qty* %19, i64 %idxprom9
  %birth = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx10, i32 0, i32 2
  %20 = load i32, i32* %birth, align 4
  %sub = sub nsw i32 %17, %20
  %div = sdiv i32 %mul6, %sub
  %21 = load i32, i32* %q1, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx12 = getelementptr inbounds %struct.qty, %struct.qty* %22, i64 %idxprom11
  %n_refs13 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx12, i32 0, i32 0
  %23 = load i32, i32* %n_refs13, align 4
  %conv14 = sext i32 %23 to i64
  %call15 = call i32 @floor_log2_wide(i64 %conv14)
  %24 = load i32, i32* %q1, align 4
  %idxprom16 = sext i32 %24 to i64
  %25 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx17 = getelementptr inbounds %struct.qty, %struct.qty* %25, i64 %idxprom16
  %freq18 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx17, i32 0, i32 1
  %26 = load i32, i32* %freq18, align 4
  %mul19 = mul nsw i32 %call15, %26
  %27 = load i32, i32* %q1, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx21 = getelementptr inbounds %struct.qty, %struct.qty* %28, i64 %idxprom20
  %size22 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx21, i32 0, i32 4
  %29 = load i32, i32* %size22, align 4
  %mul23 = mul nsw i32 %mul19, %29
  %mul24 = mul nsw i32 10, %mul23
  %30 = load i32, i32* %q1, align 4
  %idxprom25 = sext i32 %30 to i64
  %31 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx26 = getelementptr inbounds %struct.qty, %struct.qty* %31, i64 %idxprom25
  %death27 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx26, i32 0, i32 3
  %32 = load i32, i32* %death27, align 4
  %33 = load i32, i32* %q1, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx29 = getelementptr inbounds %struct.qty, %struct.qty* %34, i64 %idxprom28
  %birth30 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx29, i32 0, i32 2
  %35 = load i32, i32* %birth30, align 4
  %sub31 = sub nsw i32 %32, %35
  %div32 = sdiv i32 %mul24, %sub31
  %sub33 = sub nsw i32 %div, %div32
  store i32 %sub33, i32* %tem, align 4
  %36 = load i32, i32* %tem, align 4
  %cmp = icmp ne i32 %36, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %37 = load i32, i32* %tem, align 4
  store i32 %37, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %38 = load i32, i32* %q1, align 4
  %39 = load i32, i32* %q2, align 4
  %sub35 = sub nsw i32 %38, %39
  store i32 %sub35, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @reg_is_born(%struct.rtx_def* %reg, i32 %birth) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %birth.addr = alloca i32, align 4
  %regno = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i32 %birth, i32* %birth.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %4 = load i32, i32* %rtuint, align 4
  store i32 %4, i32* %regno, align 4
  %5 = load i32, i32* %regno, align 4
  %cmp3 = icmp slt i32 %5, 53
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call = call i32 @subreg_hard_regno(%struct.rtx_def* %6, i32 1)
  store i32 %call, i32* %regno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.8

if.else:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtuint7 = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %8 = load i32, i32* %rtuint7, align 4
  store i32 %8, i32* %regno, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %9 = load i32, i32* %regno, align 4
  %cmp9 = icmp slt i32 %9, 53
  br i1 %cmp9, label %if.then.10, label %if.else.20

if.then.10:                                       ; preds = %if.end.8
  %10 = load i32, i32* %regno, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.lshr = lshr i32 %bf.load11, 16
  %bf.clear12 = and i32 %bf.lshr, 255
  call void @mark_life(i32 %10, i32 %bf.clear12, i32 1)
  %13 = load i32, i32* %birth.addr, align 4
  %14 = load i32, i32* @this_insn_number, align 4
  %mul = mul nsw i32 2, %14
  %cmp13 = icmp slt i32 %13, %mul
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.then.10
  %15 = load i32, i32* %regno, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load15 = load i32, i32* %17, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 16
  %bf.clear17 = and i32 %bf.lshr16, 255
  %18 = load i32, i32* %birth.addr, align 4
  %19 = load i32, i32* @this_insn_number, align 4
  %mul18 = mul nsw i32 2, %19
  call void @post_mark_life(i32 %15, i32 %bf.clear17, i32 1, i32 %18, i32 %mul18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %if.then.10
  br label %if.end.48

if.else.20:                                       ; preds = %if.end.8
  %20 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load i32*, i32** @reg_qty, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %21, i64 %idxprom
  %22 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %22, -2
  br i1 %cmp22, label %if.then.23, label %if.end.37

if.then.23:                                       ; preds = %if.else.20
  %23 = load i32, i32* %regno, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load24 = load i32, i32* %25, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %26 = load i32, i32* %regno, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %27, i32 0, i32 3
  %28 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %28, i32 0, i32 12
  %29 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx28 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %29, i64 %idxprom27
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx28, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load29 = load i32, i32* %31, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 16
  %bf.clear31 = and i32 %bf.lshr30, 255
  %idxprom32 = sext i32 %bf.clear31 to i64
  %arrayidx33 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom32
  %32 = load i8, i8* %arrayidx33, align 1
  %conv = zext i8 %32 to i32
  %33 = load i32, i32* @target_flags, align 4
  %and = and i32 %33, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %add = add nsw i32 %conv, %cond
  %sub = sub nsw i32 %add, 1
  %34 = load i32, i32* @target_flags, align 4
  %and34 = and i32 %34, 33554432
  %tobool35 = icmp ne i32 %and34, 0
  %cond36 = select i1 %tobool35, i32 8, i32 4
  %div = sdiv i32 %sub, %cond36
  %35 = load i32, i32* %birth.addr, align 4
  call void @alloc_qty(i32 %23, i32 %bf.clear26, i32 %div, i32 %35)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.23, %if.else.20
  %36 = load i32, i32* %regno, align 4
  %idxprom38 = sext i32 %36 to i64
  %37 = load i32*, i32** @reg_qty, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %37, i64 %idxprom38
  %38 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp sge i32 %38, 0
  br i1 %cmp40, label %if.then.42, label %if.end.47

if.then.42:                                       ; preds = %if.end.37
  %39 = load i32, i32* %regno, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load i32*, i32** @reg_qty, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %40, i64 %idxprom43
  %41 = load i32, i32* %arrayidx44, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx46 = getelementptr inbounds %struct.qty, %struct.qty* %42, i64 %idxprom45
  %death = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx46, i32 0, i32 3
  store i32 -1, i32* %death, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.42, %if.end.37
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.19
  ret void
}

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @reg_meets_class_p(i32 %reg, i32 %class) #0 {
entry:
  %reg.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %rclass = alloca i32, align 4
  store i32 %reg, i32* %reg.addr, align 4
  store i32 %class, i32* %class.addr, align 4
  %0 = load i32, i32* %reg.addr, align 4
  %call = call i32 @reg_preferred_class(i32 %0)
  store i32 %call, i32* %rclass, align 4
  %1 = load i32, i32* %rclass, align 4
  %2 = load i32, i32* %class.addr, align 4
  %call1 = call i32 @reg_class_subset_p(i32 %1, i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i32, i32* %class.addr, align 4
  %4 = load i32, i32* %rclass, align 4
  %call2 = call i32 @reg_class_subset_p(i32 %3, i32 %4)
  %tobool3 = icmp ne i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal void @update_qty_class(i32 %qtyno, i32 %reg) #0 {
entry:
  %qtyno.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %rclass = alloca i32, align 4
  store i32 %qtyno, i32* %qtyno.addr, align 4
  store i32 %reg, i32* %reg.addr, align 4
  %0 = load i32, i32* %reg.addr, align 4
  %call = call i32 @reg_preferred_class(i32 %0)
  store i32 %call, i32* %rclass, align 4
  %1 = load i32, i32* %rclass, align 4
  %2 = load i32, i32* %qtyno.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx = getelementptr inbounds %struct.qty, %struct.qty* %3, i64 %idxprom
  %min_class = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx, i32 0, i32 7
  %4 = load i32, i32* %min_class, align 4
  %call1 = call i32 @reg_class_subset_p(i32 %1, i32 %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %rclass, align 4
  %6 = load i32, i32* %qtyno.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx3 = getelementptr inbounds %struct.qty, %struct.qty* %7, i64 %idxprom2
  %min_class4 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx3, i32 0, i32 7
  store i32 %5, i32* %min_class4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %reg.addr, align 4
  %call5 = call i32 @reg_alternate_class(i32 %8)
  store i32 %call5, i32* %rclass, align 4
  %9 = load i32, i32* %rclass, align 4
  %10 = load i32, i32* %qtyno.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx7 = getelementptr inbounds %struct.qty, %struct.qty* %11, i64 %idxprom6
  %alternate_class = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx7, i32 0, i32 8
  %12 = load i32, i32* %alternate_class, align 4
  %call8 = call i32 @reg_class_subset_p(i32 %9, i32 %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end
  %13 = load i32, i32* %rclass, align 4
  %14 = load i32, i32* %qtyno.addr, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx12 = getelementptr inbounds %struct.qty, %struct.qty* %15, i64 %idxprom11
  %alternate_class13 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx12, i32 0, i32 8
  store i32 %13, i32* %alternate_class13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.end
  %16 = load i32, i32* %reg.addr, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 4
  %reg16 = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx17 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg16, i32 0, i64 %idxprom15
  %18 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx17, align 8
  %changes_mode = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %18, i32 0, i32 10
  %19 = load i8, i8* %changes_mode, align 1
  %tobool18 = icmp ne i8 %19, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.14
  %20 = load i32, i32* %qtyno.addr, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx21 = getelementptr inbounds %struct.qty, %struct.qty* %21, i64 %idxprom20
  %changes_mode22 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx21, i32 0, i32 11
  store i8 1, i8* %changes_mode22, align 1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.14
  ret void
}

declare i32 @subreg_hard_regno(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mark_life(i32 %regno, i32 %mode, i32 %life) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %life.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %life, i32* %life.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %cmp = icmp sge i32 %0, 8
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %cmp1 = icmp sle i32 %1, 15
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %regno.addr, align 4
  %cmp2 = icmp sge i32 %2, 21
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false.5

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %regno.addr, align 4
  %cmp4 = icmp sle i32 %3, 28
  br i1 %cmp4, label %cond.true, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true.3, %lor.lhs.false
  %4 = load i32, i32* %regno.addr, align 4
  %cmp6 = icmp sge i32 %4, 45
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5
  %5 = load i32, i32* %regno.addr, align 4
  %cmp8 = icmp sle i32 %5, 52
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %lor.lhs.false.5
  %6 = load i32, i32* %regno.addr, align 4
  %cmp10 = icmp sge i32 %6, 29
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %7 = load i32, i32* %regno.addr, align 4
  %cmp12 = icmp sle i32 %7, 36
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  %8 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp13 = icmp eq i32 %9, 5
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %10 = load i32, i32* %mode.addr, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom14
  %11 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %11, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %12 = phi i1 [ true, %cond.true ], [ %cmp16, %lor.rhs ]
  %cond = select i1 %12, i32 2, i32 1
  br label %cond.end.38

cond.false:                                       ; preds = %land.lhs.true.11, %lor.lhs.false.9
  %13 = load i32, i32* %mode.addr, align 4
  %cmp17 = icmp eq i32 %13, 18
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.false
  %14 = load i32, i32* @target_flags, align 4
  %and = and i32 %14, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond19 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.36

cond.false.20:                                    ; preds = %cond.false
  %15 = load i32, i32* %mode.addr, align 4
  %cmp21 = icmp eq i32 %15, 24
  br i1 %cmp21, label %cond.true.22, label %cond.false.26

cond.true.22:                                     ; preds = %cond.false.20
  %16 = load i32, i32* @target_flags, align 4
  %and23 = and i32 %16, 33554432
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 4, i32 6
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.20
  %17 = load i32, i32* %mode.addr, align 4
  %idxprom27 = sext i32 %17 to i64
  %arrayidx28 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom27
  %18 = load i8, i8* %arrayidx28, align 1
  %conv = zext i8 %18 to i32
  %19 = load i32, i32* @target_flags, align 4
  %and29 = and i32 %19, 33554432
  %tobool30 = icmp ne i32 %and29, 0
  %cond31 = select i1 %tobool30, i32 8, i32 4
  %add = add nsw i32 %conv, %cond31
  %sub = sub nsw i32 %add, 1
  %20 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %20, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i32 8, i32 4
  %div = sdiv i32 %sub, %cond34
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.22
  %cond35 = phi i32 [ %cond25, %cond.true.22 ], [ %div, %cond.false.26 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end, %cond.true.18
  %cond37 = phi i32 [ %cond19, %cond.true.18 ], [ %cond35, %cond.end ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %lor.end
  %cond39 = phi i32 [ %cond, %lor.end ], [ %cond37, %cond.end.36 ]
  store i32 %cond39, i32* %j, align 4
  %21 = load i32, i32* %life.addr, align 4
  %tobool40 = icmp ne i32 %21, 0
  br i1 %tobool40, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.38
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %22 = load i32, i32* %j, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %j, align 4
  %cmp41 = icmp sge i32 %dec, 0
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, i32* %regno.addr, align 4
  %24 = load i32, i32* %j, align 4
  %add43 = add nsw i32 %23, %24
  %sh_prom = zext i32 %add43 to i64
  %shl = shl i64 1, %sh_prom
  %25 = load i64, i64* @regs_live, align 8
  %or = or i64 %25, %shl
  store i64 %or, i64* @regs_live, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %cond.end.38
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.48, %if.else
  %26 = load i32, i32* %j, align 4
  %dec45 = add nsw i32 %26, -1
  store i32 %dec45, i32* %j, align 4
  %cmp46 = icmp sge i32 %dec45, 0
  br i1 %cmp46, label %while.body.48, label %while.end.53

while.body.48:                                    ; preds = %while.cond.44
  %27 = load i32, i32* %regno.addr, align 4
  %28 = load i32, i32* %j, align 4
  %add49 = add nsw i32 %27, %28
  %sh_prom50 = zext i32 %add49 to i64
  %shl51 = shl i64 1, %sh_prom50
  %neg = xor i64 %shl51, -1
  %29 = load i64, i64* @regs_live, align 8
  %and52 = and i64 %29, %neg
  store i64 %and52, i64* @regs_live, align 8
  br label %while.cond.44

while.end.53:                                     ; preds = %while.cond.44
  br label %if.end

if.end:                                           ; preds = %while.end.53, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @post_mark_life(i32 %regno, i32 %mode, i32 %life, i32 %birth, i32 %death) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %life.addr = alloca i32, align 4
  %birth.addr = alloca i32, align 4
  %death.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %this_reg = alloca i64, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %life, i32* %life.addr, align 4
  store i32 %birth, i32* %birth.addr, align 4
  store i32 %death, i32* %death.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %cmp = icmp sge i32 %0, 8
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %cmp1 = icmp sle i32 %1, 15
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %regno.addr, align 4
  %cmp2 = icmp sge i32 %2, 21
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false.5

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %regno.addr, align 4
  %cmp4 = icmp sle i32 %3, 28
  br i1 %cmp4, label %cond.true, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true.3, %lor.lhs.false
  %4 = load i32, i32* %regno.addr, align 4
  %cmp6 = icmp sge i32 %4, 45
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5
  %5 = load i32, i32* %regno.addr, align 4
  %cmp8 = icmp sle i32 %5, 52
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %lor.lhs.false.5
  %6 = load i32, i32* %regno.addr, align 4
  %cmp10 = icmp sge i32 %6, 29
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %7 = load i32, i32* %regno.addr, align 4
  %cmp12 = icmp sle i32 %7, 36
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  %8 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp13 = icmp eq i32 %9, 5
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %10 = load i32, i32* %mode.addr, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom14
  %11 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %11, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %12 = phi i1 [ true, %cond.true ], [ %cmp16, %lor.rhs ]
  %cond = select i1 %12, i32 2, i32 1
  br label %cond.end.38

cond.false:                                       ; preds = %land.lhs.true.11, %lor.lhs.false.9
  %13 = load i32, i32* %mode.addr, align 4
  %cmp17 = icmp eq i32 %13, 18
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.false
  %14 = load i32, i32* @target_flags, align 4
  %and = and i32 %14, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond19 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.36

cond.false.20:                                    ; preds = %cond.false
  %15 = load i32, i32* %mode.addr, align 4
  %cmp21 = icmp eq i32 %15, 24
  br i1 %cmp21, label %cond.true.22, label %cond.false.26

cond.true.22:                                     ; preds = %cond.false.20
  %16 = load i32, i32* @target_flags, align 4
  %and23 = and i32 %16, 33554432
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 4, i32 6
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.20
  %17 = load i32, i32* %mode.addr, align 4
  %idxprom27 = sext i32 %17 to i64
  %arrayidx28 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom27
  %18 = load i8, i8* %arrayidx28, align 1
  %conv = zext i8 %18 to i32
  %19 = load i32, i32* @target_flags, align 4
  %and29 = and i32 %19, 33554432
  %tobool30 = icmp ne i32 %and29, 0
  %cond31 = select i1 %tobool30, i32 8, i32 4
  %add = add nsw i32 %conv, %cond31
  %sub = sub nsw i32 %add, 1
  %20 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %20, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i32 8, i32 4
  %div = sdiv i32 %sub, %cond34
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.22
  %cond35 = phi i32 [ %cond25, %cond.true.22 ], [ %div, %cond.false.26 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end, %cond.true.18
  %cond37 = phi i32 [ %cond19, %cond.true.18 ], [ %cond35, %cond.end ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %lor.end
  %cond39 = phi i32 [ %cond, %lor.end ], [ %cond37, %cond.end.36 ]
  store i32 %cond39, i32* %j, align 4
  store i64 0, i64* %this_reg, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.38
  %21 = load i32, i32* %j, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %j, align 4
  %cmp40 = icmp sge i32 %dec, 0
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, i32* %regno.addr, align 4
  %23 = load i32, i32* %j, align 4
  %add42 = add nsw i32 %22, %23
  %sh_prom = zext i32 %add42 to i64
  %shl = shl i64 1, %sh_prom
  %24 = load i64, i64* %this_reg, align 8
  %or = or i64 %24, %shl
  store i64 %or, i64* %this_reg, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %25 = load i32, i32* %life.addr, align 4
  %tobool43 = icmp ne i32 %25, 0
  br i1 %tobool43, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.47, %if.then
  %26 = load i32, i32* %birth.addr, align 4
  %27 = load i32, i32* %death.addr, align 4
  %cmp45 = icmp slt i32 %26, %27
  br i1 %cmp45, label %while.body.47, label %while.end.51

while.body.47:                                    ; preds = %while.cond.44
  %28 = load i64, i64* %this_reg, align 8
  %29 = load i32, i32* %birth.addr, align 4
  %idxprom48 = sext i32 %29 to i64
  %30 = load i64*, i64** @regs_live_at, align 8
  %arrayidx49 = getelementptr inbounds i64, i64* %30, i64 %idxprom48
  %31 = load i64, i64* %arrayidx49, align 8
  %or50 = or i64 %31, %28
  store i64 %or50, i64* %arrayidx49, align 8
  %32 = load i32, i32* %birth.addr, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %birth.addr, align 4
  br label %while.cond.44

while.end.51:                                     ; preds = %while.cond.44
  br label %if.end

if.else:                                          ; preds = %while.end
  br label %while.cond.52

while.cond.52:                                    ; preds = %while.body.55, %if.else
  %33 = load i32, i32* %birth.addr, align 4
  %34 = load i32, i32* %death.addr, align 4
  %cmp53 = icmp slt i32 %33, %34
  br i1 %cmp53, label %while.body.55, label %while.end.60

while.body.55:                                    ; preds = %while.cond.52
  %35 = load i64, i64* %this_reg, align 8
  %neg = xor i64 %35, -1
  %36 = load i32, i32* %birth.addr, align 4
  %idxprom56 = sext i32 %36 to i64
  %37 = load i64*, i64** @regs_live_at, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %37, i64 %idxprom56
  %38 = load i64, i64* %arrayidx57, align 8
  %and58 = and i64 %38, %neg
  store i64 %and58, i64* %arrayidx57, align 8
  %39 = load i32, i32* %birth.addr, align 4
  %inc59 = add nsw i32 %39, 1
  store i32 %inc59, i32* %birth.addr, align 4
  br label %while.cond.52

while.end.60:                                     ; preds = %while.cond.52
  br label %if.end

if.end:                                           ; preds = %while.end.60, %while.end.51
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @alloc_qty(i32 %regno, i32 %mode, i32 %size, i32 %birth) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %birth.addr = alloca i32, align 4
  %qtyno = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %birth, i32* %birth.addr, align 4
  %0 = load i32, i32* @next_qty, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @next_qty, align 4
  store i32 %0, i32* %qtyno, align 4
  %1 = load i32, i32* %qtyno, align 4
  %2 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** @reg_qty, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %4 = load i32, i32* %regno.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8*, i8** @reg_offset, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom1
  store i8 0, i8* %arrayidx2, align 1
  %6 = load i32, i32* %regno.addr, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i32*, i32** @reg_next_in_qty, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  store i32 -1, i32* %arrayidx4, align 4
  %8 = load i32, i32* %regno.addr, align 4
  %9 = load i32, i32* %qtyno, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx6 = getelementptr inbounds %struct.qty, %struct.qty* %10, i64 %idxprom5
  %first_reg = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx6, i32 0, i32 6
  store i32 %8, i32* %first_reg, align 4
  %11 = load i32, i32* %size.addr, align 4
  %12 = load i32, i32* %qtyno, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx8 = getelementptr inbounds %struct.qty, %struct.qty* %13, i64 %idxprom7
  %size9 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx8, i32 0, i32 4
  store i32 %11, i32* %size9, align 4
  %14 = load i32, i32* %mode.addr, align 4
  %15 = load i32, i32* %qtyno, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx11 = getelementptr inbounds %struct.qty, %struct.qty* %16, i64 %idxprom10
  %mode12 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx11, i32 0, i32 9
  store i32 %14, i32* %mode12, align 4
  %17 = load i32, i32* %birth.addr, align 4
  %18 = load i32, i32* %qtyno, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx14 = getelementptr inbounds %struct.qty, %struct.qty* %19, i64 %idxprom13
  %birth15 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx14, i32 0, i32 2
  store i32 %17, i32* %birth15, align 4
  %20 = load i32, i32* %regno.addr, align 4
  %idxprom16 = sext i32 %20 to i64
  %21 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %21, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx17 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom16
  %22 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx17, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %22, i32 0, i32 8
  %23 = load i32, i32* %calls_crossed, align 4
  %24 = load i32, i32* %qtyno, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx19 = getelementptr inbounds %struct.qty, %struct.qty* %25, i64 %idxprom18
  %n_calls_crossed = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx19, i32 0, i32 5
  store i32 %23, i32* %n_calls_crossed, align 4
  %26 = load i32, i32* %regno.addr, align 4
  %call = call i32 @reg_preferred_class(i32 %26)
  %27 = load i32, i32* %qtyno, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx21 = getelementptr inbounds %struct.qty, %struct.qty* %28, i64 %idxprom20
  %min_class = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx21, i32 0, i32 7
  store i32 %call, i32* %min_class, align 4
  %29 = load i32, i32* %regno.addr, align 4
  %call22 = call i32 @reg_alternate_class(i32 %29)
  %30 = load i32, i32* %qtyno, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx24 = getelementptr inbounds %struct.qty, %struct.qty* %31, i64 %idxprom23
  %alternate_class = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx24, i32 0, i32 8
  store i32 %call22, i32* %alternate_class, align 4
  %32 = load i32, i32* %regno.addr, align 4
  %idxprom25 = sext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data26 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %reg27 = bitcast %union.varray_data_tag* %data26 to [1 x %struct.reg_info_def*]*
  %arrayidx28 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg27, i32 0, i64 %idxprom25
  %34 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx28, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %34, i32 0, i32 4
  %35 = load i32, i32* %refs, align 4
  %36 = load i32, i32* %qtyno, align 4
  %idxprom29 = sext i32 %36 to i64
  %37 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx30 = getelementptr inbounds %struct.qty, %struct.qty* %37, i64 %idxprom29
  %n_refs = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx30, i32 0, i32 0
  store i32 %35, i32* %n_refs, align 4
  %38 = load i32, i32* %regno.addr, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data32 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %39, i32 0, i32 4
  %reg33 = bitcast %union.varray_data_tag* %data32 to [1 x %struct.reg_info_def*]*
  %arrayidx34 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg33, i32 0, i64 %idxprom31
  %40 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx34, align 8
  %freq = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %40, i32 0, i32 5
  %41 = load i32, i32* %freq, align 4
  %42 = load i32, i32* %qtyno, align 4
  %idxprom35 = sext i32 %42 to i64
  %43 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx36 = getelementptr inbounds %struct.qty, %struct.qty* %43, i64 %idxprom35
  %freq37 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx36, i32 0, i32 1
  store i32 %41, i32* %freq37, align 4
  %44 = load i32, i32* %regno.addr, align 4
  %idxprom38 = sext i32 %44 to i64
  %45 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data39 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %45, i32 0, i32 4
  %reg40 = bitcast %union.varray_data_tag* %data39 to [1 x %struct.reg_info_def*]*
  %arrayidx41 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg40, i32 0, i64 %idxprom38
  %46 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx41, align 8
  %changes_mode = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %46, i32 0, i32 10
  %47 = load i8, i8* %changes_mode, align 1
  %48 = load i32, i32* %qtyno, align 4
  %idxprom42 = sext i32 %48 to i64
  %49 = load %struct.qty*, %struct.qty** @qty, align 8
  %arrayidx43 = getelementptr inbounds %struct.qty, %struct.qty* %49, i64 %idxprom42
  %changes_mode44 = getelementptr inbounds %struct.qty, %struct.qty* %arrayidx43, i32 0, i32 11
  store i8 %47, i8* %changes_mode44, align 1
  ret void
}

declare i32 @reg_alternate_class(i32) #1

declare i32 @reg_class_subset_p(i32, i32) #1

declare i32 @multiple_sets(%struct.rtx_def*) #1

declare i32 @floor_log2_wide(i64) #1

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
