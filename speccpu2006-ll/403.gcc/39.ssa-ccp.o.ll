; ModuleID = 'ssa-ccp.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i32, %struct.bb_info*, %struct.ref**, %struct.ref**, %struct.ref**, %struct.reg_info*, i32, %struct.insn_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.simple_bitmap_def**, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32, i32, i32 }
%struct.ref = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def**, %struct.df_link*, i32, i32, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.df_link = type { %struct.df_link*, %struct.ref* }
%struct.reg_info = type { %struct.df_link*, %struct.df_link*, i32, i32, i32 }
%struct.insn_info = type { %struct.df_link*, %struct.df_link*, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.value = type { i32, %struct.rtx_def* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@df_analyzer = internal global %struct.df* null, align 8
@edges = internal global %struct.edge_list* null, align 8
@ssa_definition = external global %struct.varray_head_tag*, align 8
@values = internal global %struct.value* null, align 8
@ssa_edges = internal global %struct.simple_bitmap_def* null, align 8
@n_basic_blocks = external global i32, align 4
@executable_blocks = internal global %struct.simple_bitmap_def* null, align 8
@executable_edges = internal global %struct.simple_bitmap_def* null, align 8
@edge_info = internal global %struct.edge_def** null, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@flow_edges = internal global %struct.edge_def* null, align 8
@rtx_class = external constant [153 x i8], align 16
@basic_block_info = external global %struct.varray_head_tag*, align 8
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"Register %d is now set to a constant\0A\00", align 1
@cfun = external global %struct.function*, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Register %d in insn %d replaced with constant\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Removing alternative for bb %d of phi %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Removing unexecutable edge from %d to %d\0A\00", align 1
@target_flags = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @ssa_const_prop() #0 {
entry:
  %i = alloca i32, align 4
  %curredge = alloca %struct.edge_def*, align 8
  %index = alloca i32, align 4
  call void @init_alias_analysis()
  %call = call %struct.df* @df_init()
  store %struct.df* %call, %struct.df** @df_analyzer, align 8
  %0 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %call1 = call i32 @df_analyse(%struct.df* %0, %struct.bitmap_head_def* null, i32 1248)
  %call2 = call i32 @get_max_uid()
  call void @compute_bb_for_insn(i32 %call2)
  %1 = load %struct.df*, %struct.df** @df_analyzer, align 8
  call void @ssa_fast_dce(%struct.df* %1)
  %call3 = call %struct.edge_list* @create_edge_list()
  store %struct.edge_list* %call3, %struct.edge_list** @edges, align 8
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 0
  %3 = load i64, i64* %num_elements, align 8
  %mul = mul i64 %3, 16
  %call4 = call noalias i8* @xmalloc(i64 %mul)
  %4 = bitcast i8* %call4 to %struct.value*
  store %struct.value* %4, %struct.value** @values, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %conv = zext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 0
  %7 = load i64, i64* %num_elements5, align 8
  %cmp = icmp ult i64 %conv, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %cmp7 = icmp ult i32 %8, 53
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx = getelementptr inbounds %struct.value, %struct.value* %10, i64 %idxprom
  %lattice_val = getelementptr inbounds %struct.value, %struct.value* %arrayidx, i32 0, i32 0
  store i32 2, i32* %lattice_val, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %11 to i64
  %12 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx10 = getelementptr inbounds %struct.value, %struct.value* %12, i64 %idxprom9
  %lattice_val11 = getelementptr inbounds %struct.value, %struct.value* %arrayidx10, i32 0, i32 0
  store i32 0, i32* %lattice_val11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %13 to i64
  %14 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx13 = getelementptr inbounds %struct.value, %struct.value* %14, i64 %idxprom12
  %const_value = getelementptr inbounds %struct.value, %struct.value* %arrayidx13, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %const_value, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements14 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 0
  %17 = load i64, i64* %num_elements14, align 8
  %conv15 = trunc i64 %17 to i32
  %call16 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %conv15)
  store %struct.simple_bitmap_def* %call16, %struct.simple_bitmap_def** @ssa_edges, align 8
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %18)
  %19 = load i32, i32* @n_basic_blocks, align 4
  %call17 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %19)
  store %struct.simple_bitmap_def* %call17, %struct.simple_bitmap_def** @executable_blocks, align 8
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %20)
  %21 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %21, i32 0, i32 1
  %22 = load i32, i32* %num_edges, align 4
  %call18 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %22)
  store %struct.simple_bitmap_def* %call18, %struct.simple_bitmap_def** @executable_edges, align 8
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %23)
  %24 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %num_edges19 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %24, i32 0, i32 1
  %25 = load i32, i32* %num_edges19, align 4
  %conv20 = sext i32 %25 to i64
  %mul21 = mul i64 %conv20, 8
  %call22 = call noalias i8* @xmalloc(i64 %mul21)
  %26 = bitcast i8* %call22 to %struct.edge_def**
  store %struct.edge_def** %26, %struct.edge_def*** @edge_info, align 8
  %27 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %27, %struct.edge_def** @flow_edges, align 8
  %28 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %28, %struct.edge_def** %curredge, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.30, %for.end
  %29 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %tobool = icmp ne %struct.edge_def* %29, null
  br i1 %tobool, label %for.body.24, label %for.end.32

for.body.24:                                      ; preds = %for.cond.23
  %30 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %31 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 2
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %33 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 3
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %call25 = call i32 @find_edge_index(%struct.edge_list* %30, %struct.basic_block_def* %32, %struct.basic_block_def* %34)
  store i32 %call25, i32* %index, align 4
  %35 = load i32, i32* %index, align 4
  %rem = urem i32 %35, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %36 = load i32, i32* %index, align 4
  %div = udiv i32 %36, 64
  %idxprom26 = zext i32 %div to i64
  %37 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %37, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom26
  %38 = load i64, i64* %arrayidx27, align 8
  %or = or i64 %38, %shl
  store i64 %or, i64* %arrayidx27, align 8
  %39 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i32 0, i32 1
  %40 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %41 = load i32, i32* %index, align 4
  %idxprom28 = sext i32 %41 to i64
  %42 = load %struct.edge_def**, %struct.edge_def*** @edge_info, align 8
  %arrayidx29 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %42, i64 %idxprom28
  store %struct.edge_def* %40, %struct.edge_def** %arrayidx29, align 8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.24
  %43 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %succ_next31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i32 0, i32 1
  %44 = load %struct.edge_def*, %struct.edge_def** %succ_next31, align 8
  store %struct.edge_def* %44, %struct.edge_def** %curredge, align 8
  br label %for.cond.23

for.end.32:                                       ; preds = %for.cond.23
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.32
  call void @examine_flow_edges()
  call void @follow_def_use_chains()
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %45 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %cmp33 = icmp ne %struct.edge_def* %45, null
  br i1 %cmp33, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  call void @ssa_ccp_substitute_constants()
  %46 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %47 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  call void @optimize_unexecutable_edges(%struct.edge_list* %46, %struct.simple_bitmap_def* %47)
  call void @ssa_ccp_df_delete_unreachable_insns()
  %48 = load %struct.df*, %struct.df** @df_analyzer, align 8
  call void @ssa_fast_dce(%struct.df* %48)
  %49 = load %struct.value*, %struct.value** @values, align 8
  %50 = bitcast %struct.value* %49 to i8*
  call void @free(i8* %50) #3
  store %struct.value* null, %struct.value** @values, align 8
  %51 = load %struct.edge_def**, %struct.edge_def*** @edge_info, align 8
  %52 = bitcast %struct.edge_def** %51 to i8*
  call void @free(i8* %52) #3
  store %struct.edge_def** null, %struct.edge_def*** @edge_info, align 8
  %53 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8
  %54 = bitcast %struct.simple_bitmap_def* %53 to i8*
  call void @free(i8* %54) #3
  store %struct.simple_bitmap_def* null, %struct.simple_bitmap_def** @executable_blocks, align 8
  %55 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %56 = bitcast %struct.simple_bitmap_def* %55 to i8*
  call void @free(i8* %56) #3
  store %struct.simple_bitmap_def* null, %struct.simple_bitmap_def** @ssa_edges, align 8
  %57 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  call void @free_edge_list(%struct.edge_list* %57)
  store %struct.edge_list* null, %struct.edge_list** @edges, align 8
  %58 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %59 = bitcast %struct.simple_bitmap_def* %58 to i8*
  call void @free(i8* %59) #3
  store %struct.simple_bitmap_def* null, %struct.simple_bitmap_def** @executable_edges, align 8
  %60 = load %struct.df*, %struct.df** @df_analyzer, align 8
  call void @df_finish(%struct.df* %60)
  call void @end_alias_analysis()
  ret void
}

declare void @init_alias_analysis() #1

declare %struct.df* @df_init() #1

declare i32 @df_analyse(%struct.df*, %struct.bitmap_head_def*, i32) #1

declare void @compute_bb_for_insn(i32) #1

declare i32 @get_max_uid() #1

; Function Attrs: nounwind uwtable
define internal void @ssa_fast_dce(%struct.df* %df) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %worklist = alloca %struct.simple_bitmap_def*, align 8
  %curruse = alloca %struct.df_link*, align 8
  %reg = alloca i32, align 4
  %found_use = alloca i32, align 4
  %def = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %0, i32 0, i32 0
  %1 = load i64, i64* %num_elements, align 8
  %conv = trunc i64 %1 to i32
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %conv)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %worklist, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %2)
  br label %while.cond

while.cond:                                       ; preds = %if.end.101, %if.then, %entry
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %call1 = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %3)
  %cmp = icmp sge i32 %call1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %call3 = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %4)
  store i32 %call3, i32* %reg, align 4
  %5 = load i32, i32* %reg, align 4
  %rem = urem i32 %5, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %6 = load i32, i32* %reg, align 4
  %div = udiv i32 %6, 64
  %idxprom = zext i32 %div to i64
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %and = and i64 %8, %neg
  store i64 %and, i64* %arrayidx, align 8
  %9 = load i32, i32* %reg, align 4
  %cmp4 = icmp slt i32 %9, 53
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %10 = load i32, i32* %reg, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %rtx = bitcast %union.varray_data_tag* %data to [1 x %struct.rtx_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx, i32 0, i64 %idxprom6
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx7, align 8
  %tobool = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool, label %lor.lhs.false.8, label %if.then

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %reg, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data10 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 4
  %rtx11 = bitcast %union.varray_data_tag* %data10 to [1 x %struct.rtx_def*]*
  %arrayidx12 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx11, i32 0, i64 %idxprom9
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx12, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool13 = icmp ne i32 %bf.clear, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.8
  %17 = load i32, i32* %reg, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %rtx17 = bitcast %union.varray_data_tag* %data16 to [1 x %struct.rtx_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx17, i32 0, i64 %idxprom15
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx18, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load19 = load i32, i32* %20, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 37
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false.30

land.lhs.true:                                    ; preds = %lor.lhs.false.14
  %21 = load i32, i32* %reg, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data24 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %rtx25 = bitcast %union.varray_data_tag* %data24 to [1 x %struct.rtx_def*]*
  %arrayidx26 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx25, i32 0, i64 %idxprom23
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx26, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx27 to i32*
  %24 = load i32, i32* %rtint, align 4
  %cmp28 = icmp eq i32 %24, -99
  br i1 %cmp28, label %if.then, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %land.lhs.true, %lor.lhs.false.14
  %25 = load i32, i32* %reg, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data32 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %26, i32 0, i32 4
  %rtx33 = bitcast %union.varray_data_tag* %data32 to [1 x %struct.rtx_def*]*
  %arrayidx34 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx33, i32 0, i64 %idxprom31
  %27 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %call38 = call i32 @side_effects_p(%struct.rtx_def* %28)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.30, %land.lhs.true, %lor.lhs.false.8, %lor.lhs.false, %while.body
  br label %while.cond

if.end:                                           ; preds = %lor.lhs.false.30
  store i32 0, i32* %found_use, align 4
  %29 = load i32, i32* %reg, align 4
  %idxprom40 = sext i32 %29 to i64
  %30 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %30, i32 0, i32 5
  %31 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx41 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %31, i64 %idxprom40
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx41, i32 0, i32 1
  %32 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %32, %struct.df_link** %curruse, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %33 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %tobool42 = icmp ne %struct.df_link* %33, null
  br i1 %tobool42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %34, i32 0, i32 1
  %35 = load %struct.ref*, %struct.ref** %ref, align 8
  %tobool43 = icmp ne %struct.ref* %35, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.79

land.lhs.true.44:                                 ; preds = %for.body
  %36 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %ref45 = getelementptr inbounds %struct.df_link, %struct.df_link* %36, i32 0, i32 1
  %37 = load %struct.ref*, %struct.ref** %ref45, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 1
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool46 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.79

land.lhs.true.47:                                 ; preds = %land.lhs.true.44
  %39 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %ref48 = getelementptr inbounds %struct.df_link, %struct.df_link* %39, i32 0, i32 1
  %40 = load %struct.ref*, %struct.ref** %ref48, align 8
  %insn49 = getelementptr inbounds %struct.ref, %struct.ref* %40, i32 0, i32 1
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn49, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load50 = load i32, i32* %42, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 27
  %bf.clear52 = and i32 %bf.lshr51, 1
  %tobool53 = icmp ne i32 %bf.clear52, 0
  br i1 %tobool53, label %if.end.79, label %land.lhs.true.54

land.lhs.true.54:                                 ; preds = %land.lhs.true.47
  %43 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %ref55 = getelementptr inbounds %struct.df_link, %struct.df_link* %43, i32 0, i32 1
  %44 = load %struct.ref*, %struct.ref** %ref55, align 8
  %insn56 = getelementptr inbounds %struct.ref, %struct.ref* %44, i32 0, i32 1
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn56, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load57 = load i32, i32* %46, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 37
  br i1 %cmp59, label %land.lhs.true.61, label %land.lhs.true.69

land.lhs.true.61:                                 ; preds = %land.lhs.true.54
  %47 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %ref62 = getelementptr inbounds %struct.df_link, %struct.df_link* %47, i32 0, i32 1
  %48 = load %struct.ref*, %struct.ref** %ref62, align 8
  %insn63 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 1
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn63, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 4
  %rtint66 = bitcast %union.rtunion_def* %arrayidx65 to i32*
  %50 = load i32, i32* %rtint66, align 4
  %cmp67 = icmp eq i32 %50, -99
  br i1 %cmp67, label %if.end.79, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %land.lhs.true.61, %land.lhs.true.54
  %51 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %ref70 = getelementptr inbounds %struct.df_link, %struct.df_link* %51, i32 0, i32 1
  %52 = load %struct.ref*, %struct.ref** %ref70, align 8
  %insn71 = getelementptr inbounds %struct.ref, %struct.ref* %52, i32 0, i32 1
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn71, align 8
  %54 = load i32, i32* %reg, align 4
  %idxprom72 = sext i32 %54 to i64
  %55 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data73 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %55, i32 0, i32 4
  %rtx74 = bitcast %union.varray_data_tag* %data73 to [1 x %struct.rtx_def*]*
  %arrayidx75 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx74, i32 0, i64 %idxprom72
  %56 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx75, align 8
  %cmp76 = icmp ne %struct.rtx_def* %53, %56
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %land.lhs.true.69
  store i32 1, i32* %found_use, align 4
  br label %for.end

if.end.79:                                        ; preds = %land.lhs.true.69, %land.lhs.true.61, %land.lhs.true.47, %land.lhs.true.44, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %57 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %57, i32 0, i32 0
  %58 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %58, %struct.df_link** %curruse, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.78, %for.cond
  %59 = load i32, i32* %found_use, align 4
  %tobool80 = icmp ne i32 %59, 0
  br i1 %tobool80, label %if.end.101, label %if.then.81

if.then.81:                                       ; preds = %for.end
  %60 = load i32, i32* %reg, align 4
  %idxprom82 = sext i32 %60 to i64
  %61 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data83 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %61, i32 0, i32 4
  %rtx84 = bitcast %union.varray_data_tag* %data83 to [1 x %struct.rtx_def*]*
  %arrayidx85 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx84, i32 0, i64 %idxprom82
  %62 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx85, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %def, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 3
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %64 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %65 = bitcast %struct.simple_bitmap_def* %64 to i8*
  %call89 = call i32 @for_each_rtx(%struct.rtx_def** %rtx88, i32 (%struct.rtx_def**, i8*)* @mark_references, i8* %65)
  %66 = load %struct.df*, %struct.df** %df.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtint92 = bitcast %union.rtunion_def* %arrayidx91 to i32*
  %68 = load i32, i32* %rtint92, align 4
  %idxprom93 = sext i32 %68 to i64
  %69 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data94 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %69, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data94 to [1 x %struct.basic_block_def*]*
  %arrayidx95 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom93
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx95, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %call96 = call %struct.rtx_def* @df_insn_delete(%struct.df* %66, %struct.basic_block_def* %70, %struct.rtx_def* %71)
  %72 = load i32, i32* %reg, align 4
  %idxprom97 = sext i32 %72 to i64
  %73 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data98 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %73, i32 0, i32 4
  %rtx99 = bitcast %union.varray_data_tag* %data98 to [1 x %struct.rtx_def*]*
  %arrayidx100 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx99, i32 0, i64 %idxprom97
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx100, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.81, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %74 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %75 = bitcast %struct.simple_bitmap_def* %74 to i8*
  call void @free(i8* %75) #3
  %76 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %call102 = call i32 @df_analyse(%struct.df* %76, %struct.bitmap_head_def* null, i32 1248)
  ret void
}

declare %struct.edge_list* @create_edge_list() #1

declare noalias i8* @xmalloc(i64) #1

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare i32 @find_edge_index(%struct.edge_list*, %struct.basic_block_def*, %struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define internal void @examine_flow_edges() #0 {
entry:
  %succ_block = alloca %struct.basic_block_def*, align 8
  %curr_phi_node = alloca %struct.rtx_def*, align 8
  %currinsn = alloca %struct.rtx_def*, align 8
  %succ_edge = alloca %struct.edge_def*, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.100, %if.then, %entry
  %0 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %cmp = icmp ne %struct.edge_def* %0, null
  br i1 %cmp, label %while.body, label %while.end.101

while.body:                                       ; preds = %while.cond
  %1 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i32 0, i32 3
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %succ_block, align 8
  %3 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %4 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 2
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %6 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 3
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8
  %call = call i32 @find_edge_index(%struct.edge_list* %3, %struct.basic_block_def* %5, %struct.basic_block_def* %7)
  %idxprom = sext i32 %call to i64
  %8 = load %struct.edge_def**, %struct.edge_def*** @edge_info, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %8, i64 %idxprom
  %9 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  store %struct.edge_def* %9, %struct.edge_def** @flow_edges, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %cmp2 = icmp eq %struct.basic_block_def* %10, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond

if.end:                                           ; preds = %while.body
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %call3 = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %11)
  store %struct.rtx_def* %call3, %struct.rtx_def** %curr_phi_node, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %curr_phi_node, align 8
  %tobool = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %13 = load %struct.rtx_def*, %struct.rtx_def** %curr_phi_node, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp4 = icmp eq i32 %bf.clear, 32
  br i1 %cmp4, label %land.lhs.true.5, label %land.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %curr_phi_node, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load7 = load i32, i32* %17, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 47
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.5
  %18 = load %struct.rtx_def*, %struct.rtx_def** %curr_phi_node, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load16 = load i32, i32* %21, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.5, %land.lhs.true, %for.cond
  %22 = phi i1 [ false, %land.lhs.true.5 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp18, %land.rhs ]
  br i1 %22, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %curr_phi_node, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  call void @visit_phi_node(%struct.rtx_def* %23, %struct.basic_block_def* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load %struct.rtx_def*, %struct.rtx_def** %curr_phi_node, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 2
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %curr_phi_node, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 11
  %28 = load i32, i32* %index, align 4
  %div = udiv i32 %28, 64
  %idxprom22 = zext i32 %div to i64
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %29, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom22
  %30 = load i64, i64* %arrayidx23, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %index24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index24, align 4
  %rem = urem i32 %32, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %30, %sh_prom
  %and = and i64 %shr, 1
  %tobool25 = icmp ne i64 %and, 0
  br i1 %tobool25, label %if.end.100, label %if.then.26

if.then.26:                                       ; preds = %for.end
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 5
  %34 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %34, %struct.edge_def** %succ_edge, align 8
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %index27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 11
  %36 = load i32, i32* %index27, align 4
  %rem28 = urem i32 %36, 64
  %sh_prom29 = zext i32 %rem28 to i64
  %shl = shl i64 1, %sh_prom29
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %index30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 11
  %38 = load i32, i32* %index30, align 4
  %div31 = udiv i32 %38, 64
  %idxprom32 = zext i32 %div31 to i64
  %39 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8
  %elms33 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %39, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [1 x i64], [1 x i64]* %elms33, i32 0, i64 %idxprom32
  %40 = load i64, i64* %arrayidx34, align 8
  %or = or i64 %40, %shl
  store i64 %or, i64* %arrayidx34, align 8
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 0
  %42 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %currinsn, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %if.end.45, %if.then.26
  %43 = load %struct.rtx_def*, %struct.rtx_def** %currinsn, align 8
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 1
  %45 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp36 = icmp ne %struct.rtx_def* %43, %45
  br i1 %cmp36, label %while.body.37, label %while.end

while.body.37:                                    ; preds = %while.cond.35
  %46 = load %struct.rtx_def*, %struct.rtx_def** %currinsn, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load38 = load i32, i32* %47, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %idxprom40 = sext i32 %bf.clear39 to i64
  %arrayidx41 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom40
  %48 = load i8, i8* %arrayidx41, align 1
  %conv = sext i8 %48 to i32
  %cmp42 = icmp eq i32 %conv, 105
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %while.body.37
  %49 = load %struct.rtx_def*, %struct.rtx_def** %currinsn, align 8
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  call void @visit_expression(%struct.rtx_def* %49, %struct.basic_block_def* %50)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %while.body.37
  %51 = load %struct.rtx_def*, %struct.rtx_def** %currinsn, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 2
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %currinsn, align 8
  br label %while.cond.35

while.end:                                        ; preds = %while.cond.35
  %53 = load %struct.rtx_def*, %struct.rtx_def** %currinsn, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load49 = load i32, i32* %54, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %idxprom51 = sext i32 %bf.clear50 to i64
  %arrayidx52 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom51
  %55 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %55 to i32
  %cmp54 = icmp eq i32 %conv53, 105
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %while.end
  %56 = load %struct.rtx_def*, %struct.rtx_def** %currinsn, align 8
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %succ_block, align 8
  call void @visit_expression(%struct.rtx_def* %56, %struct.basic_block_def* %57)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %while.end
  %58 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %cmp58 = icmp ne %struct.edge_def* %58, null
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.99

land.lhs.true.60:                                 ; preds = %if.end.57
  %59 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i32 0, i32 1
  %60 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp61 = icmp eq %struct.edge_def* %60, null
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.99

land.lhs.true.63:                                 ; preds = %land.lhs.true.60
  %61 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %62 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %src64 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %62, i32 0, i32 2
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %src64, align 8
  %64 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %dest65 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 3
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %dest65, align 8
  %call66 = call i32 @find_edge_index(%struct.edge_list* %61, %struct.basic_block_def* %63, %struct.basic_block_def* %65)
  %div67 = udiv i32 %call66, 64
  %idxprom68 = zext i32 %div67 to i64
  %66 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms69 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %66, i32 0, i32 3
  %arrayidx70 = getelementptr inbounds [1 x i64], [1 x i64]* %elms69, i32 0, i64 %idxprom68
  %67 = load i64, i64* %arrayidx70, align 8
  %68 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %69 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %src71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i32 0, i32 2
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %src71, align 8
  %71 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %dest72 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i32 0, i32 3
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %dest72, align 8
  %call73 = call i32 @find_edge_index(%struct.edge_list* %68, %struct.basic_block_def* %70, %struct.basic_block_def* %72)
  %rem74 = urem i32 %call73, 64
  %sh_prom75 = zext i32 %rem74 to i64
  %shr76 = lshr i64 %67, %sh_prom75
  %and77 = and i64 %shr76, 1
  %tobool78 = icmp ne i64 %and77, 0
  br i1 %tobool78, label %if.end.99, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.63
  %73 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %74 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %src80 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %74, i32 0, i32 2
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %src80, align 8
  %76 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %dest81 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %76, i32 0, i32 3
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %dest81, align 8
  %call82 = call i32 @find_edge_index(%struct.edge_list* %73, %struct.basic_block_def* %75, %struct.basic_block_def* %77)
  %rem83 = urem i32 %call82, 64
  %sh_prom84 = zext i32 %rem83 to i64
  %shl85 = shl i64 1, %sh_prom84
  %78 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %79 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %src86 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %79, i32 0, i32 2
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %src86, align 8
  %81 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %dest87 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %81, i32 0, i32 3
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %dest87, align 8
  %call88 = call i32 @find_edge_index(%struct.edge_list* %78, %struct.basic_block_def* %80, %struct.basic_block_def* %82)
  %div89 = udiv i32 %call88, 64
  %idxprom90 = zext i32 %div89 to i64
  %83 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms91 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %83, i32 0, i32 3
  %arrayidx92 = getelementptr inbounds [1 x i64], [1 x i64]* %elms91, i32 0, i64 %idxprom90
  %84 = load i64, i64* %arrayidx92, align 8
  %or93 = or i64 %84, %shl85
  store i64 %or93, i64* %arrayidx92, align 8
  %85 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %86 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %87 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %src94 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %87, i32 0, i32 2
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %src94, align 8
  %89 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  %dest95 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %89, i32 0, i32 3
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %dest95, align 8
  %call96 = call i32 @find_edge_index(%struct.edge_list* %86, %struct.basic_block_def* %88, %struct.basic_block_def* %90)
  %idxprom97 = sext i32 %call96 to i64
  %91 = load %struct.edge_def**, %struct.edge_def*** @edge_info, align 8
  %arrayidx98 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %91, i64 %idxprom97
  store %struct.edge_def* %85, %struct.edge_def** %arrayidx98, align 8
  %92 = load %struct.edge_def*, %struct.edge_def** %succ_edge, align 8
  store %struct.edge_def* %92, %struct.edge_def** @flow_edges, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.79, %land.lhs.true.63, %land.lhs.true.60, %if.end.57
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %for.end
  br label %while.cond

while.end.101:                                    ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @follow_def_use_chains() #0 {
entry:
  %member = alloca i32, align 4
  %curruse = alloca %struct.df_link*, align 8
  %useinsn = alloca %struct.rtx_def*, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %call = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %0)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %call1 = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %1)
  store i32 %call1, i32* %member, align 4
  %2 = load i32, i32* %member, align 4
  %rem = urem i32 %2, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %3 = load i32, i32* %member, align 4
  %div = udiv i32 %3, 64
  %idxprom = zext i32 %div to i64
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %and = and i64 %5, %neg
  store i64 %and, i64* %arrayidx, align 8
  %6 = load i32, i32* %member, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %7, i32 0, i32 5
  %8 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx3 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %8, i64 %idxprom2
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx3, i32 0, i32 1
  %9 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %9, %struct.df_link** %curruse, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %10 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %tobool = icmp ne %struct.df_link* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %11, i32 0, i32 1
  %12 = load %struct.ref*, %struct.ref** %ref, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %useinsn, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %tobool4 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp5 = icmp eq i32 %bf.clear, 32
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load8 = load i32, i32* %19, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 47
  br i1 %cmp10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true.6
  %20 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load18 = load i32, i32* %23, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 152
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.11
  %24 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx22 to i32*
  %25 = load i32, i32* %rtint, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %26, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx24 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom23
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx24, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 11
  %28 = load i32, i32* %index, align 4
  %add = add nsw i32 %28, 0
  %div25 = udiv i32 %add, 64
  %idxprom26 = zext i32 %div25 to i64
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8
  %elms27 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %29, i32 0, i32 3
  %arrayidx28 = getelementptr inbounds [1 x i64], [1 x i64]* %elms27, i32 0, i64 %idxprom26
  %30 = load i64, i64* %arrayidx28, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %32 = load i32, i32* %rtint31, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data33 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %bb34 = bitcast %union.varray_data_tag* %data33 to [1 x %struct.basic_block_def*]*
  %arrayidx35 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb34, i32 0, i64 %idxprom32
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx35, align 8
  %index36 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index36, align 4
  %add37 = add nsw i32 %35, 0
  %rem38 = urem i32 %add37, 64
  %sh_prom39 = zext i32 %rem38 to i64
  %shr = lshr i64 %30, %sh_prom39
  %and40 = and i64 %shr, 1
  %tobool41 = icmp ne i64 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %if.then
  %36 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtint45 = bitcast %union.rtunion_def* %arrayidx44 to i32*
  %38 = load i32, i32* %rtint45, align 4
  %idxprom46 = sext i32 %38 to i64
  %39 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data47 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %39, i32 0, i32 4
  %bb48 = bitcast %union.varray_data_tag* %data47 to [1 x %struct.basic_block_def*]*
  %arrayidx49 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb48, i32 0, i64 %idxprom46
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx49, align 8
  call void @visit_phi_node(%struct.rtx_def* %36, %struct.basic_block_def* %40)
  br label %if.end

if.end:                                           ; preds = %if.then.42, %if.then
  br label %if.end.86

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true.6, %land.lhs.true, %for.body
  %41 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtint52 = bitcast %union.rtunion_def* %arrayidx51 to i32*
  %42 = load i32, i32* %rtint52, align 4
  %idxprom53 = sext i32 %42 to i64
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data54 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 4
  %bb55 = bitcast %union.varray_data_tag* %data54 to [1 x %struct.basic_block_def*]*
  %arrayidx56 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb55, i32 0, i64 %idxprom53
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx56, align 8
  %index57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 11
  %45 = load i32, i32* %index57, align 4
  %add58 = add nsw i32 %45, 0
  %div59 = udiv i32 %add58, 64
  %idxprom60 = zext i32 %div59 to i64
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8
  %elms61 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %46, i32 0, i32 3
  %arrayidx62 = getelementptr inbounds [1 x i64], [1 x i64]* %elms61, i32 0, i64 %idxprom60
  %47 = load i64, i64* %arrayidx62, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtint65 = bitcast %union.rtunion_def* %arrayidx64 to i32*
  %49 = load i32, i32* %rtint65, align 4
  %idxprom66 = sext i32 %49 to i64
  %50 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data67 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %50, i32 0, i32 4
  %bb68 = bitcast %union.varray_data_tag* %data67 to [1 x %struct.basic_block_def*]*
  %arrayidx69 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb68, i32 0, i64 %idxprom66
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx69, align 8
  %index70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i32 0, i32 11
  %52 = load i32, i32* %index70, align 4
  %add71 = add nsw i32 %52, 0
  %rem72 = urem i32 %add71, 64
  %sh_prom73 = zext i32 %rem72 to i64
  %shr74 = lshr i64 %47, %sh_prom73
  %and75 = and i64 %shr74, 1
  %tobool76 = icmp ne i64 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.85

if.then.77:                                       ; preds = %if.else
  %53 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtint80 = bitcast %union.rtunion_def* %arrayidx79 to i32*
  %55 = load i32, i32* %rtint80, align 4
  %idxprom81 = sext i32 %55 to i64
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data82 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 4
  %bb83 = bitcast %union.varray_data_tag* %data82 to [1 x %struct.basic_block_def*]*
  %arrayidx84 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb83, i32 0, i64 %idxprom81
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx84, align 8
  call void @visit_expression(%struct.rtx_def* %53, %struct.basic_block_def* %57)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.77, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %58 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %58, i32 0, i32 0
  %59 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %59, %struct.df_link** %curruse, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ssa_ccp_substitute_constants() #0 {
entry:
  %i = alloca i32, align 4
  %def = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %curruse = alloca %struct.df_link*, align 8
  %useinsn = alloca %struct.rtx_def*, align 8
  store i32 53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.149, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 0
  %2 = load i64, i64* %num_elements, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end.150

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx = getelementptr inbounds %struct.value, %struct.value* %4, i64 %idxprom
  %lattice_val = getelementptr inbounds %struct.value, %struct.value* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %lattice_val, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then, label %if.end.148

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %rtx = bitcast %union.varray_data_tag* %data to [1 x %struct.rtx_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx, i32 0, i64 %idxprom4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %def, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom6 = sext i32 %bf.clear to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom6
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 105
  br i1 %cmp9, label %cond.true, label %cond.false.24

cond.true:                                        ; preds = %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load13 = load i32, i32* %14, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 47
  br i1 %cmp15, label %cond.true.17, label %cond.false

cond.true.17:                                     ; preds = %cond.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 3
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %17, %struct.rtx_def* %19)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.17
  %cond = phi %struct.rtx_def* [ %16, %cond.true.17 ], [ %call, %cond.false ]
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.then
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.end
  %cond26 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.24 ]
  store %struct.rtx_def* %cond26, %struct.rtx_def** %set, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool = icmp ne %struct.rtx_def* %20, null
  br i1 %tobool, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %cond.end.25
  br label %for.inc.149

if.end:                                           ; preds = %cond.end.25
  %21 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %tobool28 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool28, label %land.lhs.true, label %land.lhs.true.52

land.lhs.true:                                    ; preds = %if.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load29 = load i32, i32* %23, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 32
  br i1 %cmp31, label %land.lhs.true.33, label %land.lhs.true.52

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 3
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load37 = load i32, i32* %26, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 47
  br i1 %cmp39, label %land.lhs.true.41, label %land.lhs.true.52

land.lhs.true.41:                                 ; preds = %land.lhs.true.33
  %27 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 3
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 1
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load48 = load i32, i32* %30, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 152
  br i1 %cmp50, label %if.end.91, label %land.lhs.true.52

land.lhs.true.52:                                 ; preds = %land.lhs.true.41, %land.lhs.true.33, %land.lhs.true, %if.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load53 = load i32, i32* %32, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 32
  br i1 %cmp55, label %land.lhs.true.57, label %if.then.65

land.lhs.true.57:                                 ; preds = %land.lhs.true.52
  %33 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 1
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load61 = load i32, i32* %35, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 54
  br i1 %cmp63, label %if.end.91, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.57, %land.lhs.true.52
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool66 = icmp ne %struct._IO_FILE* %36, null
  br i1 %tobool66, label %if.then.67, label %if.end.77

if.then.67:                                       ; preds = %if.then.65
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 3
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx75 to i32*
  %41 = load i32, i32* %rtuint, align 4
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %41)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.67, %if.then.65
  %42 = load i32, i32* %i, align 4
  %idxprom78 = zext i32 %42 to i64
  %43 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx79 = getelementptr inbounds %struct.value, %struct.value* %43, i64 %idxprom78
  %const_value = getelementptr inbounds %struct.value, %struct.value* %arrayidx79, i32 0, i32 1
  %44 = load %struct.rtx_def*, %struct.rtx_def** %const_value, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 1
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  store %struct.rtx_def* %44, %struct.rtx_def** %rtx82, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx84 to i32*
  store i32 -1, i32* %rtint, align 4
  %47 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtint87 = bitcast %union.rtunion_def* %arrayidx86 to i32*
  %49 = load i32, i32* %rtint87, align 4
  %idxprom88 = sext i32 %49 to i64
  %50 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data89 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %50, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data89 to [1 x %struct.basic_block_def*]*
  %arrayidx90 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom88
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx90, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %def, align 8
  call void @df_insn_modify(%struct.df* %47, %struct.basic_block_def* %51, %struct.rtx_def* %52)
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.77, %land.lhs.true.57, %land.lhs.true.41
  %53 = load i32, i32* %i, align 4
  %idxprom92 = zext i32 %53 to i64
  %54 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %54, i32 0, i32 5
  %55 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx93 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %55, i64 %idxprom92
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx93, i32 0, i32 1
  %56 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %56, %struct.df_link** %curruse, align 8
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc, %if.end.91
  %57 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %tobool95 = icmp ne %struct.df_link* %57, null
  br i1 %tobool95, label %for.body.96, label %for.end

for.body.96:                                      ; preds = %for.cond.94
  %58 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %58, i32 0, i32 1
  %59 = load %struct.ref*, %struct.ref** %ref, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %59, i32 0, i32 1
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %60, %struct.rtx_def** %useinsn, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load97 = load i32, i32* %62, align 8
  %bf.lshr = lshr i32 %bf.load97, 27
  %bf.clear98 = and i32 %bf.lshr, 1
  %tobool99 = icmp ne i32 %bf.clear98, 0
  br i1 %tobool99, label %if.end.147, label %land.lhs.true.100

land.lhs.true.100:                                ; preds = %for.body.96
  %63 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load101 = load i32, i32* %64, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %cmp103 = icmp eq i32 %bf.clear102, 37
  br i1 %cmp103, label %land.lhs.true.105, label %land.lhs.true.111

land.lhs.true.105:                                ; preds = %land.lhs.true.100
  %65 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 4
  %rtint108 = bitcast %union.rtunion_def* %arrayidx107 to i32*
  %66 = load i32, i32* %rtint108, align 4
  %cmp109 = icmp eq i32 %66, -99
  br i1 %cmp109, label %if.end.147, label %land.lhs.true.111

land.lhs.true.111:                                ; preds = %land.lhs.true.105, %land.lhs.true.100
  %67 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load112 = load i32, i32* %68, align 8
  %bf.clear113 = and i32 %bf.load112, 65535
  %cmp114 = icmp eq i32 %bf.clear113, 32
  br i1 %cmp114, label %if.then.120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.111
  %69 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load116 = load i32, i32* %70, align 8
  %bf.clear117 = and i32 %bf.load116, 65535
  %cmp118 = icmp eq i32 %bf.clear117, 33
  br i1 %cmp118, label %if.then.120, label %if.end.147

if.then.120:                                      ; preds = %lor.lhs.false, %land.lhs.true.111
  %71 = load i32, i32* %i, align 4
  %idxprom121 = zext i32 %71 to i64
  %72 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %72, i32 0, i32 3
  %73 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %73, i32 0, i32 12
  %74 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx122 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %74, i64 %idxprom121
  %75 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx122, align 8
  %76 = load i32, i32* %i, align 4
  %idxprom123 = zext i32 %76 to i64
  %77 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx124 = getelementptr inbounds %struct.value, %struct.value* %77, i64 %idxprom123
  %const_value125 = getelementptr inbounds %struct.value, %struct.value* %arrayidx124, i32 0, i32 1
  %78 = load %struct.rtx_def*, %struct.rtx_def** %const_value125, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %call126 = call i32 @validate_replace_src(%struct.rtx_def* %75, %struct.rtx_def* %78, %struct.rtx_def* %79)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.146

if.then.128:                                      ; preds = %if.then.120
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool129 = icmp ne %struct._IO_FILE* %80, null
  br i1 %tobool129, label %if.then.130, label %if.end.135

if.then.130:                                      ; preds = %if.then.128
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %82 = load i32, i32* %i, align 4
  %83 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 0
  %rtint133 = bitcast %union.rtunion_def* %arrayidx132 to i32*
  %84 = load i32, i32* %rtint133, align 4
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), i32 %82, i32 %84)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.130, %if.then.128
  %85 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 4
  %rtint138 = bitcast %union.rtunion_def* %arrayidx137 to i32*
  store i32 -1, i32* %rtint138, align 4
  %86 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtint141 = bitcast %union.rtunion_def* %arrayidx140 to i32*
  %88 = load i32, i32* %rtint141, align 4
  %idxprom142 = sext i32 %88 to i64
  %89 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data143 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %89, i32 0, i32 4
  %bb144 = bitcast %union.varray_data_tag* %data143 to [1 x %struct.basic_block_def*]*
  %arrayidx145 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb144, i32 0, i64 %idxprom142
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx145, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %useinsn, align 8
  call void @df_insn_modify(%struct.df* %86, %struct.basic_block_def* %90, %struct.rtx_def* %91)
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.135, %if.then.120
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %lor.lhs.false, %land.lhs.true.105, %for.body.96
  br label %for.inc

for.inc:                                          ; preds = %if.end.147
  %92 = load %struct.df_link*, %struct.df_link** %curruse, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %92, i32 0, i32 0
  %93 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %93, %struct.df_link** %curruse, align 8
  br label %for.cond.94

for.end:                                          ; preds = %for.cond.94
  br label %if.end.148

if.end.148:                                       ; preds = %for.end, %for.body
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148, %if.then.27
  %94 = load i32, i32* %i, align 4
  %inc = add i32 %94, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.150:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @optimize_unexecutable_edges(%struct.edge_list* %edges, %struct.simple_bitmap_def* %executable_edges) #0 {
entry:
  %edges.addr = alloca %struct.edge_list*, align 8
  %executable_edges.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %edge = alloca %struct.edge_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %insn61 = alloca %struct.rtx_def*, align 8
  %edge62 = alloca %struct.edge_def*, align 8
  store %struct.edge_list* %edges, %struct.edge_list** %edges.addr, align 8
  store %struct.simple_bitmap_def* %executable_edges, %struct.simple_bitmap_def** %executable_edges.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.edge_list*, %struct.edge_list** %edges.addr, align 8
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %1, i32 0, i32 1
  %2 = load i32, i32* %num_edges, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %div = udiv i32 %3, 64
  %idxprom = zext i32 %div to i64
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %executable_edges.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %rem = urem i32 %6, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %5, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end.54, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.edge_list*, %struct.edge_list** %edges.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %8, i32 0, i32 2
  %9 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx2 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %9, i64 %idxprom1
  %10 = load %struct.edge_def*, %struct.edge_def** %arrayidx2, align 8
  store %struct.edge_def* %10, %struct.edge_def** %edge, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %edge, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 6
  %12 = load i32, i32* %flags, align 4
  %and3 = and i32 %12, 2
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  br label %for.inc

if.end:                                           ; preds = %if.then
  %13 = load %struct.edge_def*, %struct.edge_def** %edge, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 3
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp6 = icmp ne %struct.basic_block_def* %14, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp6, label %if.then.7, label %if.end.45

if.then.7:                                        ; preds = %if.end
  %15 = load %struct.edge_def*, %struct.edge_def** %edge, align 8
  %dest8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 3
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest8, align 8
  %call = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %16)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.then.7
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool9 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool9, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load = load i32, i32* %19, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp10 = icmp eq i32 %bf.clear, 32
  br i1 %cmp10, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load13 = load i32, i32* %22, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 47
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.11
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 1
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load22 = load i32, i32* %26, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.11, %land.lhs.true, %while.cond
  %27 = phi i1 [ false, %land.lhs.true.11 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %30 = load %struct.edge_def*, %struct.edge_def** %edge, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 2
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %call28 = call i32 @remove_phi_alternative(%struct.rtx_def* %29, %struct.basic_block_def* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool29 = icmp ne %struct._IO_FILE* %32, null
  br i1 %tobool29, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %while.body
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %34 = load %struct.edge_def*, %struct.edge_def** %edge, align 8
  %src31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 2
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %src31, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 11
  %36 = load i32, i32* %index, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 3
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx39 to i32*
  %40 = load i32, i32* %rtuint, align 4
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i32 %36, i32 %40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.30, %while.body
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 2
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.45

if.end.45:                                        ; preds = %while.end, %if.end
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool46 = icmp ne %struct._IO_FILE* %43, null
  br i1 %tobool46, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %if.end.45
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %45 = load %struct.edge_def*, %struct.edge_def** %edge, align 8
  %src48 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 2
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %src48, align 8
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 11
  %47 = load i32, i32* %index49, align 4
  %48 = load %struct.edge_def*, %struct.edge_def** %edge, align 8
  %dest50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 3
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %dest50, align 8
  %index51 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 11
  %50 = load i32, i32* %index51, align 4
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i32 %47, i32 %50)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.47, %if.end.45
  %51 = load %struct.edge_def*, %struct.edge_def** %edge, align 8
  call void @remove_edge(%struct.edge_def* %51)
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54, %if.then.5
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.114, %for.end
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* @n_basic_blocks, align 4
  %cmp56 = icmp slt i32 %53, %54
  br i1 %cmp56, label %for.body.57, label %for.end.116

for.body.57:                                      ; preds = %for.cond.55
  %55 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %55 to i64
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %56, i32 0, i32 4
  %bb59 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx60 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb59, i32 0, i64 %idxprom58
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx60, align 8
  store %struct.basic_block_def* %57, %struct.basic_block_def** %bb, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 1
  %59 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %insn61, align 8
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 5
  %61 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %61, %struct.edge_def** %edge62, align 8
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i32 0, i32 4
  %63 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp63 = icmp eq %struct.edge_def* %63, null
  br i1 %cmp63, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.57
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load64 = load i32, i32* %65, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp ne i32 %bf.clear65, 33
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %lor.lhs.false, %for.body.57
  br label %for.inc.114

if.end.68:                                        ; preds = %lor.lhs.false
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %call69 = call i32 @condjump_p(%struct.rtx_def* %66)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.113

land.lhs.true.71:                                 ; preds = %if.end.68
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %call72 = call i32 @simplejump_p(%struct.rtx_def* %67)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.113, label %land.lhs.true.74

land.lhs.true.74:                                 ; preds = %land.lhs.true.71
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ75 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 5
  %69 = load %struct.edge_def*, %struct.edge_def** %succ75, align 8
  %tobool76 = icmp ne %struct.edge_def* %69, null
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.113

land.lhs.true.77:                                 ; preds = %land.lhs.true.74
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ78 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 5
  %71 = load %struct.edge_def*, %struct.edge_def** %succ78, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i32 0, i32 1
  %72 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp79 = icmp eq %struct.edge_def* %72, null
  br i1 %cmp79, label %if.then.80, label %if.end.113

if.then.80:                                       ; preds = %land.lhs.true.77
  %73 = load %struct.edge_def*, %struct.edge_def** %edge62, align 8
  %flags81 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 6
  %74 = load i32, i32* %flags81, align 4
  %and82 = and i32 %74, 1
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %if.then.80
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load85 = load i32, i32* %76, align 8
  %bf.clear86 = and i32 %bf.load85, -65536
  %bf.set = or i32 %bf.clear86, 37
  store i32 %bf.set, i32* %76, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx88 to i32*
  store i32 -99, i32* %rtint, align 4
  br label %if.end.105

if.else:                                          ; preds = %if.then.80
  %78 = load i32, i32* @target_flags, align 4
  %and89 = and i32 %78, 33554432
  %tobool90 = icmp ne i32 %and89, 0
  %cond = select i1 %tobool90, i32 5, i32 4
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 7
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %call94 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 %cond, %struct.rtx_def* %80)
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 3
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 1
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  store %struct.rtx_def* %call94, %struct.rtx_def** %rtx100, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %call101 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %83)
  %84 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 4
  %rtint104 = bitcast %union.rtunion_def* %arrayidx103 to i32*
  store i32 -1, i32* %rtint104, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else, %if.then.84
  %85 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 0
  %rtint108 = bitcast %union.rtunion_def* %arrayidx107 to i32*
  %87 = load i32, i32* %rtint108, align 4
  %idxprom109 = sext i32 %87 to i64
  %88 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data110 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %88, i32 0, i32 4
  %bb111 = bitcast %union.varray_data_tag* %data110 to [1 x %struct.basic_block_def*]*
  %arrayidx112 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb111, i32 0, i64 %idxprom109
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx112, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %insn61, align 8
  call void @df_insn_modify(%struct.df* %85, %struct.basic_block_def* %89, %struct.rtx_def* %90)
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.105, %land.lhs.true.77, %land.lhs.true.74, %land.lhs.true.71, %if.end.68
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113, %if.then.67
  %91 = load i32, i32* %i, align 4
  %inc115 = add nsw i32 %91, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond.55

for.end.116:                                      ; preds = %for.cond.55
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ssa_ccp_df_delete_unreachable_insns() #0 {
entry:
  %i = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %start = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  call void @find_unreachable_blocks()
  %0 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %b, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 15
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.55, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %start, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %end, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %end2, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %end, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 33
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %tmp, align 8
  %cmp5 = icmp ne %struct.rtx_def* %16, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %tmp, align 8
  %cmp10 = icmp ne %struct.rtx_def* %18, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.6
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load12 = load i32, i32* %20, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 33
  br i1 %cmp14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.11
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load19 = load i32, i32* %23, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 44
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.15
  %24 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 3
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load25 = load i32, i32* %26, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 45
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %lor.lhs.false, %land.lhs.true.15
  %27 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %lor.lhs.false, %land.lhs.true.11, %land.lhs.true.6, %land.lhs.true, %if.then
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.54
  %28 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 2
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %next, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load33 = load i32, i32* %31, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 32
  br i1 %cmp35, label %if.then.44, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %while.body
  %32 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load37 = load i32, i32* %33, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 34
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %34 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load41 = load i32, i32* %35, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 33
  br i1 %cmp43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.36, %while.body
  %36 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx46 to i32*
  %38 = load i32, i32* %rtint, align 4
  %idxprom47 = sext i32 %38 to i64
  %39 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data48 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %39, i32 0, i32 4
  %bb49 = bitcast %union.varray_data_tag* %data48 to [1 x %struct.basic_block_def*]*
  %arrayidx50 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb49, i32 0, i64 %idxprom47
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx50, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %call = call %struct.rtx_def* @df_insn_delete(%struct.df* %36, %struct.basic_block_def* %40, %struct.rtx_def* %41)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %lor.lhs.false.40
  %42 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp52 = icmp eq %struct.rtx_def* %42, %43
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  br label %while.end

if.end.54:                                        ; preds = %if.end.51
  %44 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %start, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.53
  br label %if.end.55

if.end.55:                                        ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %45 = load i32, i32* %i, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @free_edge_list(%struct.edge_list*) #1

declare void @df_finish(%struct.df*) #1

declare void @end_alias_analysis() #1

declare %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define internal void @visit_phi_node(%struct.rtx_def* %phi_node, %struct.basic_block_def* %block) #0 {
entry:
  %phi_node.addr = alloca %struct.rtx_def*, align 8
  %block.addr = alloca %struct.basic_block_def*, align 8
  %i = alloca i32, align 4
  %phi_node_expr = alloca %struct.rtx_def*, align 8
  %phi_node_name = alloca i32, align 4
  %phi_node_lattice_val = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %phi_vec = alloca %struct.rtvec_def*, align 8
  %num_elem = alloca i32, align 4
  %current_parm = alloca i32, align 4
  %current_parm_lattice_val = alloca i32, align 4
  store %struct.rtx_def* %phi_node, %struct.rtx_def** %phi_node.addr, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %phi_node_expr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %phi_node.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %phi_node_name, align 4
  store i32 0, i32* %phi_node_lattice_val, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %phi_node.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 3
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %pat, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  store %struct.rtvec_def* %8, %struct.rtvec_def** %phi_vec, align 8
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %num_elem14 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i32 0, i32 0
  %10 = load i32, i32* %num_elem14, align 4
  store i32 %10, i32* %num_elem, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %num_elem, align 4
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %14 = load i32, i32* %i, align 4
  %add = add i32 %14, 1
  %idxprom = zext i32 %add to i64
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %15, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx17 to i64*
  %17 = load i64, i64* %rtwint, align 8
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %17
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx18, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %call = call i32 @find_edge_index(%struct.edge_list* %13, %struct.basic_block_def* %19, %struct.basic_block_def* %20)
  %div = udiv i32 %call, 64
  %idxprom19 = zext i32 %div to i64
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %21, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom19
  %22 = load i64, i64* %arrayidx20, align 8
  %23 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %24 = load i32, i32* %i, align 4
  %add21 = add i32 %24, 1
  %idxprom22 = zext i32 %add21 to i64
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem23 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem23, i32 0, i64 %idxprom22
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx24, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtwint27 = bitcast %union.rtunion_def* %arrayidx26 to i64*
  %27 = load i64, i64* %rtwint27, align 8
  %28 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data28 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %28, i32 0, i32 4
  %bb29 = bitcast %union.varray_data_tag* %data28 to [1 x %struct.basic_block_def*]*
  %arrayidx30 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb29, i32 0, i64 %27
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx30, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %call31 = call i32 @find_edge_index(%struct.edge_list* %23, %struct.basic_block_def* %29, %struct.basic_block_def* %30)
  %rem = urem i32 %call31, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %22, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.60

if.then:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %idxprom32 = zext i32 %31 to i64
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem33 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem33, i32 0, i64 %idxprom32
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %34 = load i32, i32* %rtuint37, align 4
  store i32 %34, i32* %current_parm, align 4
  %35 = load i32, i32* %current_parm, align 4
  %idxprom38 = zext i32 %35 to i64
  %36 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx39 = getelementptr inbounds %struct.value, %struct.value* %36, i64 %idxprom38
  %lattice_val = getelementptr inbounds %struct.value, %struct.value* %arrayidx39, i32 0, i32 0
  %37 = load i32, i32* %lattice_val, align 4
  store i32 %37, i32* %current_parm_lattice_val, align 4
  %38 = load i32, i32* %current_parm_lattice_val, align 4
  %cmp40 = icmp eq i32 %38, 2
  br i1 %cmp40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then
  store i32 2, i32* %phi_node_lattice_val, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %phi_node_expr, align 8
  br label %for.end

if.end:                                           ; preds = %if.then
  %39 = load i32, i32* %current_parm_lattice_val, align 4
  %cmp42 = icmp eq i32 %39, 1
  br i1 %cmp42, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end
  %40 = load i32, i32* %phi_node_lattice_val, align 4
  %cmp43 = icmp eq i32 %40, 1
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.49

land.lhs.true.44:                                 ; preds = %land.lhs.true
  %41 = load i32, i32* %current_parm, align 4
  %idxprom45 = zext i32 %41 to i64
  %42 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx46 = getelementptr inbounds %struct.value, %struct.value* %42, i64 %idxprom45
  %const_value = getelementptr inbounds %struct.value, %struct.value* %arrayidx46, i32 0, i32 1
  %43 = load %struct.rtx_def*, %struct.rtx_def** %const_value, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %phi_node_expr, align 8
  %cmp47 = icmp ne %struct.rtx_def* %43, %44
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.44
  store i32 2, i32* %phi_node_lattice_val, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %phi_node_expr, align 8
  br label %for.end

if.end.49:                                        ; preds = %land.lhs.true.44, %land.lhs.true, %if.end
  %45 = load i32, i32* %phi_node_lattice_val, align 4
  %cmp50 = icmp eq i32 %45, 0
  br i1 %cmp50, label %land.lhs.true.51, label %if.end.59

land.lhs.true.51:                                 ; preds = %if.end.49
  %46 = load %struct.rtx_def*, %struct.rtx_def** %phi_node_expr, align 8
  %cmp52 = icmp eq %struct.rtx_def* %46, null
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.59

land.lhs.true.53:                                 ; preds = %land.lhs.true.51
  %47 = load i32, i32* %current_parm_lattice_val, align 4
  %cmp54 = icmp eq i32 %47, 1
  br i1 %cmp54, label %if.then.55, label %if.end.59

if.then.55:                                       ; preds = %land.lhs.true.53
  %48 = load i32, i32* %current_parm, align 4
  %idxprom56 = zext i32 %48 to i64
  %49 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx57 = getelementptr inbounds %struct.value, %struct.value* %49, i64 %idxprom56
  %const_value58 = getelementptr inbounds %struct.value, %struct.value* %arrayidx57, i32 0, i32 1
  %50 = load %struct.rtx_def*, %struct.rtx_def** %const_value58, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %phi_node_expr, align 8
  store i32 1, i32* %phi_node_lattice_val, align 4
  br label %for.inc

if.end.59:                                        ; preds = %land.lhs.true.53, %land.lhs.true.51, %if.end.49
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60, %if.then.55
  %51 = load i32, i32* %i, align 4
  %add61 = add i32 %51, 2
  store i32 %add61, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.48, %if.then.41, %for.cond
  %52 = load i32, i32* %phi_node_lattice_val, align 4
  %53 = load i32, i32* %phi_node_name, align 4
  %idxprom62 = zext i32 %53 to i64
  %54 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx63 = getelementptr inbounds %struct.value, %struct.value* %54, i64 %idxprom62
  %lattice_val64 = getelementptr inbounds %struct.value, %struct.value* %arrayidx63, i32 0, i32 0
  %55 = load i32, i32* %lattice_val64, align 4
  %cmp65 = icmp ne i32 %52, %55
  br i1 %cmp65, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %for.end
  %56 = load i32, i32* %phi_node_lattice_val, align 4
  %57 = load i32, i32* %phi_node_name, align 4
  %idxprom67 = zext i32 %57 to i64
  %58 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx68 = getelementptr inbounds %struct.value, %struct.value* %58, i64 %idxprom67
  %lattice_val69 = getelementptr inbounds %struct.value, %struct.value* %arrayidx68, i32 0, i32 0
  store i32 %56, i32* %lattice_val69, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %phi_node_expr, align 8
  %60 = load i32, i32* %phi_node_name, align 4
  %idxprom70 = zext i32 %60 to i64
  %61 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx71 = getelementptr inbounds %struct.value, %struct.value* %61, i64 %idxprom70
  %const_value72 = getelementptr inbounds %struct.value, %struct.value* %arrayidx71, i32 0, i32 1
  store %struct.rtx_def* %59, %struct.rtx_def** %const_value72, align 8
  %62 = load i32, i32* %phi_node_name, align 4
  %rem73 = urem i32 %62, 64
  %sh_prom74 = zext i32 %rem73 to i64
  %shl = shl i64 1, %sh_prom74
  %63 = load i32, i32* %phi_node_name, align 4
  %div75 = udiv i32 %63, 64
  %idxprom76 = zext i32 %div75 to i64
  %64 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %elms77 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %64, i32 0, i32 3
  %arrayidx78 = getelementptr inbounds [1 x i64], [1 x i64]* %elms77, i32 0, i64 %idxprom76
  %65 = load i64, i64* %arrayidx78, align 8
  %or = or i64 %65, %shl
  store i64 %or, i64* %arrayidx78, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.66, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @visit_expression(%struct.rtx_def* %insn, %struct.basic_block_def* %block) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %block.addr = alloca %struct.basic_block_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %curredge = alloca %struct.edge_def*, align 8
  %index = alloca i32, align 4
  %resultreg = alloca i32, align 4
  %old_value = alloca i32, align 4
  %old_lattice_value = alloca i32, align 4
  %new_value = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %curredge160 = alloca %struct.edge_def*, align 8
  %index165 = alloca i32, align 4
  %curredge194 = alloca %struct.edge_def*, align 8
  %comparison_code = alloca i32, align 4
  %comparison_src0 = alloca %struct.rtx_def*, align 8
  %comparison_src1 = alloca %struct.rtx_def*, align 8
  %index273 = alloca i32, align 4
  %index367 = alloca i32, align 4
  %simplified = alloca %struct.rtx_def*, align 8
  %src0 = alloca %struct.rtx_def*, align 8
  %src1 = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %src0537 = alloca %struct.rtx_def*, align 8
  %mode0 = alloca i32, align 4
  %src0587 = alloca %struct.rtx_def*, align 8
  %src1591 = alloca %struct.rtx_def*, align 8
  %src0673 = alloca %struct.rtx_def*, align 8
  %src1677 = alloca %struct.rtx_def*, align 8
  %src2681 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %3, %4
  br i1 %cmp1, label %if.then, label %if.end.14

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %6, %struct.edge_def** %curredge, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %tobool = icmp ne %struct.edge_def* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %9 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 2
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %dest3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 3
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest3, align 8
  %call = call i32 @find_edge_index(%struct.edge_list* %8, %struct.basic_block_def* %10, %struct.basic_block_def* %12)
  store i32 %call, i32* %index, align 4
  %13 = load i32, i32* %index, align 4
  %div = udiv i32 %13, 64
  %idxprom = zext i32 %div to i64
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %15 = load i64, i64* %arrayidx, align 8
  %16 = load i32, i32* %index, align 4
  %rem = urem i32 %16, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %15, %sh_prom
  %and = and i64 %shr, 1
  %tobool4 = icmp ne i64 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %index, align 4
  %rem6 = urem i32 %17, 64
  %sh_prom7 = zext i32 %rem6 to i64
  %shl = shl i64 1, %sh_prom7
  %18 = load i32, i32* %index, align 4
  %div8 = udiv i32 %18, 64
  %idxprom9 = zext i32 %div8 to i64
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms10 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %19, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [1 x i64], [1 x i64]* %elms10, i32 0, i64 %idxprom9
  %20 = load i64, i64* %arrayidx11, align 8
  %or = or i64 %20, %shl
  store i64 %or, i64* %arrayidx11, align 8
  %21 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %22 = load i32, i32* %index, align 4
  %idxprom12 = sext i32 %22 to i64
  %23 = load %struct.edge_def**, %struct.edge_def*** @edge_info, align 8
  %arrayidx13 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %23, i64 %idxprom12
  store %struct.edge_def* %21, %struct.edge_def** %arrayidx13, align 8
  %24 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  store %struct.edge_def* %24, %struct.edge_def** @flow_edges, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then.5
  %25 = load %struct.edge_def*, %struct.edge_def** %curredge, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 1
  %26 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %26, %struct.edge_def** %curredge, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %land.lhs.true, %entry
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load15 = load i32, i32* %28, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %idxprom17 = sext i32 %bf.clear16 to i64
  %arrayidx18 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom17
  %29 = load i8, i8* %arrayidx18, align 1
  %conv = sext i8 %29 to i32
  %cmp19 = icmp eq i32 %conv, 105
  br i1 %cmp19, label %cond.true, label %cond.false.34

cond.true:                                        ; preds = %if.end.14
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load22 = load i32, i32* %32, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 47
  br i1 %cmp24, label %cond.true.26, label %cond.false

cond.true.26:                                     ; preds = %cond.true
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 3
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %call33 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %35, %struct.rtx_def* %37)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.26
  %cond = phi %struct.rtx_def* [ %34, %cond.true.26 ], [ %call33, %cond.false ]
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.end.14
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.end
  %cond36 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.34 ]
  store %struct.rtx_def* %cond36, %struct.rtx_def** %set, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool37 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %cond.end.35
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_varying(%struct.rtx_def* %39)
  br label %if.end.857

if.end.39:                                        ; preds = %cond.end.35
  %40 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %src, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %dest, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load46 = load i32, i32* %45, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp ne i32 %bf.clear47, 61
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.54

land.lhs.true.50:                                 ; preds = %if.end.39
  %46 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp51 = icmp ne %struct.rtx_def* %46, %47
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %land.lhs.true.50
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_varying(%struct.rtx_def* %48)
  br label %if.end.857

if.end.54:                                        ; preds = %land.lhs.true.50, %if.end.39
  %49 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load55 = load i32, i32* %50, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 61
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.65

land.lhs.true.59:                                 ; preds = %if.end.54
  %51 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %52 = load i32, i32* %rtuint, align 4
  %cmp62 = icmp ult i32 %52, 53
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.59
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_varying(%struct.rtx_def* %53)
  br label %if.end.857

if.end.65:                                        ; preds = %land.lhs.true.59, %if.end.54
  %54 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load66 = load i32, i32* %55, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 54
  br i1 %cmp68, label %land.lhs.true.70, label %if.else

land.lhs.true.70:                                 ; preds = %if.end.65
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load71 = load i32, i32* %57, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 32
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %land.lhs.true.70
  %58 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtuint78 = bitcast %union.rtunion_def* %arrayidx77 to i32*
  %59 = load i32, i32* %rtuint78, align 4
  store i32 %59, i32* %resultreg, align 4
  %60 = load i32, i32* %resultreg, align 4
  %idxprom79 = zext i32 %60 to i64
  %61 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx80 = getelementptr inbounds %struct.value, %struct.value* %61, i64 %idxprom79
  %lattice_val = getelementptr inbounds %struct.value, %struct.value* %arrayidx80, i32 0, i32 0
  store i32 1, i32* %lattice_val, align 4
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 3
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 1
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %65 = load i32, i32* %resultreg, align 4
  %idxprom87 = zext i32 %65 to i64
  %66 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx88 = getelementptr inbounds %struct.value, %struct.value* %66, i64 %idxprom87
  %const_value = getelementptr inbounds %struct.value, %struct.value* %arrayidx88, i32 0, i32 1
  store %struct.rtx_def* %64, %struct.rtx_def** %const_value, align 8
  %67 = load i32, i32* %resultreg, align 4
  %rem89 = urem i32 %67, 64
  %sh_prom90 = zext i32 %rem89 to i64
  %shl91 = shl i64 1, %sh_prom90
  %68 = load i32, i32* %resultreg, align 4
  %div92 = udiv i32 %68, 64
  %idxprom93 = zext i32 %div92 to i64
  %69 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %elms94 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %69, i32 0, i32 3
  %arrayidx95 = getelementptr inbounds [1 x i64], [1 x i64]* %elms94, i32 0, i64 %idxprom93
  %70 = load i64, i64* %arrayidx95, align 8
  %or96 = or i64 %70, %shl91
  store i64 %or96, i64* %arrayidx95, align 8
  br label %if.end.857

if.else:                                          ; preds = %land.lhs.true.70, %if.end.65
  %71 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load97 = load i32, i32* %72, align 8
  %bf.clear98 = and i32 %bf.load97, 65535
  %cmp99 = icmp eq i32 %bf.clear98, 61
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.148

land.lhs.true.101:                                ; preds = %if.else
  %73 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load102 = load i32, i32* %74, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp eq i32 %bf.clear103, 61
  br i1 %cmp104, label %if.then.106, label %if.else.148

if.then.106:                                      ; preds = %land.lhs.true.101
  %75 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtuint109 = bitcast %union.rtunion_def* %arrayidx108 to i32*
  %76 = load i32, i32* %rtuint109, align 4
  store i32 %76, i32* %old_value, align 4
  %77 = load i32, i32* %old_value, align 4
  %idxprom110 = zext i32 %77 to i64
  %78 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx111 = getelementptr inbounds %struct.value, %struct.value* %78, i64 %idxprom110
  %lattice_val112 = getelementptr inbounds %struct.value, %struct.value* %arrayidx111, i32 0, i32 0
  %79 = load i32, i32* %lattice_val112, align 4
  store i32 %79, i32* %old_lattice_value, align 4
  %80 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtuint115 = bitcast %union.rtunion_def* %arrayidx114 to i32*
  %81 = load i32, i32* %rtuint115, align 4
  store i32 %81, i32* %new_value, align 4
  %82 = load i32, i32* %new_value, align 4
  %idxprom116 = zext i32 %82 to i64
  %83 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx117 = getelementptr inbounds %struct.value, %struct.value* %83, i64 %idxprom116
  %lattice_val118 = getelementptr inbounds %struct.value, %struct.value* %arrayidx117, i32 0, i32 0
  %84 = load i32, i32* %lattice_val118, align 4
  %85 = load i32, i32* %old_lattice_value, align 4
  %cmp119 = icmp ne i32 %84, %85
  br i1 %cmp119, label %if.then.129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.106
  %86 = load i32, i32* %new_value, align 4
  %idxprom121 = zext i32 %86 to i64
  %87 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx122 = getelementptr inbounds %struct.value, %struct.value* %87, i64 %idxprom121
  %const_value123 = getelementptr inbounds %struct.value, %struct.value* %arrayidx122, i32 0, i32 1
  %88 = load %struct.rtx_def*, %struct.rtx_def** %const_value123, align 8
  %89 = load i32, i32* %old_value, align 4
  %idxprom124 = zext i32 %89 to i64
  %90 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx125 = getelementptr inbounds %struct.value, %struct.value* %90, i64 %idxprom124
  %const_value126 = getelementptr inbounds %struct.value, %struct.value* %arrayidx125, i32 0, i32 1
  %91 = load %struct.rtx_def*, %struct.rtx_def** %const_value126, align 8
  %cmp127 = icmp ne %struct.rtx_def* %88, %91
  br i1 %cmp127, label %if.then.129, label %if.end.138

if.then.129:                                      ; preds = %lor.lhs.false, %if.then.106
  %92 = load i32, i32* %new_value, align 4
  %rem130 = urem i32 %92, 64
  %sh_prom131 = zext i32 %rem130 to i64
  %shl132 = shl i64 1, %sh_prom131
  %93 = load i32, i32* %new_value, align 4
  %div133 = udiv i32 %93, 64
  %idxprom134 = zext i32 %div133 to i64
  %94 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %elms135 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %94, i32 0, i32 3
  %arrayidx136 = getelementptr inbounds [1 x i64], [1 x i64]* %elms135, i32 0, i64 %idxprom134
  %95 = load i64, i64* %arrayidx136, align 8
  %or137 = or i64 %95, %shl132
  store i64 %or137, i64* %arrayidx136, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.129, %lor.lhs.false
  %96 = load i32, i32* %old_lattice_value, align 4
  %97 = load i32, i32* %new_value, align 4
  %idxprom139 = zext i32 %97 to i64
  %98 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx140 = getelementptr inbounds %struct.value, %struct.value* %98, i64 %idxprom139
  %lattice_val141 = getelementptr inbounds %struct.value, %struct.value* %arrayidx140, i32 0, i32 0
  store i32 %96, i32* %lattice_val141, align 4
  %99 = load i32, i32* %old_value, align 4
  %idxprom142 = zext i32 %99 to i64
  %100 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx143 = getelementptr inbounds %struct.value, %struct.value* %100, i64 %idxprom142
  %const_value144 = getelementptr inbounds %struct.value, %struct.value* %arrayidx143, i32 0, i32 1
  %101 = load %struct.rtx_def*, %struct.rtx_def** %const_value144, align 8
  %102 = load i32, i32* %new_value, align 4
  %idxprom145 = zext i32 %102 to i64
  %103 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx146 = getelementptr inbounds %struct.value, %struct.value* %103, i64 %idxprom145
  %const_value147 = getelementptr inbounds %struct.value, %struct.value* %arrayidx146, i32 0, i32 1
  store %struct.rtx_def* %101, %struct.rtx_def** %const_value147, align 8
  br label %if.end.856

if.else.148:                                      ; preds = %land.lhs.true.101, %if.else
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load149 = load i32, i32* %105, align 8
  %bf.clear150 = and i32 %bf.load149, 65535
  %cmp151 = icmp eq i32 %bf.clear150, 33
  br i1 %cmp151, label %if.then.153, label %if.else.414

if.then.153:                                      ; preds = %if.else.148
  %106 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call154 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %106)
  store %struct.rtx_def* %call154, %struct.rtx_def** %x, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load155 = load i32, i32* %108, align 8
  %bf.clear156 = and i32 %bf.load155, 65535
  %cmp157 = icmp ne i32 %bf.clear156, 72
  br i1 %cmp157, label %if.then.159, label %if.else.193

if.then.159:                                      ; preds = %if.then.153
  %109 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %succ161 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %109, i32 0, i32 5
  %110 = load %struct.edge_def*, %struct.edge_def** %succ161, align 8
  store %struct.edge_def* %110, %struct.edge_def** %curredge160, align 8
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.190, %if.then.159
  %111 = load %struct.edge_def*, %struct.edge_def** %curredge160, align 8
  %tobool163 = icmp ne %struct.edge_def* %111, null
  br i1 %tobool163, label %for.body.164, label %for.end.192

for.body.164:                                     ; preds = %for.cond.162
  %112 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %113 = load %struct.edge_def*, %struct.edge_def** %curredge160, align 8
  %src166 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %113, i32 0, i32 2
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %src166, align 8
  %115 = load %struct.edge_def*, %struct.edge_def** %curredge160, align 8
  %dest167 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %115, i32 0, i32 3
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %dest167, align 8
  %call168 = call i32 @find_edge_index(%struct.edge_list* %112, %struct.basic_block_def* %114, %struct.basic_block_def* %116)
  store i32 %call168, i32* %index165, align 4
  %117 = load i32, i32* %index165, align 4
  %div169 = udiv i32 %117, 64
  %idxprom170 = zext i32 %div169 to i64
  %118 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms171 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %118, i32 0, i32 3
  %arrayidx172 = getelementptr inbounds [1 x i64], [1 x i64]* %elms171, i32 0, i64 %idxprom170
  %119 = load i64, i64* %arrayidx172, align 8
  %120 = load i32, i32* %index165, align 4
  %rem173 = urem i32 %120, 64
  %sh_prom174 = zext i32 %rem173 to i64
  %shr175 = lshr i64 %119, %sh_prom174
  %and176 = and i64 %shr175, 1
  %tobool177 = icmp ne i64 %and176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %for.body.164
  br label %for.inc.190

if.end.179:                                       ; preds = %for.body.164
  %121 = load i32, i32* %index165, align 4
  %rem180 = urem i32 %121, 64
  %sh_prom181 = zext i32 %rem180 to i64
  %shl182 = shl i64 1, %sh_prom181
  %122 = load i32, i32* %index165, align 4
  %div183 = udiv i32 %122, 64
  %idxprom184 = zext i32 %div183 to i64
  %123 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms185 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %123, i32 0, i32 3
  %arrayidx186 = getelementptr inbounds [1 x i64], [1 x i64]* %elms185, i32 0, i64 %idxprom184
  %124 = load i64, i64* %arrayidx186, align 8
  %or187 = or i64 %124, %shl182
  store i64 %or187, i64* %arrayidx186, align 8
  %125 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %126 = load i32, i32* %index165, align 4
  %idxprom188 = sext i32 %126 to i64
  %127 = load %struct.edge_def**, %struct.edge_def*** @edge_info, align 8
  %arrayidx189 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %127, i64 %idxprom188
  store %struct.edge_def* %125, %struct.edge_def** %arrayidx189, align 8
  %128 = load %struct.edge_def*, %struct.edge_def** %curredge160, align 8
  store %struct.edge_def* %128, %struct.edge_def** @flow_edges, align 8
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.179, %if.then.178
  %129 = load %struct.edge_def*, %struct.edge_def** %curredge160, align 8
  %succ_next191 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %129, i32 0, i32 1
  %130 = load %struct.edge_def*, %struct.edge_def** %succ_next191, align 8
  store %struct.edge_def* %130, %struct.edge_def** %curredge160, align 8
  br label %for.cond.162

for.end.192:                                      ; preds = %for.cond.162
  br label %if.end.413

if.else.193:                                      ; preds = %if.then.153
  %131 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 0
  %rtx197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtx197, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load198 = load i32, i32* %133, align 8
  %bf.clear199 = and i32 %bf.load198, 65535
  store i32 %bf.clear199, i32* %comparison_code, align 4
  %134 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld200 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i32 0, i64 0
  %rtx202 = bitcast %union.rtunion_def* %arrayidx201 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %rtx202, align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 0
  %rtx205 = bitcast %union.rtunion_def* %arrayidx204 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx205, align 8
  store %struct.rtx_def* %136, %struct.rtx_def** %comparison_src0, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtx208 = bitcast %union.rtunion_def* %arrayidx207 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx208, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 1
  %rtx211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx211, align 8
  store %struct.rtx_def* %139, %struct.rtx_def** %comparison_src1, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src0, align 8
  %141 = bitcast %struct.rtx_def* %140 to i32*
  %bf.load212 = load i32, i32* %141, align 8
  %bf.clear213 = and i32 %bf.load212, 65535
  %cmp214 = icmp eq i32 %bf.clear213, 61
  br i1 %cmp214, label %land.lhs.true.216, label %lor.lhs.false.225

land.lhs.true.216:                                ; preds = %if.else.193
  %142 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src0, align 8
  %fld217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld217, i32 0, i64 0
  %rtuint219 = bitcast %union.rtunion_def* %arrayidx218 to i32*
  %143 = load i32, i32* %rtuint219, align 4
  %idxprom220 = zext i32 %143 to i64
  %144 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx221 = getelementptr inbounds %struct.value, %struct.value* %144, i64 %idxprom220
  %lattice_val222 = getelementptr inbounds %struct.value, %struct.value* %arrayidx221, i32 0, i32 0
  %145 = load i32, i32* %lattice_val222, align 4
  %cmp223 = icmp eq i32 %145, 0
  br i1 %cmp223, label %if.then.239, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %land.lhs.true.216, %if.else.193
  %146 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src1, align 8
  %147 = bitcast %struct.rtx_def* %146 to i32*
  %bf.load226 = load i32, i32* %147, align 8
  %bf.clear227 = and i32 %bf.load226, 65535
  %cmp228 = icmp eq i32 %bf.clear227, 61
  br i1 %cmp228, label %land.lhs.true.230, label %if.end.240

land.lhs.true.230:                                ; preds = %lor.lhs.false.225
  %148 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src1, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtuint233 = bitcast %union.rtunion_def* %arrayidx232 to i32*
  %149 = load i32, i32* %rtuint233, align 4
  %idxprom234 = zext i32 %149 to i64
  %150 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx235 = getelementptr inbounds %struct.value, %struct.value* %150, i64 %idxprom234
  %lattice_val236 = getelementptr inbounds %struct.value, %struct.value* %arrayidx235, i32 0, i32 0
  %151 = load i32, i32* %lattice_val236, align 4
  %cmp237 = icmp eq i32 %151, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %land.lhs.true.230, %land.lhs.true.216
  br label %if.end.857

if.end.240:                                       ; preds = %land.lhs.true.230, %lor.lhs.false.225
  %152 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src0, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load241 = load i32, i32* %153, align 8
  %bf.clear242 = and i32 %bf.load241, 65535
  %cmp243 = icmp eq i32 %bf.clear242, 61
  br i1 %cmp243, label %land.lhs.true.245, label %lor.lhs.false.254

land.lhs.true.245:                                ; preds = %if.end.240
  %154 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src0, align 8
  %fld246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld246, i32 0, i64 0
  %rtuint248 = bitcast %union.rtunion_def* %arrayidx247 to i32*
  %155 = load i32, i32* %rtuint248, align 4
  %idxprom249 = zext i32 %155 to i64
  %156 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx250 = getelementptr inbounds %struct.value, %struct.value* %156, i64 %idxprom249
  %lattice_val251 = getelementptr inbounds %struct.value, %struct.value* %arrayidx250, i32 0, i32 0
  %157 = load i32, i32* %lattice_val251, align 4
  %cmp252 = icmp eq i32 %157, 2
  br i1 %cmp252, label %if.then.268, label %lor.lhs.false.254

lor.lhs.false.254:                                ; preds = %land.lhs.true.245, %if.end.240
  %158 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src1, align 8
  %159 = bitcast %struct.rtx_def* %158 to i32*
  %bf.load255 = load i32, i32* %159, align 8
  %bf.clear256 = and i32 %bf.load255, 65535
  %cmp257 = icmp eq i32 %bf.clear256, 61
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.301

land.lhs.true.259:                                ; preds = %lor.lhs.false.254
  %160 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src1, align 8
  %fld260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i32 0, i64 0
  %rtuint262 = bitcast %union.rtunion_def* %arrayidx261 to i32*
  %161 = load i32, i32* %rtuint262, align 4
  %idxprom263 = zext i32 %161 to i64
  %162 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx264 = getelementptr inbounds %struct.value, %struct.value* %162, i64 %idxprom263
  %lattice_val265 = getelementptr inbounds %struct.value, %struct.value* %arrayidx264, i32 0, i32 0
  %163 = load i32, i32* %lattice_val265, align 4
  %cmp266 = icmp eq i32 %163, 2
  br i1 %cmp266, label %if.then.268, label %if.end.301

if.then.268:                                      ; preds = %land.lhs.true.259, %land.lhs.true.245
  %164 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %succ269 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %164, i32 0, i32 5
  %165 = load %struct.edge_def*, %struct.edge_def** %succ269, align 8
  store %struct.edge_def* %165, %struct.edge_def** %curredge194, align 8
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.298, %if.then.268
  %166 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %tobool271 = icmp ne %struct.edge_def* %166, null
  br i1 %tobool271, label %for.body.272, label %for.end.300

for.body.272:                                     ; preds = %for.cond.270
  %167 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %168 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %src274 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %168, i32 0, i32 2
  %169 = load %struct.basic_block_def*, %struct.basic_block_def** %src274, align 8
  %170 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %dest275 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %170, i32 0, i32 3
  %171 = load %struct.basic_block_def*, %struct.basic_block_def** %dest275, align 8
  %call276 = call i32 @find_edge_index(%struct.edge_list* %167, %struct.basic_block_def* %169, %struct.basic_block_def* %171)
  store i32 %call276, i32* %index273, align 4
  %172 = load i32, i32* %index273, align 4
  %div277 = udiv i32 %172, 64
  %idxprom278 = zext i32 %div277 to i64
  %173 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms279 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %173, i32 0, i32 3
  %arrayidx280 = getelementptr inbounds [1 x i64], [1 x i64]* %elms279, i32 0, i64 %idxprom278
  %174 = load i64, i64* %arrayidx280, align 8
  %175 = load i32, i32* %index273, align 4
  %rem281 = urem i32 %175, 64
  %sh_prom282 = zext i32 %rem281 to i64
  %shr283 = lshr i64 %174, %sh_prom282
  %and284 = and i64 %shr283, 1
  %tobool285 = icmp ne i64 %and284, 0
  br i1 %tobool285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %for.body.272
  br label %for.inc.298

if.end.287:                                       ; preds = %for.body.272
  %176 = load i32, i32* %index273, align 4
  %rem288 = urem i32 %176, 64
  %sh_prom289 = zext i32 %rem288 to i64
  %shl290 = shl i64 1, %sh_prom289
  %177 = load i32, i32* %index273, align 4
  %div291 = udiv i32 %177, 64
  %idxprom292 = zext i32 %div291 to i64
  %178 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms293 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %178, i32 0, i32 3
  %arrayidx294 = getelementptr inbounds [1 x i64], [1 x i64]* %elms293, i32 0, i64 %idxprom292
  %179 = load i64, i64* %arrayidx294, align 8
  %or295 = or i64 %179, %shl290
  store i64 %or295, i64* %arrayidx294, align 8
  %180 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %181 = load i32, i32* %index273, align 4
  %idxprom296 = sext i32 %181 to i64
  %182 = load %struct.edge_def**, %struct.edge_def*** @edge_info, align 8
  %arrayidx297 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %182, i64 %idxprom296
  store %struct.edge_def* %180, %struct.edge_def** %arrayidx297, align 8
  %183 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  store %struct.edge_def* %183, %struct.edge_def** @flow_edges, align 8
  br label %for.inc.298

for.inc.298:                                      ; preds = %if.end.287, %if.then.286
  %184 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %succ_next299 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %184, i32 0, i32 1
  %185 = load %struct.edge_def*, %struct.edge_def** %succ_next299, align 8
  store %struct.edge_def* %185, %struct.edge_def** %curredge194, align 8
  br label %for.cond.270

for.end.300:                                      ; preds = %for.cond.270
  br label %if.end.857

if.end.301:                                       ; preds = %land.lhs.true.259, %lor.lhs.false.254
  %186 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src0, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %bf.load302 = load i32, i32* %187, align 8
  %bf.clear303 = and i32 %bf.load302, 65535
  %cmp304 = icmp eq i32 %bf.clear303, 61
  br i1 %cmp304, label %land.lhs.true.306, label %if.end.322

land.lhs.true.306:                                ; preds = %if.end.301
  %188 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src0, align 8
  %fld307 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx308 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld307, i32 0, i64 0
  %rtuint309 = bitcast %union.rtunion_def* %arrayidx308 to i32*
  %189 = load i32, i32* %rtuint309, align 4
  %idxprom310 = zext i32 %189 to i64
  %190 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx311 = getelementptr inbounds %struct.value, %struct.value* %190, i64 %idxprom310
  %lattice_val312 = getelementptr inbounds %struct.value, %struct.value* %arrayidx311, i32 0, i32 0
  %191 = load i32, i32* %lattice_val312, align 4
  %cmp313 = icmp eq i32 %191, 1
  br i1 %cmp313, label %if.then.315, label %if.end.322

if.then.315:                                      ; preds = %land.lhs.true.306
  %192 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src0, align 8
  %fld316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld316, i32 0, i64 0
  %rtuint318 = bitcast %union.rtunion_def* %arrayidx317 to i32*
  %193 = load i32, i32* %rtuint318, align 4
  %idxprom319 = zext i32 %193 to i64
  %194 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx320 = getelementptr inbounds %struct.value, %struct.value* %194, i64 %idxprom319
  %const_value321 = getelementptr inbounds %struct.value, %struct.value* %arrayidx320, i32 0, i32 1
  %195 = load %struct.rtx_def*, %struct.rtx_def** %const_value321, align 8
  store %struct.rtx_def* %195, %struct.rtx_def** %comparison_src0, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.315, %land.lhs.true.306, %if.end.301
  %196 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src1, align 8
  %197 = bitcast %struct.rtx_def* %196 to i32*
  %bf.load323 = load i32, i32* %197, align 8
  %bf.clear324 = and i32 %bf.load323, 65535
  %cmp325 = icmp eq i32 %bf.clear324, 61
  br i1 %cmp325, label %land.lhs.true.327, label %if.end.343

land.lhs.true.327:                                ; preds = %if.end.322
  %198 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src1, align 8
  %fld328 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %198, i32 0, i32 1
  %arrayidx329 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld328, i32 0, i64 0
  %rtuint330 = bitcast %union.rtunion_def* %arrayidx329 to i32*
  %199 = load i32, i32* %rtuint330, align 4
  %idxprom331 = zext i32 %199 to i64
  %200 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx332 = getelementptr inbounds %struct.value, %struct.value* %200, i64 %idxprom331
  %lattice_val333 = getelementptr inbounds %struct.value, %struct.value* %arrayidx332, i32 0, i32 0
  %201 = load i32, i32* %lattice_val333, align 4
  %cmp334 = icmp eq i32 %201, 1
  br i1 %cmp334, label %if.then.336, label %if.end.343

if.then.336:                                      ; preds = %land.lhs.true.327
  %202 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src1, align 8
  %fld337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld337, i32 0, i64 0
  %rtuint339 = bitcast %union.rtunion_def* %arrayidx338 to i32*
  %203 = load i32, i32* %rtuint339, align 4
  %idxprom340 = zext i32 %203 to i64
  %204 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx341 = getelementptr inbounds %struct.value, %struct.value* %204, i64 %idxprom340
  %const_value342 = getelementptr inbounds %struct.value, %struct.value* %arrayidx341, i32 0, i32 1
  %205 = load %struct.rtx_def*, %struct.rtx_def** %const_value342, align 8
  store %struct.rtx_def* %205, %struct.rtx_def** %comparison_src1, align 8
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.336, %land.lhs.true.327, %if.end.322
  %206 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld344, i32 0, i64 0
  %rtx346 = bitcast %union.rtunion_def* %arrayidx345 to %struct.rtx_def**
  %207 = load %struct.rtx_def*, %struct.rtx_def** %rtx346, align 8
  %208 = bitcast %struct.rtx_def* %207 to i32*
  %bf.load347 = load i32, i32* %208, align 8
  %bf.lshr = lshr i32 %bf.load347, 16
  %bf.clear348 = and i32 %bf.lshr, 255
  %209 = load i32, i32* %comparison_code, align 4
  %210 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld349, i32 0, i64 0
  %rtx351 = bitcast %union.rtunion_def* %arrayidx350 to %struct.rtx_def**
  %211 = load %struct.rtx_def*, %struct.rtx_def** %rtx351, align 8
  %212 = bitcast %struct.rtx_def* %211 to i32*
  %bf.load352 = load i32, i32* %212, align 8
  %bf.lshr353 = lshr i32 %bf.load352, 16
  %bf.clear354 = and i32 %bf.lshr353, 255
  %213 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src0, align 8
  %214 = load %struct.rtx_def*, %struct.rtx_def** %comparison_src1, align 8
  %call355 = call %struct.rtx_def* (i32, i32, ...) @gen_rtx(i32 %209, i32 %bf.clear354, %struct.rtx_def* %213, %struct.rtx_def* %214)
  %215 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld356 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %215, i32 0, i32 1
  %arrayidx357 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld356, i32 0, i64 1
  %rtx358 = bitcast %union.rtunion_def* %arrayidx357 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %rtx358, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld359 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx360 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld359, i32 0, i64 2
  %rtx361 = bitcast %union.rtunion_def* %arrayidx360 to %struct.rtx_def**
  %218 = load %struct.rtx_def*, %struct.rtx_def** %rtx361, align 8
  %call362 = call %struct.rtx_def* @simplify_ternary_operation(i32 72, i32 0, i32 %bf.clear348, %struct.rtx_def* %call355, %struct.rtx_def* %216, %struct.rtx_def* %218)
  store %struct.rtx_def* %call362, %struct.rtx_def** %x, align 8
  %219 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %succ363 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %219, i32 0, i32 5
  %220 = load %struct.edge_def*, %struct.edge_def** %succ363, align 8
  store %struct.edge_def* %220, %struct.edge_def** %curredge194, align 8
  br label %for.cond.364

for.cond.364:                                     ; preds = %for.inc.410, %if.end.343
  %221 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %tobool365 = icmp ne %struct.edge_def* %221, null
  br i1 %tobool365, label %for.body.366, label %for.end.412

for.body.366:                                     ; preds = %for.cond.364
  %222 = load %struct.edge_list*, %struct.edge_list** @edges, align 8
  %223 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %src368 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %223, i32 0, i32 2
  %224 = load %struct.basic_block_def*, %struct.basic_block_def** %src368, align 8
  %225 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %dest369 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %225, i32 0, i32 3
  %226 = load %struct.basic_block_def*, %struct.basic_block_def** %dest369, align 8
  %call370 = call i32 @find_edge_index(%struct.edge_list* %222, %struct.basic_block_def* %224, %struct.basic_block_def* %226)
  store i32 %call370, i32* %index367, align 4
  %227 = load i32, i32* %index367, align 4
  %div371 = udiv i32 %227, 64
  %idxprom372 = zext i32 %div371 to i64
  %228 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms373 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %228, i32 0, i32 3
  %arrayidx374 = getelementptr inbounds [1 x i64], [1 x i64]* %elms373, i32 0, i64 %idxprom372
  %229 = load i64, i64* %arrayidx374, align 8
  %230 = load i32, i32* %index367, align 4
  %rem375 = urem i32 %230, 64
  %sh_prom376 = zext i32 %rem375 to i64
  %shr377 = lshr i64 %229, %sh_prom376
  %and378 = and i64 %shr377, 1
  %tobool379 = icmp ne i64 %and378, 0
  br i1 %tobool379, label %if.then.380, label %if.end.381

if.then.380:                                      ; preds = %for.body.366
  br label %for.inc.410

if.end.381:                                       ; preds = %for.body.366
  %231 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool382 = icmp ne %struct.rtx_def* %231, null
  br i1 %tobool382, label %lor.lhs.false.383, label %if.then.398

lor.lhs.false.383:                                ; preds = %if.end.381
  %232 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp384 = icmp eq %struct.rtx_def* %232, %233
  br i1 %cmp384, label %land.lhs.true.386, label %lor.lhs.false.389

land.lhs.true.386:                                ; preds = %lor.lhs.false.383
  %234 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %234, i32 0, i32 6
  %235 = load i32, i32* %flags, align 4
  %and387 = and i32 %235, 1
  %tobool388 = icmp ne i32 %and387, 0
  br i1 %tobool388, label %if.then.398, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %land.lhs.true.386, %lor.lhs.false.383
  %236 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %237 = bitcast %struct.rtx_def* %236 to i32*
  %bf.load390 = load i32, i32* %237, align 8
  %bf.clear391 = and i32 %bf.load390, 65535
  %cmp392 = icmp eq i32 %bf.clear391, 67
  br i1 %cmp392, label %land.lhs.true.394, label %if.end.409

land.lhs.true.394:                                ; preds = %lor.lhs.false.389
  %238 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %flags395 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %238, i32 0, i32 6
  %239 = load i32, i32* %flags395, align 4
  %and396 = and i32 %239, 1
  %tobool397 = icmp ne i32 %and396, 0
  br i1 %tobool397, label %if.end.409, label %if.then.398

if.then.398:                                      ; preds = %land.lhs.true.394, %land.lhs.true.386, %if.end.381
  %240 = load i32, i32* %index367, align 4
  %rem399 = urem i32 %240, 64
  %sh_prom400 = zext i32 %rem399 to i64
  %shl401 = shl i64 1, %sh_prom400
  %241 = load i32, i32* %index367, align 4
  %div402 = udiv i32 %241, 64
  %idxprom403 = zext i32 %div402 to i64
  %242 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_edges, align 8
  %elms404 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %242, i32 0, i32 3
  %arrayidx405 = getelementptr inbounds [1 x i64], [1 x i64]* %elms404, i32 0, i64 %idxprom403
  %243 = load i64, i64* %arrayidx405, align 8
  %or406 = or i64 %243, %shl401
  store i64 %or406, i64* %arrayidx405, align 8
  %244 = load %struct.edge_def*, %struct.edge_def** @flow_edges, align 8
  %245 = load i32, i32* %index367, align 4
  %idxprom407 = sext i32 %245 to i64
  %246 = load %struct.edge_def**, %struct.edge_def*** @edge_info, align 8
  %arrayidx408 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %246, i64 %idxprom407
  store %struct.edge_def* %244, %struct.edge_def** %arrayidx408, align 8
  %247 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  store %struct.edge_def* %247, %struct.edge_def** @flow_edges, align 8
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.398, %land.lhs.true.394, %lor.lhs.false.389
  br label %for.inc.410

for.inc.410:                                      ; preds = %if.end.409, %if.then.380
  %248 = load %struct.edge_def*, %struct.edge_def** %curredge194, align 8
  %succ_next411 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %248, i32 0, i32 1
  %249 = load %struct.edge_def*, %struct.edge_def** %succ_next411, align 8
  store %struct.edge_def* %249, %struct.edge_def** %curredge194, align 8
  br label %for.cond.364

for.end.412:                                      ; preds = %for.cond.364
  br label %if.end.413

if.end.413:                                       ; preds = %for.end.412, %for.end.192
  br label %if.end.855

if.else.414:                                      ; preds = %if.else.148
  %250 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool415 = icmp ne %struct.rtx_def* %250, null
  br i1 %tobool415, label %land.lhs.true.416, label %if.then.440

land.lhs.true.416:                                ; preds = %if.else.414
  %251 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %252 = bitcast %struct.rtx_def* %251 to i32*
  %bf.load417 = load i32, i32* %252, align 8
  %bf.clear418 = and i32 %bf.load417, 65535
  %cmp419 = icmp eq i32 %bf.clear418, 32
  br i1 %cmp419, label %land.lhs.true.421, label %if.then.440

land.lhs.true.421:                                ; preds = %land.lhs.true.416
  %253 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld422 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %arrayidx423 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld422, i32 0, i64 3
  %rtx424 = bitcast %union.rtunion_def* %arrayidx423 to %struct.rtx_def**
  %254 = load %struct.rtx_def*, %struct.rtx_def** %rtx424, align 8
  %255 = bitcast %struct.rtx_def* %254 to i32*
  %bf.load425 = load i32, i32* %255, align 8
  %bf.clear426 = and i32 %bf.load425, 65535
  %cmp427 = icmp eq i32 %bf.clear426, 47
  br i1 %cmp427, label %land.lhs.true.429, label %if.then.440

land.lhs.true.429:                                ; preds = %land.lhs.true.421
  %256 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld430 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %256, i32 0, i32 1
  %arrayidx431 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld430, i32 0, i64 3
  %rtx432 = bitcast %union.rtunion_def* %arrayidx431 to %struct.rtx_def**
  %257 = load %struct.rtx_def*, %struct.rtx_def** %rtx432, align 8
  %fld433 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx434 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld433, i32 0, i64 1
  %rtx435 = bitcast %union.rtunion_def* %arrayidx434 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %rtx435, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %bf.load436 = load i32, i32* %259, align 8
  %bf.clear437 = and i32 %bf.load436, 65535
  %cmp438 = icmp eq i32 %bf.clear437, 152
  br i1 %cmp438, label %if.end.854, label %if.then.440

if.then.440:                                      ; preds = %land.lhs.true.429, %land.lhs.true.421, %land.lhs.true.416, %if.else.414
  store %struct.rtx_def* null, %struct.rtx_def** %simplified, align 8
  %260 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %261 = bitcast %struct.rtx_def* %260 to i32*
  %bf.load441 = load i32, i32* %261, align 8
  %bf.clear442 = and i32 %bf.load441, 65535
  %idxprom443 = sext i32 %bf.clear442 to i64
  %arrayidx444 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom443
  %262 = load i8, i8* %arrayidx444, align 1
  %conv445 = sext i8 %262 to i32
  switch i32 %conv445, label %sw.default [
    i32 60, label %sw.bb
    i32 49, label %sw.bb.536
    i32 50, label %sw.bb.586
    i32 99, label %sw.bb.586
    i32 51, label %sw.bb.672
    i32 98, label %sw.bb.672
  ]

sw.bb:                                            ; preds = %if.then.440
  %263 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %263, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld446, i32 0, i64 0
  %rtx448 = bitcast %union.rtunion_def* %arrayidx447 to %struct.rtx_def**
  %264 = load %struct.rtx_def*, %struct.rtx_def** %rtx448, align 8
  store %struct.rtx_def* %264, %struct.rtx_def** %src0, align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 1
  %rtx451 = bitcast %union.rtunion_def* %arrayidx450 to %struct.rtx_def**
  %266 = load %struct.rtx_def*, %struct.rtx_def** %rtx451, align 8
  store %struct.rtx_def* %266, %struct.rtx_def** %src1, align 8
  %267 = load %struct.rtx_def*, %struct.rtx_def** %src0, align 8
  %268 = bitcast %struct.rtx_def* %267 to i32*
  %bf.load452 = load i32, i32* %268, align 8
  %bf.clear453 = and i32 %bf.load452, 65535
  %cmp454 = icmp eq i32 %bf.clear453, 61
  br i1 %cmp454, label %land.lhs.true.456, label %lor.lhs.false.465

land.lhs.true.456:                                ; preds = %sw.bb
  %269 = load %struct.rtx_def*, %struct.rtx_def** %src0, align 8
  %fld457 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %269, i32 0, i32 1
  %arrayidx458 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld457, i32 0, i64 0
  %rtuint459 = bitcast %union.rtunion_def* %arrayidx458 to i32*
  %270 = load i32, i32* %rtuint459, align 4
  %idxprom460 = zext i32 %270 to i64
  %271 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx461 = getelementptr inbounds %struct.value, %struct.value* %271, i64 %idxprom460
  %lattice_val462 = getelementptr inbounds %struct.value, %struct.value* %arrayidx461, i32 0, i32 0
  %272 = load i32, i32* %lattice_val462, align 4
  %cmp463 = icmp eq i32 %272, 0
  br i1 %cmp463, label %if.then.479, label %lor.lhs.false.465

lor.lhs.false.465:                                ; preds = %land.lhs.true.456, %sw.bb
  %273 = load %struct.rtx_def*, %struct.rtx_def** %src1, align 8
  %274 = bitcast %struct.rtx_def* %273 to i32*
  %bf.load466 = load i32, i32* %274, align 8
  %bf.clear467 = and i32 %bf.load466, 65535
  %cmp468 = icmp eq i32 %bf.clear467, 61
  br i1 %cmp468, label %land.lhs.true.470, label %if.end.480

land.lhs.true.470:                                ; preds = %lor.lhs.false.465
  %275 = load %struct.rtx_def*, %struct.rtx_def** %src1, align 8
  %fld471 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld471, i32 0, i64 0
  %rtuint473 = bitcast %union.rtunion_def* %arrayidx472 to i32*
  %276 = load i32, i32* %rtuint473, align 4
  %idxprom474 = zext i32 %276 to i64
  %277 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx475 = getelementptr inbounds %struct.value, %struct.value* %277, i64 %idxprom474
  %lattice_val476 = getelementptr inbounds %struct.value, %struct.value* %arrayidx475, i32 0, i32 0
  %278 = load i32, i32* %lattice_val476, align 4
  %cmp477 = icmp eq i32 %278, 0
  br i1 %cmp477, label %if.then.479, label %if.end.480

if.then.479:                                      ; preds = %land.lhs.true.470, %land.lhs.true.456
  %279 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_undefined(%struct.rtx_def* %279)
  br label %sw.epilog

if.end.480:                                       ; preds = %land.lhs.true.470, %lor.lhs.false.465
  %280 = load %struct.rtx_def*, %struct.rtx_def** %src0, align 8
  %281 = bitcast %struct.rtx_def* %280 to i32*
  %bf.load481 = load i32, i32* %281, align 8
  %bf.lshr482 = lshr i32 %bf.load481, 16
  %bf.clear483 = and i32 %bf.lshr482, 255
  store i32 %bf.clear483, i32* %mode, align 4
  %282 = load i32, i32* %mode, align 4
  %cmp484 = icmp eq i32 %282, 0
  br i1 %cmp484, label %if.then.486, label %if.end.490

if.then.486:                                      ; preds = %if.end.480
  %283 = load %struct.rtx_def*, %struct.rtx_def** %src1, align 8
  %284 = bitcast %struct.rtx_def* %283 to i32*
  %bf.load487 = load i32, i32* %284, align 8
  %bf.lshr488 = lshr i32 %bf.load487, 16
  %bf.clear489 = and i32 %bf.lshr488, 255
  store i32 %bf.clear489, i32* %mode, align 4
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.486, %if.end.480
  %285 = load %struct.rtx_def*, %struct.rtx_def** %src0, align 8
  %286 = bitcast %struct.rtx_def* %285 to i32*
  %bf.load491 = load i32, i32* %286, align 8
  %bf.clear492 = and i32 %bf.load491, 65535
  %cmp493 = icmp eq i32 %bf.clear492, 61
  br i1 %cmp493, label %land.lhs.true.495, label %if.end.511

land.lhs.true.495:                                ; preds = %if.end.490
  %287 = load %struct.rtx_def*, %struct.rtx_def** %src0, align 8
  %fld496 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %287, i32 0, i32 1
  %arrayidx497 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld496, i32 0, i64 0
  %rtuint498 = bitcast %union.rtunion_def* %arrayidx497 to i32*
  %288 = load i32, i32* %rtuint498, align 4
  %idxprom499 = zext i32 %288 to i64
  %289 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx500 = getelementptr inbounds %struct.value, %struct.value* %289, i64 %idxprom499
  %lattice_val501 = getelementptr inbounds %struct.value, %struct.value* %arrayidx500, i32 0, i32 0
  %290 = load i32, i32* %lattice_val501, align 4
  %cmp502 = icmp eq i32 %290, 1
  br i1 %cmp502, label %if.then.504, label %if.end.511

if.then.504:                                      ; preds = %land.lhs.true.495
  %291 = load %struct.rtx_def*, %struct.rtx_def** %src0, align 8
  %fld505 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx506 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld505, i32 0, i64 0
  %rtuint507 = bitcast %union.rtunion_def* %arrayidx506 to i32*
  %292 = load i32, i32* %rtuint507, align 4
  %idxprom508 = zext i32 %292 to i64
  %293 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx509 = getelementptr inbounds %struct.value, %struct.value* %293, i64 %idxprom508
  %const_value510 = getelementptr inbounds %struct.value, %struct.value* %arrayidx509, i32 0, i32 1
  %294 = load %struct.rtx_def*, %struct.rtx_def** %const_value510, align 8
  store %struct.rtx_def* %294, %struct.rtx_def** %src0, align 8
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.504, %land.lhs.true.495, %if.end.490
  %295 = load %struct.rtx_def*, %struct.rtx_def** %src1, align 8
  %296 = bitcast %struct.rtx_def* %295 to i32*
  %bf.load512 = load i32, i32* %296, align 8
  %bf.clear513 = and i32 %bf.load512, 65535
  %cmp514 = icmp eq i32 %bf.clear513, 61
  br i1 %cmp514, label %land.lhs.true.516, label %if.end.532

land.lhs.true.516:                                ; preds = %if.end.511
  %297 = load %struct.rtx_def*, %struct.rtx_def** %src1, align 8
  %fld517 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %297, i32 0, i32 1
  %arrayidx518 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld517, i32 0, i64 0
  %rtuint519 = bitcast %union.rtunion_def* %arrayidx518 to i32*
  %298 = load i32, i32* %rtuint519, align 4
  %idxprom520 = zext i32 %298 to i64
  %299 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx521 = getelementptr inbounds %struct.value, %struct.value* %299, i64 %idxprom520
  %lattice_val522 = getelementptr inbounds %struct.value, %struct.value* %arrayidx521, i32 0, i32 0
  %300 = load i32, i32* %lattice_val522, align 4
  %cmp523 = icmp eq i32 %300, 1
  br i1 %cmp523, label %if.then.525, label %if.end.532

if.then.525:                                      ; preds = %land.lhs.true.516
  %301 = load %struct.rtx_def*, %struct.rtx_def** %src1, align 8
  %fld526 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx527 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld526, i32 0, i64 0
  %rtuint528 = bitcast %union.rtunion_def* %arrayidx527 to i32*
  %302 = load i32, i32* %rtuint528, align 4
  %idxprom529 = zext i32 %302 to i64
  %303 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx530 = getelementptr inbounds %struct.value, %struct.value* %303, i64 %idxprom529
  %const_value531 = getelementptr inbounds %struct.value, %struct.value* %arrayidx530, i32 0, i32 1
  %304 = load %struct.rtx_def*, %struct.rtx_def** %const_value531, align 8
  store %struct.rtx_def* %304, %struct.rtx_def** %src1, align 8
  br label %if.end.532

if.end.532:                                       ; preds = %if.then.525, %land.lhs.true.516, %if.end.511
  %305 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %306 = bitcast %struct.rtx_def* %305 to i32*
  %bf.load533 = load i32, i32* %306, align 8
  %bf.clear534 = and i32 %bf.load533, 65535
  %307 = load i32, i32* %mode, align 4
  %308 = load %struct.rtx_def*, %struct.rtx_def** %src0, align 8
  %309 = load %struct.rtx_def*, %struct.rtx_def** %src1, align 8
  %call535 = call %struct.rtx_def* @simplify_relational_operation(i32 %bf.clear534, i32 %307, %struct.rtx_def* %308, %struct.rtx_def* %309)
  store %struct.rtx_def* %call535, %struct.rtx_def** %simplified, align 8
  br label %sw.epilog

sw.bb.536:                                        ; preds = %if.then.440
  %310 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld538 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %310, i32 0, i32 1
  %arrayidx539 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld538, i32 0, i64 0
  %rtx540 = bitcast %union.rtunion_def* %arrayidx539 to %struct.rtx_def**
  %311 = load %struct.rtx_def*, %struct.rtx_def** %rtx540, align 8
  store %struct.rtx_def* %311, %struct.rtx_def** %src0537, align 8
  %312 = load %struct.rtx_def*, %struct.rtx_def** %src0537, align 8
  %313 = bitcast %struct.rtx_def* %312 to i32*
  %bf.load541 = load i32, i32* %313, align 8
  %bf.lshr542 = lshr i32 %bf.load541, 16
  %bf.clear543 = and i32 %bf.lshr542, 255
  store i32 %bf.clear543, i32* %mode0, align 4
  %314 = load %struct.rtx_def*, %struct.rtx_def** %src0537, align 8
  %315 = bitcast %struct.rtx_def* %314 to i32*
  %bf.load544 = load i32, i32* %315, align 8
  %bf.clear545 = and i32 %bf.load544, 65535
  %cmp546 = icmp eq i32 %bf.clear545, 61
  br i1 %cmp546, label %land.lhs.true.548, label %if.end.558

land.lhs.true.548:                                ; preds = %sw.bb.536
  %316 = load %struct.rtx_def*, %struct.rtx_def** %src0537, align 8
  %fld549 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %316, i32 0, i32 1
  %arrayidx550 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld549, i32 0, i64 0
  %rtuint551 = bitcast %union.rtunion_def* %arrayidx550 to i32*
  %317 = load i32, i32* %rtuint551, align 4
  %idxprom552 = zext i32 %317 to i64
  %318 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx553 = getelementptr inbounds %struct.value, %struct.value* %318, i64 %idxprom552
  %lattice_val554 = getelementptr inbounds %struct.value, %struct.value* %arrayidx553, i32 0, i32 0
  %319 = load i32, i32* %lattice_val554, align 4
  %cmp555 = icmp eq i32 %319, 0
  br i1 %cmp555, label %if.then.557, label %if.end.558

if.then.557:                                      ; preds = %land.lhs.true.548
  %320 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_undefined(%struct.rtx_def* %320)
  br label %sw.epilog

if.end.558:                                       ; preds = %land.lhs.true.548, %sw.bb.536
  %321 = load %struct.rtx_def*, %struct.rtx_def** %src0537, align 8
  %322 = bitcast %struct.rtx_def* %321 to i32*
  %bf.load559 = load i32, i32* %322, align 8
  %bf.clear560 = and i32 %bf.load559, 65535
  %cmp561 = icmp eq i32 %bf.clear560, 61
  br i1 %cmp561, label %land.lhs.true.563, label %if.end.579

land.lhs.true.563:                                ; preds = %if.end.558
  %323 = load %struct.rtx_def*, %struct.rtx_def** %src0537, align 8
  %fld564 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %323, i32 0, i32 1
  %arrayidx565 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld564, i32 0, i64 0
  %rtuint566 = bitcast %union.rtunion_def* %arrayidx565 to i32*
  %324 = load i32, i32* %rtuint566, align 4
  %idxprom567 = zext i32 %324 to i64
  %325 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx568 = getelementptr inbounds %struct.value, %struct.value* %325, i64 %idxprom567
  %lattice_val569 = getelementptr inbounds %struct.value, %struct.value* %arrayidx568, i32 0, i32 0
  %326 = load i32, i32* %lattice_val569, align 4
  %cmp570 = icmp eq i32 %326, 1
  br i1 %cmp570, label %if.then.572, label %if.end.579

if.then.572:                                      ; preds = %land.lhs.true.563
  %327 = load %struct.rtx_def*, %struct.rtx_def** %src0537, align 8
  %fld573 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %327, i32 0, i32 1
  %arrayidx574 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld573, i32 0, i64 0
  %rtuint575 = bitcast %union.rtunion_def* %arrayidx574 to i32*
  %328 = load i32, i32* %rtuint575, align 4
  %idxprom576 = zext i32 %328 to i64
  %329 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx577 = getelementptr inbounds %struct.value, %struct.value* %329, i64 %idxprom576
  %const_value578 = getelementptr inbounds %struct.value, %struct.value* %arrayidx577, i32 0, i32 1
  %330 = load %struct.rtx_def*, %struct.rtx_def** %const_value578, align 8
  store %struct.rtx_def* %330, %struct.rtx_def** %src0537, align 8
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.572, %land.lhs.true.563, %if.end.558
  %331 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %332 = bitcast %struct.rtx_def* %331 to i32*
  %bf.load580 = load i32, i32* %332, align 8
  %bf.clear581 = and i32 %bf.load580, 65535
  %333 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %334 = bitcast %struct.rtx_def* %333 to i32*
  %bf.load582 = load i32, i32* %334, align 8
  %bf.lshr583 = lshr i32 %bf.load582, 16
  %bf.clear584 = and i32 %bf.lshr583, 255
  %335 = load %struct.rtx_def*, %struct.rtx_def** %src0537, align 8
  %336 = load i32, i32* %mode0, align 4
  %call585 = call %struct.rtx_def* @simplify_unary_operation(i32 %bf.clear581, i32 %bf.clear584, %struct.rtx_def* %335, i32 %336)
  store %struct.rtx_def* %call585, %struct.rtx_def** %simplified, align 8
  br label %sw.epilog

sw.bb.586:                                        ; preds = %if.then.440, %if.then.440
  %337 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld588 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %337, i32 0, i32 1
  %arrayidx589 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld588, i32 0, i64 0
  %rtx590 = bitcast %union.rtunion_def* %arrayidx589 to %struct.rtx_def**
  %338 = load %struct.rtx_def*, %struct.rtx_def** %rtx590, align 8
  store %struct.rtx_def* %338, %struct.rtx_def** %src0587, align 8
  %339 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld592 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %339, i32 0, i32 1
  %arrayidx593 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld592, i32 0, i64 1
  %rtx594 = bitcast %union.rtunion_def* %arrayidx593 to %struct.rtx_def**
  %340 = load %struct.rtx_def*, %struct.rtx_def** %rtx594, align 8
  store %struct.rtx_def* %340, %struct.rtx_def** %src1591, align 8
  %341 = load %struct.rtx_def*, %struct.rtx_def** %src0587, align 8
  %342 = bitcast %struct.rtx_def* %341 to i32*
  %bf.load595 = load i32, i32* %342, align 8
  %bf.clear596 = and i32 %bf.load595, 65535
  %cmp597 = icmp eq i32 %bf.clear596, 61
  br i1 %cmp597, label %land.lhs.true.599, label %lor.lhs.false.608

land.lhs.true.599:                                ; preds = %sw.bb.586
  %343 = load %struct.rtx_def*, %struct.rtx_def** %src0587, align 8
  %fld600 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %343, i32 0, i32 1
  %arrayidx601 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld600, i32 0, i64 0
  %rtuint602 = bitcast %union.rtunion_def* %arrayidx601 to i32*
  %344 = load i32, i32* %rtuint602, align 4
  %idxprom603 = zext i32 %344 to i64
  %345 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx604 = getelementptr inbounds %struct.value, %struct.value* %345, i64 %idxprom603
  %lattice_val605 = getelementptr inbounds %struct.value, %struct.value* %arrayidx604, i32 0, i32 0
  %346 = load i32, i32* %lattice_val605, align 4
  %cmp606 = icmp eq i32 %346, 0
  br i1 %cmp606, label %if.then.622, label %lor.lhs.false.608

lor.lhs.false.608:                                ; preds = %land.lhs.true.599, %sw.bb.586
  %347 = load %struct.rtx_def*, %struct.rtx_def** %src1591, align 8
  %348 = bitcast %struct.rtx_def* %347 to i32*
  %bf.load609 = load i32, i32* %348, align 8
  %bf.clear610 = and i32 %bf.load609, 65535
  %cmp611 = icmp eq i32 %bf.clear610, 61
  br i1 %cmp611, label %land.lhs.true.613, label %if.end.623

land.lhs.true.613:                                ; preds = %lor.lhs.false.608
  %349 = load %struct.rtx_def*, %struct.rtx_def** %src1591, align 8
  %fld614 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %349, i32 0, i32 1
  %arrayidx615 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld614, i32 0, i64 0
  %rtuint616 = bitcast %union.rtunion_def* %arrayidx615 to i32*
  %350 = load i32, i32* %rtuint616, align 4
  %idxprom617 = zext i32 %350 to i64
  %351 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx618 = getelementptr inbounds %struct.value, %struct.value* %351, i64 %idxprom617
  %lattice_val619 = getelementptr inbounds %struct.value, %struct.value* %arrayidx618, i32 0, i32 0
  %352 = load i32, i32* %lattice_val619, align 4
  %cmp620 = icmp eq i32 %352, 0
  br i1 %cmp620, label %if.then.622, label %if.end.623

if.then.622:                                      ; preds = %land.lhs.true.613, %land.lhs.true.599
  %353 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_undefined(%struct.rtx_def* %353)
  br label %sw.epilog

if.end.623:                                       ; preds = %land.lhs.true.613, %lor.lhs.false.608
  %354 = load %struct.rtx_def*, %struct.rtx_def** %src0587, align 8
  %355 = bitcast %struct.rtx_def* %354 to i32*
  %bf.load624 = load i32, i32* %355, align 8
  %bf.clear625 = and i32 %bf.load624, 65535
  %cmp626 = icmp eq i32 %bf.clear625, 61
  br i1 %cmp626, label %land.lhs.true.628, label %if.end.644

land.lhs.true.628:                                ; preds = %if.end.623
  %356 = load %struct.rtx_def*, %struct.rtx_def** %src0587, align 8
  %fld629 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %356, i32 0, i32 1
  %arrayidx630 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld629, i32 0, i64 0
  %rtuint631 = bitcast %union.rtunion_def* %arrayidx630 to i32*
  %357 = load i32, i32* %rtuint631, align 4
  %idxprom632 = zext i32 %357 to i64
  %358 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx633 = getelementptr inbounds %struct.value, %struct.value* %358, i64 %idxprom632
  %lattice_val634 = getelementptr inbounds %struct.value, %struct.value* %arrayidx633, i32 0, i32 0
  %359 = load i32, i32* %lattice_val634, align 4
  %cmp635 = icmp eq i32 %359, 1
  br i1 %cmp635, label %if.then.637, label %if.end.644

if.then.637:                                      ; preds = %land.lhs.true.628
  %360 = load %struct.rtx_def*, %struct.rtx_def** %src0587, align 8
  %fld638 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %360, i32 0, i32 1
  %arrayidx639 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld638, i32 0, i64 0
  %rtuint640 = bitcast %union.rtunion_def* %arrayidx639 to i32*
  %361 = load i32, i32* %rtuint640, align 4
  %idxprom641 = zext i32 %361 to i64
  %362 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx642 = getelementptr inbounds %struct.value, %struct.value* %362, i64 %idxprom641
  %const_value643 = getelementptr inbounds %struct.value, %struct.value* %arrayidx642, i32 0, i32 1
  %363 = load %struct.rtx_def*, %struct.rtx_def** %const_value643, align 8
  store %struct.rtx_def* %363, %struct.rtx_def** %src0587, align 8
  br label %if.end.644

if.end.644:                                       ; preds = %if.then.637, %land.lhs.true.628, %if.end.623
  %364 = load %struct.rtx_def*, %struct.rtx_def** %src1591, align 8
  %365 = bitcast %struct.rtx_def* %364 to i32*
  %bf.load645 = load i32, i32* %365, align 8
  %bf.clear646 = and i32 %bf.load645, 65535
  %cmp647 = icmp eq i32 %bf.clear646, 61
  br i1 %cmp647, label %land.lhs.true.649, label %if.end.665

land.lhs.true.649:                                ; preds = %if.end.644
  %366 = load %struct.rtx_def*, %struct.rtx_def** %src1591, align 8
  %fld650 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %366, i32 0, i32 1
  %arrayidx651 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld650, i32 0, i64 0
  %rtuint652 = bitcast %union.rtunion_def* %arrayidx651 to i32*
  %367 = load i32, i32* %rtuint652, align 4
  %idxprom653 = zext i32 %367 to i64
  %368 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx654 = getelementptr inbounds %struct.value, %struct.value* %368, i64 %idxprom653
  %lattice_val655 = getelementptr inbounds %struct.value, %struct.value* %arrayidx654, i32 0, i32 0
  %369 = load i32, i32* %lattice_val655, align 4
  %cmp656 = icmp eq i32 %369, 1
  br i1 %cmp656, label %if.then.658, label %if.end.665

if.then.658:                                      ; preds = %land.lhs.true.649
  %370 = load %struct.rtx_def*, %struct.rtx_def** %src1591, align 8
  %fld659 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %370, i32 0, i32 1
  %arrayidx660 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld659, i32 0, i64 0
  %rtuint661 = bitcast %union.rtunion_def* %arrayidx660 to i32*
  %371 = load i32, i32* %rtuint661, align 4
  %idxprom662 = zext i32 %371 to i64
  %372 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx663 = getelementptr inbounds %struct.value, %struct.value* %372, i64 %idxprom662
  %const_value664 = getelementptr inbounds %struct.value, %struct.value* %arrayidx663, i32 0, i32 1
  %373 = load %struct.rtx_def*, %struct.rtx_def** %const_value664, align 8
  store %struct.rtx_def* %373, %struct.rtx_def** %src1591, align 8
  br label %if.end.665

if.end.665:                                       ; preds = %if.then.658, %land.lhs.true.649, %if.end.644
  %374 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %375 = bitcast %struct.rtx_def* %374 to i32*
  %bf.load666 = load i32, i32* %375, align 8
  %bf.clear667 = and i32 %bf.load666, 65535
  %376 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %377 = bitcast %struct.rtx_def* %376 to i32*
  %bf.load668 = load i32, i32* %377, align 8
  %bf.lshr669 = lshr i32 %bf.load668, 16
  %bf.clear670 = and i32 %bf.lshr669, 255
  %378 = load %struct.rtx_def*, %struct.rtx_def** %src0587, align 8
  %379 = load %struct.rtx_def*, %struct.rtx_def** %src1591, align 8
  %call671 = call %struct.rtx_def* @simplify_binary_operation(i32 %bf.clear667, i32 %bf.clear670, %struct.rtx_def* %378, %struct.rtx_def* %379)
  store %struct.rtx_def* %call671, %struct.rtx_def** %simplified, align 8
  br label %sw.epilog

sw.bb.672:                                        ; preds = %if.then.440, %if.then.440
  %380 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld674 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %380, i32 0, i32 1
  %arrayidx675 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld674, i32 0, i64 0
  %rtx676 = bitcast %union.rtunion_def* %arrayidx675 to %struct.rtx_def**
  %381 = load %struct.rtx_def*, %struct.rtx_def** %rtx676, align 8
  store %struct.rtx_def* %381, %struct.rtx_def** %src0673, align 8
  %382 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld678 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %382, i32 0, i32 1
  %arrayidx679 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld678, i32 0, i64 1
  %rtx680 = bitcast %union.rtunion_def* %arrayidx679 to %struct.rtx_def**
  %383 = load %struct.rtx_def*, %struct.rtx_def** %rtx680, align 8
  store %struct.rtx_def* %383, %struct.rtx_def** %src1677, align 8
  %384 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld682 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %384, i32 0, i32 1
  %arrayidx683 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld682, i32 0, i64 2
  %rtx684 = bitcast %union.rtunion_def* %arrayidx683 to %struct.rtx_def**
  %385 = load %struct.rtx_def*, %struct.rtx_def** %rtx684, align 8
  store %struct.rtx_def* %385, %struct.rtx_def** %src2681, align 8
  %386 = load %struct.rtx_def*, %struct.rtx_def** %src0673, align 8
  %387 = bitcast %struct.rtx_def* %386 to i32*
  %bf.load685 = load i32, i32* %387, align 8
  %bf.clear686 = and i32 %bf.load685, 65535
  %cmp687 = icmp eq i32 %bf.clear686, 61
  br i1 %cmp687, label %land.lhs.true.689, label %lor.lhs.false.698

land.lhs.true.689:                                ; preds = %sw.bb.672
  %388 = load %struct.rtx_def*, %struct.rtx_def** %src0673, align 8
  %fld690 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %388, i32 0, i32 1
  %arrayidx691 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld690, i32 0, i64 0
  %rtuint692 = bitcast %union.rtunion_def* %arrayidx691 to i32*
  %389 = load i32, i32* %rtuint692, align 4
  %idxprom693 = zext i32 %389 to i64
  %390 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx694 = getelementptr inbounds %struct.value, %struct.value* %390, i64 %idxprom693
  %lattice_val695 = getelementptr inbounds %struct.value, %struct.value* %arrayidx694, i32 0, i32 0
  %391 = load i32, i32* %lattice_val695, align 4
  %cmp696 = icmp eq i32 %391, 0
  br i1 %cmp696, label %if.then.726, label %lor.lhs.false.698

lor.lhs.false.698:                                ; preds = %land.lhs.true.689, %sw.bb.672
  %392 = load %struct.rtx_def*, %struct.rtx_def** %src1677, align 8
  %393 = bitcast %struct.rtx_def* %392 to i32*
  %bf.load699 = load i32, i32* %393, align 8
  %bf.clear700 = and i32 %bf.load699, 65535
  %cmp701 = icmp eq i32 %bf.clear700, 61
  br i1 %cmp701, label %land.lhs.true.703, label %lor.lhs.false.712

land.lhs.true.703:                                ; preds = %lor.lhs.false.698
  %394 = load %struct.rtx_def*, %struct.rtx_def** %src1677, align 8
  %fld704 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %394, i32 0, i32 1
  %arrayidx705 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld704, i32 0, i64 0
  %rtuint706 = bitcast %union.rtunion_def* %arrayidx705 to i32*
  %395 = load i32, i32* %rtuint706, align 4
  %idxprom707 = zext i32 %395 to i64
  %396 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx708 = getelementptr inbounds %struct.value, %struct.value* %396, i64 %idxprom707
  %lattice_val709 = getelementptr inbounds %struct.value, %struct.value* %arrayidx708, i32 0, i32 0
  %397 = load i32, i32* %lattice_val709, align 4
  %cmp710 = icmp eq i32 %397, 0
  br i1 %cmp710, label %if.then.726, label %lor.lhs.false.712

lor.lhs.false.712:                                ; preds = %land.lhs.true.703, %lor.lhs.false.698
  %398 = load %struct.rtx_def*, %struct.rtx_def** %src2681, align 8
  %399 = bitcast %struct.rtx_def* %398 to i32*
  %bf.load713 = load i32, i32* %399, align 8
  %bf.clear714 = and i32 %bf.load713, 65535
  %cmp715 = icmp eq i32 %bf.clear714, 61
  br i1 %cmp715, label %land.lhs.true.717, label %if.end.727

land.lhs.true.717:                                ; preds = %lor.lhs.false.712
  %400 = load %struct.rtx_def*, %struct.rtx_def** %src2681, align 8
  %fld718 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %400, i32 0, i32 1
  %arrayidx719 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld718, i32 0, i64 0
  %rtuint720 = bitcast %union.rtunion_def* %arrayidx719 to i32*
  %401 = load i32, i32* %rtuint720, align 4
  %idxprom721 = zext i32 %401 to i64
  %402 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx722 = getelementptr inbounds %struct.value, %struct.value* %402, i64 %idxprom721
  %lattice_val723 = getelementptr inbounds %struct.value, %struct.value* %arrayidx722, i32 0, i32 0
  %403 = load i32, i32* %lattice_val723, align 4
  %cmp724 = icmp eq i32 %403, 0
  br i1 %cmp724, label %if.then.726, label %if.end.727

if.then.726:                                      ; preds = %land.lhs.true.717, %land.lhs.true.703, %land.lhs.true.689
  %404 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_undefined(%struct.rtx_def* %404)
  br label %sw.epilog

if.end.727:                                       ; preds = %land.lhs.true.717, %lor.lhs.false.712
  %405 = load %struct.rtx_def*, %struct.rtx_def** %src0673, align 8
  %406 = bitcast %struct.rtx_def* %405 to i32*
  %bf.load728 = load i32, i32* %406, align 8
  %bf.clear729 = and i32 %bf.load728, 65535
  %cmp730 = icmp eq i32 %bf.clear729, 61
  br i1 %cmp730, label %land.lhs.true.732, label %if.end.748

land.lhs.true.732:                                ; preds = %if.end.727
  %407 = load %struct.rtx_def*, %struct.rtx_def** %src0673, align 8
  %fld733 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %407, i32 0, i32 1
  %arrayidx734 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld733, i32 0, i64 0
  %rtuint735 = bitcast %union.rtunion_def* %arrayidx734 to i32*
  %408 = load i32, i32* %rtuint735, align 4
  %idxprom736 = zext i32 %408 to i64
  %409 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx737 = getelementptr inbounds %struct.value, %struct.value* %409, i64 %idxprom736
  %lattice_val738 = getelementptr inbounds %struct.value, %struct.value* %arrayidx737, i32 0, i32 0
  %410 = load i32, i32* %lattice_val738, align 4
  %cmp739 = icmp eq i32 %410, 1
  br i1 %cmp739, label %if.then.741, label %if.end.748

if.then.741:                                      ; preds = %land.lhs.true.732
  %411 = load %struct.rtx_def*, %struct.rtx_def** %src0673, align 8
  %fld742 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %411, i32 0, i32 1
  %arrayidx743 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld742, i32 0, i64 0
  %rtuint744 = bitcast %union.rtunion_def* %arrayidx743 to i32*
  %412 = load i32, i32* %rtuint744, align 4
  %idxprom745 = zext i32 %412 to i64
  %413 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx746 = getelementptr inbounds %struct.value, %struct.value* %413, i64 %idxprom745
  %const_value747 = getelementptr inbounds %struct.value, %struct.value* %arrayidx746, i32 0, i32 1
  %414 = load %struct.rtx_def*, %struct.rtx_def** %const_value747, align 8
  store %struct.rtx_def* %414, %struct.rtx_def** %src0673, align 8
  br label %if.end.748

if.end.748:                                       ; preds = %if.then.741, %land.lhs.true.732, %if.end.727
  %415 = load %struct.rtx_def*, %struct.rtx_def** %src1677, align 8
  %416 = bitcast %struct.rtx_def* %415 to i32*
  %bf.load749 = load i32, i32* %416, align 8
  %bf.clear750 = and i32 %bf.load749, 65535
  %cmp751 = icmp eq i32 %bf.clear750, 61
  br i1 %cmp751, label %land.lhs.true.753, label %if.end.769

land.lhs.true.753:                                ; preds = %if.end.748
  %417 = load %struct.rtx_def*, %struct.rtx_def** %src1677, align 8
  %fld754 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %417, i32 0, i32 1
  %arrayidx755 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld754, i32 0, i64 0
  %rtuint756 = bitcast %union.rtunion_def* %arrayidx755 to i32*
  %418 = load i32, i32* %rtuint756, align 4
  %idxprom757 = zext i32 %418 to i64
  %419 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx758 = getelementptr inbounds %struct.value, %struct.value* %419, i64 %idxprom757
  %lattice_val759 = getelementptr inbounds %struct.value, %struct.value* %arrayidx758, i32 0, i32 0
  %420 = load i32, i32* %lattice_val759, align 4
  %cmp760 = icmp eq i32 %420, 1
  br i1 %cmp760, label %if.then.762, label %if.end.769

if.then.762:                                      ; preds = %land.lhs.true.753
  %421 = load %struct.rtx_def*, %struct.rtx_def** %src1677, align 8
  %fld763 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %421, i32 0, i32 1
  %arrayidx764 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld763, i32 0, i64 0
  %rtuint765 = bitcast %union.rtunion_def* %arrayidx764 to i32*
  %422 = load i32, i32* %rtuint765, align 4
  %idxprom766 = zext i32 %422 to i64
  %423 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx767 = getelementptr inbounds %struct.value, %struct.value* %423, i64 %idxprom766
  %const_value768 = getelementptr inbounds %struct.value, %struct.value* %arrayidx767, i32 0, i32 1
  %424 = load %struct.rtx_def*, %struct.rtx_def** %const_value768, align 8
  store %struct.rtx_def* %424, %struct.rtx_def** %src1677, align 8
  br label %if.end.769

if.end.769:                                       ; preds = %if.then.762, %land.lhs.true.753, %if.end.748
  %425 = load %struct.rtx_def*, %struct.rtx_def** %src2681, align 8
  %426 = bitcast %struct.rtx_def* %425 to i32*
  %bf.load770 = load i32, i32* %426, align 8
  %bf.clear771 = and i32 %bf.load770, 65535
  %cmp772 = icmp eq i32 %bf.clear771, 61
  br i1 %cmp772, label %land.lhs.true.774, label %if.end.790

land.lhs.true.774:                                ; preds = %if.end.769
  %427 = load %struct.rtx_def*, %struct.rtx_def** %src2681, align 8
  %fld775 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %427, i32 0, i32 1
  %arrayidx776 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld775, i32 0, i64 0
  %rtuint777 = bitcast %union.rtunion_def* %arrayidx776 to i32*
  %428 = load i32, i32* %rtuint777, align 4
  %idxprom778 = zext i32 %428 to i64
  %429 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx779 = getelementptr inbounds %struct.value, %struct.value* %429, i64 %idxprom778
  %lattice_val780 = getelementptr inbounds %struct.value, %struct.value* %arrayidx779, i32 0, i32 0
  %430 = load i32, i32* %lattice_val780, align 4
  %cmp781 = icmp eq i32 %430, 1
  br i1 %cmp781, label %if.then.783, label %if.end.790

if.then.783:                                      ; preds = %land.lhs.true.774
  %431 = load %struct.rtx_def*, %struct.rtx_def** %src2681, align 8
  %fld784 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %431, i32 0, i32 1
  %arrayidx785 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld784, i32 0, i64 0
  %rtuint786 = bitcast %union.rtunion_def* %arrayidx785 to i32*
  %432 = load i32, i32* %rtuint786, align 4
  %idxprom787 = zext i32 %432 to i64
  %433 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx788 = getelementptr inbounds %struct.value, %struct.value* %433, i64 %idxprom787
  %const_value789 = getelementptr inbounds %struct.value, %struct.value* %arrayidx788, i32 0, i32 1
  %434 = load %struct.rtx_def*, %struct.rtx_def** %const_value789, align 8
  store %struct.rtx_def* %434, %struct.rtx_def** %src2681, align 8
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.783, %land.lhs.true.774, %if.end.769
  %435 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %436 = bitcast %struct.rtx_def* %435 to i32*
  %bf.load791 = load i32, i32* %436, align 8
  %bf.clear792 = and i32 %bf.load791, 65535
  %437 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %438 = bitcast %struct.rtx_def* %437 to i32*
  %bf.load793 = load i32, i32* %438, align 8
  %bf.lshr794 = lshr i32 %bf.load793, 16
  %bf.clear795 = and i32 %bf.lshr794, 255
  %439 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %440 = bitcast %struct.rtx_def* %439 to i32*
  %bf.load796 = load i32, i32* %440, align 8
  %bf.lshr797 = lshr i32 %bf.load796, 16
  %bf.clear798 = and i32 %bf.lshr797, 255
  %441 = load %struct.rtx_def*, %struct.rtx_def** %src0673, align 8
  %442 = load %struct.rtx_def*, %struct.rtx_def** %src1677, align 8
  %443 = load %struct.rtx_def*, %struct.rtx_def** %src2681, align 8
  %call799 = call %struct.rtx_def* @simplify_ternary_operation(i32 %bf.clear792, i32 %bf.clear795, i32 %bf.clear798, %struct.rtx_def* %441, %struct.rtx_def* %442, %struct.rtx_def* %443)
  store %struct.rtx_def* %call799, %struct.rtx_def** %simplified, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.440
  %444 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_varying(%struct.rtx_def* %444)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.790, %if.then.726, %if.end.665, %if.then.622, %if.end.579, %if.then.557, %if.end.532, %if.then.479
  %445 = load %struct.rtx_def*, %struct.rtx_def** %simplified, align 8
  %tobool800 = icmp ne %struct.rtx_def* %445, null
  br i1 %tobool800, label %land.lhs.true.801, label %if.else.852

land.lhs.true.801:                                ; preds = %sw.epilog
  %446 = load %struct.rtx_def*, %struct.rtx_def** %simplified, align 8
  %447 = bitcast %struct.rtx_def* %446 to i32*
  %bf.load802 = load i32, i32* %447, align 8
  %bf.clear803 = and i32 %bf.load802, 65535
  %cmp804 = icmp eq i32 %bf.clear803, 54
  br i1 %cmp804, label %if.then.806, label %if.else.852

if.then.806:                                      ; preds = %land.lhs.true.801
  %448 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld807 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %448, i32 0, i32 1
  %arrayidx808 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld807, i32 0, i64 0
  %rtuint809 = bitcast %union.rtunion_def* %arrayidx808 to i32*
  %449 = load i32, i32* %rtuint809, align 4
  %idxprom810 = zext i32 %449 to i64
  %450 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx811 = getelementptr inbounds %struct.value, %struct.value* %450, i64 %idxprom810
  %lattice_val812 = getelementptr inbounds %struct.value, %struct.value* %arrayidx811, i32 0, i32 0
  %451 = load i32, i32* %lattice_val812, align 4
  %cmp813 = icmp ne i32 %451, 1
  br i1 %cmp813, label %if.then.824, label %lor.lhs.false.815

lor.lhs.false.815:                                ; preds = %if.then.806
  %452 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld816 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %452, i32 0, i32 1
  %arrayidx817 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld816, i32 0, i64 0
  %rtuint818 = bitcast %union.rtunion_def* %arrayidx817 to i32*
  %453 = load i32, i32* %rtuint818, align 4
  %idxprom819 = zext i32 %453 to i64
  %454 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx820 = getelementptr inbounds %struct.value, %struct.value* %454, i64 %idxprom819
  %const_value821 = getelementptr inbounds %struct.value, %struct.value* %arrayidx820, i32 0, i32 1
  %455 = load %struct.rtx_def*, %struct.rtx_def** %const_value821, align 8
  %456 = load %struct.rtx_def*, %struct.rtx_def** %simplified, align 8
  %cmp822 = icmp ne %struct.rtx_def* %455, %456
  br i1 %cmp822, label %if.then.824, label %if.end.839

if.then.824:                                      ; preds = %lor.lhs.false.815, %if.then.806
  %457 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld825 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %457, i32 0, i32 1
  %arrayidx826 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld825, i32 0, i64 0
  %rtuint827 = bitcast %union.rtunion_def* %arrayidx826 to i32*
  %458 = load i32, i32* %rtuint827, align 4
  %rem828 = urem i32 %458, 64
  %sh_prom829 = zext i32 %rem828 to i64
  %shl830 = shl i64 1, %sh_prom829
  %459 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld831 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %459, i32 0, i32 1
  %arrayidx832 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld831, i32 0, i64 0
  %rtuint833 = bitcast %union.rtunion_def* %arrayidx832 to i32*
  %460 = load i32, i32* %rtuint833, align 4
  %div834 = udiv i32 %460, 64
  %idxprom835 = zext i32 %div834 to i64
  %461 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %elms836 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %461, i32 0, i32 3
  %arrayidx837 = getelementptr inbounds [1 x i64], [1 x i64]* %elms836, i32 0, i64 %idxprom835
  %462 = load i64, i64* %arrayidx837, align 8
  %or838 = or i64 %462, %shl830
  store i64 %or838, i64* %arrayidx837, align 8
  br label %if.end.839

if.end.839:                                       ; preds = %if.then.824, %lor.lhs.false.815
  %463 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld840 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %463, i32 0, i32 1
  %arrayidx841 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld840, i32 0, i64 0
  %rtuint842 = bitcast %union.rtunion_def* %arrayidx841 to i32*
  %464 = load i32, i32* %rtuint842, align 4
  %idxprom843 = zext i32 %464 to i64
  %465 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx844 = getelementptr inbounds %struct.value, %struct.value* %465, i64 %idxprom843
  %lattice_val845 = getelementptr inbounds %struct.value, %struct.value* %arrayidx844, i32 0, i32 0
  store i32 1, i32* %lattice_val845, align 4
  %466 = load %struct.rtx_def*, %struct.rtx_def** %simplified, align 8
  %467 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld846 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %467, i32 0, i32 1
  %arrayidx847 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld846, i32 0, i64 0
  %rtuint848 = bitcast %union.rtunion_def* %arrayidx847 to i32*
  %468 = load i32, i32* %rtuint848, align 4
  %idxprom849 = zext i32 %468 to i64
  %469 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx850 = getelementptr inbounds %struct.value, %struct.value* %469, i64 %idxprom849
  %const_value851 = getelementptr inbounds %struct.value, %struct.value* %arrayidx850, i32 0, i32 1
  store %struct.rtx_def* %466, %struct.rtx_def** %const_value851, align 8
  br label %if.end.853

if.else.852:                                      ; preds = %land.lhs.true.801, %sw.epilog
  %470 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @defs_to_varying(%struct.rtx_def* %470)
  br label %if.end.853

if.end.853:                                       ; preds = %if.else.852, %if.end.839
  br label %if.end.854

if.end.854:                                       ; preds = %if.end.853, %land.lhs.true.429
  br label %if.end.855

if.end.855:                                       ; preds = %if.end.854, %if.end.413
  br label %if.end.856

if.end.856:                                       ; preds = %if.end.855, %if.end.138
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.38, %if.then.53, %if.then.64, %if.then.239, %for.end.300, %if.end.856, %if.then.75
  ret void
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @defs_to_varying(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %currdef = alloca %struct.df_link*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 7
  %3 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %3, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %4 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %4, %struct.df_link** %currdef, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %tobool = icmp ne %struct.df_link* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %6, i32 0, i32 1
  %7 = load %struct.ref*, %struct.ref** %ref, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref2 = getelementptr inbounds %struct.df_link, %struct.df_link* %10, i32 0, i32 1
  %11 = load %struct.ref*, %struct.ref** %ref2, align 8
  %reg3 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref6 = getelementptr inbounds %struct.df_link, %struct.df_link* %14, i32 0, i32 1
  %15 = load %struct.ref*, %struct.ref** %ref6, align 8
  %reg7 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %13, %cond.true ], [ %16, %cond.false ]
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %17 = load i32, i32* %rtuint, align 4
  %idxprom10 = zext i32 %17 to i64
  %18 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx11 = getelementptr inbounds %struct.value, %struct.value* %18, i64 %idxprom10
  %lattice_val = getelementptr inbounds %struct.value, %struct.value* %arrayidx11, i32 0, i32 0
  %19 = load i32, i32* %lattice_val, align 4
  %cmp12 = icmp ne i32 %19, 2
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %20 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref13 = getelementptr inbounds %struct.df_link, %struct.df_link* %20, i32 0, i32 1
  %21 = load %struct.ref*, %struct.ref** %ref13, align 8
  %reg14 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 0
  %22 = load %struct.rtx_def*, %struct.rtx_def** %reg14, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load15 = load i32, i32* %23, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 63
  br i1 %cmp17, label %cond.true.18, label %cond.false.24

cond.true.18:                                     ; preds = %if.then
  %24 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref19 = getelementptr inbounds %struct.df_link, %struct.df_link* %24, i32 0, i32 1
  %25 = load %struct.ref*, %struct.ref** %ref19, align 8
  %reg20 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 0
  %26 = load %struct.rtx_def*, %struct.rtx_def** %reg20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  br label %cond.end.27

cond.false.24:                                    ; preds = %if.then
  %28 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref25 = getelementptr inbounds %struct.df_link, %struct.df_link* %28, i32 0, i32 1
  %29 = load %struct.ref*, %struct.ref** %ref25, align 8
  %reg26 = getelementptr inbounds %struct.ref, %struct.ref* %29, i32 0, i32 0
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg26, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.18
  %cond28 = phi %struct.rtx_def* [ %27, %cond.true.18 ], [ %30, %cond.false.24 ]
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond28, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtuint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %31 = load i32, i32* %rtuint31, align 4
  %rem = urem i32 %31, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %32 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref32 = getelementptr inbounds %struct.df_link, %struct.df_link* %32, i32 0, i32 1
  %33 = load %struct.ref*, %struct.ref** %ref32, align 8
  %reg33 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg33, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load34 = load i32, i32* %35, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 63
  br i1 %cmp36, label %cond.true.37, label %cond.false.43

cond.true.37:                                     ; preds = %cond.end.27
  %36 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref38 = getelementptr inbounds %struct.df_link, %struct.df_link* %36, i32 0, i32 1
  %37 = load %struct.ref*, %struct.ref** %ref38, align 8
  %reg39 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 0
  %38 = load %struct.rtx_def*, %struct.rtx_def** %reg39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  br label %cond.end.46

cond.false.43:                                    ; preds = %cond.end.27
  %40 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref44 = getelementptr inbounds %struct.df_link, %struct.df_link* %40, i32 0, i32 1
  %41 = load %struct.ref*, %struct.ref** %ref44, align 8
  %reg45 = getelementptr inbounds %struct.ref, %struct.ref* %41, i32 0, i32 0
  %42 = load %struct.rtx_def*, %struct.rtx_def** %reg45, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.43, %cond.true.37
  %cond47 = phi %struct.rtx_def* [ %39, %cond.true.37 ], [ %42, %cond.false.43 ]
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond47, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint50 = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %43 = load i32, i32* %rtuint50, align 4
  %div = udiv i32 %43, 64
  %idxprom51 = zext i32 %div to i64
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom51
  %45 = load i64, i64* %arrayidx52, align 8
  %or = or i64 %45, %shl
  store i64 %or, i64* %arrayidx52, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.46, %cond.end
  %46 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref53 = getelementptr inbounds %struct.df_link, %struct.df_link* %46, i32 0, i32 1
  %47 = load %struct.ref*, %struct.ref** %ref53, align 8
  %reg54 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 0
  %48 = load %struct.rtx_def*, %struct.rtx_def** %reg54, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load55 = load i32, i32* %49, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 63
  br i1 %cmp57, label %cond.true.58, label %cond.false.64

cond.true.58:                                     ; preds = %if.end
  %50 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref59 = getelementptr inbounds %struct.df_link, %struct.df_link* %50, i32 0, i32 1
  %51 = load %struct.ref*, %struct.ref** %ref59, align 8
  %reg60 = getelementptr inbounds %struct.ref, %struct.ref* %51, i32 0, i32 0
  %52 = load %struct.rtx_def*, %struct.rtx_def** %reg60, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  br label %cond.end.67

cond.false.64:                                    ; preds = %if.end
  %54 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref65 = getelementptr inbounds %struct.df_link, %struct.df_link* %54, i32 0, i32 1
  %55 = load %struct.ref*, %struct.ref** %ref65, align 8
  %reg66 = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 0
  %56 = load %struct.rtx_def*, %struct.rtx_def** %reg66, align 8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.58
  %cond68 = phi %struct.rtx_def* [ %53, %cond.true.58 ], [ %56, %cond.false.64 ]
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond68, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtuint71 = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %57 = load i32, i32* %rtuint71, align 4
  %idxprom72 = zext i32 %57 to i64
  %58 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx73 = getelementptr inbounds %struct.value, %struct.value* %58, i64 %idxprom72
  %lattice_val74 = getelementptr inbounds %struct.value, %struct.value* %arrayidx73, i32 0, i32 0
  store i32 2, i32* %lattice_val74, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.67
  %59 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %59, i32 0, i32 0
  %60 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %60, %struct.df_link** %currdef, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @pc_set(%struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_ternary_operation(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx(i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @defs_to_undefined(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %currdef = alloca %struct.df_link*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** @df_analyzer, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 7
  %3 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %3, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %4 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %4, %struct.df_link** %currdef, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %tobool = icmp ne %struct.df_link* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %6, i32 0, i32 1
  %7 = load %struct.ref*, %struct.ref** %ref, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref2 = getelementptr inbounds %struct.df_link, %struct.df_link* %10, i32 0, i32 1
  %11 = load %struct.ref*, %struct.ref** %ref2, align 8
  %reg3 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref6 = getelementptr inbounds %struct.df_link, %struct.df_link* %14, i32 0, i32 1
  %15 = load %struct.ref*, %struct.ref** %ref6, align 8
  %reg7 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %13, %cond.true ], [ %16, %cond.false ]
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %17 = load i32, i32* %rtuint, align 4
  %idxprom10 = zext i32 %17 to i64
  %18 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx11 = getelementptr inbounds %struct.value, %struct.value* %18, i64 %idxprom10
  %lattice_val = getelementptr inbounds %struct.value, %struct.value* %arrayidx11, i32 0, i32 0
  %19 = load i32, i32* %lattice_val, align 4
  %cmp12 = icmp ne i32 %19, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %20 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref13 = getelementptr inbounds %struct.df_link, %struct.df_link* %20, i32 0, i32 1
  %21 = load %struct.ref*, %struct.ref** %ref13, align 8
  %reg14 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 0
  %22 = load %struct.rtx_def*, %struct.rtx_def** %reg14, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load15 = load i32, i32* %23, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 63
  br i1 %cmp17, label %cond.true.18, label %cond.false.24

cond.true.18:                                     ; preds = %if.then
  %24 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref19 = getelementptr inbounds %struct.df_link, %struct.df_link* %24, i32 0, i32 1
  %25 = load %struct.ref*, %struct.ref** %ref19, align 8
  %reg20 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 0
  %26 = load %struct.rtx_def*, %struct.rtx_def** %reg20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  br label %cond.end.27

cond.false.24:                                    ; preds = %if.then
  %28 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref25 = getelementptr inbounds %struct.df_link, %struct.df_link* %28, i32 0, i32 1
  %29 = load %struct.ref*, %struct.ref** %ref25, align 8
  %reg26 = getelementptr inbounds %struct.ref, %struct.ref* %29, i32 0, i32 0
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg26, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.18
  %cond28 = phi %struct.rtx_def* [ %27, %cond.true.18 ], [ %30, %cond.false.24 ]
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond28, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtuint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %31 = load i32, i32* %rtuint31, align 4
  %rem = urem i32 %31, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %32 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref32 = getelementptr inbounds %struct.df_link, %struct.df_link* %32, i32 0, i32 1
  %33 = load %struct.ref*, %struct.ref** %ref32, align 8
  %reg33 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg33, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load34 = load i32, i32* %35, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 63
  br i1 %cmp36, label %cond.true.37, label %cond.false.43

cond.true.37:                                     ; preds = %cond.end.27
  %36 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref38 = getelementptr inbounds %struct.df_link, %struct.df_link* %36, i32 0, i32 1
  %37 = load %struct.ref*, %struct.ref** %ref38, align 8
  %reg39 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 0
  %38 = load %struct.rtx_def*, %struct.rtx_def** %reg39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  br label %cond.end.46

cond.false.43:                                    ; preds = %cond.end.27
  %40 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref44 = getelementptr inbounds %struct.df_link, %struct.df_link* %40, i32 0, i32 1
  %41 = load %struct.ref*, %struct.ref** %ref44, align 8
  %reg45 = getelementptr inbounds %struct.ref, %struct.ref* %41, i32 0, i32 0
  %42 = load %struct.rtx_def*, %struct.rtx_def** %reg45, align 8
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.43, %cond.true.37
  %cond47 = phi %struct.rtx_def* [ %39, %cond.true.37 ], [ %42, %cond.false.43 ]
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond47, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint50 = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %43 = load i32, i32* %rtuint50, align 4
  %div = udiv i32 %43, 64
  %idxprom51 = zext i32 %div to i64
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @ssa_edges, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom51
  %45 = load i64, i64* %arrayidx52, align 8
  %or = or i64 %45, %shl
  store i64 %or, i64* %arrayidx52, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.46, %cond.end
  %46 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref53 = getelementptr inbounds %struct.df_link, %struct.df_link* %46, i32 0, i32 1
  %47 = load %struct.ref*, %struct.ref** %ref53, align 8
  %reg54 = getelementptr inbounds %struct.ref, %struct.ref* %47, i32 0, i32 0
  %48 = load %struct.rtx_def*, %struct.rtx_def** %reg54, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load55 = load i32, i32* %49, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 63
  br i1 %cmp57, label %cond.true.58, label %cond.false.64

cond.true.58:                                     ; preds = %if.end
  %50 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref59 = getelementptr inbounds %struct.df_link, %struct.df_link* %50, i32 0, i32 1
  %51 = load %struct.ref*, %struct.ref** %ref59, align 8
  %reg60 = getelementptr inbounds %struct.ref, %struct.ref* %51, i32 0, i32 0
  %52 = load %struct.rtx_def*, %struct.rtx_def** %reg60, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  br label %cond.end.67

cond.false.64:                                    ; preds = %if.end
  %54 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %ref65 = getelementptr inbounds %struct.df_link, %struct.df_link* %54, i32 0, i32 1
  %55 = load %struct.ref*, %struct.ref** %ref65, align 8
  %reg66 = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 0
  %56 = load %struct.rtx_def*, %struct.rtx_def** %reg66, align 8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.true.58
  %cond68 = phi %struct.rtx_def* [ %53, %cond.true.58 ], [ %56, %cond.false.64 ]
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond68, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtuint71 = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %57 = load i32, i32* %rtuint71, align 4
  %idxprom72 = zext i32 %57 to i64
  %58 = load %struct.value*, %struct.value** @values, align 8
  %arrayidx73 = getelementptr inbounds %struct.value, %struct.value* %58, i64 %idxprom72
  %lattice_val74 = getelementptr inbounds %struct.value, %struct.value* %arrayidx73, i32 0, i32 0
  store i32 0, i32* %lattice_val74, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.67
  %59 = load %struct.df_link*, %struct.df_link** %currdef, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %59, i32 0, i32 0
  %60 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %60, %struct.df_link** %currdef, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @simplify_relational_operation(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_unary_operation(i32, i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @simplify_binary_operation(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @df_insn_modify(%struct.df*, %struct.basic_block_def*, %struct.rtx_def*) #1

declare i32 @validate_replace_src(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @remove_phi_alternative(%struct.rtx_def*, %struct.basic_block_def*) #1

declare void @remove_edge(%struct.edge_def*) #1

declare i32 @condjump_p(%struct.rtx_def*) #1

declare i32 @simplejump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_u00(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

declare void @find_unreachable_blocks() #1

declare %struct.rtx_def* @df_insn_delete(%struct.df*, %struct.basic_block_def*, %struct.rtx_def*) #1

declare void @sbitmap_ones(%struct.simple_bitmap_def*) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mark_references(%struct.rtx_def** %current_rtx, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %current_rtx.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %worklist = alloca %struct.simple_bitmap_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %current_rtx, %struct.rtx_def*** %current_rtx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %current_rtx.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.simple_bitmap_def*
  store %struct.simple_bitmap_def* %3, %struct.simple_bitmap_def** %worklist, align 8
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
  %cmp1 = icmp eq i32 %bf.clear, 47
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %dest, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load3 = load i32, i32* %10, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 64
  br i1 %cmp5, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load6 = load i32, i32* %12, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 63
  br i1 %cmp8, label %if.then.17, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load10 = load i32, i32* %14, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 132
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.9
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load14 = load i32, i32* %16, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 133
  br i1 %cmp16, label %if.then.17, label %if.end.46

if.then.17:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.9, %lor.lhs.false, %if.then.2
  %17 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %reg, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.17
  %18 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load18 = load i32, i32* %19, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 64
  br i1 %cmp20, label %lor.end, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %while.cond
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load22 = load i32, i32* %21, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 63
  br i1 %cmp24, label %lor.end, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %22 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load26 = load i32, i32* %23, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 132
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.25
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load29 = load i32, i32* %25, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 133
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.25, %lor.lhs.false.21, %while.cond
  %26 = phi i1 [ true, %lor.lhs.false.25 ], [ true, %lor.lhs.false.21 ], [ true, %while.cond ], [ %cmp31, %lor.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %reg, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load35 = load i32, i32* %30, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 61
  br i1 %cmp37, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %while.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %32 = load i32, i32* %rtuint, align 4
  %rem = urem i32 %32, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtuint43 = bitcast %union.rtunion_def* %arrayidx42 to i32*
  %34 = load i32, i32* %rtuint43, align 4
  %div = udiv i32 %34, 64
  %idxprom = zext i32 %div to i64
  %35 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %35, i32 0, i32 3
  %arrayidx44 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %36 = load i64, i64* %arrayidx44, align 8
  %or = or i64 %36, %shl
  store i64 %or, i64* %arrayidx44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.38, %while.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %lor.lhs.false.13
  %37 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load47 = load i32, i32* %38, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 61
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.46
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %40 = load i8*, i8** %data.addr, align 8
  %call = call i32 @for_each_rtx(%struct.rtx_def** %rtx53, i32 (%struct.rtx_def**, i8*)* @mark_references, i8* %40)
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load55 = load i32, i32* %42, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 61
  br i1 %cmp57, label %if.then.58, label %if.else.73

if.then.58:                                       ; preds = %if.else
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtuint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %44 = load i32, i32* %rtuint61, align 4
  %rem62 = urem i32 %44, 64
  %sh_prom63 = zext i32 %rem62 to i64
  %shl64 = shl i64 1, %sh_prom63
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtuint67 = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %46 = load i32, i32* %rtuint67, align 4
  %div68 = udiv i32 %46, 64
  %idxprom69 = zext i32 %div68 to i64
  %47 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %elms70 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %47, i32 0, i32 3
  %arrayidx71 = getelementptr inbounds [1 x i64], [1 x i64]* %elms70, i32 0, i64 %idxprom69
  %48 = load i64, i64* %arrayidx71, align 8
  %or72 = or i64 %48, %shl64
  store i64 %or72, i64* %arrayidx71, align 8
  store i32 -1, i32* %retval
  br label %return

if.else.73:                                       ; preds = %if.else
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load74 = load i32, i32* %50, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 49
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.else.73
  store i32 -1, i32* %retval
  br label %return

if.else.78:                                       ; preds = %if.else.73
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.78, %if.then.77, %if.then.58, %if.end.54, %if.then.50, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
