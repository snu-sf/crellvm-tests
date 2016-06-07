; ModuleID = 'df.c'
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
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
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
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.replace_args = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.fibheap = type { i64, %struct.fibnode*, %struct.fibnode* }
%struct.fibnode = type { %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, i64, i8*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@ddf = internal global %struct.df* null, align 8
@n_basic_blocks = external global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"df.c\00", align 1
@__FUNCTION__.df_analyse = private unnamed_addr constant [11 x i8] c"df_analyse\00", align 1
@__FUNCTION__.df_insn_delete = private unnamed_addr constant [15 x i8] c"df_insn_delete\00", align 1
@rtx_class = external constant [153 x i8], align 16
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@__FUNCTION__.df_refs_reg_replace = private unnamed_addr constant [20 x i8] c"df_refs_reg_replace\00", align 1
@__FUNCTION__.df_ref_reg_replace = private unnamed_addr constant [19 x i8] c"df_ref_reg_replace\00", align 1
@__FUNCTION__.df_pattern_emit_before = private unnamed_addr constant [23 x i8] c"df_pattern_emit_before\00", align 1
@__FUNCTION__.df_bb_regs_lives_compare = private unnamed_addr constant [25 x i8] c"df_bb_regs_lives_compare\00", align 1
@__FUNCTION__.df_bb_single_def_use_insn_find = private unnamed_addr constant [31 x i8] c"df_bb_single_def_use_insn_find\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0ADataflow summary:\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"n_regs = %d, n_defs = %d, n_uses = %d, n_bbs = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Reaching defs:\0A\00", align 1
@basic_block_info = external global %struct.varray_head_tag*, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"bb %d in  \09\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bb %d gen \09\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"bb %d kill\09\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"bb %d out \09\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Use-def chains:\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"d%d bb %d luid %d insn %d reg %d \00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"read/write \00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Reaching uses:\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Def-use chains:\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"u%d bb %d luid %d insn %d reg %d \00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Live regs:\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"bb %d use \09\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"bb %d def \09\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Register info:\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"reg %d\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c" bb %d\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" bb ?\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c" life %d\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c" defs \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c" uses \00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"insn %d bb %d luid %d defs \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@__FUNCTION__.df_ref_unlink = private unnamed_addr constant [14 x i8] c"df_ref_unlink\00", align 1
@df_ref_obstack = internal global %struct.obstack zeroinitializer, align 8
@global_regs = external global [53 x i8], align 16
@regs_invalidated_by_call = external global i64, align 8
@mode_size = external constant [59 x i8], align 16
@target_flags = external global i32, align 4
@__FUNCTION__.df_ref_record = private unnamed_addr constant [14 x i8] c"df_ref_record\00", align 1
@word_mode = external global i32, align 4
@mode_class = external constant [59 x i32], align 16
@reg_raw_mode = external global [53 x i32], align 16
@__FUNCTION__.df_uses_record = private unnamed_addr constant [15 x i8] c"df_uses_record\00", align 1
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@cfun = external global %struct.function*, align 8
@__FUNCTION__.df_insns_modify = private unnamed_addr constant [16 x i8] c"df_insns_modify\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%c%d \00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"%c%d(%d) \00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"reg %d life %d defs \00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"reg %d bb %d luid %d insn %d chain \00", align 1
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16

; Function Attrs: nounwind uwtable
define i32 @df_ref_remove(%struct.df* %df, %struct.ref* %ref) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %ref.addr = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.ref* %ref, %struct.ref** %ref.addr, align 8
  %0 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %type = getelementptr inbounds %struct.ref, %struct.ref* %0, i32 0, i32 4
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %3 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  call void @df_def_unlink(%struct.df* %2, %struct.ref* %3)
  %4 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %7, i32 0, i32 7
  %8 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %8, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %9 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %call = call %struct.df_link* @df_ref_unlink(%struct.df_link** %defs, %struct.ref* %9)
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %11 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  call void @df_use_unlink(%struct.df* %10, %struct.ref* %11)
  %12 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn2 = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %14 = load i32, i32* %rtint5, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns7 = getelementptr inbounds %struct.df, %struct.df* %15, i32 0, i32 7
  %16 = load %struct.insn_info*, %struct.insn_info** %insns7, align 8
  %arrayidx8 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %16, i64 %idxprom6
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx8, i32 0, i32 1
  %17 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %call9 = call %struct.df_link* @df_ref_unlink(%struct.df_link** %uses, %struct.ref* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @df_def_unlink(%struct.df* %df, %struct.ref* %def) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %def.addr = alloca %struct.ref*, align 8
  %du_link = alloca %struct.df_link*, align 8
  %dregno = alloca i32, align 4
  %use = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.ref* %def, %struct.ref** %def.addr, align 8
  %0 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %reg1 = getelementptr inbounds %struct.ref, %struct.ref* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %reg2 = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %5, %cond.true ], [ %7, %cond.false ]
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %8 = load i32, i32* %rtuint, align 4
  store i32 %8, i32* %dregno, align 4
  %9 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 3
  %10 = load %struct.df_link*, %struct.df_link** %chain, align 8
  store %struct.df_link* %10, %struct.df_link** %du_link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %tobool = icmp ne %struct.df_link* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %12, i32 0, i32 1
  %13 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %13, %struct.ref** %use, align 8
  %14 = load %struct.ref*, %struct.ref** %use, align 8
  %chain5 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 3
  %15 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %call = call %struct.df_link* @df_ref_unlink(%struct.df_link** %chain5, %struct.ref* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %16, i32 0, i32 0
  %17 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %17, %struct.df_link** %du_link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %chain6 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 3
  store %struct.df_link* null, %struct.df_link** %chain6, align 8
  %19 = load i32, i32* %dregno, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %20, i32 0, i32 5
  %21 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx7 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %21, i64 %idxprom
  %defs = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx7, i32 0, i32 0
  %22 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %call8 = call %struct.df_link* @df_ref_unlink(%struct.df_link** %defs, %struct.ref* %22)
  %23 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %23, i32 0, i32 5
  %24 = load i32, i32* %id, align 4
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs10 = getelementptr inbounds %struct.df, %struct.df* %25, i32 0, i32 2
  %26 = load %struct.ref**, %struct.ref*** %defs10, align 8
  %arrayidx11 = getelementptr inbounds %struct.ref*, %struct.ref** %26, i64 %idxprom9
  store %struct.ref* null, %struct.ref** %arrayidx11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.df_link* @df_ref_unlink(%struct.df_link** %phead, %struct.ref* %ref) #0 {
entry:
  %retval = alloca %struct.df_link*, align 8
  %phead.addr = alloca %struct.df_link**, align 8
  %ref.addr = alloca %struct.ref*, align 8
  %link = alloca %struct.df_link*, align 8
  store %struct.df_link** %phead, %struct.df_link*** %phead.addr, align 8
  store %struct.ref* %ref, %struct.ref** %ref.addr, align 8
  %0 = load %struct.df_link**, %struct.df_link*** %phead.addr, align 8
  %1 = load %struct.df_link*, %struct.df_link** %0, align 8
  store %struct.df_link* %1, %struct.df_link** %link, align 8
  %2 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %2, null
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %3 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %3, i32 0, i32 0
  %4 = load %struct.df_link*, %struct.df_link** %next, align 8
  %tobool1 = icmp ne %struct.df_link* %4, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref3 = getelementptr inbounds %struct.df_link, %struct.df_link* %5, i32 0, i32 1
  %6 = load %struct.ref*, %struct.ref** %ref3, align 8
  %7 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %cmp = icmp ne %struct.ref* %6, %7
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 692, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.df_ref_unlink, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then.2
  %8 = load %struct.df_link**, %struct.df_link*** %phead.addr, align 8
  store %struct.df_link* null, %struct.df_link** %8, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %9 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref5 = getelementptr inbounds %struct.df_link, %struct.df_link* %9, i32 0, i32 1
  %10 = load %struct.ref*, %struct.ref** %ref5, align 8
  %11 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %cmp6 = icmp eq %struct.ref* %10, %11
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %12 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next8 = getelementptr inbounds %struct.df_link, %struct.df_link* %12, i32 0, i32 0
  %13 = load %struct.df_link*, %struct.df_link** %next8, align 8
  %14 = load %struct.df_link**, %struct.df_link*** %phead.addr, align 8
  store %struct.df_link* %13, %struct.df_link** %14, align 8
  br label %if.end.22

if.else.9:                                        ; preds = %if.else
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.9
  %15 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next10 = getelementptr inbounds %struct.df_link, %struct.df_link* %15, i32 0, i32 0
  %16 = load %struct.df_link*, %struct.df_link** %next10, align 8
  %tobool11 = icmp ne %struct.df_link* %16, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next12 = getelementptr inbounds %struct.df_link, %struct.df_link* %17, i32 0, i32 0
  %18 = load %struct.df_link*, %struct.df_link** %next12, align 8
  %ref13 = getelementptr inbounds %struct.df_link, %struct.df_link* %18, i32 0, i32 1
  %19 = load %struct.ref*, %struct.ref** %ref13, align 8
  %20 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %cmp14 = icmp eq %struct.ref* %19, %20
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %for.body
  %21 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next16 = getelementptr inbounds %struct.df_link, %struct.df_link* %21, i32 0, i32 0
  %22 = load %struct.df_link*, %struct.df_link** %next16, align 8
  %next17 = getelementptr inbounds %struct.df_link, %struct.df_link* %22, i32 0, i32 0
  %23 = load %struct.df_link*, %struct.df_link** %next17, align 8
  %24 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next18 = getelementptr inbounds %struct.df_link, %struct.df_link* %24, i32 0, i32 0
  store %struct.df_link* %23, %struct.df_link** %next18, align 8
  %25 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next19 = getelementptr inbounds %struct.df_link, %struct.df_link* %25, i32 0, i32 0
  %26 = load %struct.df_link*, %struct.df_link** %next19, align 8
  store %struct.df_link* %26, %struct.df_link** %retval
  br label %return

if.end.20:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %27 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next21 = getelementptr inbounds %struct.df_link, %struct.df_link* %27, i32 0, i32 0
  %28 = load %struct.df_link*, %struct.df_link** %next21, align 8
  store %struct.df_link* %28, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.then.7
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %entry
  %29 = load %struct.df_link*, %struct.df_link** %link, align 8
  store %struct.df_link* %29, %struct.df_link** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.15
  %30 = load %struct.df_link*, %struct.df_link** %retval
  ret %struct.df_link* %30
}

; Function Attrs: nounwind uwtable
define internal void @df_use_unlink(%struct.df* %df, %struct.ref* %use) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %use.addr = alloca %struct.ref*, align 8
  %ud_link = alloca %struct.df_link*, align 8
  %uregno = alloca i32, align 4
  %def = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.ref* %use, %struct.ref** %use.addr, align 8
  %0 = load %struct.ref*, %struct.ref** %use.addr, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.ref*, %struct.ref** %use.addr, align 8
  %reg1 = getelementptr inbounds %struct.ref, %struct.ref* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.ref*, %struct.ref** %use.addr, align 8
  %reg2 = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %5, %cond.true ], [ %7, %cond.false ]
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %8 = load i32, i32* %rtuint, align 4
  store i32 %8, i32* %uregno, align 4
  %9 = load %struct.ref*, %struct.ref** %use.addr, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 3
  %10 = load %struct.df_link*, %struct.df_link** %chain, align 8
  store %struct.df_link* %10, %struct.df_link** %ud_link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %tobool = icmp ne %struct.df_link* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %12, i32 0, i32 1
  %13 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %13, %struct.ref** %def, align 8
  %14 = load %struct.ref*, %struct.ref** %def, align 8
  %chain5 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 3
  %15 = load %struct.ref*, %struct.ref** %use.addr, align 8
  %call = call %struct.df_link* @df_ref_unlink(%struct.df_link** %chain5, %struct.ref* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %16, i32 0, i32 0
  %17 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %17, %struct.df_link** %ud_link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.ref*, %struct.ref** %use.addr, align 8
  %chain6 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 3
  store %struct.df_link* null, %struct.df_link** %chain6, align 8
  %19 = load i32, i32* %uregno, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %20, i32 0, i32 5
  %21 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx7 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %21, i64 %idxprom
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx7, i32 0, i32 1
  %22 = load %struct.ref*, %struct.ref** %use.addr, align 8
  %call8 = call %struct.df_link* @df_ref_unlink(%struct.df_link** %uses, %struct.ref* %22)
  %23 = load %struct.ref*, %struct.ref** %use.addr, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %23, i32 0, i32 5
  %24 = load i32, i32* %id, align 4
  %idxprom9 = sext i32 %24 to i64
  %25 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses10 = getelementptr inbounds %struct.df, %struct.df* %25, i32 0, i32 3
  %26 = load %struct.ref**, %struct.ref*** %uses10, align 8
  %arrayidx11 = getelementptr inbounds %struct.ref*, %struct.ref** %26, i64 %idxprom9
  store %struct.ref* null, %struct.ref** %arrayidx11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.df* @df_init() #0 {
entry:
  %df = alloca %struct.df*, align 8
  %call = call noalias i8* @xcalloc(i64 1, i64 192)
  %0 = bitcast i8* %call to %struct.df*
  store %struct.df* %0, %struct.df** %df, align 8
  %1 = load %struct.df*, %struct.df** %df, align 8
  store %struct.df* %1, %struct.df** @ddf, align 8
  %2 = load %struct.df*, %struct.df** %df, align 8
  ret %struct.df* %2
}

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define i32 @df_analyse(%struct.df* %df, %struct.bitmap_head_def* %blocks, i32 %flags) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %flags.addr = alloca i32, align 4
  %update = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs = getelementptr inbounds %struct.df, %struct.df* %0, i32 0, i32 15
  %1 = load i32, i32* %n_bbs, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs1 = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 15
  %3 = load i32, i32* %n_bbs1, align 4
  %4 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 2302, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.df_analyse, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %call = call i32 @df_modified_p(%struct.df* %5, %struct.bitmap_head_def* %6)
  store i32 %call, i32* %update, align 4
  %7 = load i32, i32* %update, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, i32* %flags.addr, align 4
  %9 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags3 = getelementptr inbounds %struct.df, %struct.df* %9, i32 0, i32 0
  %10 = load i32, i32* %flags3, align 4
  %cmp4 = icmp ne i32 %8, %10
  br i1 %cmp4, label %if.then.5, label %if.end.22

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %tobool6 = icmp ne %struct.bitmap_head_def* %11, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  %12 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs8 = getelementptr inbounds %struct.df, %struct.df* %12, i32 0, i32 15
  %13 = load i32, i32* %n_bbs8, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %14 = load %struct.df*, %struct.df** %df.addr, align 8
  call void @df_free(%struct.df* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  %15 = load %struct.df*, %struct.df** %df.addr, align 8
  %call12 = call i32 @max_reg_num()
  call void @df_alloc(%struct.df* %15, i32 %call12)
  %16 = load %struct.df*, %struct.df** %df.addr, align 8
  %17 = load i32, i32* %flags.addr, align 4
  call void @df_analyse_1(%struct.df* %16, %struct.bitmap_head_def* null, i32 %17, i32 0)
  store i32 1, i32* %update, align 4
  br label %if.end.21

if.else:                                          ; preds = %if.then.5
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %cmp13 = icmp eq %struct.bitmap_head_def* %18, inttoptr (i64 -1 to %struct.bitmap_head_def*)
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  %19 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified = getelementptr inbounds %struct.df, %struct.df* %19, i32 0, i32 20
  %20 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified, align 8
  store %struct.bitmap_head_def* %20, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.else
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs16 = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 15
  %22 = load i32, i32* %n_bbs16, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 2325, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.df_analyse, i32 0, i32 0)) #6
  unreachable

if.end.19:                                        ; preds = %if.end.15
  %23 = load %struct.df*, %struct.df** %df.addr, align 8
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %25 = load i32, i32* %flags.addr, align 4
  call void @df_analyse_1(%struct.df* %23, %struct.bitmap_head_def* %24, i32 %25, i32 1)
  %26 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified20 = getelementptr inbounds %struct.df, %struct.df* %26, i32 0, i32 20
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified20, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %27)
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.end.11
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %lor.lhs.false
  %28 = load i32, i32* %update, align 4
  ret i32 %28
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @df_modified_p(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %j = alloca i32, align 4
  %update = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  store i32 0, i32* %update, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 15
  %2 = load i32, i32* %n_bbs, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 20
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified, align 8
  %5 = load i32, i32* %j, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %4, i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %tobool1 = icmp ne %struct.bitmap_head_def* %6, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %cmp2 = icmp eq %struct.bitmap_head_def* %7, inttoptr (i64 -1 to %struct.bitmap_head_def*)
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %9 = load i32, i32* %j, align 4
  %call4 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %8, i32 %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %update, align 4
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %j, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i32, i32* %update, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @df_free(%struct.df* %df) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  call void @df_bitmaps_free(%struct.df* %0, i32 255)
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 1
  %2 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %tobool = icmp ne %struct.bb_info* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs1 = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 1
  %4 = load %struct.bb_info*, %struct.bb_info** %bbs1, align 8
  %5 = bitcast %struct.bb_info* %4 to i8*
  call void @free(i8* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs2 = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 1
  store %struct.bb_info* null, %struct.bb_info** %bbs2, align 8
  %7 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %7, i32 0, i32 7
  %8 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %tobool3 = icmp ne %struct.insn_info* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns5 = getelementptr inbounds %struct.df, %struct.df* %9, i32 0, i32 7
  %10 = load %struct.insn_info*, %struct.insn_info** %insns5, align 8
  %11 = bitcast %struct.insn_info* %10 to i8*
  call void @free(i8* %11) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %12 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns7 = getelementptr inbounds %struct.df, %struct.df* %12, i32 0, i32 7
  store %struct.insn_info* null, %struct.insn_info** %insns7, align 8
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size = getelementptr inbounds %struct.df, %struct.df* %13, i32 0, i32 8
  store i32 0, i32* %insn_size, align 4
  %14 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs = getelementptr inbounds %struct.df, %struct.df* %14, i32 0, i32 2
  %15 = load %struct.ref**, %struct.ref*** %defs, align 8
  %tobool8 = icmp ne %struct.ref** %15, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %16 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs10 = getelementptr inbounds %struct.df, %struct.df* %16, i32 0, i32 2
  %17 = load %struct.ref**, %struct.ref*** %defs10, align 8
  %18 = bitcast %struct.ref** %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %19 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs12 = getelementptr inbounds %struct.df, %struct.df* %19, i32 0, i32 2
  store %struct.ref** null, %struct.ref*** %defs12, align 8
  %20 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_size = getelementptr inbounds %struct.df, %struct.df* %20, i32 0, i32 10
  store i32 0, i32* %def_size, align 4
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 9
  store i32 0, i32* %def_id, align 4
  %22 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses = getelementptr inbounds %struct.df, %struct.df* %22, i32 0, i32 3
  %23 = load %struct.ref**, %struct.ref*** %uses, align 8
  %tobool13 = icmp ne %struct.ref** %23, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses15 = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 3
  %25 = load %struct.ref**, %struct.ref*** %uses15, align 8
  %26 = bitcast %struct.ref** %25 to i8*
  call void @free(i8* %26) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  %27 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses17 = getelementptr inbounds %struct.df, %struct.df* %27, i32 0, i32 3
  store %struct.ref** null, %struct.ref*** %uses17, align 8
  %28 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_size = getelementptr inbounds %struct.df, %struct.df* %28, i32 0, i32 13
  store i32 0, i32* %use_size, align 4
  %29 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id = getelementptr inbounds %struct.df, %struct.df* %29, i32 0, i32 12
  store i32 0, i32* %use_id, align 4
  %30 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %30, i32 0, i32 5
  %31 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %tobool18 = icmp ne %struct.reg_info* %31, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.16
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs20 = getelementptr inbounds %struct.df, %struct.df* %32, i32 0, i32 5
  %33 = load %struct.reg_info*, %struct.reg_info** %regs20, align 8
  %34 = bitcast %struct.reg_info* %33 to i8*
  call void @free(i8* %34) #4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.16
  %35 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs22 = getelementptr inbounds %struct.df, %struct.df* %35, i32 0, i32 5
  store %struct.reg_info* null, %struct.reg_info** %regs22, align 8
  %36 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_size = getelementptr inbounds %struct.df, %struct.df* %36, i32 0, i32 6
  store i32 0, i32* %reg_size, align 4
  %37 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified = getelementptr inbounds %struct.df, %struct.df* %37, i32 0, i32 20
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified, align 8
  %tobool23 = icmp ne %struct.bitmap_head_def* %38, null
  br i1 %tobool23, label %if.then.24, label %if.end.32

if.then.24:                                       ; preds = %if.end.21
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %39 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified25 = getelementptr inbounds %struct.df, %struct.df* %39, i32 0, i32 20
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified25, align 8
  %tobool26 = icmp ne %struct.bitmap_head_def* %40, null
  br i1 %tobool26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %do.body
  %41 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified28 = getelementptr inbounds %struct.df, %struct.df* %41, i32 0, i32 20
  %42 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified28, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %42)
  %43 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified29 = getelementptr inbounds %struct.df, %struct.df* %43, i32 0, i32 20
  %44 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified29, align 8
  %45 = bitcast %struct.bitmap_head_def* %44 to i8*
  call void @free(i8* %45) #4
  %46 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified30 = getelementptr inbounds %struct.df, %struct.df* %46, i32 0, i32 20
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %bbs_modified30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.31
  br label %if.end.32

if.end.32:                                        ; preds = %do.end, %if.end.21
  %47 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified33 = getelementptr inbounds %struct.df, %struct.df* %47, i32 0, i32 20
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %bbs_modified33, align 8
  %48 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified = getelementptr inbounds %struct.df, %struct.df* %48, i32 0, i32 19
  %49 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified, align 8
  %tobool34 = icmp ne %struct.bitmap_head_def* %49, null
  br i1 %tobool34, label %if.then.35, label %if.end.45

if.then.35:                                       ; preds = %if.end.32
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %50 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified37 = getelementptr inbounds %struct.df, %struct.df* %50, i32 0, i32 19
  %51 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified37, align 8
  %tobool38 = icmp ne %struct.bitmap_head_def* %51, null
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %do.body.36
  %52 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified40 = getelementptr inbounds %struct.df, %struct.df* %52, i32 0, i32 19
  %53 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified40, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %53)
  %54 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified41 = getelementptr inbounds %struct.df, %struct.df* %54, i32 0, i32 19
  %55 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified41, align 8
  %56 = bitcast %struct.bitmap_head_def* %55 to i8*
  call void @free(i8* %56) #4
  %57 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified42 = getelementptr inbounds %struct.df, %struct.df* %57, i32 0, i32 19
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %insns_modified42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %do.body.36
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %if.end.32
  %58 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified46 = getelementptr inbounds %struct.df, %struct.df* %58, i32 0, i32 19
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %insns_modified46, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.45
  %59 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks = getelementptr inbounds %struct.df, %struct.df* %59, i32 0, i32 21
  %60 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks, align 8
  %tobool48 = icmp ne %struct.bitmap_head_def* %60, null
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %do.body.47
  %61 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks50 = getelementptr inbounds %struct.df, %struct.df* %61, i32 0, i32 21
  %62 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks50, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %62)
  %63 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks51 = getelementptr inbounds %struct.df, %struct.df* %63, i32 0, i32 21
  %64 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks51, align 8
  %65 = bitcast %struct.bitmap_head_def* %64 to i8*
  call void @free(i8* %65) #4
  %66 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks52 = getelementptr inbounds %struct.df, %struct.df* %66, i32 0, i32 21
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %all_blocks52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %do.body.47
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %67 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks55 = getelementptr inbounds %struct.df, %struct.df* %67, i32 0, i32 21
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %all_blocks55, align 8
  store %struct.obstack* @df_ref_obstack, %struct.obstack** %__o, align 8
  store i8* null, i8** %__obj, align 8
  %68 = load i8*, i8** %__obj, align 8
  %69 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 1
  %70 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %71 = bitcast %struct._obstack_chunk* %70 to i8*
  %cmp = icmp ugt i8* %68, %71
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end.54
  %72 = load i8*, i8** %__obj, align 8
  %73 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 4
  %74 = load i8*, i8** %chunk_limit, align 8
  %cmp56 = icmp ult i8* %72, %74
  br i1 %cmp56, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %land.lhs.true
  %75 = load i8*, i8** %__obj, align 8
  %76 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %76, i32 0, i32 2
  store i8* %75, i8** %object_base, align 8
  %77 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %77, i32 0, i32 3
  store i8* %75, i8** %next_free, align 8
  br label %if.end.58

if.else:                                          ; preds = %land.lhs.true, %do.end.54
  %78 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %79 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %78, i8* %79)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else, %if.then.57
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_alloc(%struct.df* %df, i32 %n_regs) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %n_regs.addr = alloca i32, align 4
  %n_insns = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 %n_regs, i32* %n_regs.addr, align 4
  call void @gcc_obstack_init(%struct.obstack* @df_ref_obstack)
  %call = call i32 @get_max_uid()
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %n_insns, align 4
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id = getelementptr inbounds %struct.df, %struct.df* %0, i32 0, i32 9
  store i32 0, i32* %def_id, align 4
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_defs = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 11
  store i32 0, i32* %n_defs, align 4
  %2 = load i32, i32* %n_insns, align 4
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_size = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 10
  store i32 %2, i32* %def_size, align 4
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_size1 = getelementptr inbounds %struct.df, %struct.df* %4, i32 0, i32 10
  %5 = load i32, i32* %def_size1, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 %conv, 8
  %call2 = call noalias i8* @xmalloc(i64 %mul)
  %6 = bitcast i8* %call2 to %struct.ref**
  %7 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs = getelementptr inbounds %struct.df, %struct.df* %7, i32 0, i32 2
  store %struct.ref** %6, %struct.ref*** %defs, align 8
  %8 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id = getelementptr inbounds %struct.df, %struct.df* %8, i32 0, i32 12
  store i32 0, i32* %use_id, align 4
  %9 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_uses = getelementptr inbounds %struct.df, %struct.df* %9, i32 0, i32 14
  store i32 0, i32* %n_uses, align 4
  %10 = load i32, i32* %n_insns, align 4
  %mul3 = mul nsw i32 %10, 2
  %11 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_size = getelementptr inbounds %struct.df, %struct.df* %11, i32 0, i32 13
  store i32 %mul3, i32* %use_size, align 4
  %12 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_size4 = getelementptr inbounds %struct.df, %struct.df* %12, i32 0, i32 13
  %13 = load i32, i32* %use_size4, align 4
  %conv5 = zext i32 %13 to i64
  %mul6 = mul i64 %conv5, 8
  %call7 = call noalias i8* @xmalloc(i64 %mul6)
  %14 = bitcast i8* %call7 to %struct.ref**
  %15 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses = getelementptr inbounds %struct.df, %struct.df* %15, i32 0, i32 3
  store %struct.ref** %14, %struct.ref*** %uses, align 8
  %16 = load i32, i32* %n_regs.addr, align 4
  %17 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_regs8 = getelementptr inbounds %struct.df, %struct.df* %17, i32 0, i32 16
  store i32 %16, i32* %n_regs8, align 4
  %18 = load i32, i32* @n_basic_blocks, align 4
  %19 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs = getelementptr inbounds %struct.df, %struct.df* %19, i32 0, i32 15
  store i32 %18, i32* %n_bbs, align 4
  %20 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_regs9 = getelementptr inbounds %struct.df, %struct.df* %20, i32 0, i32 16
  %21 = load i32, i32* %n_regs9, align 4
  %conv10 = zext i32 %21 to i64
  %mul11 = mul i64 %conv10, 8
  %call12 = call noalias i8* @xmalloc(i64 %mul11)
  %22 = bitcast i8* %call12 to %struct.ref**
  %23 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_def_last = getelementptr inbounds %struct.df, %struct.df* %23, i32 0, i32 4
  store %struct.ref** %22, %struct.ref*** %reg_def_last, align 8
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %25 = load i32, i32* %n_insns, align 4
  call void @df_insn_table_realloc(%struct.df* %24, i32 %25)
  %26 = load %struct.df*, %struct.df** %df.addr, align 8
  %27 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_regs13 = getelementptr inbounds %struct.df, %struct.df* %27, i32 0, i32 16
  %28 = load i32, i32* %n_regs13, align 4
  call void @df_reg_table_realloc(%struct.df* %26, i32 %28)
  %call14 = call noalias i8* @xmalloc(i64 24)
  %29 = bitcast i8* %call14 to %struct.bitmap_head_def*
  %call15 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %29)
  %30 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified = getelementptr inbounds %struct.df, %struct.df* %30, i32 0, i32 20
  store %struct.bitmap_head_def* %call15, %struct.bitmap_head_def** %bbs_modified, align 8
  %31 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified16 = getelementptr inbounds %struct.df, %struct.df* %31, i32 0, i32 20
  %32 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified16, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %32)
  %33 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags = getelementptr inbounds %struct.df, %struct.df* %33, i32 0, i32 0
  store i32 0, i32* %flags, align 4
  %34 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs17 = getelementptr inbounds %struct.df, %struct.df* %34, i32 0, i32 15
  %35 = load i32, i32* %n_bbs17, align 4
  %conv18 = zext i32 %35 to i64
  %call19 = call noalias i8* @xcalloc(i64 %conv18, i64 112)
  %36 = bitcast i8* %call19 to %struct.bb_info*
  %37 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %37, i32 0, i32 1
  store %struct.bb_info* %36, %struct.bb_info** %bbs, align 8
  %call20 = call noalias i8* @xmalloc(i64 24)
  %38 = bitcast i8* %call20 to %struct.bitmap_head_def*
  %call21 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %38)
  %39 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks = getelementptr inbounds %struct.df, %struct.df* %39, i32 0, i32 21
  store %struct.bitmap_head_def* %call21, %struct.bitmap_head_def** %all_blocks, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %40, %41
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks23 = getelementptr inbounds %struct.df, %struct.df* %42, i32 0, i32 21
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks23, align 8
  %44 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %43, i32 %44)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @max_reg_num() #1

; Function Attrs: nounwind uwtable
define internal void @df_analyse_1(%struct.df* %df, %struct.bitmap_head_def* %blocks, i32 %flags, i32 %update) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %flags.addr = alloca i32, align 4
  %update.addr = alloca i32, align 4
  %aflags = alloca i32, align 4
  %dflags = alloca i32, align 4
  %i = alloca i32, align 4
  %i78 = alloca i32, align 4
  %in = alloca %struct.bitmap_head_def**, align 8
  %out = alloca %struct.bitmap_head_def**, align 8
  %gen = alloca %struct.bitmap_head_def**, align 8
  %kill = alloca %struct.bitmap_head_def**, align 8
  %i158 = alloca i32, align 4
  %in159 = alloca %struct.bitmap_head_def**, align 8
  %out163 = alloca %struct.bitmap_head_def**, align 8
  %gen167 = alloca %struct.bitmap_head_def**, align 8
  %kill171 = alloca %struct.bitmap_head_def**, align 8
  %i249 = alloca i32, align 4
  %in250 = alloca %struct.bitmap_head_def**, align 8
  %out254 = alloca %struct.bitmap_head_def**, align 8
  %use = alloca %struct.bitmap_head_def**, align 8
  %def = alloca %struct.bitmap_head_def**, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %update, i32* %update.addr, align 4
  store i32 0, i32* %dflags, align 4
  %0 = load i32, i32* %flags.addr, align 4
  store i32 %0, i32* %aflags, align 4
  %1 = load i32, i32* %flags.addr, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %aflags, align 4
  %or = or i32 %2, 65
  store i32 %or, i32* %aflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %3, 8
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %aflags, align 4
  %or4 = or i32 %4, 2
  store i32 %or4, i32* %aflags, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %5 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %5, 2
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.5
  %6 = load i32, i32* %aflags, align 4
  %or9 = or i32 %6, 128
  store i32 %or9, i32* %aflags, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %7 = load i32, i32* %flags.addr, align 4
  %and11 = and i32 %7, 32
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %8 = load i32, i32* %aflags, align 4
  %or14 = or i32 %8, 4
  store i32 %or14, i32* %aflags, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %tobool16 = icmp ne %struct.bitmap_head_def* %9, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.15
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks = getelementptr inbounds %struct.df, %struct.df* %10, i32 0, i32 21
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks, align 8
  store %struct.bitmap_head_def* %11, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %12 = load i32, i32* %flags.addr, align 4
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags19 = getelementptr inbounds %struct.df, %struct.df* %13, i32 0, i32 0
  store i32 %12, i32* %flags19, align 4
  %14 = load i32, i32* %update.addr, align 4
  %tobool20 = icmp ne i32 %14, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  %15 = load %struct.df*, %struct.df** %df.addr, align 8
  %call = call i32 @df_refs_update(%struct.df* %15)
  br label %if.end.24

if.else:                                          ; preds = %if.end.18
  %16 = load %struct.df*, %struct.df** %df.addr, align 8
  %call22 = call i32 @df_refs_queue(%struct.df* %16)
  %17 = load %struct.df*, %struct.df** %df.addr, align 8
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  call void @df_refs_record(%struct.df* %17, %struct.bitmap_head_def* %18)
  %19 = load %struct.df*, %struct.df** %df.addr, align 8
  %call23 = call i32 @df_refs_process(%struct.df* %19)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.21
  %20 = load %struct.df*, %struct.df** %df.addr, align 8
  %21 = load i32, i32* %aflags, align 4
  call void @df_bitmaps_alloc(%struct.df* %20, i32 %21)
  %22 = load %struct.df*, %struct.df** %df.addr, align 8
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %call25 = call i32 @df_luids_set(%struct.df* %22, %struct.bitmap_head_def* %23)
  %24 = load i32, i32* %aflags, align 4
  %and26 = and i32 %24, 64
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  %25 = load %struct.df*, %struct.df** %df.addr, align 8
  %26 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  call void @df_reg_def_chain_create(%struct.df* %25, %struct.bitmap_head_def* %26)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.24
  %27 = load i32, i32* %aflags, align 4
  %and30 = and i32 %27, 128
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.29
  %28 = load %struct.df*, %struct.df** %df.addr, align 8
  %29 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  call void @df_reg_use_chain_create(%struct.df* %28, %struct.bitmap_head_def* %29)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.29
  %30 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %30 to i64
  %mul = mul i64 4, %conv
  %call34 = call noalias i8* @xmalloc(i64 %mul)
  %31 = bitcast i8* %call34 to i32*
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %dfs_order = getelementptr inbounds %struct.df, %struct.df* %32, i32 0, i32 23
  store i32* %31, i32** %dfs_order, align 8
  %33 = load i32, i32* @n_basic_blocks, align 4
  %conv35 = sext i32 %33 to i64
  %mul36 = mul i64 4, %conv35
  %call37 = call noalias i8* @xmalloc(i64 %mul36)
  %34 = bitcast i8* %call37 to i32*
  %35 = load %struct.df*, %struct.df** %df.addr, align 8
  %rc_order = getelementptr inbounds %struct.df, %struct.df* %35, i32 0, i32 24
  store i32* %34, i32** %rc_order, align 8
  %36 = load i32, i32* @n_basic_blocks, align 4
  %conv38 = sext i32 %36 to i64
  %mul39 = mul i64 4, %conv38
  %call40 = call noalias i8* @xmalloc(i64 %mul39)
  %37 = bitcast i8* %call40 to i32*
  %38 = load %struct.df*, %struct.df** %df.addr, align 8
  %rts_order = getelementptr inbounds %struct.df, %struct.df* %38, i32 0, i32 25
  store i32* %37, i32** %rts_order, align 8
  %39 = load i32, i32* @n_basic_blocks, align 4
  %conv41 = sext i32 %39 to i64
  %mul42 = mul i64 4, %conv41
  %call43 = call noalias i8* @xmalloc(i64 %mul42)
  %40 = bitcast i8* %call43 to i32*
  %41 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_dfs_map = getelementptr inbounds %struct.df, %struct.df* %41, i32 0, i32 27
  store i32* %40, i32** %inverse_dfs_map, align 8
  %42 = load i32, i32* @n_basic_blocks, align 4
  %conv44 = sext i32 %42 to i64
  %mul45 = mul i64 4, %conv44
  %call46 = call noalias i8* @xmalloc(i64 %mul45)
  %43 = bitcast i8* %call46 to i32*
  %44 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rc_map = getelementptr inbounds %struct.df, %struct.df* %44, i32 0, i32 26
  store i32* %43, i32** %inverse_rc_map, align 8
  %45 = load i32, i32* @n_basic_blocks, align 4
  %conv47 = sext i32 %45 to i64
  %mul48 = mul i64 4, %conv47
  %call49 = call noalias i8* @xmalloc(i64 %mul48)
  %46 = bitcast i8* %call49 to i32*
  %47 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rts_map = getelementptr inbounds %struct.df, %struct.df* %47, i32 0, i32 28
  store i32* %46, i32** %inverse_rts_map, align 8
  %48 = load %struct.df*, %struct.df** %df.addr, align 8
  %dfs_order50 = getelementptr inbounds %struct.df, %struct.df* %48, i32 0, i32 23
  %49 = load i32*, i32** %dfs_order50, align 8
  %50 = load %struct.df*, %struct.df** %df.addr, align 8
  %rc_order51 = getelementptr inbounds %struct.df, %struct.df* %50, i32 0, i32 24
  %51 = load i32*, i32** %rc_order51, align 8
  %call52 = call i32 @flow_depth_first_order_compute(i32* %49, i32* %51)
  %52 = load %struct.df*, %struct.df** %df.addr, align 8
  %rts_order53 = getelementptr inbounds %struct.df, %struct.df* %52, i32 0, i32 25
  %53 = load i32*, i32** %rts_order53, align 8
  call void @flow_reverse_top_sort_order_compute(i32* %53)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %54, %55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom = sext i32 %57 to i64
  %58 = load %struct.df*, %struct.df** %df.addr, align 8
  %dfs_order55 = getelementptr inbounds %struct.df, %struct.df* %58, i32 0, i32 23
  %59 = load i32*, i32** %dfs_order55, align 8
  %arrayidx = getelementptr inbounds i32, i32* %59, i64 %idxprom
  %60 = load i32, i32* %arrayidx, align 4
  %idxprom56 = sext i32 %60 to i64
  %61 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_dfs_map57 = getelementptr inbounds %struct.df, %struct.df* %61, i32 0, i32 27
  %62 = load i32*, i32** %inverse_dfs_map57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %62, i64 %idxprom56
  store i32 %56, i32* %arrayidx58, align 4
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %64 to i64
  %65 = load %struct.df*, %struct.df** %df.addr, align 8
  %rc_order60 = getelementptr inbounds %struct.df, %struct.df* %65, i32 0, i32 24
  %66 = load i32*, i32** %rc_order60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %66, i64 %idxprom59
  %67 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %67 to i64
  %68 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rc_map63 = getelementptr inbounds %struct.df, %struct.df* %68, i32 0, i32 26
  %69 = load i32*, i32** %inverse_rc_map63, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %69, i64 %idxprom62
  store i32 %63, i32* %arrayidx64, align 4
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %71 to i64
  %72 = load %struct.df*, %struct.df** %df.addr, align 8
  %rts_order66 = getelementptr inbounds %struct.df, %struct.df* %72, i32 0, i32 25
  %73 = load i32*, i32** %rts_order66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %73, i64 %idxprom65
  %74 = load i32, i32* %arrayidx67, align 4
  %idxprom68 = sext i32 %74 to i64
  %75 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rts_map69 = getelementptr inbounds %struct.df, %struct.df* %75, i32 0, i32 28
  %76 = load i32*, i32** %inverse_rts_map69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %76, i64 %idxprom68
  store i32 %70, i32* %arrayidx70, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %77 = load i32, i32* %i, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %78 = load i32, i32* %aflags, align 4
  %and71 = and i32 %78, 1
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.136

if.then.73:                                       ; preds = %for.end
  %79 = load %struct.df*, %struct.df** %df.addr, align 8
  %80 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags74 = getelementptr inbounds %struct.df, %struct.df* %80, i32 0, i32 0
  %81 = load i32, i32* %flags74, align 4
  %and75 = and i32 %81, 1
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.73
  %82 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.73
  %83 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks77 = getelementptr inbounds %struct.df, %struct.df* %83, i32 0, i32 21
  %84 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks77, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bitmap_head_def* [ %82, %cond.true ], [ %84, %cond.false ]
  call void @df_rd_local_compute(%struct.df* %79, %struct.bitmap_head_def* %cond)
  %85 = load i32, i32* @n_basic_blocks, align 4
  %conv79 = sext i32 %85 to i64
  %mul80 = mul i64 8, %conv79
  %call81 = call noalias i8* @xmalloc(i64 %mul80)
  %86 = bitcast i8* %call81 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %86, %struct.bitmap_head_def*** %in, align 8
  %87 = load i32, i32* @n_basic_blocks, align 4
  %conv82 = sext i32 %87 to i64
  %mul83 = mul i64 8, %conv82
  %call84 = call noalias i8* @xmalloc(i64 %mul83)
  %88 = bitcast i8* %call84 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %88, %struct.bitmap_head_def*** %out, align 8
  %89 = load i32, i32* @n_basic_blocks, align 4
  %conv85 = sext i32 %89 to i64
  %mul86 = mul i64 8, %conv85
  %call87 = call noalias i8* @xmalloc(i64 %mul86)
  %90 = bitcast i8* %call87 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %90, %struct.bitmap_head_def*** %gen, align 8
  %91 = load i32, i32* @n_basic_blocks, align 4
  %conv88 = sext i32 %91 to i64
  %mul89 = mul i64 8, %conv88
  %call90 = call noalias i8* @xmalloc(i64 %mul89)
  %92 = bitcast i8* %call90 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %92, %struct.bitmap_head_def*** %kill, align 8
  store i32 0, i32* %i78, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.131, %cond.end
  %93 = load i32, i32* %i78, align 4
  %94 = load i32, i32* @n_basic_blocks, align 4
  %cmp92 = icmp slt i32 %93, %94
  br i1 %cmp92, label %for.body.94, label %for.end.133

for.body.94:                                      ; preds = %for.cond.91
  %95 = load i32, i32* %i78, align 4
  %idxprom95 = sext i32 %95 to i64
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %96, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx96 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom95
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx96, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %97, i32 0, i32 11
  %98 = load i32, i32* %index, align 4
  %idxprom97 = sext i32 %98 to i64
  %99 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %99, i32 0, i32 1
  %100 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx98 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %100, i64 %idxprom97
  %rd_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx98, i32 0, i32 2
  %101 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in, align 8
  %102 = load i32, i32* %i78, align 4
  %idxprom99 = sext i32 %102 to i64
  %103 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in, align 8
  %arrayidx100 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %103, i64 %idxprom99
  store %struct.bitmap_head_def* %101, %struct.bitmap_head_def** %arrayidx100, align 8
  %104 = load i32, i32* %i78, align 4
  %idxprom101 = sext i32 %104 to i64
  %105 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data102 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %105, i32 0, i32 4
  %bb103 = bitcast %union.varray_data_tag* %data102 to [1 x %struct.basic_block_def*]*
  %arrayidx104 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb103, i32 0, i64 %idxprom101
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx104, align 8
  %index105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %106, i32 0, i32 11
  %107 = load i32, i32* %index105, align 4
  %idxprom106 = sext i32 %107 to i64
  %108 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs107 = getelementptr inbounds %struct.df, %struct.df* %108, i32 0, i32 1
  %109 = load %struct.bb_info*, %struct.bb_info** %bbs107, align 8
  %arrayidx108 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %109, i64 %idxprom106
  %rd_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx108, i32 0, i32 3
  %110 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_out, align 8
  %111 = load i32, i32* %i78, align 4
  %idxprom109 = sext i32 %111 to i64
  %112 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out, align 8
  %arrayidx110 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %112, i64 %idxprom109
  store %struct.bitmap_head_def* %110, %struct.bitmap_head_def** %arrayidx110, align 8
  %113 = load i32, i32* %i78, align 4
  %idxprom111 = sext i32 %113 to i64
  %114 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data112 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %114, i32 0, i32 4
  %bb113 = bitcast %union.varray_data_tag* %data112 to [1 x %struct.basic_block_def*]*
  %arrayidx114 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb113, i32 0, i64 %idxprom111
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx114, align 8
  %index115 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %115, i32 0, i32 11
  %116 = load i32, i32* %index115, align 4
  %idxprom116 = sext i32 %116 to i64
  %117 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs117 = getelementptr inbounds %struct.df, %struct.df* %117, i32 0, i32 1
  %118 = load %struct.bb_info*, %struct.bb_info** %bbs117, align 8
  %arrayidx118 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %118, i64 %idxprom116
  %rd_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx118, i32 0, i32 1
  %119 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_gen, align 8
  %120 = load i32, i32* %i78, align 4
  %idxprom119 = sext i32 %120 to i64
  %121 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen, align 8
  %arrayidx120 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %121, i64 %idxprom119
  store %struct.bitmap_head_def* %119, %struct.bitmap_head_def** %arrayidx120, align 8
  %122 = load i32, i32* %i78, align 4
  %idxprom121 = sext i32 %122 to i64
  %123 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data122 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %123, i32 0, i32 4
  %bb123 = bitcast %union.varray_data_tag* %data122 to [1 x %struct.basic_block_def*]*
  %arrayidx124 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb123, i32 0, i64 %idxprom121
  %124 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx124, align 8
  %index125 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %124, i32 0, i32 11
  %125 = load i32, i32* %index125, align 4
  %idxprom126 = sext i32 %125 to i64
  %126 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs127 = getelementptr inbounds %struct.df, %struct.df* %126, i32 0, i32 1
  %127 = load %struct.bb_info*, %struct.bb_info** %bbs127, align 8
  %arrayidx128 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %127, i64 %idxprom126
  %rd_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx128, i32 0, i32 0
  %128 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_kill, align 8
  %129 = load i32, i32* %i78, align 4
  %idxprom129 = sext i32 %129 to i64
  %130 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill, align 8
  %arrayidx130 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %130, i64 %idxprom129
  store %struct.bitmap_head_def* %128, %struct.bitmap_head_def** %arrayidx130, align 8
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.94
  %131 = load i32, i32* %i78, align 4
  %inc132 = add nsw i32 %131, 1
  store i32 %inc132, i32* %i78, align 4
  br label %for.cond.91

for.end.133:                                      ; preds = %for.cond.91
  %132 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in, align 8
  %133 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out, align 8
  %134 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen, align 8
  %135 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill, align 8
  %136 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks134 = getelementptr inbounds %struct.df, %struct.df* %136, i32 0, i32 21
  %137 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks134, align 8
  %138 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rc_map135 = getelementptr inbounds %struct.df, %struct.df* %138, i32 0, i32 26
  %139 = load i32*, i32** %inverse_rc_map135, align 8
  call void @iterative_dataflow_bitmap(%struct.bitmap_head_def** %132, %struct.bitmap_head_def** %133, %struct.bitmap_head_def** %134, %struct.bitmap_head_def** %135, %struct.bitmap_head_def* %137, i32 0, i32 0, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* @df_rd_transfer_function, i32* %139, i8* null)
  %140 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in, align 8
  %141 = bitcast %struct.bitmap_head_def** %140 to i8*
  call void @free(i8* %141) #4
  %142 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out, align 8
  %143 = bitcast %struct.bitmap_head_def** %142 to i8*
  call void @free(i8* %143) #4
  %144 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen, align 8
  %145 = bitcast %struct.bitmap_head_def** %144 to i8*
  call void @free(i8* %145) #4
  %146 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill, align 8
  %147 = bitcast %struct.bitmap_head_def** %146 to i8*
  call void @free(i8* %147) #4
  br label %if.end.136

if.end.136:                                       ; preds = %for.end.133, %for.end
  %148 = load i32, i32* %aflags, align 4
  %and137 = and i32 %148, 16
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %if.then.139, label %if.end.146

if.then.139:                                      ; preds = %if.end.136
  %149 = load %struct.df*, %struct.df** %df.addr, align 8
  %150 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks140 = getelementptr inbounds %struct.df, %struct.df* %150, i32 0, i32 21
  %151 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks140, align 8
  call void @df_ud_chain_create(%struct.df* %149, %struct.bitmap_head_def* %151)
  %152 = load i32, i32* %flags.addr, align 4
  %and141 = and i32 %152, 1
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.end.145, label %if.then.143

if.then.143:                                      ; preds = %if.then.139
  %153 = load i32, i32* %dflags, align 4
  %or144 = or i32 %153, 1
  store i32 %or144, i32* %dflags, align 4
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %if.then.139
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.end.136
  %154 = load i32, i32* %aflags, align 4
  %and147 = and i32 %154, 2
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then.149, label %if.end.224

if.then.149:                                      ; preds = %if.end.146
  %155 = load %struct.df*, %struct.df** %df.addr, align 8
  %156 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags150 = getelementptr inbounds %struct.df, %struct.df* %156, i32 0, i32 0
  %157 = load i32, i32* %flags150, align 4
  %and151 = and i32 %157, 2
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %if.then.149
  %158 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %cond.end.156

cond.false.154:                                   ; preds = %if.then.149
  %159 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks155 = getelementptr inbounds %struct.df, %struct.df* %159, i32 0, i32 21
  %160 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks155, align 8
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.154, %cond.true.153
  %cond157 = phi %struct.bitmap_head_def* [ %158, %cond.true.153 ], [ %160, %cond.false.154 ]
  call void @df_ru_local_compute(%struct.df* %155, %struct.bitmap_head_def* %cond157)
  %161 = load i32, i32* @n_basic_blocks, align 4
  %conv160 = sext i32 %161 to i64
  %mul161 = mul i64 8, %conv160
  %call162 = call noalias i8* @xmalloc(i64 %mul161)
  %162 = bitcast i8* %call162 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %162, %struct.bitmap_head_def*** %in159, align 8
  %163 = load i32, i32* @n_basic_blocks, align 4
  %conv164 = sext i32 %163 to i64
  %mul165 = mul i64 8, %conv164
  %call166 = call noalias i8* @xmalloc(i64 %mul165)
  %164 = bitcast i8* %call166 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %164, %struct.bitmap_head_def*** %out163, align 8
  %165 = load i32, i32* @n_basic_blocks, align 4
  %conv168 = sext i32 %165 to i64
  %mul169 = mul i64 8, %conv168
  %call170 = call noalias i8* @xmalloc(i64 %mul169)
  %166 = bitcast i8* %call170 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %166, %struct.bitmap_head_def*** %gen167, align 8
  %167 = load i32, i32* @n_basic_blocks, align 4
  %conv172 = sext i32 %167 to i64
  %mul173 = mul i64 8, %conv172
  %call174 = call noalias i8* @xmalloc(i64 %mul173)
  %168 = bitcast i8* %call174 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %168, %struct.bitmap_head_def*** %kill171, align 8
  store i32 0, i32* %i158, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.219, %cond.end.156
  %169 = load i32, i32* %i158, align 4
  %170 = load i32, i32* @n_basic_blocks, align 4
  %cmp176 = icmp slt i32 %169, %170
  br i1 %cmp176, label %for.body.178, label %for.end.221

for.body.178:                                     ; preds = %for.cond.175
  %171 = load i32, i32* %i158, align 4
  %idxprom179 = sext i32 %171 to i64
  %172 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data180 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %172, i32 0, i32 4
  %bb181 = bitcast %union.varray_data_tag* %data180 to [1 x %struct.basic_block_def*]*
  %arrayidx182 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb181, i32 0, i64 %idxprom179
  %173 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx182, align 8
  %index183 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %173, i32 0, i32 11
  %174 = load i32, i32* %index183, align 4
  %idxprom184 = sext i32 %174 to i64
  %175 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs185 = getelementptr inbounds %struct.df, %struct.df* %175, i32 0, i32 1
  %176 = load %struct.bb_info*, %struct.bb_info** %bbs185, align 8
  %arrayidx186 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %176, i64 %idxprom184
  %ru_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx186, i32 0, i32 6
  %177 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_in, align 8
  %178 = load i32, i32* %i158, align 4
  %idxprom187 = sext i32 %178 to i64
  %179 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in159, align 8
  %arrayidx188 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %179, i64 %idxprom187
  store %struct.bitmap_head_def* %177, %struct.bitmap_head_def** %arrayidx188, align 8
  %180 = load i32, i32* %i158, align 4
  %idxprom189 = sext i32 %180 to i64
  %181 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data190 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %181, i32 0, i32 4
  %bb191 = bitcast %union.varray_data_tag* %data190 to [1 x %struct.basic_block_def*]*
  %arrayidx192 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb191, i32 0, i64 %idxprom189
  %182 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx192, align 8
  %index193 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %182, i32 0, i32 11
  %183 = load i32, i32* %index193, align 4
  %idxprom194 = sext i32 %183 to i64
  %184 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs195 = getelementptr inbounds %struct.df, %struct.df* %184, i32 0, i32 1
  %185 = load %struct.bb_info*, %struct.bb_info** %bbs195, align 8
  %arrayidx196 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %185, i64 %idxprom194
  %ru_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx196, i32 0, i32 7
  %186 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_out, align 8
  %187 = load i32, i32* %i158, align 4
  %idxprom197 = sext i32 %187 to i64
  %188 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out163, align 8
  %arrayidx198 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %188, i64 %idxprom197
  store %struct.bitmap_head_def* %186, %struct.bitmap_head_def** %arrayidx198, align 8
  %189 = load i32, i32* %i158, align 4
  %idxprom199 = sext i32 %189 to i64
  %190 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data200 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %190, i32 0, i32 4
  %bb201 = bitcast %union.varray_data_tag* %data200 to [1 x %struct.basic_block_def*]*
  %arrayidx202 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb201, i32 0, i64 %idxprom199
  %191 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx202, align 8
  %index203 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %191, i32 0, i32 11
  %192 = load i32, i32* %index203, align 4
  %idxprom204 = sext i32 %192 to i64
  %193 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs205 = getelementptr inbounds %struct.df, %struct.df* %193, i32 0, i32 1
  %194 = load %struct.bb_info*, %struct.bb_info** %bbs205, align 8
  %arrayidx206 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %194, i64 %idxprom204
  %ru_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx206, i32 0, i32 5
  %195 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_gen, align 8
  %196 = load i32, i32* %i158, align 4
  %idxprom207 = sext i32 %196 to i64
  %197 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen167, align 8
  %arrayidx208 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %197, i64 %idxprom207
  store %struct.bitmap_head_def* %195, %struct.bitmap_head_def** %arrayidx208, align 8
  %198 = load i32, i32* %i158, align 4
  %idxprom209 = sext i32 %198 to i64
  %199 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data210 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %199, i32 0, i32 4
  %bb211 = bitcast %union.varray_data_tag* %data210 to [1 x %struct.basic_block_def*]*
  %arrayidx212 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb211, i32 0, i64 %idxprom209
  %200 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx212, align 8
  %index213 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %200, i32 0, i32 11
  %201 = load i32, i32* %index213, align 4
  %idxprom214 = sext i32 %201 to i64
  %202 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs215 = getelementptr inbounds %struct.df, %struct.df* %202, i32 0, i32 1
  %203 = load %struct.bb_info*, %struct.bb_info** %bbs215, align 8
  %arrayidx216 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %203, i64 %idxprom214
  %ru_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx216, i32 0, i32 4
  %204 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_kill, align 8
  %205 = load i32, i32* %i158, align 4
  %idxprom217 = sext i32 %205 to i64
  %206 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill171, align 8
  %arrayidx218 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %206, i64 %idxprom217
  store %struct.bitmap_head_def* %204, %struct.bitmap_head_def** %arrayidx218, align 8
  br label %for.inc.219

for.inc.219:                                      ; preds = %for.body.178
  %207 = load i32, i32* %i158, align 4
  %inc220 = add nsw i32 %207, 1
  store i32 %inc220, i32* %i158, align 4
  br label %for.cond.175

for.end.221:                                      ; preds = %for.cond.175
  %208 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in159, align 8
  %209 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out163, align 8
  %210 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen167, align 8
  %211 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill171, align 8
  %212 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks222 = getelementptr inbounds %struct.df, %struct.df* %212, i32 0, i32 21
  %213 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks222, align 8
  %214 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rts_map223 = getelementptr inbounds %struct.df, %struct.df* %214, i32 0, i32 28
  %215 = load i32*, i32** %inverse_rts_map223, align 8
  call void @iterative_dataflow_bitmap(%struct.bitmap_head_def** %208, %struct.bitmap_head_def** %209, %struct.bitmap_head_def** %210, %struct.bitmap_head_def** %211, %struct.bitmap_head_def* %213, i32 1, i32 0, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* @df_ru_transfer_function, i32* %215, i8* null)
  %216 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in159, align 8
  %217 = bitcast %struct.bitmap_head_def** %216 to i8*
  call void @free(i8* %217) #4
  %218 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out163, align 8
  %219 = bitcast %struct.bitmap_head_def** %218 to i8*
  call void @free(i8* %219) #4
  %220 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen167, align 8
  %221 = bitcast %struct.bitmap_head_def** %220 to i8*
  call void @free(i8* %221) #4
  %222 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill171, align 8
  %223 = bitcast %struct.bitmap_head_def** %222 to i8*
  call void @free(i8* %223) #4
  br label %if.end.224

if.end.224:                                       ; preds = %for.end.221, %if.end.146
  %224 = load i32, i32* %aflags, align 4
  %and225 = and i32 %224, 8
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.234

if.then.227:                                      ; preds = %if.end.224
  %225 = load %struct.df*, %struct.df** %df.addr, align 8
  %226 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks228 = getelementptr inbounds %struct.df, %struct.df* %226, i32 0, i32 21
  %227 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks228, align 8
  call void @df_du_chain_create(%struct.df* %225, %struct.bitmap_head_def* %227)
  %228 = load i32, i32* %flags.addr, align 4
  %and229 = and i32 %228, 2
  %tobool230 = icmp ne i32 %and229, 0
  br i1 %tobool230, label %if.end.233, label %if.then.231

if.then.231:                                      ; preds = %if.then.227
  %229 = load i32, i32* %dflags, align 4
  %or232 = or i32 %229, 2
  store i32 %or232, i32* %dflags, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %if.then.227
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.end.224
  %230 = load i32, i32* %dflags, align 4
  %tobool235 = icmp ne i32 %230, 0
  br i1 %tobool235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.234
  %231 = load %struct.df*, %struct.df** %df.addr, align 8
  %232 = load i32, i32* %dflags, align 4
  call void @df_bitmaps_free(%struct.df* %231, i32 %232)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.236, %if.end.234
  %233 = load i32, i32* %aflags, align 4
  %and238 = and i32 %233, 4
  %tobool239 = icmp ne i32 %and238, 0
  br i1 %tobool239, label %if.then.240, label %if.end.313

if.then.240:                                      ; preds = %if.end.237
  %234 = load %struct.df*, %struct.df** %df.addr, align 8
  %235 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags241 = getelementptr inbounds %struct.df, %struct.df* %235, i32 0, i32 0
  %236 = load i32, i32* %flags241, align 4
  %and242 = and i32 %236, 4
  %tobool243 = icmp ne i32 %and242, 0
  br i1 %tobool243, label %cond.true.244, label %cond.false.245

cond.true.244:                                    ; preds = %if.then.240
  %237 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %cond.end.247

cond.false.245:                                   ; preds = %if.then.240
  %238 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks246 = getelementptr inbounds %struct.df, %struct.df* %238, i32 0, i32 21
  %239 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks246, align 8
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.245, %cond.true.244
  %cond248 = phi %struct.bitmap_head_def* [ %237, %cond.true.244 ], [ %239, %cond.false.245 ]
  call void @df_lr_local_compute(%struct.df* %234, %struct.bitmap_head_def* %cond248)
  %240 = load i32, i32* @n_basic_blocks, align 4
  %conv251 = sext i32 %240 to i64
  %mul252 = mul i64 8, %conv251
  %call253 = call noalias i8* @xmalloc(i64 %mul252)
  %241 = bitcast i8* %call253 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %241, %struct.bitmap_head_def*** %in250, align 8
  %242 = load i32, i32* @n_basic_blocks, align 4
  %conv255 = sext i32 %242 to i64
  %mul256 = mul i64 8, %conv255
  %call257 = call noalias i8* @xmalloc(i64 %mul256)
  %243 = bitcast i8* %call257 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %243, %struct.bitmap_head_def*** %out254, align 8
  %244 = load i32, i32* @n_basic_blocks, align 4
  %conv258 = sext i32 %244 to i64
  %mul259 = mul i64 8, %conv258
  %call260 = call noalias i8* @xmalloc(i64 %mul259)
  %245 = bitcast i8* %call260 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %245, %struct.bitmap_head_def*** %use, align 8
  %246 = load i32, i32* @n_basic_blocks, align 4
  %conv261 = sext i32 %246 to i64
  %mul262 = mul i64 8, %conv261
  %call263 = call noalias i8* @xmalloc(i64 %mul262)
  %247 = bitcast i8* %call263 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def** %247, %struct.bitmap_head_def*** %def, align 8
  store i32 0, i32* %i249, align 4
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.308, %cond.end.247
  %248 = load i32, i32* %i249, align 4
  %249 = load i32, i32* @n_basic_blocks, align 4
  %cmp265 = icmp slt i32 %248, %249
  br i1 %cmp265, label %for.body.267, label %for.end.310

for.body.267:                                     ; preds = %for.cond.264
  %250 = load i32, i32* %i249, align 4
  %idxprom268 = sext i32 %250 to i64
  %251 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data269 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %251, i32 0, i32 4
  %bb270 = bitcast %union.varray_data_tag* %data269 to [1 x %struct.basic_block_def*]*
  %arrayidx271 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb270, i32 0, i64 %idxprom268
  %252 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx271, align 8
  %index272 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %252, i32 0, i32 11
  %253 = load i32, i32* %index272, align 4
  %idxprom273 = sext i32 %253 to i64
  %254 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs274 = getelementptr inbounds %struct.df, %struct.df* %254, i32 0, i32 1
  %255 = load %struct.bb_info*, %struct.bb_info** %bbs274, align 8
  %arrayidx275 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %255, i64 %idxprom273
  %lr_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx275, i32 0, i32 10
  %256 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in, align 8
  %257 = load i32, i32* %i249, align 4
  %idxprom276 = sext i32 %257 to i64
  %258 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in250, align 8
  %arrayidx277 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %258, i64 %idxprom276
  store %struct.bitmap_head_def* %256, %struct.bitmap_head_def** %arrayidx277, align 8
  %259 = load i32, i32* %i249, align 4
  %idxprom278 = sext i32 %259 to i64
  %260 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data279 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %260, i32 0, i32 4
  %bb280 = bitcast %union.varray_data_tag* %data279 to [1 x %struct.basic_block_def*]*
  %arrayidx281 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb280, i32 0, i64 %idxprom278
  %261 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx281, align 8
  %index282 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %261, i32 0, i32 11
  %262 = load i32, i32* %index282, align 4
  %idxprom283 = sext i32 %262 to i64
  %263 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs284 = getelementptr inbounds %struct.df, %struct.df* %263, i32 0, i32 1
  %264 = load %struct.bb_info*, %struct.bb_info** %bbs284, align 8
  %arrayidx285 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %264, i64 %idxprom283
  %lr_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx285, i32 0, i32 11
  %265 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_out, align 8
  %266 = load i32, i32* %i249, align 4
  %idxprom286 = sext i32 %266 to i64
  %267 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out254, align 8
  %arrayidx287 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %267, i64 %idxprom286
  store %struct.bitmap_head_def* %265, %struct.bitmap_head_def** %arrayidx287, align 8
  %268 = load i32, i32* %i249, align 4
  %idxprom288 = sext i32 %268 to i64
  %269 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data289 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %269, i32 0, i32 4
  %bb290 = bitcast %union.varray_data_tag* %data289 to [1 x %struct.basic_block_def*]*
  %arrayidx291 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb290, i32 0, i64 %idxprom288
  %270 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx291, align 8
  %index292 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %270, i32 0, i32 11
  %271 = load i32, i32* %index292, align 4
  %idxprom293 = sext i32 %271 to i64
  %272 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs294 = getelementptr inbounds %struct.df, %struct.df* %272, i32 0, i32 1
  %273 = load %struct.bb_info*, %struct.bb_info** %bbs294, align 8
  %arrayidx295 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %273, i64 %idxprom293
  %lr_use = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx295, i32 0, i32 9
  %274 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_use, align 8
  %275 = load i32, i32* %i249, align 4
  %idxprom296 = sext i32 %275 to i64
  %276 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %use, align 8
  %arrayidx297 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %276, i64 %idxprom296
  store %struct.bitmap_head_def* %274, %struct.bitmap_head_def** %arrayidx297, align 8
  %277 = load i32, i32* %i249, align 4
  %idxprom298 = sext i32 %277 to i64
  %278 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data299 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %278, i32 0, i32 4
  %bb300 = bitcast %union.varray_data_tag* %data299 to [1 x %struct.basic_block_def*]*
  %arrayidx301 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb300, i32 0, i64 %idxprom298
  %279 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx301, align 8
  %index302 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %279, i32 0, i32 11
  %280 = load i32, i32* %index302, align 4
  %idxprom303 = sext i32 %280 to i64
  %281 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs304 = getelementptr inbounds %struct.df, %struct.df* %281, i32 0, i32 1
  %282 = load %struct.bb_info*, %struct.bb_info** %bbs304, align 8
  %arrayidx305 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %282, i64 %idxprom303
  %lr_def = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx305, i32 0, i32 8
  %283 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_def, align 8
  %284 = load i32, i32* %i249, align 4
  %idxprom306 = sext i32 %284 to i64
  %285 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %def, align 8
  %arrayidx307 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %285, i64 %idxprom306
  store %struct.bitmap_head_def* %283, %struct.bitmap_head_def** %arrayidx307, align 8
  br label %for.inc.308

for.inc.308:                                      ; preds = %for.body.267
  %286 = load i32, i32* %i249, align 4
  %inc309 = add nsw i32 %286, 1
  store i32 %inc309, i32* %i249, align 4
  br label %for.cond.264

for.end.310:                                      ; preds = %for.cond.264
  %287 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in250, align 8
  %288 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out254, align 8
  %289 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %use, align 8
  %290 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %def, align 8
  %291 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks311 = getelementptr inbounds %struct.df, %struct.df* %291, i32 0, i32 21
  %292 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks311, align 8
  %293 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rts_map312 = getelementptr inbounds %struct.df, %struct.df* %293, i32 0, i32 28
  %294 = load i32*, i32** %inverse_rts_map312, align 8
  call void @iterative_dataflow_bitmap(%struct.bitmap_head_def** %287, %struct.bitmap_head_def** %288, %struct.bitmap_head_def** %289, %struct.bitmap_head_def** %290, %struct.bitmap_head_def* %292, i32 1, i32 0, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* @df_lr_transfer_function, i32* %294, i8* null)
  %295 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in250, align 8
  %296 = bitcast %struct.bitmap_head_def** %295 to i8*
  call void @free(i8* %296) #4
  %297 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out254, align 8
  %298 = bitcast %struct.bitmap_head_def** %297 to i8*
  call void @free(i8* %298) #4
  %299 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %use, align 8
  %300 = bitcast %struct.bitmap_head_def** %299 to i8*
  call void @free(i8* %300) #4
  %301 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %def, align 8
  %302 = bitcast %struct.bitmap_head_def** %301 to i8*
  call void @free(i8* %302) #4
  br label %if.end.313

if.end.313:                                       ; preds = %for.end.310, %if.end.237
  %303 = load i32, i32* %aflags, align 4
  %and314 = and i32 %303, 32
  %tobool315 = icmp ne i32 %and314, 0
  br i1 %tobool315, label %if.then.316, label %if.end.318

if.then.316:                                      ; preds = %if.end.313
  %304 = load %struct.df*, %struct.df** %df.addr, align 8
  %305 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks317 = getelementptr inbounds %struct.df, %struct.df* %305, i32 0, i32 21
  %306 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks317, align 8
  call void @df_reg_info_compute(%struct.df* %304, %struct.bitmap_head_def* %306)
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.316, %if.end.313
  %307 = load %struct.df*, %struct.df** %df.addr, align 8
  %dfs_order319 = getelementptr inbounds %struct.df, %struct.df* %307, i32 0, i32 23
  %308 = load i32*, i32** %dfs_order319, align 8
  %309 = bitcast i32* %308 to i8*
  call void @free(i8* %309) #4
  %310 = load %struct.df*, %struct.df** %df.addr, align 8
  %rc_order320 = getelementptr inbounds %struct.df, %struct.df* %310, i32 0, i32 24
  %311 = load i32*, i32** %rc_order320, align 8
  %312 = bitcast i32* %311 to i8*
  call void @free(i8* %312) #4
  %313 = load %struct.df*, %struct.df** %df.addr, align 8
  %rts_order321 = getelementptr inbounds %struct.df, %struct.df* %313, i32 0, i32 25
  %314 = load i32*, i32** %rts_order321, align 8
  %315 = bitcast i32* %314 to i8*
  call void @free(i8* %315) #4
  %316 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rc_map322 = getelementptr inbounds %struct.df, %struct.df* %316, i32 0, i32 26
  %317 = load i32*, i32** %inverse_rc_map322, align 8
  %318 = bitcast i32* %317 to i8*
  call void @free(i8* %318) #4
  %319 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_dfs_map323 = getelementptr inbounds %struct.df, %struct.df* %319, i32 0, i32 27
  %320 = load i32*, i32** %inverse_dfs_map323, align 8
  %321 = bitcast i32* %320 to i8*
  call void @free(i8* %321) #4
  %322 = load %struct.df*, %struct.df** %df.addr, align 8
  %inverse_rts_map324 = getelementptr inbounds %struct.df, %struct.df* %322, i32 0, i32 28
  %323 = load i32*, i32** %inverse_rts_map324, align 8
  %324 = bitcast i32* %323 to i8*
  call void @free(i8* %324) #4
  ret void
}

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define void @df_finish(%struct.df* %df) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  call void @df_free(%struct.df* %0)
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %2 = bitcast %struct.df* %1 to i8*
  call void @free(i8* %2) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @df_insn_delete(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 0
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 2434, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.df_insn_delete, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %3)
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_insn_modify(%struct.df* %4, %struct.basic_block_def* %5, %struct.rtx_def* %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  ret %struct.rtx_def* %8
}

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @df_insn_modify(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 8
  %4 = load i32, i32* %insn_size, align 4
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  call void @df_insn_table_realloc(%struct.df* %5, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 20
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 11
  %9 = load i32, i32* %index, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %7, i32 %9)
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified = getelementptr inbounds %struct.df, %struct.df* %10, i32 0, i32 19
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified, align 8
  %12 = load i32, i32* %uid, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %11, i32 %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_insn_table_realloc(%struct.df* %df, i32 %size) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %size.addr = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 8
  %2 = load i32, i32* %insn_size, align 4
  %div = udiv i32 %2, 4
  store i32 %div, i32* %size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size1 = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 8
  %4 = load i32, i32* %insn_size1, align 4
  %5 = load i32, i32* %size.addr, align 4
  %add = add i32 %5, %4
  store i32 %add, i32* %size.addr, align 4
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 7
  %7 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %8 = bitcast %struct.insn_info* %7 to i8*
  %9 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 24
  %call = call i8* @xrealloc(i8* %8, i64 %mul)
  %10 = bitcast i8* %call to %struct.insn_info*
  %11 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns2 = getelementptr inbounds %struct.df, %struct.df* %11, i32 0, i32 7
  store %struct.insn_info* %10, %struct.insn_info** %insns2, align 8
  %12 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns3 = getelementptr inbounds %struct.df, %struct.df* %12, i32 0, i32 7
  %13 = load %struct.insn_info*, %struct.insn_info** %insns3, align 8
  %14 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size4 = getelementptr inbounds %struct.df, %struct.df* %14, i32 0, i32 8
  %15 = load i32, i32* %insn_size4, align 4
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.insn_info, %struct.insn_info* %13, i64 %idx.ext
  %16 = bitcast %struct.insn_info* %add.ptr to i8*
  %17 = load i32, i32* %size.addr, align 4
  %18 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size5 = getelementptr inbounds %struct.df, %struct.df* %18, i32 0, i32 8
  %19 = load i32, i32* %insn_size5, align 4
  %sub = sub i32 %17, %19
  %conv6 = zext i32 %sub to i64
  %mul7 = mul i64 %conv6, 24
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 %mul7, i32 8, i1 false)
  %20 = load i32, i32* %size.addr, align 4
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size8 = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 8
  store i32 %20, i32* %insn_size8, align 4
  %22 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified = getelementptr inbounds %struct.df, %struct.df* %22, i32 0, i32 19
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified, align 8
  %tobool9 = icmp ne %struct.bitmap_head_def* %23, null
  br i1 %tobool9, label %if.end.15, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %call11 = call noalias i8* @xmalloc(i64 24)
  %24 = bitcast i8* %call11 to %struct.bitmap_head_def*
  %call12 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %24)
  %25 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified13 = getelementptr inbounds %struct.df, %struct.df* %25, i32 0, i32 19
  store %struct.bitmap_head_def* %call12, %struct.bitmap_head_def** %insns_modified13, align 8
  %26 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified14 = getelementptr inbounds %struct.df, %struct.df* %26, i32 0, i32 19
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified14, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %27)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.10, %if.end
  ret void
}

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @df_insn_mem_replace(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn, %struct.rtx_def* %mem, %struct.rtx_def* %reg) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %mem.addr = alloca %struct.rtx_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %args = alloca %struct.replace_args, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %insn1 = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 2
  store %struct.rtx_def* %0, %struct.rtx_def** %insn1, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %match = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 0
  store %struct.rtx_def* %1, %struct.rtx_def** %match, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %replacement = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 1
  store %struct.rtx_def* %2, %struct.rtx_def** %replacement, align 8
  %modified = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 3
  store i32 0, i32* %modified, align 4
  %3 = bitcast %struct.replace_args* %args to i8*
  %call = call i32 @for_each_rtx(%struct.rtx_def** %insn.addr, i32 (%struct.rtx_def**, i8*)* @df_rtx_mem_replace, i8* %3)
  %modified2 = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 3
  %4 = load i32, i32* %modified2, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_insn_modify(%struct.df* %5, %struct.basic_block_def* %6, %struct.rtx_def* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %modified3 = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 3
  %8 = load i32, i32* %modified3, align 4
  ret i32 %8
}

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @df_rtx_mem_replace(%struct.rtx_def** %px, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %px.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %args = alloca %struct.replace_args*, align 8
  %mem = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %px, %struct.rtx_def*** %px.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.replace_args*
  store %struct.replace_args* %1, %struct.replace_args** %args, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %mem, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 66, label %sw.bb
    i32 55, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  %7 = load %struct.replace_args*, %struct.replace_args** %args, align 8
  %match = getelementptr inbounds %struct.replace_args, %struct.replace_args* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %match, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %8, %struct.rtx_def* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %sw.epilog
  %10 = load %struct.replace_args*, %struct.replace_args** %args, align 8
  %insn = getelementptr inbounds %struct.replace_args, %struct.replace_args* %10, i32 0, i32 2
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %13 = load %struct.replace_args*, %struct.replace_args** %args, align 8
  %replacement = getelementptr inbounds %struct.replace_args, %struct.replace_args* %13, i32 0, i32 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %replacement, align 8
  %call4 = call i32 @validate_change(%struct.rtx_def* %11, %struct.rtx_def** %12, %struct.rtx_def* %14, i32 1)
  %15 = load %struct.replace_args*, %struct.replace_args** %args, align 8
  %modified = getelementptr inbounds %struct.replace_args, %struct.replace_args* %15, i32 0, i32 3
  %16 = load i32, i32* %modified, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %modified, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %sw.default, %sw.bb.1, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @df_refs_reg_replace(%struct.df* %df, %struct.bitmap_head_def* %blocks, %struct.df_link* %chain, %struct.rtx_def* %oldreg, %struct.rtx_def* %newreg) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %chain.addr = alloca %struct.df_link*, align 8
  %oldreg.addr = alloca %struct.rtx_def*, align 8
  %newreg.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.df_link*, align 8
  %args = alloca %struct.replace_args, align 8
  %ref = alloca %struct.ref*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  store %struct.df_link* %chain, %struct.df_link** %chain.addr, align 8
  store %struct.rtx_def* %oldreg, %struct.rtx_def** %oldreg.addr, align 8
  store %struct.rtx_def* %newreg, %struct.rtx_def** %newreg.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %all_blocks = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 21
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %all_blocks, align 8
  store %struct.bitmap_head_def* %2, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %oldreg.addr, align 8
  %match = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 0
  store %struct.rtx_def* %3, %struct.rtx_def** %match, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %newreg.addr, align 8
  %replacement = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 1
  store %struct.rtx_def* %4, %struct.rtx_def** %replacement, align 8
  %modified = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 3
  store i32 0, i32* %modified, align 4
  %5 = load %struct.df_link*, %struct.df_link** %chain.addr, align 8
  store %struct.df_link* %5, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool1 = icmp ne %struct.df_link* %6, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref2 = getelementptr inbounds %struct.df_link, %struct.df_link* %7, i32 0, i32 1
  %8 = load %struct.ref*, %struct.ref** %ref2, align 8
  store %struct.ref* %8, %struct.ref** %ref, align 8
  %9 = load %struct.ref*, %struct.ref** %ref, align 8
  %insn3 = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn3, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load = load i32, i32* %12, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  br label %for.inc

if.end.6:                                         ; preds = %for.body
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %15 = load %struct.ref*, %struct.ref** %ref, align 8
  %insn7 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn7, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %17 = load i32, i32* %rtint, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx10 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom9
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx10, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 11
  %20 = load i32, i32* %index, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %14, i32 %20)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.6
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %22 = load %struct.ref*, %struct.ref** %ref, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %oldreg.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %newreg.addr, align 8
  %call13 = call i32 @df_ref_reg_replace(%struct.df* %21, %struct.ref* %22, %struct.rtx_def* %23, %struct.rtx_def* %24)
  %25 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %25, i32 0, i32 0
  %26 = load %struct.df_link*, %struct.df_link** %next, align 8
  %tobool14 = icmp ne %struct.df_link* %26, null
  br i1 %tobool14, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then.12
  %27 = load %struct.ref*, %struct.ref** %ref, align 8
  %insn15 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 1
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn15, align 8
  %29 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next16 = getelementptr inbounds %struct.df_link, %struct.df_link* %29, i32 0, i32 0
  %30 = load %struct.df_link*, %struct.df_link** %next16, align 8
  %ref17 = getelementptr inbounds %struct.df_link, %struct.df_link* %30, i32 0, i32 1
  %31 = load %struct.ref*, %struct.ref** %ref17, align 8
  %insn18 = getelementptr inbounds %struct.ref, %struct.ref* %31, i32 0, i32 1
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn18, align 8
  %cmp19 = icmp ne %struct.rtx_def* %28, %32
  br i1 %cmp19, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then.12
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool23 = icmp ne %struct.rtx_def* %34, null
  br i1 %tobool23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %land.lhs.true
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %insn25 = getelementptr inbounds %struct.replace_args, %struct.replace_args* %args, i32 0, i32 2
  store %struct.rtx_def* %35, %struct.rtx_def** %insn25, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 6
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %37 = bitcast %struct.replace_args* %args to i8*
  %call29 = call i32 @for_each_rtx(%struct.rtx_def** %rtx28, i32 (%struct.rtx_def**, i8*)* @df_rtx_reg_replace, i8* %37)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.24, %land.lhs.true, %lor.lhs.false
  br label %if.end.31

if.else:                                          ; preds = %if.end.6
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 2624, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.df_refs_reg_replace, i32 0, i32 0)) #6
  unreachable

if.end.31:                                        ; preds = %if.end.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.31, %if.then.5
  %38 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next32 = getelementptr inbounds %struct.df_link, %struct.df_link* %38, i32 0, i32 0
  %39 = load %struct.df_link*, %struct.df_link** %next32, align 8
  store %struct.df_link* %39, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @df_ref_reg_replace(%struct.df* %df, %struct.ref* %ref, %struct.rtx_def* %oldreg, %struct.rtx_def* %newreg) #0 {
entry:
  %retval = alloca i32, align 4
  %df.addr = alloca %struct.df*, align 8
  %ref.addr = alloca %struct.ref*, align 8
  %oldreg.addr = alloca %struct.rtx_def*, align 8
  %newreg.addr = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.ref* %ref, %struct.ref** %ref.addr, align 8
  store %struct.rtx_def* %oldreg, %struct.rtx_def** %oldreg.addr, align 8
  store %struct.rtx_def* %newreg, %struct.rtx_def** %newreg.addr, align 8
  %0 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %oldreg.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %oldreg.addr, align 8
  %6 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp2 = icmp ne %struct.rtx_def* %5, %7
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 2664, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.df_ref_reg_replace, i32 0, i32 0)) #6
  unreachable

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn6 = getelementptr inbounds %struct.ref, %struct.ref* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn6, align 8
  %10 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %loc = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 2
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %newreg.addr, align 8
  %call = call i32 @validate_change(%struct.rtx_def* %9, %struct.rtx_def** %11, %struct.rtx_def* %12, i32 1)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %14 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn10 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn10, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %16 = load i32, i32* %rtint, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx13 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom12
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx13, align 8
  %19 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn14 = getelementptr inbounds %struct.ref, %struct.ref* %19, i32 0, i32 1
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn14, align 8
  call void @df_insn_modify(%struct.df* %13, %struct.basic_block_def* %18, %struct.rtx_def* %20)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @df_rtx_reg_replace(%struct.rtx_def** %px, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %px.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %args = alloca %struct.replace_args*, align 8
  store %struct.rtx_def** %px, %struct.rtx_def*** %px.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.replace_args*
  store %struct.replace_args* %3, %struct.replace_args** %args, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = load %struct.replace_args*, %struct.replace_args** %args, align 8
  %match = getelementptr inbounds %struct.replace_args, %struct.replace_args* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %match, align 8
  %cmp1 = icmp eq %struct.rtx_def* %5, %7
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.replace_args*, %struct.replace_args** %args, align 8
  %insn = getelementptr inbounds %struct.replace_args, %struct.replace_args* %8, i32 0, i32 2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %11 = load %struct.replace_args*, %struct.replace_args** %args, align 8
  %replacement = getelementptr inbounds %struct.replace_args, %struct.replace_args* %11, i32 0, i32 1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %replacement, align 8
  %call = call i32 @validate_change(%struct.rtx_def* %9, %struct.rtx_def** %10, %struct.rtx_def* %12, i32 1)
  %13 = load %struct.replace_args*, %struct.replace_args** %args, align 8
  %modified = getelementptr inbounds %struct.replace_args, %struct.replace_args* %13, i32 0, i32 3
  %14 = load i32, i32* %modified, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %modified, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @df_reg_replace(%struct.df* %df, %struct.bitmap_head_def* %blocks, %struct.rtx_def* %oldreg, %struct.rtx_def* %newreg) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %oldreg.addr = alloca %struct.rtx_def*, align 8
  %newreg.addr = alloca %struct.rtx_def*, align 8
  %oldregno = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  store %struct.rtx_def* %oldreg, %struct.rtx_def** %oldreg.addr, align 8
  store %struct.rtx_def* %newreg, %struct.rtx_def** %newreg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %oldreg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %oldregno, align 4
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %4 = load i32, i32* %oldregno, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %5, i32 0, i32 5
  %6 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx1 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %6, i64 %idxprom
  %defs = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx1, i32 0, i32 0
  %7 = load %struct.df_link*, %struct.df_link** %defs, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %oldreg.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %newreg.addr, align 8
  call void @df_refs_reg_replace(%struct.df* %2, %struct.bitmap_head_def* %3, %struct.df_link* %7, %struct.rtx_def* %8, %struct.rtx_def* %9)
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %12 = load i32, i32* %oldregno, align 4
  %idxprom2 = zext i32 %12 to i64
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs3 = getelementptr inbounds %struct.df, %struct.df* %13, i32 0, i32 5
  %14 = load %struct.reg_info*, %struct.reg_info** %regs3, align 8
  %arrayidx4 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %14, i64 %idxprom2
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx4, i32 0, i32 1
  %15 = load %struct.df_link*, %struct.df_link** %uses, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %oldreg.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %newreg.addr, align 8
  call void @df_refs_reg_replace(%struct.df* %10, %struct.bitmap_head_def* %11, %struct.df_link* %15, %struct.rtx_def* %16, %struct.rtx_def* %17)
  ret i32 1
}

declare i32 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.ref* @df_bb_def_use_swap(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %def_insn, %struct.rtx_def* %use_insn, i32 %regno) #0 {
entry:
  %retval = alloca %struct.ref*, align 8
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %def_insn.addr = alloca %struct.rtx_def*, align 8
  %use_insn.addr = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %def = alloca %struct.ref*, align 8
  %use = alloca %struct.ref*, align 8
  %def_uid = alloca i32, align 4
  %use_uid = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %def_insn, %struct.rtx_def** %def_insn.addr, align 8
  store %struct.rtx_def* %use_insn, %struct.rtx_def** %use_insn.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %3 = load i32, i32* %regno.addr, align 4
  %call = call %struct.ref* @df_bb_insn_regno_first_def_find(%struct.df* %0, %struct.basic_block_def* %1, %struct.rtx_def* %2, i32 %3)
  store %struct.ref* %call, %struct.ref** %def, align 8
  %4 = load %struct.ref*, %struct.ref** %def, align 8
  %tobool = icmp ne %struct.ref* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.ref* null, %struct.ref** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %use_insn.addr, align 8
  %8 = load i32, i32* %regno.addr, align 4
  %call1 = call %struct.ref* @df_bb_insn_regno_last_use_find(%struct.df* %5, %struct.basic_block_def* %6, %struct.rtx_def* %7, i32 %8)
  store %struct.ref* %call1, %struct.ref** %use, align 8
  %9 = load %struct.ref*, %struct.ref** %use, align 8
  %tobool2 = icmp ne %struct.ref* %9, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct.ref* null, %struct.ref** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %use_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %11 = load i32, i32* %rtint, align 4
  store i32 %11, i32* %use_uid, align 4
  %12 = load %struct.df*, %struct.df** %df.addr, align 8
  %13 = load %struct.ref*, %struct.ref** %use, align 8
  call void @df_use_unlink(%struct.df* %12, %struct.ref* %13)
  %14 = load i32, i32* %use_uid, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %15, i32 0, i32 7
  %16 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx5 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %16, i64 %idxprom
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx5, i32 0, i32 1
  %17 = load %struct.ref*, %struct.ref** %use, align 8
  %call6 = call %struct.df_link* @df_ref_unlink(%struct.df_link** %uses, %struct.ref* %17)
  %18 = load %struct.rtx_def*, %struct.rtx_def** %def_insn.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %19 = load i32, i32* %rtint9, align 4
  store i32 %19, i32* %def_uid, align 4
  %20 = load i32, i32* %def_uid, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns11 = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 7
  %22 = load %struct.insn_info*, %struct.insn_info** %insns11, align 8
  %arrayidx12 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %22, i64 %idxprom10
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx12, i32 0, i32 0
  %23 = load %struct.ref*, %struct.ref** %def, align 8
  %call13 = call %struct.df_link* @df_ref_unlink(%struct.df_link** %defs, %struct.ref* %23)
  store %struct.df_link* %call13, %struct.df_link** %link, align 8
  %24 = load %struct.ref*, %struct.ref** %def, align 8
  %25 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %25, i32 0, i32 1
  store %struct.ref* %24, %struct.ref** %ref, align 8
  %26 = load i32, i32* %use_uid, align 4
  %idxprom14 = sext i32 %26 to i64
  %27 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns15 = getelementptr inbounds %struct.df, %struct.df* %27, i32 0, i32 7
  %28 = load %struct.insn_info*, %struct.insn_info** %insns15, align 8
  %arrayidx16 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %28, i64 %idxprom14
  %defs17 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx16, i32 0, i32 0
  %29 = load %struct.df_link*, %struct.df_link** %defs17, align 8
  %30 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %30, i32 0, i32 0
  store %struct.df_link* %29, %struct.df_link** %next, align 8
  %31 = load %struct.df_link*, %struct.df_link** %link, align 8
  %32 = load i32, i32* %use_uid, align 4
  %idxprom18 = sext i32 %32 to i64
  %33 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns19 = getelementptr inbounds %struct.df, %struct.df* %33, i32 0, i32 7
  %34 = load %struct.insn_info*, %struct.insn_info** %insns19, align 8
  %arrayidx20 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %34, i64 %idxprom18
  %defs21 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx20, i32 0, i32 0
  store %struct.df_link* %31, %struct.df_link** %defs21, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %use_insn.addr, align 8
  %36 = load %struct.ref*, %struct.ref** %def, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %36, i32 0, i32 1
  store %struct.rtx_def* %35, %struct.rtx_def** %insn, align 8
  %37 = load %struct.ref*, %struct.ref** %def, align 8
  store %struct.ref* %37, %struct.ref** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %38 = load %struct.ref*, %struct.ref** %retval
  ret %struct.ref* %38
}

; Function Attrs: nounwind uwtable
define internal %struct.ref* @df_bb_insn_regno_first_def_find(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn, i32 %regno) #0 {
entry:
  %retval = alloca %struct.ref*, align 8
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %uid = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 7
  %4 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %4, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %5 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %5, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %7, i32 0, i32 1
  %8 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %8, %struct.ref** %def, align 8
  %9 = load %struct.ref*, %struct.ref** %def, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load %struct.ref*, %struct.ref** %def, align 8
  %reg2 = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load %struct.ref*, %struct.ref** %def, align 8
  %reg5 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %14, %cond.true ], [ %16, %cond.false ]
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %17 = load i32, i32* %rtuint, align 4
  %18 = load i32, i32* %regno.addr, align 4
  %cmp8 = icmp eq i32 %17, %18
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %19 = load %struct.ref*, %struct.ref** %def, align 8
  store %struct.ref* %19, %struct.ref** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %20, i32 0, i32 0
  %21 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %21, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.ref* null, %struct.ref** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load %struct.ref*, %struct.ref** %retval
  ret %struct.ref* %22
}

; Function Attrs: nounwind uwtable
define internal %struct.ref* @df_bb_insn_regno_last_use_find(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn, i32 %regno) #0 {
entry:
  %retval = alloca %struct.ref*, align 8
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %uid = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %use = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 7
  %4 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %4, i64 %idxprom
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 1
  %5 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %5, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %7, i32 0, i32 1
  %8 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %8, %struct.ref** %use, align 8
  %9 = load %struct.ref*, %struct.ref** %use, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load %struct.ref*, %struct.ref** %use, align 8
  %reg2 = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load %struct.ref*, %struct.ref** %use, align 8
  %reg5 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %14, %cond.true ], [ %16, %cond.false ]
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %17 = load i32, i32* %rtuint, align 4
  %18 = load i32, i32* %regno.addr, align 4
  %cmp8 = icmp eq i32 %17, %18
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %19 = load %struct.ref*, %struct.ref** %use, align 8
  store %struct.ref* %19, %struct.ref** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %20, i32 0, i32 0
  %21 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %21, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.ref* null, %struct.ref** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load %struct.ref*, %struct.ref** %retval
  ret %struct.ref* %22
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @df_pattern_emit_before(%struct.df* %df, %struct.rtx_def* %pattern, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %df.addr = alloca %struct.df*, align 8
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ret_insn = alloca %struct.rtx_def*, align 8
  %prev_insn = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev_insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 2770, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.df_pattern_emit_before, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %5, %struct.rtx_def* %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %ret_insn, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %7, %8
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  call void @df_insns_modify(%struct.df* %10, %struct.basic_block_def* %11, %struct.rtx_def* %13, %struct.rtx_def* %14)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @df_insns_modify(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %first_insn, %struct.rtx_def* %last_insn) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %first_insn.addr = alloca %struct.rtx_def*, align 8
  %last_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %first_insn, %struct.rtx_def** %first_insn.addr, align 8
  store %struct.rtx_def* %last_insn, %struct.rtx_def** %last_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %first_insn.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 26
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 36
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 2742, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.df_insns_modify, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtint, align 4
  store i32 %8, i32* %uid, align 4
  %9 = load i32, i32* %uid, align 4
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size = getelementptr inbounds %struct.df, %struct.df* %10, i32 0, i32 8
  %11 = load i32, i32* %insn_size, align 4
  %cmp6 = icmp uge i32 %9, %11
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.df*, %struct.df** %df.addr, align 8
  call void @df_insn_table_realloc(%struct.df* %12, i32 0)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @df_insn_modify(%struct.df* %13, %struct.basic_block_def* %14, %struct.rtx_def* %15)
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %last_insn.addr, align 8
  %cmp9 = icmp eq %struct.rtx_def* %16, %17
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  br label %for.end

if.end.11:                                        ; preds = %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.10
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @df_pattern_emit_after(%struct.df* %df, %struct.rtx_def* %pattern, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %df.addr = alloca %struct.df*, align 8
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ret_insn = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %0, %struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %ret_insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  call void @df_insns_modify(%struct.df* %5, %struct.basic_block_def* %6, %struct.rtx_def* %8, %struct.rtx_def* %9)
  %10 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %11
}

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @df_jump_pattern_emit_after(%struct.df* %df, %struct.rtx_def* %pattern, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %df.addr = alloca %struct.df*, align 8
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ret_insn = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %0, %struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %ret_insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  call void @df_insns_modify(%struct.df* %5, %struct.basic_block_def* %6, %struct.rtx_def* %8, %struct.rtx_def* %9)
  %10 = load %struct.rtx_def*, %struct.rtx_def** %ret_insn, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %11
}

declare %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @df_insn_move_before(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn, %struct.basic_block_def* %before_bb, %struct.rtx_def* %before_insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %before_bb.addr = alloca %struct.basic_block_def*, align 8
  %before_insn.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.df_link*, align 8
  %uid = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.basic_block_def* %before_bb, %struct.basic_block_def** %before_bb.addr, align 8
  store %struct.rtx_def* %before_insn, %struct.rtx_def** %before_insn.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %tobool = icmp ne %struct.basic_block_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %before_bb.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %before_insn.addr, align 8
  %call = call %struct.rtx_def* @df_pattern_emit_before(%struct.df* %1, %struct.rtx_def* %2, %struct.basic_block_def* %3, %struct.rtx_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtint, align 4
  store i32 %6, i32* %uid, align 4
  %7 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %8, i32 0, i32 7
  %9 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %9, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %10 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %10, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool2 = icmp ne %struct.df_link* %11, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %before_bb.addr, align 8
  %13 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %13, i32 0, i32 1
  %14 = load %struct.ref*, %struct.ref** %ref, align 8
  %insn3 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %16 = load i32, i32* %rtint6, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 4
  %bb8 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb8, i32 0, i64 %idxprom7
  store %struct.basic_block_def* %12, %struct.basic_block_def** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %18, i32 0, i32 0
  %19 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %19, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %uid, align 4
  %idxprom10 = zext i32 %20 to i64
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns11 = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 7
  %22 = load %struct.insn_info*, %struct.insn_info** %insns11, align 8
  %arrayidx12 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %22, i64 %idxprom10
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx12, i32 0, i32 1
  %23 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %23, %struct.df_link** %link, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.25, %for.end
  %24 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool14 = icmp ne %struct.df_link* %24, null
  br i1 %tobool14, label %for.body.15, label %for.end.27

for.body.15:                                      ; preds = %for.cond.13
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %before_bb.addr, align 8
  %26 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref16 = getelementptr inbounds %struct.df_link, %struct.df_link* %26, i32 0, i32 1
  %27 = load %struct.ref*, %struct.ref** %ref16, align 8
  %insn17 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 1
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %29 = load i32, i32* %rtint20, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data22 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb23 = bitcast %union.varray_data_tag* %data22 to [1 x %struct.basic_block_def*]*
  %arrayidx24 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb23, i32 0, i64 %idxprom21
  store %struct.basic_block_def* %25, %struct.basic_block_def** %arrayidx24, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.15
  %31 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next26 = getelementptr inbounds %struct.df_link, %struct.df_link* %31, i32 0, i32 0
  %32 = load %struct.df_link*, %struct.df_link** %next26, align 8
  store %struct.df_link* %32, %struct.df_link** %link, align 8
  br label %for.cond.13

for.end.27:                                       ; preds = %for.cond.13
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %before_insn.addr, align 8
  %call28 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %33, %struct.rtx_def* %34)
  store %struct.rtx_def* %call28, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.27, %if.then
  %35 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %35
}

; Function Attrs: nounwind uwtable
define i32 @df_insn_regno_def_p(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn, i32 %regno) #0 {
entry:
  %retval = alloca i32, align 4
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %uid = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 7
  %4 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %4, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %5 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %5, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %7, i32 0, i32 1
  %8 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %8, %struct.ref** %def, align 8
  %9 = load %struct.ref*, %struct.ref** %def, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load %struct.ref*, %struct.ref** %def, align 8
  %reg2 = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load %struct.ref*, %struct.ref** %def, align 8
  %reg5 = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg5, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %14, %cond.true ], [ %16, %cond.false ]
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %17 = load i32, i32* %rtuint, align 4
  %18 = load i32, i32* %regno.addr, align 4
  %cmp8 = icmp eq i32 %17, %18
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %19, i32 0, i32 0
  %20 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %20, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @df_insn_dominates_all_uses_p(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 7
  %4 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %4, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %5 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %5, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %7, i32 0, i32 1
  %8 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %8, %struct.ref** %def, align 8
  %9 = load %struct.df*, %struct.df** %df.addr, align 8
  %10 = load %struct.ref*, %struct.ref** %def, align 8
  %call = call i32 @df_def_dominates_all_uses_p(%struct.df* %9, %struct.ref* %10)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %11, i32 0, i32 0
  %12 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %12, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @df_def_dominates_all_uses_p(%struct.df* %df, %struct.ref* %def) #0 {
entry:
  %retval = alloca i32, align 4
  %df.addr = alloca %struct.df*, align 8
  %def.addr = alloca %struct.ref*, align 8
  %du_link = alloca %struct.df_link*, align 8
  %use = alloca %struct.ref*, align 8
  %ud_link = alloca %struct.df_link*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.ref* %def, %struct.ref** %def.addr, align 8
  %0 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %0, i32 0, i32 3
  %1 = load %struct.df_link*, %struct.df_link** %chain, align 8
  store %struct.df_link* %1, %struct.df_link** %du_link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %2 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %tobool = icmp ne %struct.df_link* %2, null
  br i1 %tobool, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %3 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %3, i32 0, i32 1
  %4 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %4, %struct.ref** %use, align 8
  %5 = load %struct.ref*, %struct.ref** %use, align 8
  %chain1 = getelementptr inbounds %struct.ref, %struct.ref* %5, i32 0, i32 3
  %6 = load %struct.df_link*, %struct.df_link** %chain1, align 8
  store %struct.df_link* %6, %struct.df_link** %ud_link, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %tobool3 = icmp ne %struct.df_link* %7, null
  br i1 %tobool3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %ref5 = getelementptr inbounds %struct.df_link, %struct.df_link* %8, i32 0, i32 1
  %9 = load %struct.ref*, %struct.ref** %ref5, align 8
  %10 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %cmp = icmp ne %struct.ref* %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %11, i32 0, i32 0
  %12 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %12, %struct.df_link** %ud_link, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %13 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %next7 = getelementptr inbounds %struct.df_link, %struct.df_link* %13, i32 0, i32 0
  %14 = load %struct.df_link*, %struct.df_link** %next7, align 8
  store %struct.df_link* %14, %struct.df_link** %du_link, align 8
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.8, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @df_insn_dominates_uses_p(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %retval = alloca i32, align 4
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %uid = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 7
  %4 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %4, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %5 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %5, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %7, i32 0, i32 1
  %8 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %8, %struct.ref** %def, align 8
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %10 = load %struct.ref*, %struct.ref** %def, align 8
  %insn2 = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %12 = load i32, i32* %rtint5, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %bb7 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx8 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb7, i32 0, i64 %idxprom6
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx8, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 11
  %15 = load i32, i32* %index, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %9, i32 %15)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %16 = load %struct.df*, %struct.df** %df.addr, align 8
  %17 = load %struct.ref*, %struct.ref** %def, align 8
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %call10 = call i32 @df_def_dominates_uses_p(%struct.df* %16, %struct.ref* %17, %struct.bitmap_head_def* %18)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %19, i32 0, i32 0
  %20 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %20, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @df_def_dominates_uses_p(%struct.df* %df, %struct.ref* %def, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %retval = alloca i32, align 4
  %df.addr = alloca %struct.df*, align 8
  %def.addr = alloca %struct.ref*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %du_link = alloca %struct.df_link*, align 8
  %use = alloca %struct.ref*, align 8
  %ud_link = alloca %struct.df_link*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.ref* %def, %struct.ref** %def.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  %0 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %0, i32 0, i32 3
  %1 = load %struct.df_link*, %struct.df_link** %chain, align 8
  store %struct.df_link* %1, %struct.df_link** %du_link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %2 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %tobool = icmp ne %struct.df_link* %2, null
  br i1 %tobool, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %3 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %3, i32 0, i32 1
  %4 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %4, %struct.ref** %use, align 8
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %6 = load %struct.ref*, %struct.ref** %use, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx1 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx1, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 11
  %11 = load i32, i32* %index, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %11)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %if.end.9

if.then:                                          ; preds = %for.body
  %12 = load %struct.ref*, %struct.ref** %use, align 8
  %chain3 = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 3
  %13 = load %struct.df_link*, %struct.df_link** %chain3, align 8
  store %struct.df_link* %13, %struct.df_link** %ud_link, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %14 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %tobool5 = icmp ne %struct.df_link* %14, null
  br i1 %tobool5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %15 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %ref7 = getelementptr inbounds %struct.df_link, %struct.df_link* %15, i32 0, i32 1
  %16 = load %struct.ref*, %struct.ref** %ref7, align 8
  %17 = load %struct.ref*, %struct.ref** %def.addr, align 8
  %cmp = icmp ne %struct.ref* %16, %17
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.df_link*, %struct.df_link** %ud_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %18, i32 0, i32 0
  %19 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %19, %struct.df_link** %ud_link, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %for.body
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end.9
  %20 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %next11 = getelementptr inbounds %struct.df_link, %struct.df_link* %20, i32 0, i32 0
  %21 = load %struct.df_link*, %struct.df_link** %next11, align 8
  store %struct.df_link* %21, %struct.df_link** %du_link, align 8
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.12, %if.then.8
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct.basic_block_def* @df_regno_bb(%struct.df* %df, i32 %regno) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %regno.addr = alloca i32, align 4
  %defs = alloca %struct.df_link*, align 8
  %uses = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  %use = alloca %struct.ref*, align 8
  %bb_def = alloca %struct.basic_block_def*, align 8
  %bb_use = alloca %struct.basic_block_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 5
  %2 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx = getelementptr inbounds %struct.reg_info, %struct.reg_info* %2, i64 %idxprom
  %defs1 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx, i32 0, i32 0
  %3 = load %struct.df_link*, %struct.df_link** %defs1, align 8
  store %struct.df_link* %3, %struct.df_link** %defs, align 8
  %4 = load i32, i32* %regno.addr, align 4
  %idxprom2 = zext i32 %4 to i64
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs3 = getelementptr inbounds %struct.df, %struct.df* %5, i32 0, i32 5
  %6 = load %struct.reg_info*, %struct.reg_info** %regs3, align 8
  %arrayidx4 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %6, i64 %idxprom2
  %uses5 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx4, i32 0, i32 1
  %7 = load %struct.df_link*, %struct.df_link** %uses5, align 8
  store %struct.df_link* %7, %struct.df_link** %uses, align 8
  %8 = load %struct.df_link*, %struct.df_link** %defs, align 8
  %tobool = icmp ne %struct.df_link* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.df_link*, %struct.df_link** %defs, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %9, i32 0, i32 1
  %10 = load %struct.ref*, %struct.ref** %ref, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref* [ %10, %cond.true ], [ null, %cond.false ]
  store %struct.ref* %cond, %struct.ref** %def, align 8
  %11 = load %struct.df_link*, %struct.df_link** %uses, align 8
  %tobool6 = icmp ne %struct.df_link* %11, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.end
  %12 = load %struct.df_link*, %struct.df_link** %uses, align 8
  %ref8 = getelementptr inbounds %struct.df_link, %struct.df_link* %12, i32 0, i32 1
  %13 = load %struct.ref*, %struct.ref** %ref8, align 8
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.7
  %cond11 = phi %struct.ref* [ %13, %cond.true.7 ], [ null, %cond.false.9 ]
  store %struct.ref* %cond11, %struct.ref** %use, align 8
  %14 = load %struct.ref*, %struct.ref** %def, align 8
  %tobool12 = icmp ne %struct.ref* %14, null
  br i1 %tobool12, label %cond.true.13, label %cond.false.17

cond.true.13:                                     ; preds = %cond.end.10
  %15 = load %struct.ref*, %struct.ref** %def, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %17 = load i32, i32* %rtint, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx16 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom15
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx16, align 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end.10
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.13
  %cond19 = phi %struct.basic_block_def* [ %19, %cond.true.13 ], [ null, %cond.false.17 ]
  store %struct.basic_block_def* %cond19, %struct.basic_block_def** %bb_def, align 8
  %20 = load %struct.ref*, %struct.ref** %use, align 8
  %tobool20 = icmp ne %struct.ref* %20, null
  br i1 %tobool20, label %cond.true.21, label %cond.false.30

cond.true.21:                                     ; preds = %cond.end.18
  %21 = load %struct.ref*, %struct.ref** %use, align 8
  %insn22 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 1
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %23 = load i32, i32* %rtint25, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data27 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 4
  %bb28 = bitcast %union.varray_data_tag* %data27 to [1 x %struct.basic_block_def*]*
  %arrayidx29 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb28, i32 0, i64 %idxprom26
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx29, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.end.18
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.21
  %cond32 = phi %struct.basic_block_def* [ %25, %cond.true.21 ], [ null, %cond.false.30 ]
  store %struct.basic_block_def* %cond32, %struct.basic_block_def** %bb_use, align 8
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %bb_def, align 8
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %bb_use, align 8
  %cmp = icmp eq %struct.basic_block_def* %26, %27
  br i1 %cmp, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end.31
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb_def, align 8
  br label %cond.end.35

cond.false.34:                                    ; preds = %cond.end.31
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi %struct.basic_block_def* [ %28, %cond.true.33 ], [ null, %cond.false.34 ]
  ret %struct.basic_block_def* %cond36
}

; Function Attrs: nounwind uwtable
define i32 @df_reg_global_p(%struct.df* %df, %struct.rtx_def* %reg) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %2 = load i32, i32* %rtuint, align 4
  %call = call %struct.basic_block_def* @df_regno_bb(%struct.df* %0, i32 %2)
  %cmp = icmp ne %struct.basic_block_def* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @df_reg_lifetime(%struct.df* %df, %struct.rtx_def* %reg) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 5
  %3 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx1 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %3, i64 %idxprom
  %lifetime = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx1, i32 0, i32 2
  %4 = load i32, i32* %lifetime, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @df_bb_reg_live_start_p(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %reg) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 1
  %3 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx = getelementptr inbounds %struct.bb_info, %struct.bb_info* %3, i64 %idxprom
  store %struct.bb_info* %arrayidx, %struct.bb_info** %bb_info, align 8
  %4 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %4, i32 0, i32 10
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx1 to i32*
  %7 = load i32, i32* %rtuint, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %7)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @df_bb_reg_live_end_p(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %reg) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 1
  %3 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx = getelementptr inbounds %struct.bb_info, %struct.bb_info* %3, i64 %idxprom
  store %struct.bb_info* %arrayidx, %struct.bb_info** %bb_info, align 8
  %4 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %4, i32 0, i32 11
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_out, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx1 to i32*
  %7 = load i32, i32* %rtuint, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %7)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @df_bb_regs_lives_compare(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %reg1, %struct.rtx_def* %reg2) #0 {
entry:
  %retval = alloca i32, align 4
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %reg1.addr = alloca %struct.rtx_def*, align 8
  %reg2.addr = alloca %struct.rtx_def*, align 8
  %regno1 = alloca i32, align 4
  %regno2 = alloca i32, align 4
  %def1 = alloca %struct.ref*, align 8
  %use1 = alloca %struct.ref*, align 8
  %def2 = alloca %struct.ref*, align 8
  %use2 = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %reg1, %struct.rtx_def** %reg1.addr, align 8
  store %struct.rtx_def* %reg2, %struct.rtx_def** %reg2.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %regno1, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg2.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtuint3, align 4
  store i32 %3, i32* %regno2, align 4
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %5 = load i32, i32* %regno1, align 4
  %call = call %struct.basic_block_def* @df_regno_bb(%struct.df* %4, i32 %5)
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp = icmp ne %struct.basic_block_def* %call, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.df*, %struct.df** %df.addr, align 8
  %8 = load i32, i32* %regno2, align 4
  %call4 = call %struct.basic_block_def* @df_regno_bb(%struct.df* %7, i32 %8)
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp5 = icmp ne %struct.basic_block_def* %call4, %9
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 3081, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.df_bb_regs_lives_compare, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %12 = load i32, i32* %regno2, align 4
  %call6 = call %struct.ref* @df_bb_regno_first_def_find(%struct.df* %10, %struct.basic_block_def* %11, i32 %12)
  store %struct.ref* %call6, %struct.ref** %def2, align 8
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %15 = load i32, i32* %regno1, align 4
  %call7 = call %struct.ref* @df_bb_regno_last_use_find(%struct.df* %13, %struct.basic_block_def* %14, i32 %15)
  store %struct.ref* %call7, %struct.ref** %use1, align 8
  %16 = load %struct.ref*, %struct.ref** %def2, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %16, i32 0, i32 1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %18 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %19, i32 0, i32 7
  %20 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx10 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %20, i64 %idxprom
  %luid = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx10, i32 0, i32 2
  %21 = load i32, i32* %luid, align 4
  %22 = load %struct.ref*, %struct.ref** %use1, align 8
  %insn11 = getelementptr inbounds %struct.ref, %struct.ref* %22, i32 0, i32 1
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %24 = load i32, i32* %rtint14, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns16 = getelementptr inbounds %struct.df, %struct.df* %25, i32 0, i32 7
  %26 = load %struct.insn_info*, %struct.insn_info** %insns16, align 8
  %arrayidx17 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %26, i64 %idxprom15
  %luid18 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx17, i32 0, i32 2
  %27 = load i32, i32* %luid18, align 4
  %cmp19 = icmp sgt i32 %21, %27
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end
  %28 = load %struct.df*, %struct.df** %df.addr, align 8
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %30 = load i32, i32* %regno1, align 4
  %call22 = call %struct.ref* @df_bb_regno_first_def_find(%struct.df* %28, %struct.basic_block_def* %29, i32 %30)
  store %struct.ref* %call22, %struct.ref** %def1, align 8
  %31 = load %struct.df*, %struct.df** %df.addr, align 8
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %33 = load i32, i32* %regno2, align 4
  %call23 = call %struct.ref* @df_bb_regno_last_use_find(%struct.df* %31, %struct.basic_block_def* %32, i32 %33)
  store %struct.ref* %call23, %struct.ref** %use2, align 8
  %34 = load %struct.ref*, %struct.ref** %def1, align 8
  %insn24 = getelementptr inbounds %struct.ref, %struct.ref* %34, i32 0, i32 1
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn24, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtint27 = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %36 = load i32, i32* %rtint27, align 4
  %idxprom28 = sext i32 %36 to i64
  %37 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns29 = getelementptr inbounds %struct.df, %struct.df* %37, i32 0, i32 7
  %38 = load %struct.insn_info*, %struct.insn_info** %insns29, align 8
  %arrayidx30 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %38, i64 %idxprom28
  %luid31 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx30, i32 0, i32 2
  %39 = load i32, i32* %luid31, align 4
  %40 = load %struct.ref*, %struct.ref** %use2, align 8
  %insn32 = getelementptr inbounds %struct.ref, %struct.ref* %40, i32 0, i32 1
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtint35 = bitcast %union.rtunion_def* %arrayidx34 to i32*
  %42 = load i32, i32* %rtint35, align 4
  %idxprom36 = sext i32 %42 to i64
  %43 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns37 = getelementptr inbounds %struct.df, %struct.df* %43, i32 0, i32 7
  %44 = load %struct.insn_info*, %struct.insn_info** %insns37, align 8
  %arrayidx38 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %44, i64 %idxprom36
  %luid39 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx38, i32 0, i32 2
  %45 = load i32, i32* %luid39, align 4
  %cmp40 = icmp sgt i32 %39, %45
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.21
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.21
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.then.41, %if.then.20
  %46 = load i32, i32* %retval
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal %struct.ref* @df_bb_regno_first_def_find(%struct.df* %df, %struct.basic_block_def* %bb, i32 %regno) #0 {
entry:
  %retval = alloca %struct.ref*, align 8
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %regno.addr = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 5
  %2 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx = getelementptr inbounds %struct.reg_info, %struct.reg_info* %2, i64 %idxprom
  %defs = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx, i32 0, i32 0
  %3 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %3, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %5, i32 0, i32 1
  %6 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %6, %struct.ref** %def, align 8
  %7 = load %struct.ref*, %struct.ref** %def, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx1 to i32*
  %9 = load i32, i32* %rtint, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom2
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx4, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct.ref*, %struct.ref** %def, align 8
  store %struct.ref* %13, %struct.ref** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %14, i32 0, i32 0
  %15 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %15, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.ref* null, %struct.ref** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load %struct.ref*, %struct.ref** %retval
  ret %struct.ref* %16
}

; Function Attrs: nounwind uwtable
define internal %struct.ref* @df_bb_regno_last_use_find(%struct.df* %df, %struct.basic_block_def* %bb, i32 %regno) #0 {
entry:
  %retval = alloca %struct.ref*, align 8
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %regno.addr = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %use = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 5
  %2 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx = getelementptr inbounds %struct.reg_info, %struct.reg_info* %2, i64 %idxprom
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx, i32 0, i32 1
  %3 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %3, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %5, i32 0, i32 1
  %6 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %6, %struct.ref** %use, align 8
  %7 = load %struct.ref*, %struct.ref** %use, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx1 to i32*
  %9 = load i32, i32* %rtint, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom2
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx4, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct.ref*, %struct.ref** %use, align 8
  store %struct.ref* %13, %struct.ref** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %14, i32 0, i32 0
  %15 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %15, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.ref* null, %struct.ref** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load %struct.ref*, %struct.ref** %retval
  ret %struct.ref* %16
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @df_bb_single_def_use_insn_find(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn, %struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %def = alloca %struct.ref*, align 8
  %use = alloca %struct.ref*, align 8
  %du_link = alloca %struct.df_link*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  %call = call %struct.ref* @df_bb_insn_regno_first_def_find(%struct.df* %0, %struct.basic_block_def* %1, %struct.rtx_def* %2, i32 %4)
  store %struct.ref* %call, %struct.ref** %def, align 8
  %5 = load %struct.ref*, %struct.ref** %def, align 8
  %tobool = icmp ne %struct.ref* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 3215, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.df_bb_single_def_use_insn_find, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %6 = load %struct.ref*, %struct.ref** %def, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 3
  %7 = load %struct.df_link*, %struct.df_link** %chain, align 8
  store %struct.df_link* %7, %struct.df_link** %du_link, align 8
  %8 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %tobool1 = icmp ne %struct.df_link* %8, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %9 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %9, i32 0, i32 1
  %10 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %10, %struct.ref** %use, align 8
  %11 = load %struct.ref*, %struct.ref** %use, align 8
  %tobool4 = icmp ne %struct.ref* %11, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %12 = load %struct.df_link*, %struct.df_link** %du_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %12, i32 0, i32 0
  %13 = load %struct.df_link*, %struct.df_link** %next, align 8
  %tobool7 = icmp ne %struct.df_link* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %14 = load %struct.ref*, %struct.ref** %use, align 8
  %insn10 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn10, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then.5, %if.then.2
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define void @df_dump(%struct.df* %df, i32 %flags, %struct._IO_FILE* %file) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %flags.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  %bb99 = alloca %struct.basic_block_def*, align 8
  %bb_info104 = alloca %struct.bb_info*, align 8
  %bb216 = alloca %struct.basic_block_def*, align 8
  %bb_info221 = alloca %struct.bb_info*, align 8
  %reg_info = alloca %struct.reg_info*, align 8
  %bb281 = alloca %struct.basic_block_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %tobool = icmp ne %struct.df* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_regs = getelementptr inbounds %struct.df, %struct.df* %4, i32 0, i32 16
  %5 = load i32, i32* %n_regs, align 4
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_defs = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 11
  %7 = load i32, i32* %n_defs, align 4
  %8 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_uses = getelementptr inbounds %struct.df, %struct.df* %8, i32 0, i32 14
  %9 = load i32, i32* %n_uses, align 4
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs = getelementptr inbounds %struct.df, %struct.df* %10, i32 0, i32 15
  %11 = load i32, i32* %n_bbs, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), i32 %5, i32 %7, i32 %9, i32 %11)
  %12 = load i32, i32* %flags.addr, align 4
  %and = and i32 %12, 1
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then.4, label %if.end.18

if.then.4:                                        ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs6 = getelementptr inbounds %struct.df, %struct.df* %15, i32 0, i32 15
  %16 = load i32, i32* %n_bbs6, align 4
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb7 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb7, i32 0, i64 %idxprom
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %19, %struct.basic_block_def** %bb, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 11
  %21 = load i32, i32* %index, align 4
  %idxprom8 = sext i32 %21 to i64
  %22 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %22, i32 0, i32 1
  %23 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx9 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %23, i64 %idxprom8
  store %struct.bb_info* %arrayidx9, %struct.bb_info** %bb_info, align 8
  %24 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %24, i32 0, i32 2
  %25 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in, align 8
  %tobool10 = icmp ne %struct.bitmap_head_def* %25, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %for.body
  br label %for.inc

if.end.12:                                        ; preds = %for.body
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %27 = load i32, i32* %i, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %29 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in14 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %29, i32 0, i32 2
  %30 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in14, align 8
  call void @bitmap_print(%struct._IO_FILE* %28, %struct.bitmap_head_def* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %32 = load i32, i32* %i, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %34 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %34, i32 0, i32 1
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_gen, align 8
  call void @bitmap_print(%struct._IO_FILE* %33, %struct.bitmap_head_def* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %37 = load i32, i32* %i, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %39 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %39, i32 0, i32 0
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_kill, align 8
  call void @bitmap_print(%struct._IO_FILE* %38, %struct.bitmap_head_def* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %42 = load i32, i32* %i, align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %44 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %44, i32 0, i32 3
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_out, align 8
  call void @bitmap_print(%struct._IO_FILE* %43, %struct.bitmap_head_def* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then.11
  %46 = load i32, i32* %i, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  %47 = load i32, i32* %flags.addr, align 4
  %and19 = and i32 %47, 16
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.90

if.then.21:                                       ; preds = %if.end.18
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.87, %if.then.21
  %49 = load i32, i32* %j, align 4
  %50 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_defs24 = getelementptr inbounds %struct.df, %struct.df* %50, i32 0, i32 11
  %51 = load i32, i32* %n_defs24, align 4
  %cmp25 = icmp ult i32 %49, %51
  br i1 %cmp25, label %for.body.26, label %for.end.89

for.body.26:                                      ; preds = %for.cond.23
  %52 = load i32, i32* %j, align 4
  %idxprom27 = zext i32 %52 to i64
  %53 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs = getelementptr inbounds %struct.df, %struct.df* %53, i32 0, i32 2
  %54 = load %struct.ref**, %struct.ref*** %defs, align 8
  %arrayidx28 = getelementptr inbounds %struct.ref*, %struct.ref** %54, i64 %idxprom27
  %55 = load %struct.ref*, %struct.ref** %arrayidx28, align 8
  %tobool29 = icmp ne %struct.ref* %55, null
  br i1 %tobool29, label %if.then.30, label %if.end.86

if.then.30:                                       ; preds = %for.body.26
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %j, align 4
  %idxprom31 = zext i32 %58 to i64
  %59 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs32 = getelementptr inbounds %struct.df, %struct.df* %59, i32 0, i32 2
  %60 = load %struct.ref**, %struct.ref*** %defs32, align 8
  %arrayidx33 = getelementptr inbounds %struct.ref*, %struct.ref** %60, i64 %idxprom31
  %61 = load %struct.ref*, %struct.ref** %arrayidx33, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %61, i32 0, i32 1
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx34 to i32*
  %63 = load i32, i32* %rtint, align 4
  %idxprom35 = sext i32 %63 to i64
  %64 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data36 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %64, i32 0, i32 4
  %bb37 = bitcast %union.varray_data_tag* %data36 to [1 x %struct.basic_block_def*]*
  %arrayidx38 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb37, i32 0, i64 %idxprom35
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx38, align 8
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i32 0, i32 11
  %66 = load i32, i32* %index39, align 4
  %67 = load i32, i32* %j, align 4
  %idxprom40 = zext i32 %67 to i64
  %68 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs41 = getelementptr inbounds %struct.df, %struct.df* %68, i32 0, i32 2
  %69 = load %struct.ref**, %struct.ref*** %defs41, align 8
  %arrayidx42 = getelementptr inbounds %struct.ref*, %struct.ref** %69, i64 %idxprom40
  %70 = load %struct.ref*, %struct.ref** %arrayidx42, align 8
  %insn43 = getelementptr inbounds %struct.ref, %struct.ref* %70, i32 0, i32 1
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn43, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtint46 = bitcast %union.rtunion_def* %arrayidx45 to i32*
  %72 = load i32, i32* %rtint46, align 4
  %idxprom47 = sext i32 %72 to i64
  %73 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %73, i32 0, i32 7
  %74 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx48 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %74, i64 %idxprom47
  %luid = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx48, i32 0, i32 2
  %75 = load i32, i32* %luid, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom49 = zext i32 %76 to i64
  %77 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs50 = getelementptr inbounds %struct.df, %struct.df* %77, i32 0, i32 2
  %78 = load %struct.ref**, %struct.ref*** %defs50, align 8
  %arrayidx51 = getelementptr inbounds %struct.ref*, %struct.ref** %78, i64 %idxprom49
  %79 = load %struct.ref*, %struct.ref** %arrayidx51, align 8
  %insn52 = getelementptr inbounds %struct.ref, %struct.ref* %79, i32 0, i32 1
  %80 = load %struct.rtx_def*, %struct.rtx_def** %insn52, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtint55 = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %81 = load i32, i32* %rtint55, align 4
  %82 = load i32, i32* %j, align 4
  %idxprom56 = zext i32 %82 to i64
  %83 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs57 = getelementptr inbounds %struct.df, %struct.df* %83, i32 0, i32 2
  %84 = load %struct.ref**, %struct.ref*** %defs57, align 8
  %arrayidx58 = getelementptr inbounds %struct.ref*, %struct.ref** %84, i64 %idxprom56
  %85 = load %struct.ref*, %struct.ref** %arrayidx58, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %85, i32 0, i32 0
  %86 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load = load i32, i32* %87, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp59 = icmp eq i32 %bf.clear, 63
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %88 = load i32, i32* %j, align 4
  %idxprom60 = zext i32 %88 to i64
  %89 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs61 = getelementptr inbounds %struct.df, %struct.df* %89, i32 0, i32 2
  %90 = load %struct.ref**, %struct.ref*** %defs61, align 8
  %arrayidx62 = getelementptr inbounds %struct.ref*, %struct.ref** %90, i64 %idxprom60
  %91 = load %struct.ref*, %struct.ref** %arrayidx62, align 8
  %reg63 = getelementptr inbounds %struct.ref, %struct.ref* %91, i32 0, i32 0
  %92 = load %struct.rtx_def*, %struct.rtx_def** %reg63, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %94 = load i32, i32* %j, align 4
  %idxprom66 = zext i32 %94 to i64
  %95 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs67 = getelementptr inbounds %struct.df, %struct.df* %95, i32 0, i32 2
  %96 = load %struct.ref**, %struct.ref*** %defs67, align 8
  %arrayidx68 = getelementptr inbounds %struct.ref*, %struct.ref** %96, i64 %idxprom66
  %97 = load %struct.ref*, %struct.ref** %arrayidx68, align 8
  %reg69 = getelementptr inbounds %struct.ref, %struct.ref* %97, i32 0, i32 0
  %98 = load %struct.rtx_def*, %struct.rtx_def** %reg69, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %93, %cond.true ], [ %98, %cond.false ]
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx71 to i32*
  %99 = load i32, i32* %rtuint, align 4
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i32 %57, i32 %66, i32 %75, i32 %81, i32 %99)
  %100 = load i32, i32* %j, align 4
  %idxprom73 = zext i32 %100 to i64
  %101 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs74 = getelementptr inbounds %struct.df, %struct.df* %101, i32 0, i32 2
  %102 = load %struct.ref**, %struct.ref*** %defs74, align 8
  %arrayidx75 = getelementptr inbounds %struct.ref*, %struct.ref** %102, i64 %idxprom73
  %103 = load %struct.ref*, %struct.ref** %arrayidx75, align 8
  %flags76 = getelementptr inbounds %struct.ref, %struct.ref* %103, i32 0, i32 6
  %104 = load i32, i32* %flags76, align 4
  %and77 = and i32 %104, 1
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %cond.end
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %cond.end
  %106 = load i32, i32* %j, align 4
  %idxprom82 = zext i32 %106 to i64
  %107 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs83 = getelementptr inbounds %struct.df, %struct.df* %107, i32 0, i32 2
  %108 = load %struct.ref**, %struct.ref*** %defs83, align 8
  %arrayidx84 = getelementptr inbounds %struct.ref*, %struct.ref** %108, i64 %idxprom82
  %109 = load %struct.ref*, %struct.ref** %arrayidx84, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %109, i32 0, i32 3
  %110 = load %struct.df_link*, %struct.df_link** %chain, align 8
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %110, %struct._IO_FILE* %111)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.81, %for.body.26
  br label %for.inc.87

for.inc.87:                                       ; preds = %if.end.86
  %113 = load i32, i32* %j, align 4
  %inc88 = add i32 %113, 1
  store i32 %inc88, i32* %j, align 4
  br label %for.cond.23

for.end.89:                                       ; preds = %for.cond.23
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.89, %if.end.18
  %114 = load i32, i32* %flags.addr, align 4
  %and91 = and i32 %114, 2
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.120

if.then.93:                                       ; preds = %if.end.90
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.117, %if.then.93
  %116 = load i32, i32* %i, align 4
  %117 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs96 = getelementptr inbounds %struct.df, %struct.df* %117, i32 0, i32 15
  %118 = load i32, i32* %n_bbs96, align 4
  %cmp97 = icmp ult i32 %116, %118
  br i1 %cmp97, label %for.body.98, label %for.end.119

for.body.98:                                      ; preds = %for.cond.95
  %119 = load i32, i32* %i, align 4
  %idxprom100 = zext i32 %119 to i64
  %120 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data101 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %120, i32 0, i32 4
  %bb102 = bitcast %union.varray_data_tag* %data101 to [1 x %struct.basic_block_def*]*
  %arrayidx103 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb102, i32 0, i64 %idxprom100
  %121 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx103, align 8
  store %struct.basic_block_def* %121, %struct.basic_block_def** %bb99, align 8
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %bb99, align 8
  %index105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %122, i32 0, i32 11
  %123 = load i32, i32* %index105, align 4
  %idxprom106 = sext i32 %123 to i64
  %124 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs107 = getelementptr inbounds %struct.df, %struct.df* %124, i32 0, i32 1
  %125 = load %struct.bb_info*, %struct.bb_info** %bbs107, align 8
  %arrayidx108 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %125, i64 %idxprom106
  store %struct.bb_info* %arrayidx108, %struct.bb_info** %bb_info104, align 8
  %126 = load %struct.bb_info*, %struct.bb_info** %bb_info104, align 8
  %ru_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %126, i32 0, i32 6
  %127 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_in, align 8
  %tobool109 = icmp ne %struct.bitmap_head_def* %127, null
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %for.body.98
  br label %for.inc.117

if.end.111:                                       ; preds = %for.body.98
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %129 = load i32, i32* %i, align 4
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %129)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %131 = load %struct.bb_info*, %struct.bb_info** %bb_info104, align 8
  %ru_in113 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %131, i32 0, i32 6
  %132 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_in113, align 8
  call void @bitmap_print(%struct._IO_FILE* %130, %struct.bitmap_head_def* %132, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %134 = load i32, i32* %i, align 4
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 %134)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %136 = load %struct.bb_info*, %struct.bb_info** %bb_info104, align 8
  %ru_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %136, i32 0, i32 5
  %137 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_gen, align 8
  call void @bitmap_print(%struct._IO_FILE* %135, %struct.bitmap_head_def* %137, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %139 = load i32, i32* %i, align 4
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 %139)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %141 = load %struct.bb_info*, %struct.bb_info** %bb_info104, align 8
  %ru_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %141, i32 0, i32 4
  %142 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_kill, align 8
  call void @bitmap_print(%struct._IO_FILE* %140, %struct.bitmap_head_def* %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %144 = load i32, i32* %i, align 4
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %144)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %146 = load %struct.bb_info*, %struct.bb_info** %bb_info104, align 8
  %ru_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %146, i32 0, i32 7
  %147 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_out, align 8
  call void @bitmap_print(%struct._IO_FILE* %145, %struct.bitmap_head_def* %147, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.111, %if.then.110
  %148 = load i32, i32* %i, align 4
  %inc118 = add i32 %148, 1
  store i32 %inc118, i32* %i, align 4
  br label %for.cond.95

for.end.119:                                      ; preds = %for.cond.95
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.119, %if.end.90
  %149 = load i32, i32* %flags.addr, align 4
  %and121 = and i32 %149, 8
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.207

if.then.123:                                      ; preds = %if.end.120
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.204, %if.then.123
  %151 = load i32, i32* %j, align 4
  %152 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_uses126 = getelementptr inbounds %struct.df, %struct.df* %152, i32 0, i32 14
  %153 = load i32, i32* %n_uses126, align 4
  %cmp127 = icmp ult i32 %151, %153
  br i1 %cmp127, label %for.body.128, label %for.end.206

for.body.128:                                     ; preds = %for.cond.125
  %154 = load i32, i32* %j, align 4
  %idxprom129 = zext i32 %154 to i64
  %155 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses = getelementptr inbounds %struct.df, %struct.df* %155, i32 0, i32 3
  %156 = load %struct.ref**, %struct.ref*** %uses, align 8
  %arrayidx130 = getelementptr inbounds %struct.ref*, %struct.ref** %156, i64 %idxprom129
  %157 = load %struct.ref*, %struct.ref** %arrayidx130, align 8
  %tobool131 = icmp ne %struct.ref* %157, null
  br i1 %tobool131, label %if.then.132, label %if.end.203

if.then.132:                                      ; preds = %for.body.128
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %159 = load i32, i32* %j, align 4
  %160 = load i32, i32* %j, align 4
  %idxprom133 = zext i32 %160 to i64
  %161 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses134 = getelementptr inbounds %struct.df, %struct.df* %161, i32 0, i32 3
  %162 = load %struct.ref**, %struct.ref*** %uses134, align 8
  %arrayidx135 = getelementptr inbounds %struct.ref*, %struct.ref** %162, i64 %idxprom133
  %163 = load %struct.ref*, %struct.ref** %arrayidx135, align 8
  %insn136 = getelementptr inbounds %struct.ref, %struct.ref* %163, i32 0, i32 1
  %164 = load %struct.rtx_def*, %struct.rtx_def** %insn136, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtint139 = bitcast %union.rtunion_def* %arrayidx138 to i32*
  %165 = load i32, i32* %rtint139, align 4
  %idxprom140 = sext i32 %165 to i64
  %166 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data141 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %166, i32 0, i32 4
  %bb142 = bitcast %union.varray_data_tag* %data141 to [1 x %struct.basic_block_def*]*
  %arrayidx143 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb142, i32 0, i64 %idxprom140
  %167 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx143, align 8
  %index144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %167, i32 0, i32 11
  %168 = load i32, i32* %index144, align 4
  %169 = load i32, i32* %j, align 4
  %idxprom145 = zext i32 %169 to i64
  %170 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses146 = getelementptr inbounds %struct.df, %struct.df* %170, i32 0, i32 3
  %171 = load %struct.ref**, %struct.ref*** %uses146, align 8
  %arrayidx147 = getelementptr inbounds %struct.ref*, %struct.ref** %171, i64 %idxprom145
  %172 = load %struct.ref*, %struct.ref** %arrayidx147, align 8
  %insn148 = getelementptr inbounds %struct.ref, %struct.ref* %172, i32 0, i32 1
  %173 = load %struct.rtx_def*, %struct.rtx_def** %insn148, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtint151 = bitcast %union.rtunion_def* %arrayidx150 to i32*
  %174 = load i32, i32* %rtint151, align 4
  %idxprom152 = sext i32 %174 to i64
  %175 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns153 = getelementptr inbounds %struct.df, %struct.df* %175, i32 0, i32 7
  %176 = load %struct.insn_info*, %struct.insn_info** %insns153, align 8
  %arrayidx154 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %176, i64 %idxprom152
  %luid155 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx154, i32 0, i32 2
  %177 = load i32, i32* %luid155, align 4
  %178 = load i32, i32* %j, align 4
  %idxprom156 = zext i32 %178 to i64
  %179 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses157 = getelementptr inbounds %struct.df, %struct.df* %179, i32 0, i32 3
  %180 = load %struct.ref**, %struct.ref*** %uses157, align 8
  %arrayidx158 = getelementptr inbounds %struct.ref*, %struct.ref** %180, i64 %idxprom156
  %181 = load %struct.ref*, %struct.ref** %arrayidx158, align 8
  %insn159 = getelementptr inbounds %struct.ref, %struct.ref* %181, i32 0, i32 1
  %182 = load %struct.rtx_def*, %struct.rtx_def** %insn159, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 0
  %rtint162 = bitcast %union.rtunion_def* %arrayidx161 to i32*
  %183 = load i32, i32* %rtint162, align 4
  %184 = load i32, i32* %j, align 4
  %idxprom163 = zext i32 %184 to i64
  %185 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses164 = getelementptr inbounds %struct.df, %struct.df* %185, i32 0, i32 3
  %186 = load %struct.ref**, %struct.ref*** %uses164, align 8
  %arrayidx165 = getelementptr inbounds %struct.ref*, %struct.ref** %186, i64 %idxprom163
  %187 = load %struct.ref*, %struct.ref** %arrayidx165, align 8
  %reg166 = getelementptr inbounds %struct.ref, %struct.ref* %187, i32 0, i32 0
  %188 = load %struct.rtx_def*, %struct.rtx_def** %reg166, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load167 = load i32, i32* %189, align 8
  %bf.clear168 = and i32 %bf.load167, 65535
  %cmp169 = icmp eq i32 %bf.clear168, 63
  br i1 %cmp169, label %cond.true.170, label %cond.false.178

cond.true.170:                                    ; preds = %if.then.132
  %190 = load i32, i32* %j, align 4
  %idxprom171 = zext i32 %190 to i64
  %191 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses172 = getelementptr inbounds %struct.df, %struct.df* %191, i32 0, i32 3
  %192 = load %struct.ref**, %struct.ref*** %uses172, align 8
  %arrayidx173 = getelementptr inbounds %struct.ref*, %struct.ref** %192, i64 %idxprom171
  %193 = load %struct.ref*, %struct.ref** %arrayidx173, align 8
  %reg174 = getelementptr inbounds %struct.ref, %struct.ref* %193, i32 0, i32 0
  %194 = load %struct.rtx_def*, %struct.rtx_def** %reg174, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 0
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  br label %cond.end.183

cond.false.178:                                   ; preds = %if.then.132
  %196 = load i32, i32* %j, align 4
  %idxprom179 = zext i32 %196 to i64
  %197 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses180 = getelementptr inbounds %struct.df, %struct.df* %197, i32 0, i32 3
  %198 = load %struct.ref**, %struct.ref*** %uses180, align 8
  %arrayidx181 = getelementptr inbounds %struct.ref*, %struct.ref** %198, i64 %idxprom179
  %199 = load %struct.ref*, %struct.ref** %arrayidx181, align 8
  %reg182 = getelementptr inbounds %struct.ref, %struct.ref* %199, i32 0, i32 0
  %200 = load %struct.rtx_def*, %struct.rtx_def** %reg182, align 8
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.178, %cond.true.170
  %cond184 = phi %struct.rtx_def* [ %195, %cond.true.170 ], [ %200, %cond.false.178 ]
  %fld185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond184, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld185, i32 0, i64 0
  %rtuint187 = bitcast %union.rtunion_def* %arrayidx186 to i32*
  %201 = load i32, i32* %rtuint187, align 4
  %call188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), i32 %159, i32 %168, i32 %177, i32 %183, i32 %201)
  %202 = load i32, i32* %j, align 4
  %idxprom189 = zext i32 %202 to i64
  %203 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses190 = getelementptr inbounds %struct.df, %struct.df* %203, i32 0, i32 3
  %204 = load %struct.ref**, %struct.ref*** %uses190, align 8
  %arrayidx191 = getelementptr inbounds %struct.ref*, %struct.ref** %204, i64 %idxprom189
  %205 = load %struct.ref*, %struct.ref** %arrayidx191, align 8
  %flags192 = getelementptr inbounds %struct.ref, %struct.ref* %205, i32 0, i32 6
  %206 = load i32, i32* %flags192, align 4
  %and193 = and i32 %206, 1
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %cond.end.183
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %cond.end.183
  %208 = load i32, i32* %j, align 4
  %idxprom198 = zext i32 %208 to i64
  %209 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses199 = getelementptr inbounds %struct.df, %struct.df* %209, i32 0, i32 3
  %210 = load %struct.ref**, %struct.ref*** %uses199, align 8
  %arrayidx200 = getelementptr inbounds %struct.ref*, %struct.ref** %210, i64 %idxprom198
  %211 = load %struct.ref*, %struct.ref** %arrayidx200, align 8
  %chain201 = getelementptr inbounds %struct.ref, %struct.ref* %211, i32 0, i32 3
  %212 = load %struct.df_link*, %struct.df_link** %chain201, align 8
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %212, %struct._IO_FILE* %213)
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.197, %for.body.128
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %215 = load i32, i32* %j, align 4
  %inc205 = add i32 %215, 1
  store i32 %inc205, i32* %j, align 4
  br label %for.cond.125

for.end.206:                                      ; preds = %for.cond.125
  br label %if.end.207

if.end.207:                                       ; preds = %for.end.206, %if.end.120
  %216 = load i32, i32* %flags.addr, align 4
  %and208 = and i32 %216, 4
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %if.then.210, label %if.end.237

if.then.210:                                      ; preds = %if.end.207
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.234, %if.then.210
  %218 = load i32, i32* %i, align 4
  %219 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs213 = getelementptr inbounds %struct.df, %struct.df* %219, i32 0, i32 15
  %220 = load i32, i32* %n_bbs213, align 4
  %cmp214 = icmp ult i32 %218, %220
  br i1 %cmp214, label %for.body.215, label %for.end.236

for.body.215:                                     ; preds = %for.cond.212
  %221 = load i32, i32* %i, align 4
  %idxprom217 = zext i32 %221 to i64
  %222 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data218 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %222, i32 0, i32 4
  %bb219 = bitcast %union.varray_data_tag* %data218 to [1 x %struct.basic_block_def*]*
  %arrayidx220 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb219, i32 0, i64 %idxprom217
  %223 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx220, align 8
  store %struct.basic_block_def* %223, %struct.basic_block_def** %bb216, align 8
  %224 = load %struct.basic_block_def*, %struct.basic_block_def** %bb216, align 8
  %index222 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %224, i32 0, i32 11
  %225 = load i32, i32* %index222, align 4
  %idxprom223 = sext i32 %225 to i64
  %226 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs224 = getelementptr inbounds %struct.df, %struct.df* %226, i32 0, i32 1
  %227 = load %struct.bb_info*, %struct.bb_info** %bbs224, align 8
  %arrayidx225 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %227, i64 %idxprom223
  store %struct.bb_info* %arrayidx225, %struct.bb_info** %bb_info221, align 8
  %228 = load %struct.bb_info*, %struct.bb_info** %bb_info221, align 8
  %lr_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %228, i32 0, i32 10
  %229 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in, align 8
  %tobool226 = icmp ne %struct.bitmap_head_def* %229, null
  br i1 %tobool226, label %if.end.228, label %if.then.227

if.then.227:                                      ; preds = %for.body.215
  br label %for.inc.234

if.end.228:                                       ; preds = %for.body.215
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %231 = load i32, i32* %i, align 4
  %call229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %231)
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %233 = load %struct.bb_info*, %struct.bb_info** %bb_info221, align 8
  %lr_in230 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %233, i32 0, i32 10
  %234 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in230, align 8
  call void @bitmap_print(%struct._IO_FILE* %232, %struct.bitmap_head_def* %234, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %236 = load i32, i32* %i, align 4
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %236)
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %238 = load %struct.bb_info*, %struct.bb_info** %bb_info221, align 8
  %lr_use = getelementptr inbounds %struct.bb_info, %struct.bb_info* %238, i32 0, i32 9
  %239 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_use, align 8
  call void @bitmap_print(%struct._IO_FILE* %237, %struct.bitmap_head_def* %239, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %241 = load i32, i32* %i, align 4
  %call232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %241)
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %243 = load %struct.bb_info*, %struct.bb_info** %bb_info221, align 8
  %lr_def = getelementptr inbounds %struct.bb_info, %struct.bb_info* %243, i32 0, i32 8
  %244 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_def, align 8
  call void @bitmap_print(%struct._IO_FILE* %242, %struct.bitmap_head_def* %244, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %246 = load i32, i32* %i, align 4
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %246)
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %248 = load %struct.bb_info*, %struct.bb_info** %bb_info221, align 8
  %lr_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %248, i32 0, i32 11
  %249 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_out, align 8
  call void @bitmap_print(%struct._IO_FILE* %247, %struct.bitmap_head_def* %249, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %for.inc.234

for.inc.234:                                      ; preds = %if.end.228, %if.then.227
  %250 = load i32, i32* %i, align 4
  %inc235 = add i32 %250, 1
  store i32 %inc235, i32* %i, align 4
  br label %for.cond.212

for.end.236:                                      ; preds = %for.cond.212
  br label %if.end.237

if.end.237:                                       ; preds = %for.end.236, %if.end.207
  %251 = load i32, i32* %flags.addr, align 4
  %and238 = and i32 %251, 224
  %tobool239 = icmp ne i32 %and238, 0
  br i1 %tobool239, label %if.then.240, label %if.end.348

if.then.240:                                      ; preds = %if.end.237
  %252 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %252, i32 0, i32 5
  %253 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  store %struct.reg_info* %253, %struct.reg_info** %reg_info, align 8
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.345, %if.then.240
  %255 = load i32, i32* %j, align 4
  %256 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_regs243 = getelementptr inbounds %struct.df, %struct.df* %256, i32 0, i32 16
  %257 = load i32, i32* %n_regs243, align 4
  %cmp244 = icmp ult i32 %255, %257
  br i1 %cmp244, label %for.body.245, label %for.end.347

for.body.245:                                     ; preds = %for.cond.242
  %258 = load i32, i32* %flags.addr, align 4
  %and246 = and i32 %258, 32
  %tobool247 = icmp ne i32 %and246, 0
  br i1 %tobool247, label %land.lhs.true, label %lor.lhs.false.257

land.lhs.true:                                    ; preds = %for.body.245
  %259 = load i32, i32* %j, align 4
  %idxprom248 = zext i32 %259 to i64
  %260 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx249 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %260, i64 %idxprom248
  %n_uses250 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx249, i32 0, i32 4
  %261 = load i32, i32* %n_uses250, align 4
  %tobool251 = icmp ne i32 %261, 0
  br i1 %tobool251, label %if.then.273, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %land.lhs.true
  %262 = load i32, i32* %j, align 4
  %idxprom253 = zext i32 %262 to i64
  %263 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx254 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %263, i64 %idxprom253
  %n_defs255 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx254, i32 0, i32 3
  %264 = load i32, i32* %n_defs255, align 4
  %tobool256 = icmp ne i32 %264, 0
  br i1 %tobool256, label %if.then.273, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %lor.lhs.false.252, %for.body.245
  %265 = load i32, i32* %flags.addr, align 4
  %and258 = and i32 %265, 64
  %tobool259 = icmp ne i32 %and258, 0
  br i1 %tobool259, label %land.lhs.true.260, label %lor.lhs.false.265

land.lhs.true.260:                                ; preds = %lor.lhs.false.257
  %266 = load i32, i32* %j, align 4
  %idxprom261 = zext i32 %266 to i64
  %267 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx262 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %267, i64 %idxprom261
  %defs263 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx262, i32 0, i32 0
  %268 = load %struct.df_link*, %struct.df_link** %defs263, align 8
  %tobool264 = icmp ne %struct.df_link* %268, null
  br i1 %tobool264, label %if.then.273, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %land.lhs.true.260, %lor.lhs.false.257
  %269 = load i32, i32* %flags.addr, align 4
  %and266 = and i32 %269, 128
  %tobool267 = icmp ne i32 %and266, 0
  br i1 %tobool267, label %land.lhs.true.268, label %if.end.344

land.lhs.true.268:                                ; preds = %lor.lhs.false.265
  %270 = load i32, i32* %j, align 4
  %idxprom269 = zext i32 %270 to i64
  %271 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx270 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %271, i64 %idxprom269
  %uses271 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx270, i32 0, i32 1
  %272 = load %struct.df_link*, %struct.df_link** %uses271, align 8
  %tobool272 = icmp ne %struct.df_link* %272, null
  br i1 %tobool272, label %if.then.273, label %if.end.344

if.then.273:                                      ; preds = %land.lhs.true.268, %land.lhs.true.260, %lor.lhs.false.252, %land.lhs.true
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %274 = load i32, i32* %j, align 4
  %call274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %274)
  %275 = load i32, i32* %flags.addr, align 4
  %and275 = and i32 %275, 64
  %tobool276 = icmp ne i32 %and275, 0
  br i1 %tobool276, label %land.lhs.true.277, label %if.end.289

land.lhs.true.277:                                ; preds = %if.then.273
  %276 = load i32, i32* %flags.addr, align 4
  %and278 = and i32 %276, 128
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %if.then.280, label %if.end.289

if.then.280:                                      ; preds = %land.lhs.true.277
  %277 = load %struct.df*, %struct.df** %df.addr, align 8
  %278 = load i32, i32* %j, align 4
  %call282 = call %struct.basic_block_def* @df_regno_bb(%struct.df* %277, i32 %278)
  store %struct.basic_block_def* %call282, %struct.basic_block_def** %bb281, align 8
  %279 = load %struct.basic_block_def*, %struct.basic_block_def** %bb281, align 8
  %tobool283 = icmp ne %struct.basic_block_def* %279, null
  br i1 %tobool283, label %if.then.284, label %if.else

if.then.284:                                      ; preds = %if.then.280
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %281 = load %struct.basic_block_def*, %struct.basic_block_def** %bb281, align 8
  %index285 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %281, i32 0, i32 11
  %282 = load i32, i32* %index285, align 4
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i32 %282)
  br label %if.end.288

if.else:                                          ; preds = %if.then.280
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.288

if.end.288:                                       ; preds = %if.else, %if.then.284
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %land.lhs.true.277, %if.then.273
  %284 = load i32, i32* %flags.addr, align 4
  %and290 = and i32 %284, 32
  %tobool291 = icmp ne i32 %and290, 0
  br i1 %tobool291, label %if.then.292, label %if.end.296

if.then.292:                                      ; preds = %if.end.289
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %286 = load i32, i32* %j, align 4
  %idxprom293 = zext i32 %286 to i64
  %287 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx294 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %287, i64 %idxprom293
  %lifetime = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx294, i32 0, i32 2
  %288 = load i32, i32* %lifetime, align 4
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %285, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 %288)
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.292, %if.end.289
  %289 = load i32, i32* %flags.addr, align 4
  %and297 = and i32 %289, 32
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %if.then.302, label %lor.lhs.false.299

lor.lhs.false.299:                                ; preds = %if.end.296
  %290 = load i32, i32* %flags.addr, align 4
  %and300 = and i32 %290, 64
  %tobool301 = icmp ne i32 %and300, 0
  br i1 %tobool301, label %if.then.302, label %if.end.319

if.then.302:                                      ; preds = %lor.lhs.false.299, %if.end.296
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0))
  %292 = load i32, i32* %flags.addr, align 4
  %and304 = and i32 %292, 32
  %tobool305 = icmp ne i32 %and304, 0
  br i1 %tobool305, label %if.then.306, label %if.end.311

if.then.306:                                      ; preds = %if.then.302
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %294 = load i32, i32* %j, align 4
  %idxprom307 = zext i32 %294 to i64
  %295 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx308 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %295, i64 %idxprom307
  %n_defs309 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx308, i32 0, i32 3
  %296 = load i32, i32* %n_defs309, align 4
  %call310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %293, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 %296)
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.306, %if.then.302
  %297 = load i32, i32* %flags.addr, align 4
  %and312 = and i32 %297, 64
  %tobool313 = icmp ne i32 %and312, 0
  br i1 %tobool313, label %if.then.314, label %if.end.318

if.then.314:                                      ; preds = %if.end.311
  %298 = load i32, i32* %j, align 4
  %idxprom315 = zext i32 %298 to i64
  %299 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx316 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %299, i64 %idxprom315
  %defs317 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx316, i32 0, i32 0
  %300 = load %struct.df_link*, %struct.df_link** %defs317, align 8
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %300, %struct._IO_FILE* %301)
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.314, %if.end.311
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %lor.lhs.false.299
  %302 = load i32, i32* %flags.addr, align 4
  %and320 = and i32 %302, 32
  %tobool321 = icmp ne i32 %and320, 0
  br i1 %tobool321, label %if.then.325, label %lor.lhs.false.322

lor.lhs.false.322:                                ; preds = %if.end.319
  %303 = load i32, i32* %flags.addr, align 4
  %and323 = and i32 %303, 128
  %tobool324 = icmp ne i32 %and323, 0
  br i1 %tobool324, label %if.then.325, label %if.end.342

if.then.325:                                      ; preds = %lor.lhs.false.322, %if.end.319
  %304 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %304, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %305 = load i32, i32* %flags.addr, align 4
  %and327 = and i32 %305, 32
  %tobool328 = icmp ne i32 %and327, 0
  br i1 %tobool328, label %if.then.329, label %if.end.334

if.then.329:                                      ; preds = %if.then.325
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %307 = load i32, i32* %j, align 4
  %idxprom330 = zext i32 %307 to i64
  %308 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx331 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %308, i64 %idxprom330
  %n_uses332 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx331, i32 0, i32 4
  %309 = load i32, i32* %n_uses332, align 4
  %call333 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 %309)
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.329, %if.then.325
  %310 = load i32, i32* %flags.addr, align 4
  %and335 = and i32 %310, 128
  %tobool336 = icmp ne i32 %and335, 0
  br i1 %tobool336, label %if.then.337, label %if.end.341

if.then.337:                                      ; preds = %if.end.334
  %311 = load i32, i32* %j, align 4
  %idxprom338 = zext i32 %311 to i64
  %312 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx339 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %312, i64 %idxprom338
  %uses340 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx339, i32 0, i32 1
  %313 = load %struct.df_link*, %struct.df_link** %uses340, align 8
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %313, %struct._IO_FILE* %314)
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.337, %if.end.334
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %lor.lhs.false.322
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.342, %land.lhs.true.268, %lor.lhs.false.265
  br label %for.inc.345

for.inc.345:                                      ; preds = %if.end.344
  %316 = load i32, i32* %j, align 4
  %inc346 = add i32 %316, 1
  store i32 %inc346, i32* %j, align 4
  br label %for.cond.242

for.end.347:                                      ; preds = %for.cond.242
  br label %if.end.348

if.end.348:                                       ; preds = %for.end.347, %if.end.237
  %317 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call349 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %317, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.348, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @bitmap_print(%struct._IO_FILE*, %struct.bitmap_head_def*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @df_chain_dump(%struct.df_link* %link, %struct._IO_FILE* %file) #0 {
entry:
  %link.addr = alloca %struct.df_link*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.df_link* %link, %struct.df_link** %link.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %tobool = icmp ne %struct.df_link* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %3 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %3, i32 0, i32 1
  %4 = load %struct.ref*, %struct.ref** %ref, align 8
  %type = getelementptr inbounds %struct.ref, %struct.ref* %4, i32 0, i32 4
  %5 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 100, i32 117
  %6 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %ref1 = getelementptr inbounds %struct.df_link, %struct.df_link* %6, i32 0, i32 1
  %7 = load %struct.ref*, %struct.ref** %ref1, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %7, i32 0, i32 5
  %8 = load i32, i32* %id, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %cond, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %9, i32 0, i32 0
  %10 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %10, %struct.df_link** %link.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @df_insn_debug(%struct.df* %df, %struct.rtx_def* %insn, %struct._IO_FILE* %file) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %uid = alloca i32, align 4
  %bbi = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 8
  %4 = load i32, i32* %insn_size, align 4
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 7
  %7 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %7, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %8 = load %struct.df_link*, %struct.df_link** %defs, align 8
  %tobool = icmp ne %struct.df_link* %8, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %uid, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns4 = getelementptr inbounds %struct.df, %struct.df* %10, i32 0, i32 7
  %11 = load %struct.insn_info*, %struct.insn_info** %insns4, align 8
  %arrayidx5 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %11, i64 %idxprom3
  %defs6 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx5, i32 0, i32 0
  %12 = load %struct.df_link*, %struct.df_link** %defs6, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %12, i32 0, i32 1
  %13 = load %struct.ref*, %struct.ref** %ref, align 8
  %insn7 = getelementptr inbounds %struct.ref, %struct.ref* %13, i32 0, i32 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %15 = load i32, i32* %rtint10, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx12 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom11
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx12, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 11
  %18 = load i32, i32* %index, align 4
  store i32 %18, i32* %bbi, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %uid, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns14 = getelementptr inbounds %struct.df, %struct.df* %20, i32 0, i32 7
  %21 = load %struct.insn_info*, %struct.insn_info** %insns14, align 8
  %arrayidx15 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %21, i64 %idxprom13
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx15, i32 0, i32 1
  %22 = load %struct.df_link*, %struct.df_link** %uses, align 8
  %tobool16 = icmp ne %struct.df_link* %22, null
  br i1 %tobool16, label %if.then.17, label %if.else.32

if.then.17:                                       ; preds = %if.else
  %23 = load i32, i32* %uid, align 4
  %idxprom18 = zext i32 %23 to i64
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns19 = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 7
  %25 = load %struct.insn_info*, %struct.insn_info** %insns19, align 8
  %arrayidx20 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %25, i64 %idxprom18
  %uses21 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx20, i32 0, i32 1
  %26 = load %struct.df_link*, %struct.df_link** %uses21, align 8
  %ref22 = getelementptr inbounds %struct.df_link, %struct.df_link* %26, i32 0, i32 1
  %27 = load %struct.ref*, %struct.ref** %ref22, align 8
  %insn23 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 1
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn23, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtint26 = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %29 = load i32, i32* %rtint26, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data28 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb29 = bitcast %union.varray_data_tag* %data28 to [1 x %struct.basic_block_def*]*
  %arrayidx30 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb29, i32 0, i64 %idxprom27
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx30, align 8
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index31, align 4
  store i32 %32, i32* %bbi, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %if.else
  store i32 -1, i32* %bbi, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.17
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.2
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %34 = load i32, i32* %uid, align 4
  %35 = load i32, i32* %bbi, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %37 = load i32, i32* %rtint37, align 4
  %idxprom38 = sext i32 %37 to i64
  %38 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns39 = getelementptr inbounds %struct.df, %struct.df* %38, i32 0, i32 7
  %39 = load %struct.insn_info*, %struct.insn_info** %insns39, align 8
  %arrayidx40 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %39, i64 %idxprom38
  %luid = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx40, i32 0, i32 2
  %40 = load i32, i32* %luid, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i32 %34, i32 %35, i32 %40)
  %41 = load i32, i32* %uid, align 4
  %idxprom41 = zext i32 %41 to i64
  %42 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns42 = getelementptr inbounds %struct.df, %struct.df* %42, i32 0, i32 7
  %43 = load %struct.insn_info*, %struct.insn_info** %insns42, align 8
  %arrayidx43 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %43, i64 %idxprom41
  %defs44 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx43, i32 0, i32 0
  %44 = load %struct.df_link*, %struct.df_link** %defs44, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %44, %struct._IO_FILE* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %47 = load i32, i32* %uid, align 4
  %idxprom46 = zext i32 %47 to i64
  %48 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns47 = getelementptr inbounds %struct.df, %struct.df* %48, i32 0, i32 7
  %49 = load %struct.insn_info*, %struct.insn_info** %insns47, align 8
  %arrayidx48 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %49, i64 %idxprom46
  %uses49 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx48, i32 0, i32 1
  %50 = load %struct.df_link*, %struct.df_link** %uses49, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %50, %struct._IO_FILE* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @df_insn_debug_regno(%struct.df* %df, %struct.rtx_def* %insn, %struct._IO_FILE* %file) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %uid = alloca i32, align 4
  %bbi = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insn_size = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 8
  %4 = load i32, i32* %insn_size, align 4
  %cmp = icmp uge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 7
  %7 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %7, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %8 = load %struct.df_link*, %struct.df_link** %defs, align 8
  %tobool = icmp ne %struct.df_link* %8, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %uid, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns4 = getelementptr inbounds %struct.df, %struct.df* %10, i32 0, i32 7
  %11 = load %struct.insn_info*, %struct.insn_info** %insns4, align 8
  %arrayidx5 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %11, i64 %idxprom3
  %defs6 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx5, i32 0, i32 0
  %12 = load %struct.df_link*, %struct.df_link** %defs6, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %12, i32 0, i32 1
  %13 = load %struct.ref*, %struct.ref** %ref, align 8
  %insn7 = getelementptr inbounds %struct.ref, %struct.ref* %13, i32 0, i32 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %15 = load i32, i32* %rtint10, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx12 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom11
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx12, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 11
  %18 = load i32, i32* %index, align 4
  store i32 %18, i32* %bbi, align 4
  br label %if.end.34

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %uid, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns14 = getelementptr inbounds %struct.df, %struct.df* %20, i32 0, i32 7
  %21 = load %struct.insn_info*, %struct.insn_info** %insns14, align 8
  %arrayidx15 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %21, i64 %idxprom13
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx15, i32 0, i32 1
  %22 = load %struct.df_link*, %struct.df_link** %uses, align 8
  %tobool16 = icmp ne %struct.df_link* %22, null
  br i1 %tobool16, label %if.then.17, label %if.else.32

if.then.17:                                       ; preds = %if.else
  %23 = load i32, i32* %uid, align 4
  %idxprom18 = zext i32 %23 to i64
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns19 = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 7
  %25 = load %struct.insn_info*, %struct.insn_info** %insns19, align 8
  %arrayidx20 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %25, i64 %idxprom18
  %uses21 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx20, i32 0, i32 1
  %26 = load %struct.df_link*, %struct.df_link** %uses21, align 8
  %ref22 = getelementptr inbounds %struct.df_link, %struct.df_link* %26, i32 0, i32 1
  %27 = load %struct.ref*, %struct.ref** %ref22, align 8
  %insn23 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 1
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn23, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtint26 = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %29 = load i32, i32* %rtint26, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data28 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb29 = bitcast %union.varray_data_tag* %data28 to [1 x %struct.basic_block_def*]*
  %arrayidx30 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb29, i32 0, i64 %idxprom27
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx30, align 8
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index31, align 4
  store i32 %32, i32* %bbi, align 4
  br label %if.end.33

if.else.32:                                       ; preds = %if.else
  store i32 -1, i32* %bbi, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.17
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.2
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %34 = load i32, i32* %uid, align 4
  %35 = load i32, i32* %bbi, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %37 = load i32, i32* %rtint37, align 4
  %idxprom38 = sext i32 %37 to i64
  %38 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns39 = getelementptr inbounds %struct.df, %struct.df* %38, i32 0, i32 7
  %39 = load %struct.insn_info*, %struct.insn_info** %insns39, align 8
  %arrayidx40 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %39, i64 %idxprom38
  %luid = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx40, i32 0, i32 2
  %40 = load i32, i32* %luid, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), i32 %34, i32 %35, i32 %40)
  %41 = load i32, i32* %uid, align 4
  %idxprom41 = zext i32 %41 to i64
  %42 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns42 = getelementptr inbounds %struct.df, %struct.df* %42, i32 0, i32 7
  %43 = load %struct.insn_info*, %struct.insn_info** %insns42, align 8
  %arrayidx43 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %43, i64 %idxprom41
  %defs44 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx43, i32 0, i32 0
  %44 = load %struct.df_link*, %struct.df_link** %defs44, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump_regno(%struct.df_link* %44, %struct._IO_FILE* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %47 = load i32, i32* %uid, align 4
  %idxprom46 = zext i32 %47 to i64
  %48 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns47 = getelementptr inbounds %struct.df, %struct.df* %48, i32 0, i32 7
  %49 = load %struct.insn_info*, %struct.insn_info** %insns47, align 8
  %arrayidx48 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %49, i64 %idxprom46
  %uses49 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx48, i32 0, i32 1
  %50 = load %struct.df_link*, %struct.df_link** %uses49, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump_regno(%struct.df_link* %50, %struct._IO_FILE* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.34, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_chain_dump_regno(%struct.df_link* %link, %struct._IO_FILE* %file) #0 {
entry:
  %link.addr = alloca %struct.df_link*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.df_link* %link, %struct.df_link** %link.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %tobool = icmp ne %struct.df_link* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %3 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %3, i32 0, i32 1
  %4 = load %struct.ref*, %struct.ref** %ref, align 8
  %type = getelementptr inbounds %struct.ref, %struct.ref* %4, i32 0, i32 4
  %5 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 100, i32 117
  %6 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %ref1 = getelementptr inbounds %struct.df_link, %struct.df_link* %6, i32 0, i32 1
  %7 = load %struct.ref*, %struct.ref** %ref1, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %7, i32 0, i32 5
  %8 = load i32, i32* %id, align 4
  %9 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %ref2 = getelementptr inbounds %struct.df_link, %struct.df_link* %9, i32 0, i32 1
  %10 = load %struct.ref*, %struct.ref** %ref2, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load = load i32, i32* %12, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 63
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %ref4 = getelementptr inbounds %struct.df_link, %struct.df_link* %13, i32 0, i32 1
  %14 = load %struct.ref*, %struct.ref** %ref4, align 8
  %reg5 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 0
  %15 = load %struct.rtx_def*, %struct.rtx_def** %reg5, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %17 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %ref6 = getelementptr inbounds %struct.df_link, %struct.df_link* %17, i32 0, i32 1
  %18 = load %struct.ref*, %struct.ref** %ref6, align 8
  %reg7 = getelementptr inbounds %struct.ref, %struct.ref* %18, i32 0, i32 0
  %19 = load %struct.rtx_def*, %struct.rtx_def** %reg7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi %struct.rtx_def* [ %16, %cond.true ], [ %19, %cond.false ]
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %20 = load i32, i32* %rtuint, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 %cond, i32 %8, i32 %20)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %21 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %21, i32 0, i32 0
  %22 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %22, %struct.df_link** %link.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_df_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.df*, %struct.df** @ddf, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @df_insn_debug(%struct.df* %0, %struct.rtx_def* %1, %struct._IO_FILE* %2)
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @debug_rtx(%struct.rtx_def* %3)
  ret void
}

declare void @debug_rtx(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @debug_df_reg(%struct.rtx_def* %reg) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.df*, %struct.df** @ddf, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %2 = load i32, i32* %rtuint, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @df_regno_debug(%struct.df* %0, i32 %2, %struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_regno_debug(%struct.df* %df, i32 %regno, %struct._IO_FILE* %file) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %regno.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i32, i32* %regno.addr, align 4
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_size = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 6
  %2 = load i32, i32* %reg_size, align 4
  %cmp = icmp uge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %4 = load i32, i32* %regno.addr, align 4
  %5 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 5
  %7 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx = getelementptr inbounds %struct.reg_info, %struct.reg_info* %7, i64 %idxprom
  %lifetime = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx, i32 0, i32 2
  %8 = load i32, i32* %lifetime, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i32 %4, i32 %8)
  %9 = load i32, i32* %regno.addr, align 4
  %idxprom1 = zext i32 %9 to i64
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs2 = getelementptr inbounds %struct.df, %struct.df* %10, i32 0, i32 5
  %11 = load %struct.reg_info*, %struct.reg_info** %regs2, align 8
  %arrayidx3 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %11, i64 %idxprom1
  %defs = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx3, i32 0, i32 0
  %12 = load %struct.df_link*, %struct.df_link** %defs, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %12, %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %15 = load i32, i32* %regno.addr, align 4
  %idxprom5 = zext i32 %15 to i64
  %16 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs6 = getelementptr inbounds %struct.df, %struct.df* %16, i32 0, i32 5
  %17 = load %struct.reg_info*, %struct.reg_info** %regs6, align 8
  %arrayidx7 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %17, i64 %idxprom5
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx7, i32 0, i32 1
  %18 = load %struct.df_link*, %struct.df_link** %uses, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %18, %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_df_regno(i32 %regno) #0 {
entry:
  %regno.addr = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.df*, %struct.df** @ddf, align 8
  %1 = load i32, i32* %regno.addr, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @df_regno_debug(%struct.df* %0, i32 %1, %struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_df_ref(%struct.ref* %ref) #0 {
entry:
  %ref.addr = alloca %struct.ref*, align 8
  store %struct.ref* %ref, %struct.ref** %ref.addr, align 8
  %0 = load %struct.df*, %struct.df** @ddf, align 8
  %1 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @df_ref_debug(%struct.df* %0, %struct.ref* %1, %struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_ref_debug(%struct.df* %df, %struct.ref* %ref, %struct._IO_FILE* %file) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %ref.addr = alloca %struct.ref*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.ref* %ref, %struct.ref** %ref.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %type = getelementptr inbounds %struct.ref, %struct.ref* %1, i32 0, i32 4
  %2 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %2, 0
  %cond = select i1 %cmp, i32 100, i32 117
  %3 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %3, i32 0, i32 5
  %4 = load i32, i32* %id, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %cond, i32 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 63
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %reg2 = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %reg3 = getelementptr inbounds %struct.ref, %struct.ref* %12, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi %struct.rtx_def* [ %11, %cond.true ], [ %13, %cond.false ]
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond4, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %14 = load i32, i32* %rtuint, align 4
  %15 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %17 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx9, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 11
  %20 = load i32, i32* %index, align 4
  %21 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn10 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 1
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn10, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %23 = load i32, i32* %rtint13, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 7
  %25 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx15 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %25, i64 %idxprom14
  %luid = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx15, i32 0, i32 2
  %26 = load i32, i32* %luid, align 4
  %27 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %insn16 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 1
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %29 = load i32, i32* %rtint19, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0), i32 %14, i32 %20, i32 %26, i32 %29)
  %30 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 3
  %31 = load %struct.df_link*, %struct.df_link** %chain, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @df_chain_dump(%struct.df_link* %31, %struct._IO_FILE* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_df_defno(i32 %defno) #0 {
entry:
  %defno.addr = alloca i32, align 4
  store i32 %defno, i32* %defno.addr, align 4
  %0 = load %struct.df*, %struct.df** @ddf, align 8
  %1 = load i32, i32* %defno.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** @ddf, align 8
  %defs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 2
  %3 = load %struct.ref**, %struct.ref*** %defs, align 8
  %arrayidx = getelementptr inbounds %struct.ref*, %struct.ref** %3, i64 %idxprom
  %4 = load %struct.ref*, %struct.ref** %arrayidx, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @df_ref_debug(%struct.df* %0, %struct.ref* %4, %struct._IO_FILE* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_df_useno(i32 %defno) #0 {
entry:
  %defno.addr = alloca i32, align 4
  store i32 %defno, i32* %defno.addr, align 4
  %0 = load %struct.df*, %struct.df** @ddf, align 8
  %1 = load i32, i32* %defno.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** @ddf, align 8
  %uses = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 3
  %3 = load %struct.ref**, %struct.ref*** %uses, align 8
  %arrayidx = getelementptr inbounds %struct.ref*, %struct.ref** %3, i64 %idxprom
  %4 = load %struct.ref*, %struct.ref** %arrayidx, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @df_ref_debug(%struct.df* %0, %struct.ref* %4, %struct._IO_FILE* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_df_chain(%struct.df_link* %link) #0 {
entry:
  %link.addr = alloca %struct.df_link*, align 8
  store %struct.df_link* %link, %struct.df_link** %link.addr, align 8
  %0 = load %struct.df_link*, %struct.df_link** %link.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @df_chain_dump(%struct.df_link* %0, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputc(i32 10, %struct._IO_FILE* %2)
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @iterative_dataflow_sbitmap(%struct.simple_bitmap_def** %in, %struct.simple_bitmap_def** %out, %struct.simple_bitmap_def** %gen, %struct.simple_bitmap_def** %kill, %struct.bitmap_head_def* %blocks, i32 %dir, i32 %conf_op, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)* %transfun, i32* %order, i8* %data) #0 {
entry:
  %in.addr = alloca %struct.simple_bitmap_def**, align 8
  %out.addr = alloca %struct.simple_bitmap_def**, align 8
  %gen.addr = alloca %struct.simple_bitmap_def**, align 8
  %kill.addr = alloca %struct.simple_bitmap_def**, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %dir.addr = alloca i32, align 4
  %conf_op.addr = alloca i32, align 4
  %transfun.addr = alloca void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)*, align 8
  %order.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %worklist = alloca %struct.fibheap*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %visited = alloca %struct.simple_bitmap_def*, align 8
  %pending = alloca %struct.simple_bitmap_def*, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %ptr_85 = alloca %struct.bitmap_element_def*, align 8
  %indx_87 = alloca i32, align 4
  %bit_num_88 = alloca i32, align 4
  %word_num_89 = alloca i32, align 4
  %word_117 = alloca i64, align 8
  %mask_128 = alloca i64, align 8
  store %struct.simple_bitmap_def** %in, %struct.simple_bitmap_def*** %in.addr, align 8
  store %struct.simple_bitmap_def** %out, %struct.simple_bitmap_def*** %out.addr, align 8
  store %struct.simple_bitmap_def** %gen, %struct.simple_bitmap_def*** %gen.addr, align 8
  store %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %kill.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %conf_op, i32* %conf_op.addr, align 4
  store void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)* %transfun, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)** %transfun.addr, align 8
  store i32* %order, i32** %order.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %0)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %pending, align 8
  %1 = load i32, i32* @n_basic_blocks, align 4
  %call1 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1)
  store %struct.simple_bitmap_def* %call1, %struct.simple_bitmap_def** %visited, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %2)
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %3)
  %call2 = call %struct.fibheap* @fibheap_new()
  store %struct.fibheap* %call2, %struct.fibheap** %worklist, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %4, i32 0, i32 0
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %5, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %6, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 2
  %8 = load i32, i32* %indx, align 4
  %9 = load i32, i32* %indx_, align 4
  %cmp3 = icmp ult i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %11, i32 0, i32 0
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %12, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp4 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i32 0, i32 2
  %15 = load i32, i32* %indx5, align 4
  %16 = load i32, i32* %indx_, align 4
  %cmp6 = icmp ne i32 %15, %16
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.end
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp7 = icmp ne %struct.bitmap_element_def* %17, null
  br i1 %cmp7, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.48, %for.body
  %18 = load i32, i32* %word_num_, align 4
  %cmp9 = icmp ult i32 %18, 2
  br i1 %cmp9, label %for.body.10, label %for.end.50

for.body.10:                                      ; preds = %for.cond.8
  %19 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %20, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %21 = load i64, i64* %arrayidx, align 8
  store i64 %21, i64* %word_, align 8
  %22 = load i64, i64* %word_, align 8
  %cmp11 = icmp ne i64 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.end.47

if.then.12:                                       ; preds = %for.body.10
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then.12
  %23 = load i32, i32* %bit_num_, align 4
  %cmp14 = icmp ult i32 %23, 64
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %24 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %25 = load i64, i64* %word_, align 8
  %26 = load i64, i64* %mask_, align 8
  %and = and i64 %25, %26
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.then.17, label %if.end.46

if.then.17:                                       ; preds = %for.body.15
  %27 = load i64, i64* %mask_, align 8
  %neg = xor i64 %27, -1
  %28 = load i64, i64* %word_, align 8
  %and18 = and i64 %28, %neg
  store i64 %and18, i64* %word_, align 8
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i32 0, i32 2
  %30 = load i32, i32* %indx19, align 4
  %mul = mul i32 %30, 128
  %31 = load i32, i32* %word_num_, align 4
  %mul20 = mul i32 %31, 64
  %add = add i32 %mul, %mul20
  %32 = load i32, i32* %bit_num_, align 4
  %add21 = add i32 %add, %32
  store i32 %add21, i32* %i, align 4
  %33 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load i32*, i32** %order.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %35, i64 %idxprom22
  %36 = load i32, i32* %arrayidx23, align 4
  %conv = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %conv24 = sext i32 %37 to i64
  %38 = inttoptr i64 %conv24 to i8*
  %call25 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %33, i64 %conv, i8* %38)
  %39 = load i32, i32* %i, align 4
  %rem = urem i32 %39, 64
  %sh_prom26 = zext i32 %rem to i64
  %shl27 = shl i64 1, %sh_prom26
  %40 = load i32, i32* %i, align 4
  %div = udiv i32 %40, 64
  %idxprom28 = zext i32 %div to i64
  %41 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %41, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom28
  %42 = load i64, i64* %arrayidx29, align 8
  %or = or i64 %42, %shl27
  store i64 %or, i64* %arrayidx29, align 8
  %43 = load i32, i32* %dir.addr, align 4
  %cmp30 = icmp eq i32 %43, 0
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.17
  %44 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %45, i64 %idxprom33
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx34, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %gen.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %48, i64 %idxprom35
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx36, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %46, %struct.simple_bitmap_def* %49)
  br label %if.end.41

if.else:                                          ; preds = %if.then.17
  %50 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %50 to i64
  %51 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %51, i64 %idxprom37
  %52 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx38, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %53 to i64
  %54 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %gen.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %54, i64 %idxprom39
  %55 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx40, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %52, %struct.simple_bitmap_def* %55)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.32
  %56 = load i64, i64* %word_, align 8
  %cmp42 = icmp eq i64 %56, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  br label %for.end

if.end.45:                                        ; preds = %if.end.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %57 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.13

for.end:                                          ; preds = %if.then.44, %for.cond.13
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %for.body.10
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %58 = load i32, i32* %word_num_, align 4
  %inc49 = add i32 %58, 1
  store i32 %inc49, i32* %word_num_, align 4
  br label %for.cond.8

for.end.50:                                       ; preds = %for.cond.8
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next52 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %59, i32 0, i32 0
  %60 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next52, align 8
  store %struct.bitmap_element_def* %60, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.53
  br label %while.cond.54

while.cond.54:                                    ; preds = %if.end.164, %do.end
  %61 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %call55 = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %61)
  %cmp56 = icmp ne i32 %call55, -1
  br i1 %cmp56, label %while.body.58, label %while.end.165

while.body.58:                                    ; preds = %while.cond.54
  br label %while.cond.59

while.cond.59:                                    ; preds = %if.end.78, %while.body.58
  %62 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  %call60 = call i32 @fibheap_empty(%struct.fibheap* %62)
  %tobool = icmp ne i32 %call60, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body.61, label %while.end.79

while.body.61:                                    ; preds = %while.cond.59
  %63 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  %call62 = call i8* @fibheap_extract_min(%struct.fibheap* %63)
  %64 = ptrtoint i8* %call62 to i64
  %conv63 = trunc i64 %64 to i32
  store i32 %conv63, i32* %i, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %65 to i64
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data65 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %66, i32 0, i32 4
  %bb66 = bitcast %union.varray_data_tag* %data65 to [1 x %struct.basic_block_def*]*
  %arrayidx67 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb66, i32 0, i64 %idxprom64
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx67, align 8
  store %struct.basic_block_def* %67, %struct.basic_block_def** %bb, align 8
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 11
  %69 = load i32, i32* %index, align 4
  %div68 = udiv i32 %69, 64
  %idxprom69 = zext i32 %div68 to i64
  %70 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms70 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %70, i32 0, i32 3
  %arrayidx71 = getelementptr inbounds [1 x i64], [1 x i64]* %elms70, i32 0, i64 %idxprom69
  %71 = load i64, i64* %arrayidx71, align 8
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i32 0, i32 11
  %73 = load i32, i32* %index72, align 4
  %rem73 = urem i32 %73, 64
  %sh_prom74 = zext i32 %rem73 to i64
  %shr = lshr i64 %71, %sh_prom74
  %and75 = and i64 %shr, 1
  %tobool76 = icmp ne i64 %and75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %while.body.61
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %75 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %76 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %77 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %gen.addr, align 8
  %78 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %79 = load i32, i32* %dir.addr, align 4
  %80 = load i32, i32* %conf_op.addr, align 4
  %81 = load void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)*, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)** %transfun.addr, align 8
  %82 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %83 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %84 = load i8*, i8** %data.addr, align 8
  call void @hybrid_search_sbitmap(%struct.basic_block_def* %74, %struct.simple_bitmap_def** %75, %struct.simple_bitmap_def** %76, %struct.simple_bitmap_def** %77, %struct.simple_bitmap_def** %78, i32 %79, i32 %80, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)* %81, %struct.simple_bitmap_def* %82, %struct.simple_bitmap_def* %83, i8* %84)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %while.body.61
  br label %while.cond.59

while.end.79:                                     ; preds = %while.cond.59
  %85 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %call80 = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %85)
  %cmp81 = icmp ne i32 %call80, -1
  br i1 %cmp81, label %if.then.83, label %if.else.163

if.then.83:                                       ; preds = %while.end.79
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %86 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first86 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %86, i32 0, i32 0
  %87 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first86, align 8
  store %struct.bitmap_element_def* %87, %struct.bitmap_element_def** %ptr_85, align 8
  store i32 0, i32* %indx_87, align 4
  store i32 0, i32* %bit_num_88, align 4
  store i32 0, i32* %word_num_89, align 4
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.98, %do.body.84
  %88 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %cmp91 = icmp ne %struct.bitmap_element_def* %88, null
  br i1 %cmp91, label %land.rhs.93, label %land.end.97

land.rhs.93:                                      ; preds = %while.cond.90
  %89 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %indx94 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %89, i32 0, i32 2
  %90 = load i32, i32* %indx94, align 4
  %91 = load i32, i32* %indx_87, align 4
  %cmp95 = icmp ult i32 %90, %91
  br label %land.end.97

land.end.97:                                      ; preds = %land.rhs.93, %while.cond.90
  %92 = phi i1 [ false, %while.cond.90 ], [ %cmp95, %land.rhs.93 ]
  br i1 %92, label %while.body.98, label %while.end.100

while.body.98:                                    ; preds = %land.end.97
  %93 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %next99 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %93, i32 0, i32 0
  %94 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next99, align 8
  store %struct.bitmap_element_def* %94, %struct.bitmap_element_def** %ptr_85, align 8
  br label %while.cond.90

while.end.100:                                    ; preds = %land.end.97
  %95 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %cmp101 = icmp ne %struct.bitmap_element_def* %95, null
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.108

land.lhs.true.103:                                ; preds = %while.end.100
  %96 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %indx104 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %96, i32 0, i32 2
  %97 = load i32, i32* %indx104, align 4
  %98 = load i32, i32* %indx_87, align 4
  %cmp105 = icmp ne i32 %97, %98
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.103
  store i32 0, i32* %bit_num_88, align 4
  store i32 0, i32* %word_num_89, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %land.lhs.true.103, %while.end.100
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.159, %if.end.108
  %99 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %cmp110 = icmp ne %struct.bitmap_element_def* %99, null
  br i1 %cmp110, label %for.body.112, label %for.end.161

for.body.112:                                     ; preds = %for.cond.109
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.156, %for.body.112
  %100 = load i32, i32* %word_num_89, align 4
  %cmp114 = icmp ult i32 %100, 2
  br i1 %cmp114, label %for.body.116, label %for.end.158

for.body.116:                                     ; preds = %for.cond.113
  %101 = load i32, i32* %word_num_89, align 4
  %idxprom118 = zext i32 %101 to i64
  %102 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %bits119 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %102, i32 0, i32 3
  %arrayidx120 = getelementptr inbounds [2 x i64], [2 x i64]* %bits119, i32 0, i64 %idxprom118
  %103 = load i64, i64* %arrayidx120, align 8
  store i64 %103, i64* %word_117, align 8
  %104 = load i64, i64* %word_117, align 8
  %cmp121 = icmp ne i64 %104, 0
  br i1 %cmp121, label %if.then.123, label %if.end.155

if.then.123:                                      ; preds = %for.body.116
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.152, %if.then.123
  %105 = load i32, i32* %bit_num_88, align 4
  %cmp125 = icmp ult i32 %105, 64
  br i1 %cmp125, label %for.body.127, label %for.end.154

for.body.127:                                     ; preds = %for.cond.124
  %106 = load i32, i32* %bit_num_88, align 4
  %sh_prom129 = zext i32 %106 to i64
  %shl130 = shl i64 1, %sh_prom129
  store i64 %shl130, i64* %mask_128, align 8
  %107 = load i64, i64* %word_117, align 8
  %108 = load i64, i64* %mask_128, align 8
  %and131 = and i64 %107, %108
  %cmp132 = icmp ne i64 %and131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.151

if.then.134:                                      ; preds = %for.body.127
  %109 = load i64, i64* %mask_128, align 8
  %neg135 = xor i64 %109, -1
  %110 = load i64, i64* %word_117, align 8
  %and136 = and i64 %110, %neg135
  store i64 %and136, i64* %word_117, align 8
  %111 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %indx137 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %111, i32 0, i32 2
  %112 = load i32, i32* %indx137, align 4
  %mul138 = mul i32 %112, 128
  %113 = load i32, i32* %word_num_89, align 4
  %mul139 = mul i32 %113, 64
  %add140 = add i32 %mul138, %mul139
  %114 = load i32, i32* %bit_num_88, align 4
  %add141 = add i32 %add140, %114
  store i32 %add141, i32* %i, align 4
  %115 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  %116 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %116 to i64
  %117 = load i32*, i32** %order.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %117, i64 %idxprom142
  %118 = load i32, i32* %arrayidx143, align 4
  %conv144 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %conv145 = sext i32 %119 to i64
  %120 = inttoptr i64 %conv145 to i8*
  %call146 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %115, i64 %conv144, i8* %120)
  %121 = load i64, i64* %word_117, align 8
  %cmp147 = icmp eq i64 %121, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.then.134
  br label %for.end.154

if.end.150:                                       ; preds = %if.then.134
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %for.body.127
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %122 = load i32, i32* %bit_num_88, align 4
  %inc153 = add i32 %122, 1
  store i32 %inc153, i32* %bit_num_88, align 4
  br label %for.cond.124

for.end.154:                                      ; preds = %if.then.149, %for.cond.124
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %for.body.116
  store i32 0, i32* %bit_num_88, align 4
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %123 = load i32, i32* %word_num_89, align 4
  %inc157 = add i32 %123, 1
  store i32 %inc157, i32* %word_num_89, align 4
  br label %for.cond.113

for.end.158:                                      ; preds = %for.cond.113
  store i32 0, i32* %word_num_89, align 4
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.end.158
  %124 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %next160 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %124, i32 0, i32 0
  %125 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next160, align 8
  store %struct.bitmap_element_def* %125, %struct.bitmap_element_def** %ptr_85, align 8
  br label %for.cond.109

for.end.161:                                      ; preds = %for.cond.109
  br label %do.end.162

do.end.162:                                       ; preds = %for.end.161
  %126 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %126)
  br label %if.end.164

if.else.163:                                      ; preds = %while.end.79
  br label %while.end.165

if.end.164:                                       ; preds = %do.end.162
  br label %while.cond.54

while.end.165:                                    ; preds = %if.else.163, %while.cond.54
  %127 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %128 = bitcast %struct.simple_bitmap_def* %127 to i8*
  call void @free(i8* %128) #4
  %129 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %130 = bitcast %struct.simple_bitmap_def* %129 to i8*
  call void @free(i8* %130) #4
  %131 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  call void @fibheap_delete(%struct.fibheap* %131)
  ret void
}

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare %struct.fibheap* @fibheap_new() #1

declare %struct.fibnode* @fibheap_insert(%struct.fibheap*, i64, i8*) #1

declare void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def*) #1

declare i32 @fibheap_empty(%struct.fibheap*) #1

declare i8* @fibheap_extract_min(%struct.fibheap*) #1

; Function Attrs: nounwind uwtable
define internal void @hybrid_search_sbitmap(%struct.basic_block_def* %block, %struct.simple_bitmap_def** %in, %struct.simple_bitmap_def** %out, %struct.simple_bitmap_def** %gen, %struct.simple_bitmap_def** %kill, i32 %dir, i32 %conf_op, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)* %transfun, %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def* %pending, i8* %data) #0 {
entry:
  %block.addr = alloca %struct.basic_block_def*, align 8
  %in.addr = alloca %struct.simple_bitmap_def**, align 8
  %out.addr = alloca %struct.simple_bitmap_def**, align 8
  %gen.addr = alloca %struct.simple_bitmap_def**, align 8
  %kill.addr = alloca %struct.simple_bitmap_def**, align 8
  %dir.addr = alloca i32, align 4
  %conf_op.addr = alloca i32, align 4
  %transfun.addr = alloca void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)*, align 8
  %visited.addr = alloca %struct.simple_bitmap_def*, align 8
  %pending.addr = alloca %struct.simple_bitmap_def*, align 8
  %data.addr = alloca i8*, align 8
  %changed = alloca i32, align 4
  %i = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  store %struct.simple_bitmap_def** %in, %struct.simple_bitmap_def*** %in.addr, align 8
  store %struct.simple_bitmap_def** %out, %struct.simple_bitmap_def*** %out.addr, align 8
  store %struct.simple_bitmap_def** %gen, %struct.simple_bitmap_def*** %gen.addr, align 8
  store %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %kill.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %conf_op, i32* %conf_op.addr, align 4
  store void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)* %transfun, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)** %transfun.addr, align 8
  store %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def** %visited.addr, align 8
  store %struct.simple_bitmap_def* %pending, %struct.simple_bitmap_def** %pending.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  store i32 %1, i32* %i, align 4
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %bb, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index1, align 4
  %rem = urem i32 %4, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 11
  %6 = load i32, i32* %index2, align 4
  %div = udiv i32 %6, 64
  %idxprom = zext i32 %div to i64
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %or = or i64 %8, %shl
  store i64 %or, i64* %arrayidx, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 11
  %10 = load i32, i32* %index3, align 4
  %div4 = udiv i32 %10, 64
  %idxprom5 = zext i32 %div4 to i64
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %elms6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %elms6, i32 0, i64 %idxprom5
  %12 = load i64, i64* %arrayidx7, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index8, align 4
  %rem9 = urem i32 %14, 64
  %sh_prom10 = zext i32 %rem9 to i64
  %shr = lshr i64 %12, %sh_prom10
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.143

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %dir.addr, align 4
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %16 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %17, i64 %idxprom12
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx13, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %18)
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 4
  %20 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %20, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp14 = icmp ne %struct.edge_def* %21, null
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 2
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp15 = icmp eq %struct.basic_block_def* %23, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %24 = load i32, i32* %conf_op.addr, align 4
  switch i32 %24, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %26, i64 %idxprom17
  %27 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx18, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %29, i64 %idxprom19
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 2
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %src21, align 8
  %index22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 11
  %33 = load i32, i32* %index22, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %34, i64 %idxprom23
  %35 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx24, align 8
  %call = call i32 @sbitmap_a_or_b(%struct.simple_bitmap_def* %27, %struct.simple_bitmap_def* %30, %struct.simple_bitmap_def* %35)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end
  %36 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %37, i64 %idxprom26
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx27, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %40 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %40, i64 %idxprom28
  %41 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx29, align 8
  %42 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 2
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %src30, align 8
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 11
  %44 = load i32, i32* %index31, align 4
  %idxprom32 = sext i32 %44 to i64
  %45 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %45, i64 %idxprom32
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx33, align 8
  %call34 = call i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %38, %struct.simple_bitmap_def* %41, %struct.simple_bitmap_def* %46)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.25, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.16
  %47 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i32 0, i32 0
  %48 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %48, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.66

if.else:                                          ; preds = %if.then
  %49 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %49 to i64
  %50 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %50, i64 %idxprom35
  %51 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx36, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %51)
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 5
  %53 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %53, %struct.edge_def** %e, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.64, %if.else
  %54 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp38 = icmp ne %struct.edge_def* %54, null
  br i1 %cmp38, label %for.body.39, label %for.end.65

for.body.39:                                      ; preds = %for.cond.37
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 3
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp40 = icmp eq %struct.basic_block_def* %56, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.39
  br label %for.inc.64

if.end.42:                                        ; preds = %for.body.39
  %57 = load i32, i32* %conf_op.addr, align 4
  switch i32 %57, label %sw.epilog.63 [
    i32 0, label %sw.bb.43
    i32 1, label %sw.bb.53
  ]

sw.bb.43:                                         ; preds = %if.end.42
  %58 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %58 to i64
  %59 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %59, i64 %idxprom44
  %60 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx45, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %61 to i64
  %62 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %62, i64 %idxprom46
  %63 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx47, align 8
  %64 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest48 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 3
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %dest48, align 8
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i32 0, i32 11
  %66 = load i32, i32* %index49, align 4
  %idxprom50 = sext i32 %66 to i64
  %67 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %67, i64 %idxprom50
  %68 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx51, align 8
  %call52 = call i32 @sbitmap_a_or_b(%struct.simple_bitmap_def* %60, %struct.simple_bitmap_def* %63, %struct.simple_bitmap_def* %68)
  br label %sw.epilog.63

sw.bb.53:                                         ; preds = %if.end.42
  %69 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %69 to i64
  %70 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %70, i64 %idxprom54
  %71 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx55, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %72 to i64
  %73 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %73, i64 %idxprom56
  %74 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx57, align 8
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest58 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 3
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %dest58, align 8
  %index59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 11
  %77 = load i32, i32* %index59, align 4
  %idxprom60 = sext i32 %77 to i64
  %78 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %78, i64 %idxprom60
  %79 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx61, align 8
  %call62 = call i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %71, %struct.simple_bitmap_def* %74, %struct.simple_bitmap_def* %79)
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %if.end.42, %sw.bb.53, %sw.bb.43
  br label %for.inc.64

for.inc.64:                                       ; preds = %sw.epilog.63, %if.then.41
  %80 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %80, i32 0, i32 1
  %81 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %81, %struct.edge_def** %e, align 8
  br label %for.cond.37

for.end.65:                                       ; preds = %for.cond.37
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %for.end
  %82 = load void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)*, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)** %transfun.addr, align 8
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %84 to i64
  %85 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %85, i64 %idxprom67
  %86 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx68, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %87 to i64
  %88 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %88, i64 %idxprom69
  %89 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx70, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %90 to i64
  %91 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %gen.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %91, i64 %idxprom71
  %92 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx72, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %93 to i64
  %94 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %94, i64 %idxprom73
  %95 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx74, align 8
  %96 = load i8*, i8** %data.addr, align 8
  call void %82(i32 %83, i32* %changed, %struct.simple_bitmap_def* %86, %struct.simple_bitmap_def* %89, %struct.simple_bitmap_def* %92, %struct.simple_bitmap_def* %95, i8* %96)
  %97 = load i32, i32* %i, align 4
  %rem75 = urem i32 %97, 64
  %sh_prom76 = zext i32 %rem75 to i64
  %shl77 = shl i64 1, %sh_prom76
  %neg = xor i64 %shl77, -1
  %98 = load i32, i32* %i, align 4
  %div78 = udiv i32 %98, 64
  %idxprom79 = zext i32 %div78 to i64
  %99 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %elms80 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %99, i32 0, i32 3
  %arrayidx81 = getelementptr inbounds [1 x i64], [1 x i64]* %elms80, i32 0, i64 %idxprom79
  %100 = load i64, i64* %arrayidx81, align 8
  %and82 = and i64 %100, %neg
  store i64 %and82, i64* %arrayidx81, align 8
  %101 = load i32, i32* %changed, align 4
  %tobool83 = icmp ne i32 %101, 0
  br i1 %tobool83, label %if.then.84, label %if.end.142

if.then.84:                                       ; preds = %if.end.66
  %102 = load i32, i32* %dir.addr, align 4
  %cmp85 = icmp eq i32 %102, 0
  br i1 %cmp85, label %if.then.86, label %if.else.113

if.then.86:                                       ; preds = %if.then.84
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ87 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i32 0, i32 5
  %104 = load %struct.edge_def*, %struct.edge_def** %succ87, align 8
  store %struct.edge_def* %104, %struct.edge_def** %e, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.110, %if.then.86
  %105 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp89 = icmp ne %struct.edge_def* %105, null
  br i1 %cmp89, label %for.body.90, label %for.end.112

for.body.90:                                      ; preds = %for.cond.88
  %106 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest91 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %106, i32 0, i32 3
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %dest91, align 8
  %cmp92 = icmp eq %struct.basic_block_def* %107, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp92, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.90
  %108 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest93 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %108, i32 0, i32 3
  %109 = load %struct.basic_block_def*, %struct.basic_block_def** %dest93, align 8
  %index94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %109, i32 0, i32 11
  %110 = load i32, i32* %index94, align 4
  %111 = load i32, i32* %i, align 4
  %cmp95 = icmp eq i32 %110, %111
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false, %for.body.90
  br label %for.inc.110

if.end.97:                                        ; preds = %lor.lhs.false
  %112 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest98 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %112, i32 0, i32 3
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %dest98, align 8
  %index99 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %113, i32 0, i32 11
  %114 = load i32, i32* %index99, align 4
  %rem100 = urem i32 %114, 64
  %sh_prom101 = zext i32 %rem100 to i64
  %shl102 = shl i64 1, %sh_prom101
  %115 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest103 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %115, i32 0, i32 3
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %dest103, align 8
  %index104 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %116, i32 0, i32 11
  %117 = load i32, i32* %index104, align 4
  %div105 = udiv i32 %117, 64
  %idxprom106 = zext i32 %div105 to i64
  %118 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %elms107 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %118, i32 0, i32 3
  %arrayidx108 = getelementptr inbounds [1 x i64], [1 x i64]* %elms107, i32 0, i64 %idxprom106
  %119 = load i64, i64* %arrayidx108, align 8
  %or109 = or i64 %119, %shl102
  store i64 %or109, i64* %arrayidx108, align 8
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.97, %if.then.96
  %120 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next111 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i32 0, i32 1
  %121 = load %struct.edge_def*, %struct.edge_def** %succ_next111, align 8
  store %struct.edge_def* %121, %struct.edge_def** %e, align 8
  br label %for.cond.88

for.end.112:                                      ; preds = %for.cond.88
  br label %if.end.141

if.else.113:                                      ; preds = %if.then.84
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred114 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %122, i32 0, i32 4
  %123 = load %struct.edge_def*, %struct.edge_def** %pred114, align 8
  store %struct.edge_def* %123, %struct.edge_def** %e, align 8
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.138, %if.else.113
  %124 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp116 = icmp ne %struct.edge_def* %124, null
  br i1 %cmp116, label %for.body.117, label %for.end.140

for.body.117:                                     ; preds = %for.cond.115
  %125 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src118 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %125, i32 0, i32 2
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %src118, align 8
  %cmp119 = icmp eq %struct.basic_block_def* %126, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp119, label %if.then.124, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %for.body.117
  %127 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest121 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i32 0, i32 3
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %dest121, align 8
  %index122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %128, i32 0, i32 11
  %129 = load i32, i32* %index122, align 4
  %130 = load i32, i32* %i, align 4
  %cmp123 = icmp eq i32 %129, %130
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %lor.lhs.false.120, %for.body.117
  br label %for.inc.138

if.end.125:                                       ; preds = %lor.lhs.false.120
  %131 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src126 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %131, i32 0, i32 2
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %src126, align 8
  %index127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %132, i32 0, i32 11
  %133 = load i32, i32* %index127, align 4
  %rem128 = urem i32 %133, 64
  %sh_prom129 = zext i32 %rem128 to i64
  %shl130 = shl i64 1, %sh_prom129
  %134 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %134, i32 0, i32 2
  %135 = load %struct.basic_block_def*, %struct.basic_block_def** %src131, align 8
  %index132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %135, i32 0, i32 11
  %136 = load i32, i32* %index132, align 4
  %div133 = udiv i32 %136, 64
  %idxprom134 = zext i32 %div133 to i64
  %137 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %elms135 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %137, i32 0, i32 3
  %arrayidx136 = getelementptr inbounds [1 x i64], [1 x i64]* %elms135, i32 0, i64 %idxprom134
  %138 = load i64, i64* %arrayidx136, align 8
  %or137 = or i64 %138, %shl130
  store i64 %or137, i64* %arrayidx136, align 8
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.125, %if.then.124
  %139 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next139 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %139, i32 0, i32 0
  %140 = load %struct.edge_def*, %struct.edge_def** %pred_next139, align 8
  store %struct.edge_def* %140, %struct.edge_def** %e, align 8
  br label %for.cond.115

for.end.140:                                      ; preds = %for.cond.115
  br label %if.end.141

if.end.141:                                       ; preds = %for.end.140, %for.end.112
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.66
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %entry
  %141 = load i32, i32* %dir.addr, align 4
  %cmp144 = icmp eq i32 %141, 0
  br i1 %cmp144, label %if.then.145, label %if.else.177

if.then.145:                                      ; preds = %if.end.143
  %142 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ146 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %142, i32 0, i32 5
  %143 = load %struct.edge_def*, %struct.edge_def** %succ146, align 8
  store %struct.edge_def* %143, %struct.edge_def** %e, align 8
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.174, %if.then.145
  %144 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp148 = icmp ne %struct.edge_def* %144, null
  br i1 %cmp148, label %for.body.149, label %for.end.176

for.body.149:                                     ; preds = %for.cond.147
  %145 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest150 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %145, i32 0, i32 3
  %146 = load %struct.basic_block_def*, %struct.basic_block_def** %dest150, align 8
  %cmp151 = icmp eq %struct.basic_block_def* %146, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp151, label %if.then.156, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %for.body.149
  %147 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest153 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %147, i32 0, i32 3
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %dest153, align 8
  %index154 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %148, i32 0, i32 11
  %149 = load i32, i32* %index154, align 4
  %150 = load i32, i32* %i, align 4
  %cmp155 = icmp eq i32 %149, %150
  br i1 %cmp155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %lor.lhs.false.152, %for.body.149
  br label %for.inc.174

if.end.157:                                       ; preds = %lor.lhs.false.152
  %151 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest158 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %151, i32 0, i32 3
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %dest158, align 8
  %index159 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %152, i32 0, i32 11
  %153 = load i32, i32* %index159, align 4
  %div160 = udiv i32 %153, 64
  %idxprom161 = zext i32 %div160 to i64
  %154 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms162 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %154, i32 0, i32 3
  %arrayidx163 = getelementptr inbounds [1 x i64], [1 x i64]* %elms162, i32 0, i64 %idxprom161
  %155 = load i64, i64* %arrayidx163, align 8
  %156 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest164 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %156, i32 0, i32 3
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %dest164, align 8
  %index165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %157, i32 0, i32 11
  %158 = load i32, i32* %index165, align 4
  %rem166 = urem i32 %158, 64
  %sh_prom167 = zext i32 %rem166 to i64
  %shr168 = lshr i64 %155, %sh_prom167
  %and169 = and i64 %shr168, 1
  %tobool170 = icmp ne i64 %and169, 0
  br i1 %tobool170, label %if.end.173, label %if.then.171

if.then.171:                                      ; preds = %if.end.157
  %159 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest172 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %159, i32 0, i32 3
  %160 = load %struct.basic_block_def*, %struct.basic_block_def** %dest172, align 8
  %161 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %162 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %163 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %gen.addr, align 8
  %164 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %165 = load i32, i32* %dir.addr, align 4
  %166 = load i32, i32* %conf_op.addr, align 4
  %167 = load void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)*, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)** %transfun.addr, align 8
  %168 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %169 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %170 = load i8*, i8** %data.addr, align 8
  call void @hybrid_search_sbitmap(%struct.basic_block_def* %160, %struct.simple_bitmap_def** %161, %struct.simple_bitmap_def** %162, %struct.simple_bitmap_def** %163, %struct.simple_bitmap_def** %164, i32 %165, i32 %166, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)* %167, %struct.simple_bitmap_def* %168, %struct.simple_bitmap_def* %169, i8* %170)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.end.157
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173, %if.then.156
  %171 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next175 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %171, i32 0, i32 1
  %172 = load %struct.edge_def*, %struct.edge_def** %succ_next175, align 8
  store %struct.edge_def* %172, %struct.edge_def** %e, align 8
  br label %for.cond.147

for.end.176:                                      ; preds = %for.cond.147
  br label %if.end.209

if.else.177:                                      ; preds = %if.end.143
  %173 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred178 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %173, i32 0, i32 4
  %174 = load %struct.edge_def*, %struct.edge_def** %pred178, align 8
  store %struct.edge_def* %174, %struct.edge_def** %e, align 8
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.206, %if.else.177
  %175 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp180 = icmp ne %struct.edge_def* %175, null
  br i1 %cmp180, label %for.body.181, label %for.end.208

for.body.181:                                     ; preds = %for.cond.179
  %176 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src182 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %176, i32 0, i32 2
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %src182, align 8
  %cmp183 = icmp eq %struct.basic_block_def* %177, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp183, label %if.then.188, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %for.body.181
  %178 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src185 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %178, i32 0, i32 2
  %179 = load %struct.basic_block_def*, %struct.basic_block_def** %src185, align 8
  %index186 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %179, i32 0, i32 11
  %180 = load i32, i32* %index186, align 4
  %181 = load i32, i32* %i, align 4
  %cmp187 = icmp eq i32 %180, %181
  br i1 %cmp187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %lor.lhs.false.184, %for.body.181
  br label %for.inc.206

if.end.189:                                       ; preds = %lor.lhs.false.184
  %182 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src190 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %182, i32 0, i32 2
  %183 = load %struct.basic_block_def*, %struct.basic_block_def** %src190, align 8
  %index191 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %183, i32 0, i32 11
  %184 = load i32, i32* %index191, align 4
  %div192 = udiv i32 %184, 64
  %idxprom193 = zext i32 %div192 to i64
  %185 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms194 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %185, i32 0, i32 3
  %arrayidx195 = getelementptr inbounds [1 x i64], [1 x i64]* %elms194, i32 0, i64 %idxprom193
  %186 = load i64, i64* %arrayidx195, align 8
  %187 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src196 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %187, i32 0, i32 2
  %188 = load %struct.basic_block_def*, %struct.basic_block_def** %src196, align 8
  %index197 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %188, i32 0, i32 11
  %189 = load i32, i32* %index197, align 4
  %rem198 = urem i32 %189, 64
  %sh_prom199 = zext i32 %rem198 to i64
  %shr200 = lshr i64 %186, %sh_prom199
  %and201 = and i64 %shr200, 1
  %tobool202 = icmp ne i64 %and201, 0
  br i1 %tobool202, label %if.end.205, label %if.then.203

if.then.203:                                      ; preds = %if.end.189
  %190 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src204 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %190, i32 0, i32 2
  %191 = load %struct.basic_block_def*, %struct.basic_block_def** %src204, align 8
  %192 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %in.addr, align 8
  %193 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %out.addr, align 8
  %194 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %gen.addr, align 8
  %195 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %196 = load i32, i32* %dir.addr, align 4
  %197 = load i32, i32* %conf_op.addr, align 4
  %198 = load void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)*, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)** %transfun.addr, align 8
  %199 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %200 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %201 = load i8*, i8** %data.addr, align 8
  call void @hybrid_search_sbitmap(%struct.basic_block_def* %191, %struct.simple_bitmap_def** %192, %struct.simple_bitmap_def** %193, %struct.simple_bitmap_def** %194, %struct.simple_bitmap_def** %195, i32 %196, i32 %197, void (i32, i32*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, i8*)* %198, %struct.simple_bitmap_def* %199, %struct.simple_bitmap_def* %200, i8* %201)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.end.189
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.205, %if.then.188
  %202 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next207 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %202, i32 0, i32 0
  %203 = load %struct.edge_def*, %struct.edge_def** %pred_next207, align 8
  store %struct.edge_def* %203, %struct.edge_def** %e, align 8
  br label %for.cond.179

for.end.208:                                      ; preds = %for.cond.179
  br label %if.end.209

if.end.209:                                       ; preds = %for.end.208, %for.end.176
  ret void
}

declare void @fibheap_delete(%struct.fibheap*) #1

; Function Attrs: nounwind uwtable
define void @iterative_dataflow_bitmap(%struct.bitmap_head_def** %in, %struct.bitmap_head_def** %out, %struct.bitmap_head_def** %gen, %struct.bitmap_head_def** %kill, %struct.bitmap_head_def* %blocks, i32 %dir, i32 %conf_op, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* %transfun, i32* %order, i8* %data) #0 {
entry:
  %in.addr = alloca %struct.bitmap_head_def**, align 8
  %out.addr = alloca %struct.bitmap_head_def**, align 8
  %gen.addr = alloca %struct.bitmap_head_def**, align 8
  %kill.addr = alloca %struct.bitmap_head_def**, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %dir.addr = alloca i32, align 4
  %conf_op.addr = alloca i32, align 4
  %transfun.addr = alloca void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)*, align 8
  %order.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %worklist = alloca %struct.fibheap*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %visited = alloca %struct.simple_bitmap_def*, align 8
  %pending = alloca %struct.simple_bitmap_def*, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %ptr_85 = alloca %struct.bitmap_element_def*, align 8
  %indx_87 = alloca i32, align 4
  %bit_num_88 = alloca i32, align 4
  %word_num_89 = alloca i32, align 4
  %word_117 = alloca i64, align 8
  %mask_128 = alloca i64, align 8
  store %struct.bitmap_head_def** %in, %struct.bitmap_head_def*** %in.addr, align 8
  store %struct.bitmap_head_def** %out, %struct.bitmap_head_def*** %out.addr, align 8
  store %struct.bitmap_head_def** %gen, %struct.bitmap_head_def*** %gen.addr, align 8
  store %struct.bitmap_head_def** %kill, %struct.bitmap_head_def*** %kill.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %conf_op, i32* %conf_op.addr, align 4
  store void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* %transfun, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)** %transfun.addr, align 8
  store i32* %order, i32** %order.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %0)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %pending, align 8
  %1 = load i32, i32* @n_basic_blocks, align 4
  %call1 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1)
  store %struct.simple_bitmap_def* %call1, %struct.simple_bitmap_def** %visited, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %2)
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %3)
  %call2 = call %struct.fibheap* @fibheap_new()
  store %struct.fibheap* %call2, %struct.fibheap** %worklist, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %4, i32 0, i32 0
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %5, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %6, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 2
  %8 = load i32, i32* %indx, align 4
  %9 = load i32, i32* %indx_, align 4
  %cmp3 = icmp ult i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %11, i32 0, i32 0
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %12, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp4 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i32 0, i32 2
  %15 = load i32, i32* %indx5, align 4
  %16 = load i32, i32* %indx_, align 4
  %cmp6 = icmp ne i32 %15, %16
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.end
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp7 = icmp ne %struct.bitmap_element_def* %17, null
  br i1 %cmp7, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.48, %for.body
  %18 = load i32, i32* %word_num_, align 4
  %cmp9 = icmp ult i32 %18, 2
  br i1 %cmp9, label %for.body.10, label %for.end.50

for.body.10:                                      ; preds = %for.cond.8
  %19 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %20, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %21 = load i64, i64* %arrayidx, align 8
  store i64 %21, i64* %word_, align 8
  %22 = load i64, i64* %word_, align 8
  %cmp11 = icmp ne i64 %22, 0
  br i1 %cmp11, label %if.then.12, label %if.end.47

if.then.12:                                       ; preds = %for.body.10
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then.12
  %23 = load i32, i32* %bit_num_, align 4
  %cmp14 = icmp ult i32 %23, 64
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %24 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %25 = load i64, i64* %word_, align 8
  %26 = load i64, i64* %mask_, align 8
  %and = and i64 %25, %26
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.then.17, label %if.end.46

if.then.17:                                       ; preds = %for.body.15
  %27 = load i64, i64* %mask_, align 8
  %neg = xor i64 %27, -1
  %28 = load i64, i64* %word_, align 8
  %and18 = and i64 %28, %neg
  store i64 %and18, i64* %word_, align 8
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i32 0, i32 2
  %30 = load i32, i32* %indx19, align 4
  %mul = mul i32 %30, 128
  %31 = load i32, i32* %word_num_, align 4
  %mul20 = mul i32 %31, 64
  %add = add i32 %mul, %mul20
  %32 = load i32, i32* %bit_num_, align 4
  %add21 = add i32 %add, %32
  store i32 %add21, i32* %i, align 4
  %33 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %34 to i64
  %35 = load i32*, i32** %order.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %35, i64 %idxprom22
  %36 = load i32, i32* %arrayidx23, align 4
  %conv = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %conv24 = sext i32 %37 to i64
  %38 = inttoptr i64 %conv24 to i8*
  %call25 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %33, i64 %conv, i8* %38)
  %39 = load i32, i32* %i, align 4
  %rem = urem i32 %39, 64
  %sh_prom26 = zext i32 %rem to i64
  %shl27 = shl i64 1, %sh_prom26
  %40 = load i32, i32* %i, align 4
  %div = udiv i32 %40, 64
  %idxprom28 = zext i32 %div to i64
  %41 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %41, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom28
  %42 = load i64, i64* %arrayidx29, align 8
  %or = or i64 %42, %shl27
  store i64 %or, i64* %arrayidx29, align 8
  %43 = load i32, i32* %dir.addr, align 4
  %cmp30 = icmp eq i32 %43, 0
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.17
  %44 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %44 to i64
  %45 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %45, i64 %idxprom33
  %46 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx34, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %48, i64 %idxprom35
  %49 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx36, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %46, %struct.bitmap_head_def* %49)
  br label %if.end.41

if.else:                                          ; preds = %if.then.17
  %50 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %50 to i64
  %51 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %51, i64 %idxprom37
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx38, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %53 to i64
  %54 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %54, i64 %idxprom39
  %55 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx40, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %52, %struct.bitmap_head_def* %55)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.32
  %56 = load i64, i64* %word_, align 8
  %cmp42 = icmp eq i64 %56, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  br label %for.end

if.end.45:                                        ; preds = %if.end.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %57 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.13

for.end:                                          ; preds = %if.then.44, %for.cond.13
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %for.body.10
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %58 = load i32, i32* %word_num_, align 4
  %inc49 = add i32 %58, 1
  store i32 %inc49, i32* %word_num_, align 4
  br label %for.cond.8

for.end.50:                                       ; preds = %for.cond.8
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next52 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %59, i32 0, i32 0
  %60 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next52, align 8
  store %struct.bitmap_element_def* %60, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.53
  br label %while.cond.54

while.cond.54:                                    ; preds = %if.end.164, %do.end
  %61 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %call55 = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %61)
  %cmp56 = icmp ne i32 %call55, -1
  br i1 %cmp56, label %while.body.58, label %while.end.165

while.body.58:                                    ; preds = %while.cond.54
  br label %while.cond.59

while.cond.59:                                    ; preds = %if.end.78, %while.body.58
  %62 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  %call60 = call i32 @fibheap_empty(%struct.fibheap* %62)
  %tobool = icmp ne i32 %call60, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body.61, label %while.end.79

while.body.61:                                    ; preds = %while.cond.59
  %63 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  %call62 = call i8* @fibheap_extract_min(%struct.fibheap* %63)
  %64 = ptrtoint i8* %call62 to i64
  %conv63 = trunc i64 %64 to i32
  store i32 %conv63, i32* %i, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %65 to i64
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data65 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %66, i32 0, i32 4
  %bb66 = bitcast %union.varray_data_tag* %data65 to [1 x %struct.basic_block_def*]*
  %arrayidx67 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb66, i32 0, i64 %idxprom64
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx67, align 8
  store %struct.basic_block_def* %67, %struct.basic_block_def** %bb, align 8
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 11
  %69 = load i32, i32* %index, align 4
  %div68 = udiv i32 %69, 64
  %idxprom69 = zext i32 %div68 to i64
  %70 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms70 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %70, i32 0, i32 3
  %arrayidx71 = getelementptr inbounds [1 x i64], [1 x i64]* %elms70, i32 0, i64 %idxprom69
  %71 = load i64, i64* %arrayidx71, align 8
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i32 0, i32 11
  %73 = load i32, i32* %index72, align 4
  %rem73 = urem i32 %73, 64
  %sh_prom74 = zext i32 %rem73 to i64
  %shr = lshr i64 %71, %sh_prom74
  %and75 = and i64 %shr, 1
  %tobool76 = icmp ne i64 %and75, 0
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %while.body.61
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %75 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %76 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %77 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen.addr, align 8
  %78 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill.addr, align 8
  %79 = load i32, i32* %dir.addr, align 4
  %80 = load i32, i32* %conf_op.addr, align 4
  %81 = load void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)*, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)** %transfun.addr, align 8
  %82 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %83 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %84 = load i8*, i8** %data.addr, align 8
  call void @hybrid_search_bitmap(%struct.basic_block_def* %74, %struct.bitmap_head_def** %75, %struct.bitmap_head_def** %76, %struct.bitmap_head_def** %77, %struct.bitmap_head_def** %78, i32 %79, i32 %80, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* %81, %struct.simple_bitmap_def* %82, %struct.simple_bitmap_def* %83, i8* %84)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %while.body.61
  br label %while.cond.59

while.end.79:                                     ; preds = %while.cond.59
  %85 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %call80 = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %85)
  %cmp81 = icmp ne i32 %call80, -1
  br i1 %cmp81, label %if.then.83, label %if.else.163

if.then.83:                                       ; preds = %while.end.79
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %86 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first86 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %86, i32 0, i32 0
  %87 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first86, align 8
  store %struct.bitmap_element_def* %87, %struct.bitmap_element_def** %ptr_85, align 8
  store i32 0, i32* %indx_87, align 4
  store i32 0, i32* %bit_num_88, align 4
  store i32 0, i32* %word_num_89, align 4
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.98, %do.body.84
  %88 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %cmp91 = icmp ne %struct.bitmap_element_def* %88, null
  br i1 %cmp91, label %land.rhs.93, label %land.end.97

land.rhs.93:                                      ; preds = %while.cond.90
  %89 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %indx94 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %89, i32 0, i32 2
  %90 = load i32, i32* %indx94, align 4
  %91 = load i32, i32* %indx_87, align 4
  %cmp95 = icmp ult i32 %90, %91
  br label %land.end.97

land.end.97:                                      ; preds = %land.rhs.93, %while.cond.90
  %92 = phi i1 [ false, %while.cond.90 ], [ %cmp95, %land.rhs.93 ]
  br i1 %92, label %while.body.98, label %while.end.100

while.body.98:                                    ; preds = %land.end.97
  %93 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %next99 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %93, i32 0, i32 0
  %94 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next99, align 8
  store %struct.bitmap_element_def* %94, %struct.bitmap_element_def** %ptr_85, align 8
  br label %while.cond.90

while.end.100:                                    ; preds = %land.end.97
  %95 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %cmp101 = icmp ne %struct.bitmap_element_def* %95, null
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.108

land.lhs.true.103:                                ; preds = %while.end.100
  %96 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %indx104 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %96, i32 0, i32 2
  %97 = load i32, i32* %indx104, align 4
  %98 = load i32, i32* %indx_87, align 4
  %cmp105 = icmp ne i32 %97, %98
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.103
  store i32 0, i32* %bit_num_88, align 4
  store i32 0, i32* %word_num_89, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %land.lhs.true.103, %while.end.100
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.159, %if.end.108
  %99 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %cmp110 = icmp ne %struct.bitmap_element_def* %99, null
  br i1 %cmp110, label %for.body.112, label %for.end.161

for.body.112:                                     ; preds = %for.cond.109
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.156, %for.body.112
  %100 = load i32, i32* %word_num_89, align 4
  %cmp114 = icmp ult i32 %100, 2
  br i1 %cmp114, label %for.body.116, label %for.end.158

for.body.116:                                     ; preds = %for.cond.113
  %101 = load i32, i32* %word_num_89, align 4
  %idxprom118 = zext i32 %101 to i64
  %102 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %bits119 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %102, i32 0, i32 3
  %arrayidx120 = getelementptr inbounds [2 x i64], [2 x i64]* %bits119, i32 0, i64 %idxprom118
  %103 = load i64, i64* %arrayidx120, align 8
  store i64 %103, i64* %word_117, align 8
  %104 = load i64, i64* %word_117, align 8
  %cmp121 = icmp ne i64 %104, 0
  br i1 %cmp121, label %if.then.123, label %if.end.155

if.then.123:                                      ; preds = %for.body.116
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.152, %if.then.123
  %105 = load i32, i32* %bit_num_88, align 4
  %cmp125 = icmp ult i32 %105, 64
  br i1 %cmp125, label %for.body.127, label %for.end.154

for.body.127:                                     ; preds = %for.cond.124
  %106 = load i32, i32* %bit_num_88, align 4
  %sh_prom129 = zext i32 %106 to i64
  %shl130 = shl i64 1, %sh_prom129
  store i64 %shl130, i64* %mask_128, align 8
  %107 = load i64, i64* %word_117, align 8
  %108 = load i64, i64* %mask_128, align 8
  %and131 = and i64 %107, %108
  %cmp132 = icmp ne i64 %and131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.151

if.then.134:                                      ; preds = %for.body.127
  %109 = load i64, i64* %mask_128, align 8
  %neg135 = xor i64 %109, -1
  %110 = load i64, i64* %word_117, align 8
  %and136 = and i64 %110, %neg135
  store i64 %and136, i64* %word_117, align 8
  %111 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %indx137 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %111, i32 0, i32 2
  %112 = load i32, i32* %indx137, align 4
  %mul138 = mul i32 %112, 128
  %113 = load i32, i32* %word_num_89, align 4
  %mul139 = mul i32 %113, 64
  %add140 = add i32 %mul138, %mul139
  %114 = load i32, i32* %bit_num_88, align 4
  %add141 = add i32 %add140, %114
  store i32 %add141, i32* %i, align 4
  %115 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  %116 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %116 to i64
  %117 = load i32*, i32** %order.addr, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %117, i64 %idxprom142
  %118 = load i32, i32* %arrayidx143, align 4
  %conv144 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %conv145 = sext i32 %119 to i64
  %120 = inttoptr i64 %conv145 to i8*
  %call146 = call %struct.fibnode* @fibheap_insert(%struct.fibheap* %115, i64 %conv144, i8* %120)
  %121 = load i64, i64* %word_117, align 8
  %cmp147 = icmp eq i64 %121, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.then.134
  br label %for.end.154

if.end.150:                                       ; preds = %if.then.134
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %for.body.127
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %122 = load i32, i32* %bit_num_88, align 4
  %inc153 = add i32 %122, 1
  store i32 %inc153, i32* %bit_num_88, align 4
  br label %for.cond.124

for.end.154:                                      ; preds = %if.then.149, %for.cond.124
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %for.body.116
  store i32 0, i32* %bit_num_88, align 4
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %123 = load i32, i32* %word_num_89, align 4
  %inc157 = add i32 %123, 1
  store i32 %inc157, i32* %word_num_89, align 4
  br label %for.cond.113

for.end.158:                                      ; preds = %for.cond.113
  store i32 0, i32* %word_num_89, align 4
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.end.158
  %124 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_85, align 8
  %next160 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %124, i32 0, i32 0
  %125 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next160, align 8
  store %struct.bitmap_element_def* %125, %struct.bitmap_element_def** %ptr_85, align 8
  br label %for.cond.109

for.end.161:                                      ; preds = %for.cond.109
  br label %do.end.162

do.end.162:                                       ; preds = %for.end.161
  %126 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %126)
  br label %if.end.164

if.else.163:                                      ; preds = %while.end.79
  br label %while.end.165

if.end.164:                                       ; preds = %do.end.162
  br label %while.cond.54

while.end.165:                                    ; preds = %if.else.163, %while.cond.54
  %127 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending, align 8
  %128 = bitcast %struct.simple_bitmap_def* %127 to i8*
  call void @free(i8* %128) #4
  %129 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %130 = bitcast %struct.simple_bitmap_def* %129 to i8*
  call void @free(i8* %130) #4
  %131 = load %struct.fibheap*, %struct.fibheap** %worklist, align 8
  call void @fibheap_delete(%struct.fibheap* %131)
  ret void
}

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define internal void @hybrid_search_bitmap(%struct.basic_block_def* %block, %struct.bitmap_head_def** %in, %struct.bitmap_head_def** %out, %struct.bitmap_head_def** %gen, %struct.bitmap_head_def** %kill, i32 %dir, i32 %conf_op, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* %transfun, %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def* %pending, i8* %data) #0 {
entry:
  %block.addr = alloca %struct.basic_block_def*, align 8
  %in.addr = alloca %struct.bitmap_head_def**, align 8
  %out.addr = alloca %struct.bitmap_head_def**, align 8
  %gen.addr = alloca %struct.bitmap_head_def**, align 8
  %kill.addr = alloca %struct.bitmap_head_def**, align 8
  %dir.addr = alloca i32, align 4
  %conf_op.addr = alloca i32, align 4
  %transfun.addr = alloca void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)*, align 8
  %visited.addr = alloca %struct.simple_bitmap_def*, align 8
  %pending.addr = alloca %struct.simple_bitmap_def*, align 8
  %data.addr = alloca i8*, align 8
  %changed = alloca i32, align 4
  %i = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  store %struct.bitmap_head_def** %in, %struct.bitmap_head_def*** %in.addr, align 8
  store %struct.bitmap_head_def** %out, %struct.bitmap_head_def*** %out.addr, align 8
  store %struct.bitmap_head_def** %gen, %struct.bitmap_head_def*** %gen.addr, align 8
  store %struct.bitmap_head_def** %kill, %struct.bitmap_head_def*** %kill.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store i32 %conf_op, i32* %conf_op.addr, align 4
  store void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* %transfun, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)** %transfun.addr, align 8
  store %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def** %visited.addr, align 8
  store %struct.simple_bitmap_def* %pending, %struct.simple_bitmap_def** %pending.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  store i32 %1, i32* %i, align 4
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %bb, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index1, align 4
  %rem = urem i32 %4, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 11
  %6 = load i32, i32* %index2, align 4
  %div = udiv i32 %6, 64
  %idxprom = zext i32 %div to i64
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %or = or i64 %8, %shl
  store i64 %or, i64* %arrayidx, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 11
  %10 = load i32, i32* %index3, align 4
  %div4 = udiv i32 %10, 64
  %idxprom5 = zext i32 %div4 to i64
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %elms6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %elms6, i32 0, i64 %idxprom5
  %12 = load i64, i64* %arrayidx7, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index8, align 4
  %rem9 = urem i32 %14, 64
  %sh_prom10 = zext i32 %rem9 to i64
  %shr = lshr i64 %12, %sh_prom10
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.143

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %dir.addr, align 4
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %16 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %17, i64 %idxprom12
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx13, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %18)
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 4
  %20 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %20, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp14 = icmp ne %struct.edge_def* %21, null
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 2
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp15 = icmp eq %struct.basic_block_def* %23, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %24 = load i32, i32* %conf_op.addr, align 4
  switch i32 %24, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %26, i64 %idxprom17
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx18, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %28 to i64
  %29 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %29, i64 %idxprom19
  %30 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx20, align 8
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 2
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %src21, align 8
  %index22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 11
  %33 = load i32, i32* %index22, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %34, i64 %idxprom23
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx24, align 8
  %call = call i32 @bitmap_operation(%struct.bitmap_head_def* %27, %struct.bitmap_head_def* %30, %struct.bitmap_head_def* %35, i32 2)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end
  %36 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %37, i64 %idxprom26
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx27, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %40 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %40, i64 %idxprom28
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx29, align 8
  %42 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 2
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %src30, align 8
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 11
  %44 = load i32, i32* %index31, align 4
  %idxprom32 = sext i32 %44 to i64
  %45 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %45, i64 %idxprom32
  %46 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx33, align 8
  %call34 = call i32 @bitmap_operation(%struct.bitmap_head_def* %38, %struct.bitmap_head_def* %41, %struct.bitmap_head_def* %46, i32 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.25, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.16
  %47 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i32 0, i32 0
  %48 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %48, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.66

if.else:                                          ; preds = %if.then
  %49 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %49 to i64
  %50 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %50, i64 %idxprom35
  %51 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx36, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %51)
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 5
  %53 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %53, %struct.edge_def** %e, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.64, %if.else
  %54 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp38 = icmp ne %struct.edge_def* %54, null
  br i1 %cmp38, label %for.body.39, label %for.end.65

for.body.39:                                      ; preds = %for.cond.37
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 3
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp40 = icmp eq %struct.basic_block_def* %56, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.39
  br label %for.inc.64

if.end.42:                                        ; preds = %for.body.39
  %57 = load i32, i32* %conf_op.addr, align 4
  switch i32 %57, label %sw.epilog.63 [
    i32 0, label %sw.bb.43
    i32 1, label %sw.bb.53
  ]

sw.bb.43:                                         ; preds = %if.end.42
  %58 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %58 to i64
  %59 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %59, i64 %idxprom44
  %60 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx45, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %61 to i64
  %62 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %62, i64 %idxprom46
  %63 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx47, align 8
  %64 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest48 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 3
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %dest48, align 8
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i32 0, i32 11
  %66 = load i32, i32* %index49, align 4
  %idxprom50 = sext i32 %66 to i64
  %67 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %67, i64 %idxprom50
  %68 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx51, align 8
  %call52 = call i32 @bitmap_operation(%struct.bitmap_head_def* %60, %struct.bitmap_head_def* %63, %struct.bitmap_head_def* %68, i32 2)
  br label %sw.epilog.63

sw.bb.53:                                         ; preds = %if.end.42
  %69 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %69 to i64
  %70 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %70, i64 %idxprom54
  %71 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx55, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %72 to i64
  %73 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %73, i64 %idxprom56
  %74 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx57, align 8
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest58 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 3
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %dest58, align 8
  %index59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 11
  %77 = load i32, i32* %index59, align 4
  %idxprom60 = sext i32 %77 to i64
  %78 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx61 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %78, i64 %idxprom60
  %79 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx61, align 8
  %call62 = call i32 @bitmap_operation(%struct.bitmap_head_def* %71, %struct.bitmap_head_def* %74, %struct.bitmap_head_def* %79, i32 0)
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %if.end.42, %sw.bb.53, %sw.bb.43
  br label %for.inc.64

for.inc.64:                                       ; preds = %sw.epilog.63, %if.then.41
  %80 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %80, i32 0, i32 1
  %81 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %81, %struct.edge_def** %e, align 8
  br label %for.cond.37

for.end.65:                                       ; preds = %for.cond.37
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %for.end
  %82 = load void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)*, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)** %transfun.addr, align 8
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %84 to i64
  %85 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %85, i64 %idxprom67
  %86 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx68, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %87 to i64
  %88 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %88, i64 %idxprom69
  %89 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx70, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %90 to i64
  %91 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %91, i64 %idxprom71
  %92 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx72, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %93 to i64
  %94 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill.addr, align 8
  %arrayidx74 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %94, i64 %idxprom73
  %95 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx74, align 8
  %96 = load i8*, i8** %data.addr, align 8
  call void %82(i32 %83, i32* %changed, %struct.bitmap_head_def* %86, %struct.bitmap_head_def* %89, %struct.bitmap_head_def* %92, %struct.bitmap_head_def* %95, i8* %96)
  %97 = load i32, i32* %i, align 4
  %rem75 = urem i32 %97, 64
  %sh_prom76 = zext i32 %rem75 to i64
  %shl77 = shl i64 1, %sh_prom76
  %neg = xor i64 %shl77, -1
  %98 = load i32, i32* %i, align 4
  %div78 = udiv i32 %98, 64
  %idxprom79 = zext i32 %div78 to i64
  %99 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %elms80 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %99, i32 0, i32 3
  %arrayidx81 = getelementptr inbounds [1 x i64], [1 x i64]* %elms80, i32 0, i64 %idxprom79
  %100 = load i64, i64* %arrayidx81, align 8
  %and82 = and i64 %100, %neg
  store i64 %and82, i64* %arrayidx81, align 8
  %101 = load i32, i32* %changed, align 4
  %tobool83 = icmp ne i32 %101, 0
  br i1 %tobool83, label %if.then.84, label %if.end.142

if.then.84:                                       ; preds = %if.end.66
  %102 = load i32, i32* %dir.addr, align 4
  %cmp85 = icmp eq i32 %102, 0
  br i1 %cmp85, label %if.then.86, label %if.else.113

if.then.86:                                       ; preds = %if.then.84
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ87 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i32 0, i32 5
  %104 = load %struct.edge_def*, %struct.edge_def** %succ87, align 8
  store %struct.edge_def* %104, %struct.edge_def** %e, align 8
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.110, %if.then.86
  %105 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp89 = icmp ne %struct.edge_def* %105, null
  br i1 %cmp89, label %for.body.90, label %for.end.112

for.body.90:                                      ; preds = %for.cond.88
  %106 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest91 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %106, i32 0, i32 3
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %dest91, align 8
  %cmp92 = icmp eq %struct.basic_block_def* %107, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp92, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.90
  %108 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest93 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %108, i32 0, i32 3
  %109 = load %struct.basic_block_def*, %struct.basic_block_def** %dest93, align 8
  %index94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %109, i32 0, i32 11
  %110 = load i32, i32* %index94, align 4
  %111 = load i32, i32* %i, align 4
  %cmp95 = icmp eq i32 %110, %111
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %lor.lhs.false, %for.body.90
  br label %for.inc.110

if.end.97:                                        ; preds = %lor.lhs.false
  %112 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest98 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %112, i32 0, i32 3
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %dest98, align 8
  %index99 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %113, i32 0, i32 11
  %114 = load i32, i32* %index99, align 4
  %rem100 = urem i32 %114, 64
  %sh_prom101 = zext i32 %rem100 to i64
  %shl102 = shl i64 1, %sh_prom101
  %115 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest103 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %115, i32 0, i32 3
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %dest103, align 8
  %index104 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %116, i32 0, i32 11
  %117 = load i32, i32* %index104, align 4
  %div105 = udiv i32 %117, 64
  %idxprom106 = zext i32 %div105 to i64
  %118 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %elms107 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %118, i32 0, i32 3
  %arrayidx108 = getelementptr inbounds [1 x i64], [1 x i64]* %elms107, i32 0, i64 %idxprom106
  %119 = load i64, i64* %arrayidx108, align 8
  %or109 = or i64 %119, %shl102
  store i64 %or109, i64* %arrayidx108, align 8
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.97, %if.then.96
  %120 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next111 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i32 0, i32 1
  %121 = load %struct.edge_def*, %struct.edge_def** %succ_next111, align 8
  store %struct.edge_def* %121, %struct.edge_def** %e, align 8
  br label %for.cond.88

for.end.112:                                      ; preds = %for.cond.88
  br label %if.end.141

if.else.113:                                      ; preds = %if.then.84
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred114 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %122, i32 0, i32 4
  %123 = load %struct.edge_def*, %struct.edge_def** %pred114, align 8
  store %struct.edge_def* %123, %struct.edge_def** %e, align 8
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.138, %if.else.113
  %124 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp116 = icmp ne %struct.edge_def* %124, null
  br i1 %cmp116, label %for.body.117, label %for.end.140

for.body.117:                                     ; preds = %for.cond.115
  %125 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src118 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %125, i32 0, i32 2
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %src118, align 8
  %cmp119 = icmp eq %struct.basic_block_def* %126, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp119, label %if.then.124, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %for.body.117
  %127 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest121 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i32 0, i32 3
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %dest121, align 8
  %index122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %128, i32 0, i32 11
  %129 = load i32, i32* %index122, align 4
  %130 = load i32, i32* %i, align 4
  %cmp123 = icmp eq i32 %129, %130
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %lor.lhs.false.120, %for.body.117
  br label %for.inc.138

if.end.125:                                       ; preds = %lor.lhs.false.120
  %131 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src126 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %131, i32 0, i32 2
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %src126, align 8
  %index127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %132, i32 0, i32 11
  %133 = load i32, i32* %index127, align 4
  %rem128 = urem i32 %133, 64
  %sh_prom129 = zext i32 %rem128 to i64
  %shl130 = shl i64 1, %sh_prom129
  %134 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %134, i32 0, i32 2
  %135 = load %struct.basic_block_def*, %struct.basic_block_def** %src131, align 8
  %index132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %135, i32 0, i32 11
  %136 = load i32, i32* %index132, align 4
  %div133 = udiv i32 %136, 64
  %idxprom134 = zext i32 %div133 to i64
  %137 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %elms135 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %137, i32 0, i32 3
  %arrayidx136 = getelementptr inbounds [1 x i64], [1 x i64]* %elms135, i32 0, i64 %idxprom134
  %138 = load i64, i64* %arrayidx136, align 8
  %or137 = or i64 %138, %shl130
  store i64 %or137, i64* %arrayidx136, align 8
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.125, %if.then.124
  %139 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next139 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %139, i32 0, i32 0
  %140 = load %struct.edge_def*, %struct.edge_def** %pred_next139, align 8
  store %struct.edge_def* %140, %struct.edge_def** %e, align 8
  br label %for.cond.115

for.end.140:                                      ; preds = %for.cond.115
  br label %if.end.141

if.end.141:                                       ; preds = %for.end.140, %for.end.112
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.66
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %entry
  %141 = load i32, i32* %dir.addr, align 4
  %cmp144 = icmp eq i32 %141, 0
  br i1 %cmp144, label %if.then.145, label %if.else.177

if.then.145:                                      ; preds = %if.end.143
  %142 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ146 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %142, i32 0, i32 5
  %143 = load %struct.edge_def*, %struct.edge_def** %succ146, align 8
  store %struct.edge_def* %143, %struct.edge_def** %e, align 8
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.inc.174, %if.then.145
  %144 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp148 = icmp ne %struct.edge_def* %144, null
  br i1 %cmp148, label %for.body.149, label %for.end.176

for.body.149:                                     ; preds = %for.cond.147
  %145 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest150 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %145, i32 0, i32 3
  %146 = load %struct.basic_block_def*, %struct.basic_block_def** %dest150, align 8
  %cmp151 = icmp eq %struct.basic_block_def* %146, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp151, label %if.then.156, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %for.body.149
  %147 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest153 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %147, i32 0, i32 3
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %dest153, align 8
  %index154 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %148, i32 0, i32 11
  %149 = load i32, i32* %index154, align 4
  %150 = load i32, i32* %i, align 4
  %cmp155 = icmp eq i32 %149, %150
  br i1 %cmp155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %lor.lhs.false.152, %for.body.149
  br label %for.inc.174

if.end.157:                                       ; preds = %lor.lhs.false.152
  %151 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest158 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %151, i32 0, i32 3
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %dest158, align 8
  %index159 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %152, i32 0, i32 11
  %153 = load i32, i32* %index159, align 4
  %div160 = udiv i32 %153, 64
  %idxprom161 = zext i32 %div160 to i64
  %154 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms162 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %154, i32 0, i32 3
  %arrayidx163 = getelementptr inbounds [1 x i64], [1 x i64]* %elms162, i32 0, i64 %idxprom161
  %155 = load i64, i64* %arrayidx163, align 8
  %156 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest164 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %156, i32 0, i32 3
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %dest164, align 8
  %index165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %157, i32 0, i32 11
  %158 = load i32, i32* %index165, align 4
  %rem166 = urem i32 %158, 64
  %sh_prom167 = zext i32 %rem166 to i64
  %shr168 = lshr i64 %155, %sh_prom167
  %and169 = and i64 %shr168, 1
  %tobool170 = icmp ne i64 %and169, 0
  br i1 %tobool170, label %if.end.173, label %if.then.171

if.then.171:                                      ; preds = %if.end.157
  %159 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest172 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %159, i32 0, i32 3
  %160 = load %struct.basic_block_def*, %struct.basic_block_def** %dest172, align 8
  %161 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %162 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %163 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen.addr, align 8
  %164 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill.addr, align 8
  %165 = load i32, i32* %dir.addr, align 4
  %166 = load i32, i32* %conf_op.addr, align 4
  %167 = load void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)*, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)** %transfun.addr, align 8
  %168 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %169 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %170 = load i8*, i8** %data.addr, align 8
  call void @hybrid_search_bitmap(%struct.basic_block_def* %160, %struct.bitmap_head_def** %161, %struct.bitmap_head_def** %162, %struct.bitmap_head_def** %163, %struct.bitmap_head_def** %164, i32 %165, i32 %166, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* %167, %struct.simple_bitmap_def* %168, %struct.simple_bitmap_def* %169, i8* %170)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.end.157
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173, %if.then.156
  %171 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next175 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %171, i32 0, i32 1
  %172 = load %struct.edge_def*, %struct.edge_def** %succ_next175, align 8
  store %struct.edge_def* %172, %struct.edge_def** %e, align 8
  br label %for.cond.147

for.end.176:                                      ; preds = %for.cond.147
  br label %if.end.209

if.else.177:                                      ; preds = %if.end.143
  %173 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred178 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %173, i32 0, i32 4
  %174 = load %struct.edge_def*, %struct.edge_def** %pred178, align 8
  store %struct.edge_def* %174, %struct.edge_def** %e, align 8
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.206, %if.else.177
  %175 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp180 = icmp ne %struct.edge_def* %175, null
  br i1 %cmp180, label %for.body.181, label %for.end.208

for.body.181:                                     ; preds = %for.cond.179
  %176 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src182 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %176, i32 0, i32 2
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %src182, align 8
  %cmp183 = icmp eq %struct.basic_block_def* %177, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp183, label %if.then.188, label %lor.lhs.false.184

lor.lhs.false.184:                                ; preds = %for.body.181
  %178 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src185 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %178, i32 0, i32 2
  %179 = load %struct.basic_block_def*, %struct.basic_block_def** %src185, align 8
  %index186 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %179, i32 0, i32 11
  %180 = load i32, i32* %index186, align 4
  %181 = load i32, i32* %i, align 4
  %cmp187 = icmp eq i32 %180, %181
  br i1 %cmp187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %lor.lhs.false.184, %for.body.181
  br label %for.inc.206

if.end.189:                                       ; preds = %lor.lhs.false.184
  %182 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src190 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %182, i32 0, i32 2
  %183 = load %struct.basic_block_def*, %struct.basic_block_def** %src190, align 8
  %index191 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %183, i32 0, i32 11
  %184 = load i32, i32* %index191, align 4
  %div192 = udiv i32 %184, 64
  %idxprom193 = zext i32 %div192 to i64
  %185 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms194 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %185, i32 0, i32 3
  %arrayidx195 = getelementptr inbounds [1 x i64], [1 x i64]* %elms194, i32 0, i64 %idxprom193
  %186 = load i64, i64* %arrayidx195, align 8
  %187 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src196 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %187, i32 0, i32 2
  %188 = load %struct.basic_block_def*, %struct.basic_block_def** %src196, align 8
  %index197 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %188, i32 0, i32 11
  %189 = load i32, i32* %index197, align 4
  %rem198 = urem i32 %189, 64
  %sh_prom199 = zext i32 %rem198 to i64
  %shr200 = lshr i64 %186, %sh_prom199
  %and201 = and i64 %shr200, 1
  %tobool202 = icmp ne i64 %and201, 0
  br i1 %tobool202, label %if.end.205, label %if.then.203

if.then.203:                                      ; preds = %if.end.189
  %190 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src204 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %190, i32 0, i32 2
  %191 = load %struct.basic_block_def*, %struct.basic_block_def** %src204, align 8
  %192 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %in.addr, align 8
  %193 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %out.addr, align 8
  %194 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %gen.addr, align 8
  %195 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill.addr, align 8
  %196 = load i32, i32* %dir.addr, align 4
  %197 = load i32, i32* %conf_op.addr, align 4
  %198 = load void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)*, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)** %transfun.addr, align 8
  %199 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %200 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %pending.addr, align 8
  %201 = load i8*, i8** %data.addr, align 8
  call void @hybrid_search_bitmap(%struct.basic_block_def* %191, %struct.bitmap_head_def** %192, %struct.bitmap_head_def** %193, %struct.bitmap_head_def** %194, %struct.bitmap_head_def** %195, i32 %196, i32 %197, void (i32, i32*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*)* %198, %struct.simple_bitmap_def* %199, %struct.simple_bitmap_def* %200, i8* %201)
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %if.end.189
  br label %for.inc.206

for.inc.206:                                      ; preds = %if.end.205, %if.then.188
  %202 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next207 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %202, i32 0, i32 0
  %203 = load %struct.edge_def*, %struct.edge_def** %pred_next207, align 8
  store %struct.edge_def* %203, %struct.edge_def** %e, align 8
  br label %for.cond.179

for.end.208:                                      ; preds = %for.cond.179
  br label %if.end.209

if.end.209:                                       ; preds = %for.end.208, %for.end.176
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_bitmaps_free(%struct.df* %df, i32 %flags) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 15
  %2 = load i32, i32* %n_bbs, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %5, %struct.basic_block_def** %bb, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %8, i32 0, i32 1
  %9 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx3 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %9, i64 %idxprom2
  store %struct.bb_info* %arrayidx3, %struct.bb_info** %bb_info, align 8
  %10 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %tobool = icmp ne %struct.bb_info* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %flags.addr, align 4
  %and = and i32 %11, 1
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %12, i32 0, i32 2
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in, align 8
  %tobool5 = icmp ne %struct.bitmap_head_def* %13, null
  br i1 %tobool5, label %if.then.6, label %if.end.42

if.then.6:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %14 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %14, i32 0, i32 0
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_kill, align 8
  %tobool7 = icmp ne %struct.bitmap_head_def* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %do.body
  %16 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill9 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %16, i32 0, i32 0
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_kill9, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %17)
  %18 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill10 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %18, i32 0, i32 0
  %19 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_kill10, align 8
  %20 = bitcast %struct.bitmap_head_def* %19 to i8*
  call void @free(i8* %20) #4
  %21 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill11 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %21, i32 0, i32 0
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %rd_kill11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.12
  %22 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill13 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %22, i32 0, i32 0
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %rd_kill13, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %23 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %23, i32 0, i32 1
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_gen, align 8
  %tobool15 = icmp ne %struct.bitmap_head_def* %24, null
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %do.body.14
  %25 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen17 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %25, i32 0, i32 1
  %26 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_gen17, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %26)
  %27 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen18 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %27, i32 0, i32 1
  %28 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_gen18, align 8
  %29 = bitcast %struct.bitmap_head_def* %28 to i8*
  call void @free(i8* %29) #4
  %30 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen19 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %30, i32 0, i32 1
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %rd_gen19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %do.body.14
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %31 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen22 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %31, i32 0, i32 1
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %rd_gen22, align 8
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.21
  %32 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in24 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %32, i32 0, i32 2
  %33 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in24, align 8
  %tobool25 = icmp ne %struct.bitmap_head_def* %33, null
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %do.body.23
  %34 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in27 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %34, i32 0, i32 2
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in27, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %35)
  %36 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in28 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %36, i32 0, i32 2
  %37 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in28, align 8
  %38 = bitcast %struct.bitmap_head_def* %37 to i8*
  call void @free(i8* %38) #4
  %39 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in29 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %39, i32 0, i32 2
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %rd_in29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %do.body.23
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %40 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in32 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %40, i32 0, i32 2
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %rd_in32, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.31
  %41 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %41, i32 0, i32 3
  %42 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_out, align 8
  %tobool34 = icmp ne %struct.bitmap_head_def* %42, null
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %do.body.33
  %43 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_out36 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %43, i32 0, i32 3
  %44 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_out36, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %44)
  %45 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_out37 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %45, i32 0, i32 3
  %46 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_out37, align 8
  %47 = bitcast %struct.bitmap_head_def* %46 to i8*
  call void @free(i8* %47) #4
  %48 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_out38 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %48, i32 0, i32 3
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %rd_out38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %do.body.33
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %49 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_out41 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %49, i32 0, i32 3
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %rd_out41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.40, %land.lhs.true, %if.end
  %50 = load i32, i32* %flags.addr, align 4
  %and43 = and i32 %50, 2
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.85

land.lhs.true.45:                                 ; preds = %if.end.42
  %51 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %51, i32 0, i32 6
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_in, align 8
  %tobool46 = icmp ne %struct.bitmap_head_def* %52, null
  br i1 %tobool46, label %if.then.47, label %if.end.85

if.then.47:                                       ; preds = %land.lhs.true.45
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %53 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %53, i32 0, i32 4
  %54 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_kill, align 8
  %tobool49 = icmp ne %struct.bitmap_head_def* %54, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %do.body.48
  %55 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_kill51 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %55, i32 0, i32 4
  %56 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_kill51, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %56)
  %57 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_kill52 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %57, i32 0, i32 4
  %58 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_kill52, align 8
  %59 = bitcast %struct.bitmap_head_def* %58 to i8*
  call void @free(i8* %59) #4
  %60 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_kill53 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %60, i32 0, i32 4
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru_kill53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %do.body.48
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %61 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_kill56 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %61, i32 0, i32 4
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru_kill56, align 8
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.55
  %62 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %62, i32 0, i32 5
  %63 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_gen, align 8
  %tobool58 = icmp ne %struct.bitmap_head_def* %63, null
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %do.body.57
  %64 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen60 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %64, i32 0, i32 5
  %65 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_gen60, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %65)
  %66 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen61 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %66, i32 0, i32 5
  %67 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_gen61, align 8
  %68 = bitcast %struct.bitmap_head_def* %67 to i8*
  call void @free(i8* %68) #4
  %69 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen62 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %69, i32 0, i32 5
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru_gen62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %do.body.57
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  %70 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen65 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %70, i32 0, i32 5
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru_gen65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.64
  %71 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_in67 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %71, i32 0, i32 6
  %72 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_in67, align 8
  %tobool68 = icmp ne %struct.bitmap_head_def* %72, null
  br i1 %tobool68, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %do.body.66
  %73 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_in70 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %73, i32 0, i32 6
  %74 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_in70, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %74)
  %75 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_in71 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %75, i32 0, i32 6
  %76 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_in71, align 8
  %77 = bitcast %struct.bitmap_head_def* %76 to i8*
  call void @free(i8* %77) #4
  %78 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_in72 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %78, i32 0, i32 6
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru_in72, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %do.body.66
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  %79 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_in75 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %79, i32 0, i32 6
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru_in75, align 8
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.74
  %80 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %80, i32 0, i32 7
  %81 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_out, align 8
  %tobool77 = icmp ne %struct.bitmap_head_def* %81, null
  br i1 %tobool77, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %do.body.76
  %82 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_out79 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %82, i32 0, i32 7
  %83 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_out79, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %83)
  %84 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_out80 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %84, i32 0, i32 7
  %85 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_out80, align 8
  %86 = bitcast %struct.bitmap_head_def* %85 to i8*
  call void @free(i8* %86) #4
  %87 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_out81 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %87, i32 0, i32 7
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru_out81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.78, %do.body.76
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  %88 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_out84 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %88, i32 0, i32 7
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru_out84, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.83, %land.lhs.true.45, %if.end.42
  %89 = load i32, i32* %flags.addr, align 4
  %and86 = and i32 %89, 4
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.128

land.lhs.true.88:                                 ; preds = %if.end.85
  %90 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %90, i32 0, i32 10
  %91 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in, align 8
  %tobool89 = icmp ne %struct.bitmap_head_def* %91, null
  br i1 %tobool89, label %if.then.90, label %if.end.128

if.then.90:                                       ; preds = %land.lhs.true.88
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %92 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_def = getelementptr inbounds %struct.bb_info, %struct.bb_info* %92, i32 0, i32 8
  %93 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_def, align 8
  %tobool92 = icmp ne %struct.bitmap_head_def* %93, null
  br i1 %tobool92, label %if.then.93, label %if.end.97

if.then.93:                                       ; preds = %do.body.91
  %94 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_def94 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %94, i32 0, i32 8
  %95 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_def94, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %95)
  %96 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_def95 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %96, i32 0, i32 8
  %97 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_def95, align 8
  %98 = bitcast %struct.bitmap_head_def* %97 to i8*
  call void @free(i8* %98) #4
  %99 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_def96 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %99, i32 0, i32 8
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %lr_def96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.93, %do.body.91
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  %100 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_def99 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %100, i32 0, i32 8
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %lr_def99, align 8
  br label %do.body.100

do.body.100:                                      ; preds = %do.end.98
  %101 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use = getelementptr inbounds %struct.bb_info, %struct.bb_info* %101, i32 0, i32 9
  %102 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_use, align 8
  %tobool101 = icmp ne %struct.bitmap_head_def* %102, null
  br i1 %tobool101, label %if.then.102, label %if.end.106

if.then.102:                                      ; preds = %do.body.100
  %103 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use103 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %103, i32 0, i32 9
  %104 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_use103, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %104)
  %105 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use104 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %105, i32 0, i32 9
  %106 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_use104, align 8
  %107 = bitcast %struct.bitmap_head_def* %106 to i8*
  call void @free(i8* %107) #4
  %108 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use105 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %108, i32 0, i32 9
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %lr_use105, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.102, %do.body.100
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  %109 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use108 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %109, i32 0, i32 9
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %lr_use108, align 8
  br label %do.body.109

do.body.109:                                      ; preds = %do.end.107
  %110 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in110 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %110, i32 0, i32 10
  %111 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in110, align 8
  %tobool111 = icmp ne %struct.bitmap_head_def* %111, null
  br i1 %tobool111, label %if.then.112, label %if.end.116

if.then.112:                                      ; preds = %do.body.109
  %112 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in113 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %112, i32 0, i32 10
  %113 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in113, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %113)
  %114 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in114 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %114, i32 0, i32 10
  %115 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in114, align 8
  %116 = bitcast %struct.bitmap_head_def* %115 to i8*
  call void @free(i8* %116) #4
  %117 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in115 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %117, i32 0, i32 10
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %lr_in115, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.112, %do.body.109
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  %118 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in118 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %118, i32 0, i32 10
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %lr_in118, align 8
  br label %do.body.119

do.body.119:                                      ; preds = %do.end.117
  %119 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %119, i32 0, i32 11
  %120 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_out, align 8
  %tobool120 = icmp ne %struct.bitmap_head_def* %120, null
  br i1 %tobool120, label %if.then.121, label %if.end.125

if.then.121:                                      ; preds = %do.body.119
  %121 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_out122 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %121, i32 0, i32 11
  %122 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_out122, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %122)
  %123 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_out123 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %123, i32 0, i32 11
  %124 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_out123, align 8
  %125 = bitcast %struct.bitmap_head_def* %124 to i8*
  call void @free(i8* %125) #4
  %126 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_out124 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %126, i32 0, i32 11
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %lr_out124, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.121, %do.body.119
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  %127 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_out127 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %127, i32 0, i32 11
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %lr_out127, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %do.end.126, %land.lhs.true.88, %if.end.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.128, %if.then
  %128 = load i32, i32* %i, align 4
  %inc = add i32 %128, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %129 = load i32, i32* %flags.addr, align 4
  %and129 = and i32 %129, 7
  %neg = xor i32 %and129, -1
  %130 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags130 = getelementptr inbounds %struct.df, %struct.df* %130, i32 0, i32 0
  %131 = load i32, i32* %flags130, align 4
  %and131 = and i32 %131, %neg
  store i32 %and131, i32* %flags130, align 4
  ret void
}

declare void @obstack_free(%struct.obstack*, i8*) #1

declare void @gcc_obstack_init(%struct.obstack*) #1

declare i32 @get_max_uid() #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @df_reg_table_realloc(%struct.df* %df, i32 %size) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %size.addr = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_size = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 6
  %2 = load i32, i32* %reg_size, align 4
  %div = udiv i32 %2, 4
  store i32 %div, i32* %size.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_size1 = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 6
  %4 = load i32, i32* %reg_size1, align 4
  %5 = load i32, i32* %size.addr, align 4
  %add = add i32 %5, %4
  store i32 %add, i32* %size.addr, align 4
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 5
  %7 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %8 = bitcast %struct.reg_info* %7 to i8*
  %9 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 32
  %call = call i8* @xrealloc(i8* %8, i64 %mul)
  %10 = bitcast i8* %call to %struct.reg_info*
  %11 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs2 = getelementptr inbounds %struct.df, %struct.df* %11, i32 0, i32 5
  store %struct.reg_info* %10, %struct.reg_info** %regs2, align 8
  %12 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs3 = getelementptr inbounds %struct.df, %struct.df* %12, i32 0, i32 5
  %13 = load %struct.reg_info*, %struct.reg_info** %regs3, align 8
  %14 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_size4 = getelementptr inbounds %struct.df, %struct.df* %14, i32 0, i32 6
  %15 = load i32, i32* %reg_size4, align 4
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.reg_info, %struct.reg_info* %13, i64 %idx.ext
  %16 = bitcast %struct.reg_info* %add.ptr to i8*
  %17 = load i32, i32* %size.addr, align 4
  %18 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_size5 = getelementptr inbounds %struct.df, %struct.df* %18, i32 0, i32 6
  %19 = load i32, i32* %reg_size5, align 4
  %sub = sub i32 %17, %19
  %conv6 = zext i32 %sub to i64
  %mul7 = mul i64 %conv6, 32
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 %mul7, i32 8, i1 false)
  %20 = load i32, i32* %size.addr, align 4
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_size8 = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 6
  store i32 %20, i32* %reg_size8, align 4
  ret void
}

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal i32 @df_refs_update(%struct.df* %df) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %count = alloca i32, align 4
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 0, i32* %count, align 4
  %call = call i32 @max_reg_num()
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_size = getelementptr inbounds %struct.df, %struct.df* %0, i32 0, i32 6
  %1 = load i32, i32* %reg_size, align 4
  %cmp = icmp uge i32 %call, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  call void @df_reg_table_realloc(%struct.df* %2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %call1 = call i32 @df_refs_queue(%struct.df* %3)
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs_modified = getelementptr inbounds %struct.df, %struct.df* %4, i32 0, i32 20
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %bbs_modified, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %5, i32 0, i32 0
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %6, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.2
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %7, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %8, i32 0, i32 2
  %9 = load i32, i32* %indx, align 4
  %10 = load i32, i32* %indx_, align 4
  %cmp4 = icmp ult i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i32 0, i32 0
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %13, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp5 = icmp ne %struct.bitmap_element_def* %14, null
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %while.end
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i32 0, i32 2
  %16 = load i32, i32* %indx6, align 4
  %17 = load i32, i32* %indx_, align 4
  %cmp7 = icmp ne i32 %16, %17
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.end.9
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp10 = icmp ne %struct.bitmap_element_def* %18, null
  br i1 %cmp10, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.35, %for.body
  %19 = load i32, i32* %word_num_, align 4
  %cmp12 = icmp ult i32 %19, 2
  br i1 %cmp12, label %for.body.13, label %for.end.37

for.body.13:                                      ; preds = %for.cond.11
  %20 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %20 to i64
  %21 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %21, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %22 = load i64, i64* %arrayidx, align 8
  store i64 %22, i64* %word_, align 8
  %23 = load i64, i64* %word_, align 8
  %cmp14 = icmp ne i64 %23, 0
  br i1 %cmp14, label %if.then.15, label %if.end.34

if.then.15:                                       ; preds = %for.body.13
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then.15
  %24 = load i32, i32* %bit_num_, align 4
  %cmp17 = icmp ult i32 %24, 64
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %25 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %25 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %26 = load i64, i64* %word_, align 8
  %27 = load i64, i64* %mask_, align 8
  %and = and i64 %26, %27
  %cmp19 = icmp ne i64 %and, 0
  br i1 %cmp19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %for.body.18
  %28 = load i64, i64* %mask_, align 8
  %neg = xor i64 %28, -1
  %29 = load i64, i64* %word_, align 8
  %and21 = and i64 %29, %neg
  store i64 %and21, i64* %word_, align 8
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx22 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %30, i32 0, i32 2
  %31 = load i32, i32* %indx22, align 4
  %mul = mul i32 %31, 128
  %32 = load i32, i32* %word_num_, align 4
  %mul23 = mul i32 %32, 64
  %add = add i32 %mul, %mul23
  %33 = load i32, i32* %bit_num_, align 4
  %add24 = add i32 %add, %33
  store i32 %add24, i32* %node_, align 4
  %34 = load i32, i32* %node_, align 4
  %idxprom25 = zext i32 %34 to i64
  %35 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %35, i32 0, i32 4
  %bb26 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx27 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb26, i32 0, i64 %idxprom25
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx27, align 8
  store %struct.basic_block_def* %36, %struct.basic_block_def** %bb, align 8
  %37 = load %struct.df*, %struct.df** %df.addr, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call28 = call i32 @df_bb_refs_update(%struct.df* %37, %struct.basic_block_def* %38)
  %39 = load i32, i32* %count, align 4
  %add29 = add nsw i32 %39, %call28
  store i32 %add29, i32* %count, align 4
  %40 = load i64, i64* %word_, align 8
  %cmp30 = icmp eq i64 %40, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.20
  br label %for.end

if.end.32:                                        ; preds = %if.then.20
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %41 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.16

for.end:                                          ; preds = %if.then.31, %for.cond.16
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %for.body.13
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %42 = load i32, i32* %word_num_, align 4
  %inc36 = add i32 %42, 1
  store i32 %inc36, i32* %word_num_, align 4
  br label %for.cond.11

for.end.37:                                       ; preds = %for.cond.11
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %43 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next39 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %43, i32 0, i32 0
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next39, align 8
  store %struct.bitmap_element_def* %44, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.40
  br label %do.end.41

do.end.41:                                        ; preds = %do.end
  %45 = load %struct.df*, %struct.df** %df.addr, align 8
  %call42 = call i32 @df_refs_process(%struct.df* %45)
  %46 = load i32, i32* %count, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @df_refs_queue(%struct.df* %df) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id = getelementptr inbounds %struct.df, %struct.df* %0, i32 0, i32 9
  %1 = load i32, i32* %def_id, align 4
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id_save = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 17
  store i32 %1, i32* %def_id_save, align 4
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 12
  %4 = load i32, i32* %use_id, align 4
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id_save = getelementptr inbounds %struct.df, %struct.df* %5, i32 0, i32 18
  store i32 %4, i32* %use_id_save, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @df_refs_record(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx4, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp6, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %19, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %for.body.14
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and17 = and i64 %24, %neg
  store i64 %and17, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx18, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul19 = mul i32 %27, 64
  %add = add i32 %mul, %mul19
  %28 = load i32, i32* %bit_num_, align 4
  %add20 = add i32 %add, %28
  store i32 %add20, i32* %node_, align 4
  %29 = load i32, i32* %node_, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %bb, align 8
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @df_bb_refs_record(%struct.df* %32, %struct.basic_block_def* %33)
  %34 = load i64, i64* %word_, align 8
  %cmp24 = icmp eq i64 %34, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  br label %for.end

if.end.26:                                        ; preds = %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %35 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.25, %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %36 = load i32, i32* %word_num_, align 4
  %inc30 = add i32 %36, 1
  store i32 %inc30, i32* %word_num_, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.34
  br label %do.end.35

do.end.35:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @df_refs_process(%struct.df* %df) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %i = alloca i32, align 4
  %def = alloca %struct.ref*, align 8
  %uid = alloca i32, align 4
  %use = alloca %struct.ref*, align 8
  %uid14 = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id_save = getelementptr inbounds %struct.df, %struct.df* %0, i32 0, i32 17
  %1 = load i32, i32* %def_id_save, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 9
  %4 = load i32, i32* %def_id, align 4
  %cmp = icmp ne i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 2
  %7 = load %struct.ref**, %struct.ref*** %defs, align 8
  %arrayidx = getelementptr inbounds %struct.ref*, %struct.ref** %7, i64 %idxprom
  %8 = load %struct.ref*, %struct.ref** %arrayidx, align 8
  store %struct.ref* %8, %struct.ref** %def, align 8
  %9 = load %struct.ref*, %struct.ref** %def, align 8
  %insn = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx1 to i32*
  %11 = load i32, i32* %rtint, align 4
  store i32 %11, i32* %uid, align 4
  %12 = load %struct.ref*, %struct.ref** %def, align 8
  %13 = load i32, i32* %uid, align 4
  %idxprom2 = zext i32 %13 to i64
  %14 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %14, i32 0, i32 7
  %15 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx3 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %15, i64 %idxprom2
  %defs4 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx3, i32 0, i32 0
  %16 = load %struct.df_link*, %struct.df_link** %defs4, align 8
  %call = call %struct.df_link* @df_link_create(%struct.ref* %12, %struct.df_link* %16)
  %17 = load i32, i32* %uid, align 4
  %idxprom5 = zext i32 %17 to i64
  %18 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns6 = getelementptr inbounds %struct.df, %struct.df* %18, i32 0, i32 7
  %19 = load %struct.insn_info*, %struct.insn_info** %insns6, align 8
  %arrayidx7 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %19, i64 %idxprom5
  %defs8 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx7, i32 0, i32 0
  store %struct.df_link* %call, %struct.df_link** %defs8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id_save = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 18
  %22 = load i32, i32* %use_id_save, align 4
  store i32 %22, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.28, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 12
  %25 = load i32, i32* %use_id, align 4
  %cmp10 = icmp ne i32 %23, %25
  br i1 %cmp10, label %for.body.11, label %for.end.30

for.body.11:                                      ; preds = %for.cond.9
  %26 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %26 to i64
  %27 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses = getelementptr inbounds %struct.df, %struct.df* %27, i32 0, i32 3
  %28 = load %struct.ref**, %struct.ref*** %uses, align 8
  %arrayidx13 = getelementptr inbounds %struct.ref*, %struct.ref** %28, i64 %idxprom12
  %29 = load %struct.ref*, %struct.ref** %arrayidx13, align 8
  store %struct.ref* %29, %struct.ref** %use, align 8
  %30 = load %struct.ref*, %struct.ref** %use, align 8
  %insn15 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 1
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %32 = load i32, i32* %rtint18, align 4
  store i32 %32, i32* %uid14, align 4
  %33 = load %struct.ref*, %struct.ref** %use, align 8
  %34 = load i32, i32* %uid14, align 4
  %idxprom19 = zext i32 %34 to i64
  %35 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns20 = getelementptr inbounds %struct.df, %struct.df* %35, i32 0, i32 7
  %36 = load %struct.insn_info*, %struct.insn_info** %insns20, align 8
  %arrayidx21 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %36, i64 %idxprom19
  %uses22 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx21, i32 0, i32 1
  %37 = load %struct.df_link*, %struct.df_link** %uses22, align 8
  %call23 = call %struct.df_link* @df_link_create(%struct.ref* %33, %struct.df_link* %37)
  %38 = load i32, i32* %uid14, align 4
  %idxprom24 = zext i32 %38 to i64
  %39 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns25 = getelementptr inbounds %struct.df, %struct.df* %39, i32 0, i32 7
  %40 = load %struct.insn_info*, %struct.insn_info** %insns25, align 8
  %arrayidx26 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %40, i64 %idxprom24
  %uses27 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx26, i32 0, i32 1
  store %struct.df_link* %call23, %struct.df_link** %uses27, align 8
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.11
  %41 = load i32, i32* %i, align 4
  %inc29 = add i32 %41, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.9

for.end.30:                                       ; preds = %for.cond.9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @df_bitmaps_alloc(%struct.df* %df, i32 %flags) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %dflags = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %dflags, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_regs = getelementptr inbounds %struct.df, %struct.df* %1, i32 0, i32 16
  %2 = load i32, i32* %n_regs, align 4
  %call = call i32 @max_reg_num()
  %cmp = icmp ult i32 %2, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %dflags, align 4
  %or = or i32 %3, 6
  store i32 %or, i32* %dflags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %4, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.7

land.lhs.true.3:                                  ; preds = %if.end
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_uses = getelementptr inbounds %struct.df, %struct.df* %5, i32 0, i32 14
  %6 = load i32, i32* %n_uses, align 4
  %7 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id = getelementptr inbounds %struct.df, %struct.df* %7, i32 0, i32 12
  %8 = load i32, i32* %use_id, align 4
  %cmp4 = icmp ult i32 %6, %8
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %land.lhs.true.3
  %9 = load i32, i32* %dflags, align 4
  %or6 = or i32 %9, 2
  store i32 %or6, i32* %dflags, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %land.lhs.true.3, %if.end
  %10 = load i32, i32* %flags.addr, align 4
  %and8 = and i32 %10, 1
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.14

land.lhs.true.10:                                 ; preds = %if.end.7
  %11 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_defs = getelementptr inbounds %struct.df, %struct.df* %11, i32 0, i32 11
  %12 = load i32, i32* %n_defs, align 4
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id = getelementptr inbounds %struct.df, %struct.df* %13, i32 0, i32 9
  %14 = load i32, i32* %def_id, align 4
  %cmp11 = icmp ult i32 %12, %14
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true.10
  %15 = load i32, i32* %dflags, align 4
  %or13 = or i32 %15, 1
  store i32 %or13, i32* %dflags, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true.10, %if.end.7
  %16 = load i32, i32* %dflags, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %17 = load %struct.df*, %struct.df** %df.addr, align 8
  %18 = load i32, i32* %dflags, align 4
  call void @df_bitmaps_free(%struct.df* %17, i32 %18)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %19 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id18 = getelementptr inbounds %struct.df, %struct.df* %19, i32 0, i32 9
  %20 = load i32, i32* %def_id18, align 4
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_defs19 = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 11
  store i32 %20, i32* %n_defs19, align 4
  %22 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id20 = getelementptr inbounds %struct.df, %struct.df* %22, i32 0, i32 12
  %23 = load i32, i32* %use_id20, align 4
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_uses21 = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 14
  store i32 %23, i32* %n_uses21, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_bbs = getelementptr inbounds %struct.df, %struct.df* %26, i32 0, i32 15
  %27 = load i32, i32* %n_bbs, align 4
  %cmp22 = icmp ult i32 %25, %27
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom = zext i32 %28 to i64
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %29, i32 0, i32 4
  %bb23 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb23, i32 0, i64 %idxprom
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %30, %struct.basic_block_def** %bb, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index, align 4
  %idxprom24 = sext i32 %32 to i64
  %33 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %33, i32 0, i32 1
  %34 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx25 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %34, i64 %idxprom24
  store %struct.bb_info* %arrayidx25, %struct.bb_info** %bb_info, align 8
  %35 = load i32, i32* %flags.addr, align 4
  %and26 = and i32 %35, 1
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.42

land.lhs.true.28:                                 ; preds = %for.body
  %36 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %36, i32 0, i32 2
  %37 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in, align 8
  %tobool29 = icmp ne %struct.bitmap_head_def* %37, null
  br i1 %tobool29, label %if.end.42, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.28
  %call31 = call noalias i8* @xmalloc(i64 24)
  %38 = bitcast i8* %call31 to %struct.bitmap_head_def*
  %call32 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %38)
  %39 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %39, i32 0, i32 0
  store %struct.bitmap_head_def* %call32, %struct.bitmap_head_def** %rd_kill, align 8
  %40 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill33 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %40, i32 0, i32 0
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_kill33, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %41)
  %call34 = call noalias i8* @xmalloc(i64 24)
  %42 = bitcast i8* %call34 to %struct.bitmap_head_def*
  %call35 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %42)
  %43 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %43, i32 0, i32 1
  store %struct.bitmap_head_def* %call35, %struct.bitmap_head_def** %rd_gen, align 8
  %44 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen36 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %44, i32 0, i32 1
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_gen36, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %45)
  %call37 = call noalias i8* @xmalloc(i64 24)
  %46 = bitcast i8* %call37 to %struct.bitmap_head_def*
  %call38 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %46)
  %47 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in39 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %47, i32 0, i32 2
  store %struct.bitmap_head_def* %call38, %struct.bitmap_head_def** %rd_in39, align 8
  %call40 = call noalias i8* @xmalloc(i64 24)
  %48 = bitcast i8* %call40 to %struct.bitmap_head_def*
  %call41 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %48)
  %49 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %49, i32 0, i32 3
  store %struct.bitmap_head_def* %call41, %struct.bitmap_head_def** %rd_out, align 8
  %50 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_valid = getelementptr inbounds %struct.bb_info, %struct.bb_info* %50, i32 0, i32 12
  store i32 0, i32* %rd_valid, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.30, %land.lhs.true.28, %for.body
  %51 = load i32, i32* %flags.addr, align 4
  %and43 = and i32 %51, 2
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.59

land.lhs.true.45:                                 ; preds = %if.end.42
  %52 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %52, i32 0, i32 6
  %53 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_in, align 8
  %tobool46 = icmp ne %struct.bitmap_head_def* %53, null
  br i1 %tobool46, label %if.end.59, label %if.then.47

if.then.47:                                       ; preds = %land.lhs.true.45
  %call48 = call noalias i8* @xmalloc(i64 24)
  %54 = bitcast i8* %call48 to %struct.bitmap_head_def*
  %call49 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %54)
  %55 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %55, i32 0, i32 4
  store %struct.bitmap_head_def* %call49, %struct.bitmap_head_def** %ru_kill, align 8
  %56 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_kill50 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %56, i32 0, i32 4
  %57 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_kill50, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %57)
  %call51 = call noalias i8* @xmalloc(i64 24)
  %58 = bitcast i8* %call51 to %struct.bitmap_head_def*
  %call52 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %58)
  %59 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %59, i32 0, i32 5
  store %struct.bitmap_head_def* %call52, %struct.bitmap_head_def** %ru_gen, align 8
  %60 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen53 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %60, i32 0, i32 5
  %61 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_gen53, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %61)
  %call54 = call noalias i8* @xmalloc(i64 24)
  %62 = bitcast i8* %call54 to %struct.bitmap_head_def*
  %call55 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %62)
  %63 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_in56 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %63, i32 0, i32 6
  store %struct.bitmap_head_def* %call55, %struct.bitmap_head_def** %ru_in56, align 8
  %call57 = call noalias i8* @xmalloc(i64 24)
  %64 = bitcast i8* %call57 to %struct.bitmap_head_def*
  %call58 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %64)
  %65 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %65, i32 0, i32 7
  store %struct.bitmap_head_def* %call58, %struct.bitmap_head_def** %ru_out, align 8
  %66 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_valid = getelementptr inbounds %struct.bb_info, %struct.bb_info* %66, i32 0, i32 13
  store i32 0, i32* %ru_valid, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.47, %land.lhs.true.45, %if.end.42
  %67 = load i32, i32* %flags.addr, align 4
  %and60 = and i32 %67, 4
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.76

land.lhs.true.62:                                 ; preds = %if.end.59
  %68 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %68, i32 0, i32 10
  %69 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_in, align 8
  %tobool63 = icmp ne %struct.bitmap_head_def* %69, null
  br i1 %tobool63, label %if.end.76, label %if.then.64

if.then.64:                                       ; preds = %land.lhs.true.62
  %call65 = call noalias i8* @xmalloc(i64 24)
  %70 = bitcast i8* %call65 to %struct.bitmap_head_def*
  %call66 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %70)
  %71 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_def = getelementptr inbounds %struct.bb_info, %struct.bb_info* %71, i32 0, i32 8
  store %struct.bitmap_head_def* %call66, %struct.bitmap_head_def** %lr_def, align 8
  %72 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_def67 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %72, i32 0, i32 8
  %73 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_def67, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %73)
  %call68 = call noalias i8* @xmalloc(i64 24)
  %74 = bitcast i8* %call68 to %struct.bitmap_head_def*
  %call69 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %74)
  %75 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use = getelementptr inbounds %struct.bb_info, %struct.bb_info* %75, i32 0, i32 9
  store %struct.bitmap_head_def* %call69, %struct.bitmap_head_def** %lr_use, align 8
  %76 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use70 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %76, i32 0, i32 9
  %77 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_use70, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %77)
  %call71 = call noalias i8* @xmalloc(i64 24)
  %78 = bitcast i8* %call71 to %struct.bitmap_head_def*
  %call72 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %78)
  %79 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_in73 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %79, i32 0, i32 10
  store %struct.bitmap_head_def* %call72, %struct.bitmap_head_def** %lr_in73, align 8
  %call74 = call noalias i8* @xmalloc(i64 24)
  %80 = bitcast i8* %call74 to %struct.bitmap_head_def*
  %call75 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %80)
  %81 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %81, i32 0, i32 11
  store %struct.bitmap_head_def* %call75, %struct.bitmap_head_def** %lr_out, align 8
  %82 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_valid = getelementptr inbounds %struct.bb_info, %struct.bb_info* %82, i32 0, i32 14
  store i32 0, i32* %lr_valid, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.64, %land.lhs.true.62, %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %83 = load i32, i32* %i, align 4
  %inc = add i32 %83, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @df_luids_set(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %total = alloca i32, align 4
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  store i32 0, i32* %total, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx4, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp6, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.30, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.32

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.29

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %19, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %for.body.14
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and17 = and i64 %24, %neg
  store i64 %and17, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx18, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul19 = mul i32 %27, 64
  %add = add i32 %mul, %mul19
  %28 = load i32, i32* %bit_num_, align 4
  %add20 = add i32 %add, %28
  store i32 %add20, i32* %node_, align 4
  %29 = load i32, i32* %node_, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %bb, align 8
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call = call i32 @df_bb_luids_set(%struct.df* %32, %struct.basic_block_def* %33)
  %34 = load i32, i32* %total, align 4
  %add24 = add nsw i32 %34, %call
  store i32 %add24, i32* %total, align 4
  %35 = load i64, i64* %word_, align 8
  %cmp25 = icmp eq i64 %35, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.16
  br label %for.end

if.end.27:                                        ; preds = %if.then.16
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %36 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.26, %for.cond.12
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %37 = load i32, i32* %word_num_, align 4
  %inc31 = add i32 %37, 1
  store i32 %inc31, i32* %word_num_, align 4
  br label %for.cond.7

for.end.32:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next34 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %38, i32 0, i32 0
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next34, align 8
  store %struct.bitmap_element_def* %39, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.35
  br label %do.end.36

do.end.36:                                        ; preds = %do.end
  %40 = load i32, i32* %total, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal void @df_reg_def_chain_create(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx4, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp6, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %19, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %for.body.14
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and17 = and i64 %24, %neg
  store i64 %and17, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx18, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul19 = mul i32 %27, 64
  %add = add i32 %mul, %mul19
  %28 = load i32, i32* %bit_num_, align 4
  %add20 = add i32 %add, %28
  store i32 %add20, i32* %node_, align 4
  %29 = load i32, i32* %node_, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %bb, align 8
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @df_bb_reg_def_chain_create(%struct.df* %32, %struct.basic_block_def* %33)
  %34 = load i64, i64* %word_, align 8
  %cmp24 = icmp eq i64 %34, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  br label %for.end

if.end.26:                                        ; preds = %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %35 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.25, %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %36 = load i32, i32* %word_num_, align 4
  %inc30 = add i32 %36, 1
  store i32 %inc30, i32* %word_num_, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.34
  br label %do.end.35

do.end.35:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_reg_use_chain_create(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx4, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp6, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %19, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %for.body.14
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and17 = and i64 %24, %neg
  store i64 %and17, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx18, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul19 = mul i32 %27, 64
  %add = add i32 %mul, %mul19
  %28 = load i32, i32* %bit_num_, align 4
  %add20 = add i32 %add, %28
  store i32 %add20, i32* %node_, align 4
  %29 = load i32, i32* %node_, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %bb, align 8
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @df_bb_reg_use_chain_create(%struct.df* %32, %struct.basic_block_def* %33)
  %34 = load i64, i64* %word_, align 8
  %cmp24 = icmp eq i64 %34, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  br label %for.end

if.end.26:                                        ; preds = %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %35 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.25, %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %36 = load i32, i32* %word_num_, align 4
  %inc30 = add i32 %36, 1
  store i32 %inc30, i32* %word_num_, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.34
  br label %do.end.35

do.end.35:                                        ; preds = %do.end
  ret void
}

declare i32 @flow_depth_first_order_compute(i32*, i32*) #1

declare void @flow_reverse_top_sort_order_compute(i32*) #1

; Function Attrs: nounwind uwtable
define internal void @df_rd_local_compute(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx4, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp6, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %19, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %for.body.14
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and17 = and i64 %24, %neg
  store i64 %and17, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx18, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul19 = mul i32 %27, 64
  %add = add i32 %mul, %mul19
  %28 = load i32, i32* %bit_num_, align 4
  %add20 = add i32 %add, %28
  store i32 %add20, i32* %node_, align 4
  %29 = load i32, i32* %node_, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %bb, align 8
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @df_bb_rd_local_compute(%struct.df* %32, %struct.basic_block_def* %33)
  %34 = load i64, i64* %word_, align 8
  %cmp24 = icmp eq i64 %34, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  br label %for.end

if.end.26:                                        ; preds = %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %35 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.25, %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %36 = load i32, i32* %word_num_, align 4
  %inc30 = add i32 %36, 1
  store i32 %inc30, i32* %word_num_, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.34
  br label %do.end.35

do.end.35:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_rd_transfer_function(i32 %bb, i32* %changed, %struct.bitmap_head_def* %in, %struct.bitmap_head_def* %out, %struct.bitmap_head_def* %gen, %struct.bitmap_head_def* %kill, i8* %data) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %changed.addr = alloca i32*, align 8
  %in.addr = alloca %struct.bitmap_head_def*, align 8
  %out.addr = alloca %struct.bitmap_head_def*, align 8
  %gen.addr = alloca %struct.bitmap_head_def*, align 8
  %kill.addr = alloca %struct.bitmap_head_def*, align 8
  %data.addr = alloca i8*, align 8
  store i32 %bb, i32* %bb.addr, align 4
  store i32* %changed, i32** %changed.addr, align 8
  store %struct.bitmap_head_def* %in, %struct.bitmap_head_def** %in.addr, align 8
  store %struct.bitmap_head_def* %out, %struct.bitmap_head_def** %out.addr, align 8
  store %struct.bitmap_head_def* %gen, %struct.bitmap_head_def** %gen.addr, align 8
  store %struct.bitmap_head_def* %kill, %struct.bitmap_head_def** %kill.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out.addr, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %gen.addr, align 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in.addr, align 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %kill.addr, align 8
  %call = call i32 @bitmap_union_of_diff(%struct.bitmap_head_def* %0, %struct.bitmap_head_def* %1, %struct.bitmap_head_def* %2, %struct.bitmap_head_def* %3)
  %4 = load i32*, i32** %changed.addr, align 8
  store i32 %call, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_ud_chain_create(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx4, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp6, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %19, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %for.body.14
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and17 = and i64 %24, %neg
  store i64 %and17, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx18, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul19 = mul i32 %27, 64
  %add = add i32 %mul, %mul19
  %28 = load i32, i32* %bit_num_, align 4
  %add20 = add i32 %add, %28
  store i32 %add20, i32* %node_, align 4
  %29 = load i32, i32* %node_, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %bb, align 8
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @df_bb_ud_chain_create(%struct.df* %32, %struct.basic_block_def* %33)
  %34 = load i64, i64* %word_, align 8
  %cmp24 = icmp eq i64 %34, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  br label %for.end

if.end.26:                                        ; preds = %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %35 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.25, %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %36 = load i32, i32* %word_num_, align 4
  %inc30 = add i32 %36, 1
  store i32 %inc30, i32* %word_num_, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.34
  br label %do.end.35

do.end.35:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_ru_local_compute(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx4, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp6, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %19, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %for.body.14
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and17 = and i64 %24, %neg
  store i64 %and17, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx18, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul19 = mul i32 %27, 64
  %add = add i32 %mul, %mul19
  %28 = load i32, i32* %bit_num_, align 4
  %add20 = add i32 %add, %28
  store i32 %add20, i32* %node_, align 4
  %29 = load i32, i32* %node_, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %bb, align 8
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @df_bb_ru_local_compute(%struct.df* %32, %struct.basic_block_def* %33)
  %34 = load i64, i64* %word_, align 8
  %cmp24 = icmp eq i64 %34, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  br label %for.end

if.end.26:                                        ; preds = %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %35 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.25, %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %36 = load i32, i32* %word_num_, align 4
  %inc30 = add i32 %36, 1
  store i32 %inc30, i32* %word_num_, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.34
  br label %do.end.35

do.end.35:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_ru_transfer_function(i32 %bb, i32* %changed, %struct.bitmap_head_def* %in, %struct.bitmap_head_def* %out, %struct.bitmap_head_def* %gen, %struct.bitmap_head_def* %kill, i8* %data) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %changed.addr = alloca i32*, align 8
  %in.addr = alloca %struct.bitmap_head_def*, align 8
  %out.addr = alloca %struct.bitmap_head_def*, align 8
  %gen.addr = alloca %struct.bitmap_head_def*, align 8
  %kill.addr = alloca %struct.bitmap_head_def*, align 8
  %data.addr = alloca i8*, align 8
  store i32 %bb, i32* %bb.addr, align 4
  store i32* %changed, i32** %changed.addr, align 8
  store %struct.bitmap_head_def* %in, %struct.bitmap_head_def** %in.addr, align 8
  store %struct.bitmap_head_def* %out, %struct.bitmap_head_def** %out.addr, align 8
  store %struct.bitmap_head_def* %gen, %struct.bitmap_head_def** %gen.addr, align 8
  store %struct.bitmap_head_def* %kill, %struct.bitmap_head_def** %kill.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in.addr, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %gen.addr, align 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out.addr, align 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %kill.addr, align 8
  %call = call i32 @bitmap_union_of_diff(%struct.bitmap_head_def* %0, %struct.bitmap_head_def* %1, %struct.bitmap_head_def* %2, %struct.bitmap_head_def* %3)
  %4 = load i32*, i32** %changed.addr, align 8
  store i32 %call, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_du_chain_create(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %ru = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  %call = call noalias i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.bitmap_head_def*
  %call1 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %0)
  store %struct.bitmap_head_def* %call1, %struct.bitmap_head_def** %ru, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %1, i32 0, i32 0
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %2, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.2
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i32 0, i32 2
  %5 = load i32, i32* %indx, align 4
  %6 = load i32, i32* %indx_, align 4
  %cmp3 = icmp ult i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %8, i32 0, i32 0
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %9, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp4 = icmp ne %struct.bitmap_element_def* %10, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %11, i32 0, i32 2
  %12 = load i32, i32* %indx5, align 4
  %13 = load i32, i32* %indx_, align 4
  %cmp6 = icmp ne i32 %12, %13
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp7 = icmp ne %struct.bitmap_element_def* %14, null
  br i1 %cmp7, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.30, %for.body
  %15 = load i32, i32* %word_num_, align 4
  %cmp9 = icmp ult i32 %15, 2
  br i1 %cmp9, label %for.body.10, label %for.end.32

for.body.10:                                      ; preds = %for.cond.8
  %16 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %18 = load i64, i64* %arrayidx, align 8
  store i64 %18, i64* %word_, align 8
  %19 = load i64, i64* %word_, align 8
  %cmp11 = icmp ne i64 %19, 0
  br i1 %cmp11, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %for.body.10
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then.12
  %20 = load i32, i32* %bit_num_, align 4
  %cmp14 = icmp ult i32 %20, 64
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %21 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %21 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %22 = load i64, i64* %word_, align 8
  %23 = load i64, i64* %mask_, align 8
  %and = and i64 %22, %23
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %for.body.15
  %24 = load i64, i64* %mask_, align 8
  %neg = xor i64 %24, -1
  %25 = load i64, i64* %word_, align 8
  %and18 = and i64 %25, %neg
  store i64 %and18, i64* %word_, align 8
  %26 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %26, i32 0, i32 2
  %27 = load i32, i32* %indx19, align 4
  %mul = mul i32 %27, 128
  %28 = load i32, i32* %word_num_, align 4
  %mul20 = mul i32 %28, 64
  %add = add i32 %mul, %mul20
  %29 = load i32, i32* %bit_num_, align 4
  %add21 = add i32 %add, %29
  store i32 %add21, i32* %node_, align 4
  %30 = load i32, i32* %node_, align 4
  %idxprom22 = zext i32 %30 to i64
  %31 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %31, i32 0, i32 4
  %bb23 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx24 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb23, i32 0, i64 %idxprom22
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx24, align 8
  store %struct.basic_block_def* %32, %struct.basic_block_def** %bb, align 8
  %33 = load %struct.df*, %struct.df** %df.addr, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru, align 8
  call void @df_bb_du_chain_create(%struct.df* %33, %struct.basic_block_def* %34, %struct.bitmap_head_def* %35)
  %36 = load i64, i64* %word_, align 8
  %cmp25 = icmp eq i64 %36, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.17
  br label %for.end

if.end.27:                                        ; preds = %if.then.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %37 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.13

for.end:                                          ; preds = %if.then.26, %for.cond.13
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %for.body.10
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %38 = load i32, i32* %word_num_, align 4
  %inc31 = add i32 %38, 1
  store i32 %inc31, i32* %word_num_, align 4
  br label %for.cond.8

for.end.32:                                       ; preds = %for.cond.8
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next34 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %39, i32 0, i32 0
  %40 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next34, align 8
  store %struct.bitmap_element_def* %40, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.35
  br label %do.end.36

do.end.36:                                        ; preds = %do.end
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %41, null
  br i1 %tobool, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.body.37
  %42 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %42)
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru, align 8
  %44 = bitcast %struct.bitmap_head_def* %43 to i8*
  call void @free(i8* %44) #4
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %ru, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %do.body.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_lr_local_compute(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.1
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx4, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp6, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %14, 2
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %19 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %19, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp15 = icmp ne i64 %and, 0
  br i1 %cmp15, label %if.then.16, label %if.end.27

if.then.16:                                       ; preds = %for.body.14
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and17 = and i64 %24, %neg
  store i64 %and17, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx18, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul19 = mul i32 %27, 64
  %add = add i32 %mul, %mul19
  %28 = load i32, i32* %bit_num_, align 4
  %add20 = add i32 %add, %28
  store i32 %add20, i32* %node_, align 4
  %29 = load i32, i32* %node_, align 4
  %idxprom21 = zext i32 %29 to i64
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %bb, align 8
  %32 = load %struct.df*, %struct.df** %df.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @df_bb_lr_local_compute(%struct.df* %32, %struct.basic_block_def* %33)
  %34 = load i64, i64* %word_, align 8
  %cmp24 = icmp eq i64 %34, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  br label %for.end

if.end.26:                                        ; preds = %if.then.16
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %35 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.25, %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %36 = load i32, i32* %word_num_, align 4
  %inc30 = add i32 %36, 1
  store i32 %inc30, i32* %word_num_, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %37, i32 0, i32 0
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8
  store %struct.bitmap_element_def* %38, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.34
  br label %do.end.35

do.end.35:                                        ; preds = %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_lr_transfer_function(i32 %bb, i32* %changed, %struct.bitmap_head_def* %in, %struct.bitmap_head_def* %out, %struct.bitmap_head_def* %use, %struct.bitmap_head_def* %def, i8* %data) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %changed.addr = alloca i32*, align 8
  %in.addr = alloca %struct.bitmap_head_def*, align 8
  %out.addr = alloca %struct.bitmap_head_def*, align 8
  %use.addr = alloca %struct.bitmap_head_def*, align 8
  %def.addr = alloca %struct.bitmap_head_def*, align 8
  %data.addr = alloca i8*, align 8
  store i32 %bb, i32* %bb.addr, align 4
  store i32* %changed, i32** %changed.addr, align 8
  store %struct.bitmap_head_def* %in, %struct.bitmap_head_def** %in.addr, align 8
  store %struct.bitmap_head_def* %out, %struct.bitmap_head_def** %out.addr, align 8
  store %struct.bitmap_head_def* %use, %struct.bitmap_head_def** %use.addr, align 8
  store %struct.bitmap_head_def* %def, %struct.bitmap_head_def** %def.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %in.addr, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %use.addr, align 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %out.addr, align 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %def.addr, align 8
  %call = call i32 @bitmap_union_of_diff(%struct.bitmap_head_def* %0, %struct.bitmap_head_def* %1, %struct.bitmap_head_def* %2, %struct.bitmap_head_def* %3)
  %4 = load i32*, i32** %changed.addr, align 8
  store i32 %call, i32* %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_reg_info_compute(%struct.df* %df, %struct.bitmap_head_def* %blocks) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %blocks.addr = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %live = alloca %struct.bitmap_head_def*, align 8
  %node_ = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.bitmap_head_def* %blocks, %struct.bitmap_head_def** %blocks.addr, align 8
  %call = call noalias i8* @xmalloc(i64 24)
  %0 = bitcast i8* %call to %struct.bitmap_head_def*
  %call1 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %0)
  store %struct.bitmap_head_def* %call1, %struct.bitmap_head_def** %live, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %blocks.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %1, i32 0, i32 0
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %2, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.2
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i32 0, i32 2
  %5 = load i32, i32* %indx, align 4
  %6 = load i32, i32* %indx_, align 4
  %cmp3 = icmp ult i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %8, i32 0, i32 0
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %9, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp4 = icmp ne %struct.bitmap_element_def* %10, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %11, i32 0, i32 2
  %12 = load i32, i32* %indx5, align 4
  %13 = load i32, i32* %indx_, align 4
  %cmp6 = icmp ne i32 %12, %13
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp7 = icmp ne %struct.bitmap_element_def* %14, null
  br i1 %cmp7, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.30, %for.body
  %15 = load i32, i32* %word_num_, align 4
  %cmp9 = icmp ult i32 %15, 2
  br i1 %cmp9, label %for.body.10, label %for.end.32

for.body.10:                                      ; preds = %for.cond.8
  %16 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %18 = load i64, i64* %arrayidx, align 8
  store i64 %18, i64* %word_, align 8
  %19 = load i64, i64* %word_, align 8
  %cmp11 = icmp ne i64 %19, 0
  br i1 %cmp11, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %for.body.10
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then.12
  %20 = load i32, i32* %bit_num_, align 4
  %cmp14 = icmp ult i32 %20, 64
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %21 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %21 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %22 = load i64, i64* %word_, align 8
  %23 = load i64, i64* %mask_, align 8
  %and = and i64 %22, %23
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %for.body.15
  %24 = load i64, i64* %mask_, align 8
  %neg = xor i64 %24, -1
  %25 = load i64, i64* %word_, align 8
  %and18 = and i64 %25, %neg
  store i64 %and18, i64* %word_, align 8
  %26 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %26, i32 0, i32 2
  %27 = load i32, i32* %indx19, align 4
  %mul = mul i32 %27, 128
  %28 = load i32, i32* %word_num_, align 4
  %mul20 = mul i32 %28, 64
  %add = add i32 %mul, %mul20
  %29 = load i32, i32* %bit_num_, align 4
  %add21 = add i32 %add, %29
  store i32 %add21, i32* %node_, align 4
  %30 = load i32, i32* %node_, align 4
  %idxprom22 = zext i32 %30 to i64
  %31 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %31, i32 0, i32 4
  %bb23 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx24 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb23, i32 0, i64 %idxprom22
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx24, align 8
  store %struct.basic_block_def* %32, %struct.basic_block_def** %bb, align 8
  %33 = load %struct.df*, %struct.df** %df.addr, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  call void @df_bb_reg_info_compute(%struct.df* %33, %struct.basic_block_def* %34, %struct.bitmap_head_def* %35)
  %36 = load i64, i64* %word_, align 8
  %cmp25 = icmp eq i64 %36, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.17
  br label %for.end

if.end.27:                                        ; preds = %if.then.17
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %37 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.13

for.end:                                          ; preds = %if.then.26, %for.cond.13
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %for.body.10
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %38 = load i32, i32* %word_num_, align 4
  %inc31 = add i32 %38, 1
  store i32 %inc31, i32* %word_num_, align 4
  br label %for.cond.8

for.end.32:                                       ; preds = %for.cond.8
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next34 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %39, i32 0, i32 0
  %40 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next34, align 8
  store %struct.bitmap_element_def* %40, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.35
  br label %do.end.36

do.end.36:                                        ; preds = %do.end
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %41, null
  br i1 %tobool, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.body.37
  %42 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %42)
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %44 = bitcast %struct.bitmap_head_def* %43 to i8*
  call void @free(i8* %44) #4
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %live, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %do.body.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @df_bb_refs_update(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %count = alloca i32, align 4
  %uid = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtint, align 4
  store i32 %3, i32* %uid, align 4
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified = getelementptr inbounds %struct.df, %struct.df* %4, i32 0, i32 19
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified, align 8
  %6 = load i32, i32* %uid, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %5, i32 %6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %7 = load %struct.df*, %struct.df** %df.addr, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @df_insn_refs_unlink(%struct.df* %7, %struct.basic_block_def* %8, %struct.rtx_def* %9)
  %10 = load %struct.df*, %struct.df** %df.addr, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @df_insn_refs_record(%struct.df* %10, %struct.basic_block_def* %11, %struct.rtx_def* %12)
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns_modified1 = getelementptr inbounds %struct.df, %struct.df* %13, i32 0, i32 19
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %insns_modified1, align 8
  %15 = load i32, i32* %uid, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %14, i32 %15)
  %16 = load i32, i32* %count, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 1
  %19 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp = icmp eq %struct.rtx_def* %17, %19
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.end

if.end.3:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.3
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.2
  %22 = load i32, i32* %count, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @df_insn_refs_unlink(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.df_link*, align 8
  %uid = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %uid, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %3, i32 0, i32 7
  %4 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %4, i64 %idxprom
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx1, i32 0, i32 0
  %5 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %5, %struct.df_link** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool = icmp ne %struct.df_link* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.df*, %struct.df** %df.addr, align 8
  %8 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %8, i32 0, i32 1
  %9 = load %struct.ref*, %struct.ref** %ref, align 8
  call void @df_def_unlink(%struct.df* %7, %struct.ref* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %10, i32 0, i32 0
  %11 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %11, %struct.df_link** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %uid, align 4
  %idxprom2 = zext i32 %12 to i64
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns3 = getelementptr inbounds %struct.df, %struct.df* %13, i32 0, i32 7
  %14 = load %struct.insn_info*, %struct.insn_info** %insns3, align 8
  %arrayidx4 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %14, i64 %idxprom2
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx4, i32 0, i32 1
  %15 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %15, %struct.df_link** %link, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.9, %for.end
  %16 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool6 = icmp ne %struct.df_link* %16, null
  br i1 %tobool6, label %for.body.7, label %for.end.11

for.body.7:                                       ; preds = %for.cond.5
  %17 = load %struct.df*, %struct.df** %df.addr, align 8
  %18 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref8 = getelementptr inbounds %struct.df_link, %struct.df_link* %18, i32 0, i32 1
  %19 = load %struct.ref*, %struct.ref** %ref8, align 8
  call void @df_use_unlink(%struct.df* %17, %struct.ref* %19)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.7
  %20 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next10 = getelementptr inbounds %struct.df_link, %struct.df_link* %20, i32 0, i32 0
  %21 = load %struct.df_link*, %struct.df_link** %next10, align 8
  store %struct.df_link* %21, %struct.df_link** %link, align 8
  br label %for.cond.5

for.end.11:                                       ; preds = %for.cond.5
  %22 = load i32, i32* %uid, align 4
  %idxprom12 = zext i32 %22 to i64
  %23 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns13 = getelementptr inbounds %struct.df, %struct.df* %23, i32 0, i32 7
  %24 = load %struct.insn_info*, %struct.insn_info** %insns13, align 8
  %arrayidx14 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %24, i64 %idxprom12
  %defs15 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx14, i32 0, i32 0
  store %struct.df_link* null, %struct.df_link** %defs15, align 8
  %25 = load i32, i32* %uid, align 4
  %idxprom16 = zext i32 %25 to i64
  %26 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns17 = getelementptr inbounds %struct.df, %struct.df* %26, i32 0, i32 7
  %27 = load %struct.insn_info*, %struct.insn_info** %insns17, align 8
  %arrayidx18 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %27, i64 %idxprom16
  %uses19 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx18, i32 0, i32 1
  store %struct.df_link* null, %struct.df_link** %uses19, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_insn_refs_record(%struct.df* %df, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %note21 = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %note80 = alloca %struct.rtx_def*, align 8
  %reg_clob = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end.122

if.then:                                          ; preds = %entry
  %3 = load %struct.df*, %struct.df** %df.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_defs_record(%struct.df* %3, %struct.rtx_def* %5, %struct.basic_block_def* %6, %struct.rtx_def* %7)
  %8 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags = getelementptr inbounds %struct.df, %struct.df* %8, i32 0, i32 0
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 6
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %12 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool7 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load8 = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load8, 16
  %bf.clear9 = and i32 %bf.lshr, 255
  switch i32 %bf.clear9, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %15 = load %struct.df*, %struct.df** %df.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %15, %struct.rtx_def** %rtx12, i32 1, %struct.basic_block_def* %17, %struct.rtx_def* %18, i32 0)
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %19 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load16 = load i32, i32* %22, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 34
  br i1 %cmp18, label %if.then.20, label %if.end.71

if.then.20:                                       ; preds = %if.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 7
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %note21, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.43, %if.then.20
  %25 = load %struct.rtx_def*, %struct.rtx_def** %note21, align 8
  %tobool26 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool26, label %for.body.27, label %for.end.47

for.body.27:                                      ; preds = %for.cond.25
  %26 = load %struct.rtx_def*, %struct.rtx_def** %note21, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load31 = load i32, i32* %28, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 48
  br i1 %cmp33, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %for.body.27
  %29 = load %struct.df*, %struct.df** %df.addr, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %note21, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %29, %struct.rtx_def** %rtx41, i32 1, %struct.basic_block_def* %32, %struct.rtx_def* %33, i32 0)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.35, %for.body.27
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %34 = load %struct.rtx_def*, %struct.rtx_def** %note21, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 1
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %note21, align 8
  br label %for.cond.25

for.end.47:                                       ; preds = %for.cond.25
  %call = call %struct.rtx_def* @df_reg_use_gen(i32 7)
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  %36 = load %struct.df*, %struct.df** %df.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %36, %struct.rtx_def** %rtx50, i32 1, %struct.basic_block_def* %38, %struct.rtx_def* %39, i32 0)
  %40 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags51 = getelementptr inbounds %struct.df, %struct.df* %40, i32 0, i32 0
  %41 = load i32, i32* %flags51, align 4
  %and52 = and i32 %41, 1024
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.70

if.then.54:                                       ; preds = %for.end.47
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.68, %if.then.54
  %42 = load i32, i32* %i, align 4
  %cmp56 = icmp slt i32 %42, 53
  br i1 %cmp56, label %for.body.58, label %for.end.69

for.body.58:                                      ; preds = %for.cond.55
  %43 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %43 to i64
  %arrayidx60 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom59
  %44 = load i8, i8* %arrayidx60, align 1
  %tobool61 = icmp ne i8 %44, 0
  br i1 %tobool61, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %for.body.58
  %45 = load i32, i32* %i, align 4
  %call63 = call %struct.rtx_def* @df_reg_use_gen(i32 %45)
  store %struct.rtx_def* %call63, %struct.rtx_def** %x, align 8
  %46 = load %struct.df*, %struct.df** %df.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %46, %struct.rtx_def** %rtx66, i32 1, %struct.basic_block_def* %48, %struct.rtx_def* %49, i32 0)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %for.body.58
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.55

for.end.69:                                       ; preds = %for.cond.55
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %for.end.47
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end
  %51 = load %struct.df*, %struct.df** %df.addr, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 3
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %51, %struct.rtx_def** %rtx74, i32 1, %struct.basic_block_def* %53, %struct.rtx_def* %54, i32 0)
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load75 = load i32, i32* %56, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %cmp77 = icmp eq i32 %bf.clear76, 34
  br i1 %cmp77, label %if.then.79, label %if.end.121

if.then.79:                                       ; preds = %if.end.71
  %57 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags81 = getelementptr inbounds %struct.df, %struct.df* %57, i32 0, i32 0
  %58 = load i32, i32* %flags81, align 4
  %and82 = and i32 %58, 1024
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.97

if.then.84:                                       ; preds = %if.then.79
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.94, %if.then.84
  %59 = load i32, i32* %i, align 4
  %cmp86 = icmp slt i32 %59, 53
  br i1 %cmp86, label %for.body.88, label %for.end.96

for.body.88:                                      ; preds = %for.cond.85
  %60 = load i64, i64* @regs_invalidated_by_call, align 8
  %61 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %61 to i64
  %shl = shl i64 1, %sh_prom
  %and89 = and i64 %60, %shl
  %tobool90 = icmp ne i64 %and89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %for.body.88
  %62 = load i32, i32* %i, align 4
  %call92 = call %struct.rtx_def* @df_reg_clobber_gen(i32 %62)
  store %struct.rtx_def* %call92, %struct.rtx_def** %reg_clob, align 8
  %63 = load %struct.df*, %struct.df** %df.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %reg_clob, align 8
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_defs_record(%struct.df* %63, %struct.rtx_def* %64, %struct.basic_block_def* %65, %struct.rtx_def* %66)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %for.body.88
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %67 = load i32, i32* %i, align 4
  %inc95 = add nsw i32 %67, 1
  store i32 %inc95, i32* %i, align 4
  br label %for.cond.85

for.end.96:                                       ; preds = %for.cond.85
  br label %if.end.97

if.end.97:                                        ; preds = %for.end.96, %if.then.79
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 7
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %note80, align 8
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.116, %if.end.97
  %70 = load %struct.rtx_def*, %struct.rtx_def** %note80, align 8
  %tobool102 = icmp ne %struct.rtx_def* %70, null
  br i1 %tobool102, label %for.body.103, label %for.end.120

for.body.103:                                     ; preds = %for.cond.101
  %71 = load %struct.rtx_def*, %struct.rtx_def** %note80, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load107 = load i32, i32* %73, align 8
  %bf.clear108 = and i32 %bf.load107, 65535
  %cmp109 = icmp eq i32 %bf.clear108, 49
  br i1 %cmp109, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %for.body.103
  %74 = load %struct.df*, %struct.df** %df.addr, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %note80, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 0
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx114, align 8
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_defs_record(%struct.df* %74, %struct.rtx_def* %76, %struct.basic_block_def* %77, %struct.rtx_def* %78)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %for.body.103
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %79 = load %struct.rtx_def*, %struct.rtx_def** %note80, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 1
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  store %struct.rtx_def* %80, %struct.rtx_def** %note80, align 8
  br label %for.cond.101

for.end.120:                                      ; preds = %for.cond.101
  br label %if.end.121

if.end.121:                                       ; preds = %for.end.120, %if.end.71
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %entry
  ret void
}

declare void @bitmap_clear_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @df_defs_record(%struct.df* %df, %struct.rtx_def* %x, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %2, 47
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %3, 49
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_def_record_1(%struct.df* %4, %struct.rtx_def* %5, %struct.basic_block_def* %6, %struct.rtx_def* %7)
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false
  %8 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %8, 39
  br i1 %cmp2, label %if.then.3, label %if.end.21

if.then.3:                                        ; preds = %if.else
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i32 0, i32 0
  %11 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %12 = load i32, i32* %i, align 4
  %cmp4 = icmp sge i32 %12, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtvec7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtvec_def**
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec7, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %15, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx8, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load9 = load i32, i32* %17, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  store i32 %bf.clear10, i32* %code, align 4
  %18 = load i32, i32* %code, align 4
  %cmp11 = icmp eq i32 %18, 47
  br i1 %cmp11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %for.body
  %19 = load i32, i32* %code, align 4
  %cmp13 = icmp eq i32 %19, 49
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %lor.lhs.false.12, %for.body
  %20 = load %struct.df*, %struct.df** %df.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtvec18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtvec_def**
  %23 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec18, align 8
  %elem19 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %23, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem19, i32 0, i64 %idxprom15
  %24 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx20, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_def_record_1(%struct.df* %20, %struct.rtx_def* %24, %struct.basic_block_def* %25, %struct.rtx_def* %26)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %lor.lhs.false.12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.21

if.end.21:                                        ; preds = %for.end, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_uses_record(%struct.df* %df, %struct.rtx_def** %loc, i32 %ref_type, %struct.basic_block_def* %bb, %struct.rtx_def* %insn, i32 %flags) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %ref_type.addr = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %flags.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %dst = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j126 = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store i32 %ref_type, i32* %ref_type.addr, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %retry

retry:                                            ; preds = %if.then.111, %entry
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %retry
  br label %for.end.149

if.end:                                           ; preds = %retry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  switch i32 %5, label %sw.default.93 [
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 59, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 49, label %sw.bb.1
    i32 66, label %sw.bb.12
    i32 63, label %sw.bb.16
    i32 61, label %sw.bb.28
    i32 47, label %sw.bb.29
    i32 51, label %sw.bb.74
    i32 41, label %sw.bb.75
    i32 43, label %sw.bb.75
    i32 52, label %sw.bb.75
    i32 40, label %sw.bb.75
    i32 96, label %sw.bb.86
    i32 98, label %sw.bb.86
    i32 97, label %sw.bb.86
    i32 99, label %sw.bb.86
    i32 100, label %sw.bb.86
    i32 101, label %sw.bb.86
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %for.end.149

sw.bb.1:                                          ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load2 = load i32, i32* %8, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp eq i32 %bf.clear3, 66
  br i1 %cmp, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %sw.bb.1
  %9 = load %struct.df*, %struct.df** %df.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %14 = load i32, i32* %flags.addr, align 4
  call void @df_uses_record(%struct.df* %9, %struct.rtx_def** %rtx10, i32 3, %struct.basic_block_def* %12, %struct.rtx_def* %13, i32 %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.4, %sw.bb.1
  br label %for.end.149

sw.bb.12:                                         ; preds = %if.end
  %15 = load %struct.df*, %struct.df** %df.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = load i32, i32* %flags.addr, align 4
  call void @df_uses_record(%struct.df* %15, %struct.rtx_def** %rtx15, i32 2, %struct.basic_block_def* %17, %struct.rtx_def* %18, i32 %19)
  br label %for.end.149

sw.bb.16:                                         ; preds = %if.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load20 = load i32, i32* %22, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp ne i32 %bf.clear21, 61
  br i1 %cmp22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %sw.bb.16
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  store %struct.rtx_def** %rtx26, %struct.rtx_def*** %loc.addr, align 8
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %25 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %26 = load i32, i32* %ref_type.addr, align 4
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %29 = load i32, i32* %flags.addr, align 4
  call void @df_uses_record(%struct.df* %24, %struct.rtx_def** %25, i32 %26, %struct.basic_block_def* %27, %struct.rtx_def* %28, i32 %29)
  br label %for.end.149

if.end.27:                                        ; preds = %sw.bb.16
  br label %sw.bb.28

sw.bb.28:                                         ; preds = %if.end, %if.end.27
  %30 = load %struct.df*, %struct.df** %df.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %32 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %34 = load i32, i32* %ref_type.addr, align 4
  %35 = load i32, i32* %flags.addr, align 4
  call void @df_ref_record(%struct.df* %30, %struct.rtx_def* %31, %struct.rtx_def** %32, %struct.rtx_def* %33, i32 %34, i32 %35)
  br label %for.end.149

sw.bb.29:                                         ; preds = %if.end
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %dst, align 8
  %38 = load %struct.df*, %struct.df** %df.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %38, %struct.rtx_def** %rtx35, i32 1, %struct.basic_block_def* %40, %struct.rtx_def* %41, i32 0)
  %42 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load36 = load i32, i32* %43, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  switch i32 %bf.clear37, label %sw.default [
    i32 63, label %sw.bb.38
    i32 61, label %sw.bb.44
    i32 59, label %sw.bb.44
    i32 66, label %sw.bb.45
    i32 64, label %sw.bb.49
    i32 133, label %sw.bb.61
    i32 132, label %sw.bb.61
  ]

sw.bb.38:                                         ; preds = %sw.bb.29
  %44 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %call = call zeroext i1 @read_modify_subreg_p(%struct.rtx_def* %44)
  br i1 %call, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %sw.bb.38
  %45 = load %struct.df*, %struct.df** %df.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %45, %struct.rtx_def** %rtx42, i32 1, %struct.basic_block_def* %47, %struct.rtx_def* %48, i32 1)
  br label %sw.epilog

if.end.43:                                        ; preds = %sw.bb.38
  br label %sw.bb.44

sw.bb.44:                                         ; preds = %sw.bb.29, %sw.bb.29, %if.end.43
  br label %sw.epilog

sw.bb.45:                                         ; preds = %sw.bb.29
  %49 = load %struct.df*, %struct.df** %df.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %49, %struct.rtx_def** %rtx48, i32 3, %struct.basic_block_def* %51, %struct.rtx_def* %52, i32 0)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %sw.bb.29
  %53 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %dst, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load53 = load i32, i32* %56, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp ne i32 %bf.clear54, 63
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %sw.bb.49
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.df_uses_record, i32 0, i32 0)) #6
  unreachable

if.end.57:                                        ; preds = %sw.bb.49
  %57 = load %struct.df*, %struct.df** %df.addr, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %57, %struct.rtx_def** %rtx60, i32 1, %struct.basic_block_def* %59, %struct.rtx_def* %60, i32 1)
  br label %sw.epilog

sw.bb.61:                                         ; preds = %sw.bb.29, %sw.bb.29
  %61 = load %struct.df*, %struct.df** %df.addr, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %61, %struct.rtx_def** %rtx64, i32 1, %struct.basic_block_def* %63, %struct.rtx_def* %64, i32 1)
  %65 = load %struct.df*, %struct.df** %df.addr, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 1
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %65, %struct.rtx_def** %rtx67, i32 1, %struct.basic_block_def* %67, %struct.rtx_def* %68, i32 0)
  %69 = load %struct.df*, %struct.df** %df.addr, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 2
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %69, %struct.rtx_def** %rtx70, i32 1, %struct.basic_block_def* %71, %struct.rtx_def* %72, i32 0)
  %73 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %dst, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.29
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.df_uses_record, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.61, %if.end.57, %sw.bb.45, %sw.bb.44, %if.then.39
  br label %for.end.149

sw.bb.74:                                         ; preds = %if.end
  br label %sw.epilog.94

sw.bb.75:                                         ; preds = %if.end, %if.end, %if.end, %if.end
  %75 = load i32, i32* %code, align 4
  %cmp76 = icmp eq i32 %75, 41
  br i1 %cmp76, label %if.then.77, label %if.end.85

if.then.77:                                       ; preds = %sw.bb.75
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.77
  %76 = load i32, i32* %j, align 4
  %77 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtvec_def**
  %78 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %78, i32 0, i32 0
  %79 = load i32, i32* %num_elem, align 4
  %cmp80 = icmp slt i32 %76, %79
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load %struct.df*, %struct.df** %df.addr, align 8
  %81 = load i32, i32* %j, align 4
  %idxprom = sext i32 %81 to i64
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 3
  %rtvec83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtvec_def**
  %83 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec83, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %83, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_uses_record(%struct.df* %80, %struct.rtx_def** %arrayidx84, i32 1, %struct.basic_block_def* %84, %struct.rtx_def* %85, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, i32* %j, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.end.149

if.end.85:                                        ; preds = %sw.bb.75
  br label %sw.epilog.94

sw.bb.86:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %87 = load %struct.df*, %struct.df** %df.addr, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_ref_record(%struct.df* %87, %struct.rtx_def* %89, %struct.rtx_def** %rtx92, %struct.rtx_def* %91, i32 0, i32 1)
  br label %sw.default.93

sw.default.93:                                    ; preds = %if.end, %sw.bb.86
  br label %sw.epilog.94

sw.epilog.94:                                     ; preds = %sw.default.93, %if.end.85, %sw.bb.74
  %92 = load i32, i32* %code, align 4
  %idxprom95 = sext i32 %92 to i64
  %arrayidx96 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom95
  %93 = load i8*, i8** %arrayidx96, align 8
  store i8* %93, i8** %fmt, align 8
  %94 = load i32, i32* %code, align 4
  %idxprom97 = sext i32 %94 to i64
  %arrayidx98 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom97
  %95 = load i8, i8* %arrayidx98, align 1
  %conv = zext i8 %95 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.148, %sw.epilog.94
  %96 = load i32, i32* %i, align 4
  %cmp100 = icmp sge i32 %96, 0
  br i1 %cmp100, label %for.body.102, label %for.end.149

for.body.102:                                     ; preds = %for.cond.99
  %97 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %97 to i64
  %98 = load i8*, i8** %fmt, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %98, i64 %idxprom103
  %99 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %99 to i32
  %cmp106 = icmp eq i32 %conv105, 101
  br i1 %cmp106, label %if.then.108, label %if.else

if.then.108:                                      ; preds = %for.body.102
  %100 = load i32, i32* %i, align 4
  %cmp109 = icmp eq i32 %100, 0
  br i1 %cmp109, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %if.then.108
  %101 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 0
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  store %struct.rtx_def** %rtx114, %struct.rtx_def*** %loc.addr, align 8
  br label %retry

if.end.115:                                       ; preds = %if.then.108
  %102 = load %struct.df*, %struct.df** %df.addr, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %103 to i64
  %104 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 %idxprom116
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %105 = load i32, i32* %ref_type.addr, align 4
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %108 = load i32, i32* %flags.addr, align 4
  call void @df_uses_record(%struct.df* %102, %struct.rtx_def** %rtx119, i32 %105, %struct.basic_block_def* %106, %struct.rtx_def* %107, i32 %108)
  br label %if.end.147

if.else:                                          ; preds = %for.body.102
  %109 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %109 to i64
  %110 = load i8*, i8** %fmt, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %110, i64 %idxprom120
  %111 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %111 to i32
  %cmp123 = icmp eq i32 %conv122, 69
  br i1 %cmp123, label %if.then.125, label %if.end.146

if.then.125:                                      ; preds = %if.else
  store i32 0, i32* %j126, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.143, %if.then.125
  %112 = load i32, i32* %j126, align 4
  %113 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %113 to i64
  %114 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 %idxprom128
  %rtvec131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtvec_def**
  %115 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec131, align 8
  %num_elem132 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %115, i32 0, i32 0
  %116 = load i32, i32* %num_elem132, align 4
  %cmp133 = icmp slt i32 %112, %116
  br i1 %cmp133, label %for.body.135, label %for.end.145

for.body.135:                                     ; preds = %for.cond.127
  %117 = load %struct.df*, %struct.df** %df.addr, align 8
  %118 = load i32, i32* %j126, align 4
  %idxprom136 = sext i32 %118 to i64
  %119 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %119 to i64
  %120 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 %idxprom137
  %rtvec140 = bitcast %union.rtunion_def* %arrayidx139 to %struct.rtvec_def**
  %121 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec140, align 8
  %elem141 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %121, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem141, i32 0, i64 %idxprom136
  %122 = load i32, i32* %ref_type.addr, align 4
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %125 = load i32, i32* %flags.addr, align 4
  call void @df_uses_record(%struct.df* %117, %struct.rtx_def** %arrayidx142, i32 %122, %struct.basic_block_def* %123, %struct.rtx_def* %124, i32 %125)
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.135
  %126 = load i32, i32* %j126, align 4
  %inc144 = add nsw i32 %126, 1
  store i32 %inc144, i32* %j126, align 4
  br label %for.cond.127

for.end.145:                                      ; preds = %for.cond.127
  br label %if.end.146

if.end.146:                                       ; preds = %for.end.145, %if.else
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.end.115
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %127 = load i32, i32* %i, align 4
  %dec = add nsw i32 %127, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.99

for.end.149:                                      ; preds = %if.then, %sw.bb, %if.end.11, %sw.bb.12, %if.then.23, %sw.bb.28, %sw.epilog, %for.end, %for.cond.99
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @df_reg_use_gen(i32 %regno) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %use = alloca %struct.rtx_def*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %cmp = icmp uge i32 %0, 53
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 12
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %4, i64 %idxprom
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %regno.addr, align 4
  %idxprom1 = zext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %regno.addr, align 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %7, i32 %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %5, %cond.true ], [ %call, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %reg, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call3 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 %bf.clear, %struct.rtx_def* %11)
  store %struct.rtx_def* %call3, %struct.rtx_def** %use, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @df_reg_clobber_gen(i32 %regno) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %use = alloca %struct.rtx_def*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %cmp = icmp uge i32 %0, 53
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 12
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %4, i64 %idxprom
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %regno.addr, align 4
  %idxprom1 = zext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %regno.addr, align 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %7, i32 %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %5, %cond.true ], [ %call, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %reg, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call3 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 %bf.clear, %struct.rtx_def* %11)
  store %struct.rtx_def* %call3, %struct.rtx_def** %use, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define internal void @df_def_record_1(%struct.df* %df, %struct.rtx_def* %x, %struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %loc = alloca %struct.rtx_def**, align 8
  %dst = alloca %struct.rtx_def*, align 8
  %flags = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def** %rtx, %struct.rtx_def*** %loc, align 8
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %dst, align 8
  store i32 0, i32* %flags, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %cmp3 = icmp eq i32 %bf.clear2, 51
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 0
  %9 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %10, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.df*, %struct.df** %df.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtvec9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec9, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @df_def_record_1(%struct.df* %11, %struct.rtx_def* %15, %struct.basic_block_def* %16, %struct.rtx_def* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.47

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load11 = load i32, i32* %20, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 64
  br i1 %cmp13, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %21 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load14 = load i32, i32* %22, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 133
  br i1 %cmp16, label %lor.end, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %23 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load18 = load i32, i32* %24, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 132
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.17
  %25 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %call = call zeroext i1 @read_modify_subreg_p(%struct.rtx_def* %25)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.17, %lor.lhs.false, %while.cond
  %26 = phi i1 [ true, %lor.lhs.false.17 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %call, %lor.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load21 = load i32, i32* %28, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 64
  br i1 %cmp23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %while.body
  %29 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  store %struct.rtx_def** %rtx27, %struct.rtx_def*** %loc, align 8
  %30 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %dst, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %while.body
  %32 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  store %struct.rtx_def** %rtx31, %struct.rtx_def*** %loc, align 8
  %33 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %33, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %dst, align 8
  %35 = load i32, i32* %flags, align 4
  %or = or i32 %35, 1
  store i32 %or, i32* %flags, align 4
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %36 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load32 = load i32, i32* %37, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 61
  br i1 %cmp34, label %if.then.46, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %while.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load36 = load i32, i32* %39, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 63
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %lor.lhs.false.35
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load43 = load i32, i32* %42, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 61
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.39, %while.end
  %43 = load %struct.df*, %struct.df** %df.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %45 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %47 = load i32, i32* %flags, align 4
  call void @df_ref_record(%struct.df* %43, %struct.rtx_def* %44, %struct.rtx_def** %45, %struct.rtx_def* %46, i32 0, i32 %47)
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %if.then.46, %land.lhs.true.39, %lor.lhs.false.35
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @read_modify_subreg_p(%struct.rtx_def* %x) #5 {
entry:
  %retval = alloca i1, align 1
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear2 to i64
  %arrayidx3 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* @target_flags, align 4
  %and = and i32 %6, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %cmp4 = icmp sle i32 %conv, %cond
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load8 = load i32, i32* %8, align 8
  %bf.lshr9 = lshr i32 %bf.load8, 16
  %bf.clear10 = and i32 %bf.lshr9, 255
  %idxprom11 = sext i32 %bf.clear10 to i64
  %arrayidx12 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom11
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %10 = load i32, i32* @target_flags, align 4
  %and14 = and i32 %10, 33554432
  %tobool15 = icmp ne i32 %and14, 0
  %cond16 = select i1 %tobool15, i32 8, i32 4
  %cmp17 = icmp sgt i32 %conv13, %cond16
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.7
  store i1 false, i1* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.7
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.6, %if.then
  %11 = load i1, i1* %retval
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define internal void @df_ref_record(%struct.df* %df, %struct.rtx_def* %reg, %struct.rtx_def** %loc, %struct.rtx_def* %insn, i32 %ref_type, i32 %ref_flags) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ref_type.addr = alloca i32, align 4
  %ref_flags.addr = alloca i32, align 4
  %regno = alloca i32, align 4
  %i = alloca i32, align 4
  %endregno = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %ref_type, i32* %ref_type.addr, align 4
  store i32 %ref_flags, i32* %ref_flags.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 63
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 875, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.df_ref_record, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 63
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.34

land.lhs.true.7:                                  ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load8 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load8, 16
  %bf.clear9 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear9 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* @word_mode, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom10
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %10 to i32
  %cmp13 = icmp slt i32 %conv, %conv12
  br i1 %cmp13, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load15 = load i32, i32* %12, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 16
  %bf.clear17 = and i32 %bf.lshr16, 255
  %idxprom18 = sext i32 %bf.clear17 to i64
  %arrayidx19 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom18
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %13 to i32
  %14 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load22 = load i32, i32* %16, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 16
  %bf.clear24 = and i32 %bf.lshr23, 255
  %idxprom25 = sext i32 %bf.clear24 to i64
  %arrayidx26 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom25
  %17 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %17 to i32
  %cmp28 = icmp sge i32 %conv20, %conv27
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %lor.lhs.false, %land.lhs.true.7
  %18 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  store %struct.rtx_def** %rtx33, %struct.rtx_def*** %loc.addr, align 8
  %19 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %reg.addr, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %lor.lhs.false, %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load35 = load i32, i32* %22, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 63
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.34
  %23 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.34
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %24, %cond.true ], [ %25, %cond.false ]
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %26 = load i32, i32* %rtuint, align 4
  store i32 %26, i32* %regno, align 4
  %27 = load i32, i32* %regno, align 4
  %cmp44 = icmp ult i32 %27, 53
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %cond.end
  %28 = load %struct.df*, %struct.df** %df.addr, align 8
  %flags = getelementptr inbounds %struct.df, %struct.df* %28, i32 0, i32 0
  %29 = load i32, i32* %flags, align 4
  %and = and i32 %29, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.then.46
  br label %if.end.132

if.end.48:                                        ; preds = %if.then.46
  %30 = load i32, i32* %regno, align 4
  %31 = load i32, i32* %regno, align 4
  %cmp49 = icmp uge i32 %31, 8
  br i1 %cmp49, label %land.lhs.true.51, label %lor.lhs.false.54

land.lhs.true.51:                                 ; preds = %if.end.48
  %32 = load i32, i32* %regno, align 4
  %cmp52 = icmp ule i32 %32, 15
  br i1 %cmp52, label %cond.true.72, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %land.lhs.true.51, %if.end.48
  %33 = load i32, i32* %regno, align 4
  %cmp55 = icmp uge i32 %33, 21
  br i1 %cmp55, label %land.lhs.true.57, label %lor.lhs.false.60

land.lhs.true.57:                                 ; preds = %lor.lhs.false.54
  %34 = load i32, i32* %regno, align 4
  %cmp58 = icmp ule i32 %34, 28
  br i1 %cmp58, label %cond.true.72, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true.57, %lor.lhs.false.54
  %35 = load i32, i32* %regno, align 4
  %cmp61 = icmp uge i32 %35, 45
  br i1 %cmp61, label %land.lhs.true.63, label %lor.lhs.false.66

land.lhs.true.63:                                 ; preds = %lor.lhs.false.60
  %36 = load i32, i32* %regno, align 4
  %cmp64 = icmp ule i32 %36, 52
  br i1 %cmp64, label %cond.true.72, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %land.lhs.true.63, %lor.lhs.false.60
  %37 = load i32, i32* %regno, align 4
  %cmp67 = icmp uge i32 %37, 29
  br i1 %cmp67, label %land.lhs.true.69, label %cond.false.88

land.lhs.true.69:                                 ; preds = %lor.lhs.false.66
  %38 = load i32, i32* %regno, align 4
  %cmp70 = icmp ule i32 %38, 36
  br i1 %cmp70, label %cond.true.72, label %cond.false.88

cond.true.72:                                     ; preds = %land.lhs.true.69, %land.lhs.true.63, %land.lhs.true.57, %land.lhs.true.51
  %39 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load73 = load i32, i32* %40, align 8
  %bf.lshr74 = lshr i32 %bf.load73, 16
  %bf.clear75 = and i32 %bf.lshr74, 255
  %idxprom76 = sext i32 %bf.clear75 to i64
  %arrayidx77 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom76
  %41 = load i32, i32* %arrayidx77, align 4
  %cmp78 = icmp eq i32 %41, 5
  br i1 %cmp78, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.72
  %42 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load80 = load i32, i32* %43, align 8
  %bf.lshr81 = lshr i32 %bf.load80, 16
  %bf.clear82 = and i32 %bf.lshr81, 255
  %idxprom83 = sext i32 %bf.clear82 to i64
  %arrayidx84 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom83
  %44 = load i32, i32* %arrayidx84, align 4
  %cmp85 = icmp eq i32 %44, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.72
  %45 = phi i1 [ true, %cond.true.72 ], [ %cmp85, %lor.rhs ]
  %cond87 = select i1 %45, i32 2, i32 1
  br label %cond.end.125

cond.false.88:                                    ; preds = %land.lhs.true.69, %lor.lhs.false.66
  %46 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load89 = load i32, i32* %47, align 8
  %bf.lshr90 = lshr i32 %bf.load89, 16
  %bf.clear91 = and i32 %bf.lshr90, 255
  %cmp92 = icmp eq i32 %bf.clear91, 18
  br i1 %cmp92, label %cond.true.94, label %cond.false.98

cond.true.94:                                     ; preds = %cond.false.88
  %48 = load i32, i32* @target_flags, align 4
  %and95 = and i32 %48, 33554432
  %tobool96 = icmp ne i32 %and95, 0
  %cond97 = select i1 %tobool96, i32 2, i32 3
  br label %cond.end.123

cond.false.98:                                    ; preds = %cond.false.88
  %49 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load99 = load i32, i32* %50, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 16
  %bf.clear101 = and i32 %bf.lshr100, 255
  %cmp102 = icmp eq i32 %bf.clear101, 24
  br i1 %cmp102, label %cond.true.104, label %cond.false.108

cond.true.104:                                    ; preds = %cond.false.98
  %51 = load i32, i32* @target_flags, align 4
  %and105 = and i32 %51, 33554432
  %tobool106 = icmp ne i32 %and105, 0
  %cond107 = select i1 %tobool106, i32 4, i32 6
  br label %cond.end.121

cond.false.108:                                   ; preds = %cond.false.98
  %52 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load109 = load i32, i32* %53, align 8
  %bf.lshr110 = lshr i32 %bf.load109, 16
  %bf.clear111 = and i32 %bf.lshr110, 255
  %idxprom112 = sext i32 %bf.clear111 to i64
  %arrayidx113 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom112
  %54 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %54 to i32
  %55 = load i32, i32* @target_flags, align 4
  %and115 = and i32 %55, 33554432
  %tobool116 = icmp ne i32 %and115, 0
  %cond117 = select i1 %tobool116, i32 8, i32 4
  %add = add nsw i32 %conv114, %cond117
  %sub = sub nsw i32 %add, 1
  %56 = load i32, i32* @target_flags, align 4
  %and118 = and i32 %56, 33554432
  %tobool119 = icmp ne i32 %and118, 0
  %cond120 = select i1 %tobool119, i32 8, i32 4
  %div = sdiv i32 %sub, %cond120
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.108, %cond.true.104
  %cond122 = phi i32 [ %cond107, %cond.true.104 ], [ %div, %cond.false.108 ]
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.end.121, %cond.true.94
  %cond124 = phi i32 [ %cond97, %cond.true.94 ], [ %cond122, %cond.end.121 ]
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.end.123, %lor.end
  %cond126 = phi i32 [ %cond87, %lor.end ], [ %cond124, %cond.end.123 ]
  %add127 = add i32 %30, %cond126
  store i32 %add127, i32* %endregno, align 4
  %57 = load i32, i32* %regno, align 4
  store i32 %57, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.125
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %endregno, align 4
  %cmp128 = icmp slt i32 %58, %59
  br i1 %cmp128, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load %struct.df*, %struct.df** %df.addr, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %61 to i64
  %arrayidx131 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom130
  %62 = load i32, i32* %arrayidx131, align 4
  %63 = load i32, i32* %i, align 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %62, i32 %63)
  %64 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %66 = load i32, i32* %ref_type.addr, align 4
  %67 = load i32, i32* %ref_flags.addr, align 4
  call void @df_ref_record_1(%struct.df* %60, %struct.rtx_def* %call, %struct.rtx_def** %64, %struct.rtx_def* %65, i32 %66, i32 %67)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.132

if.else:                                          ; preds = %cond.end
  %69 = load %struct.df*, %struct.df** %df.addr, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %71 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %73 = load i32, i32* %ref_type.addr, align 4
  %74 = load i32, i32* %ref_flags.addr, align 4
  call void @df_ref_record_1(%struct.df* %69, %struct.rtx_def* %70, %struct.rtx_def** %71, %struct.rtx_def* %72, i32 %73, i32 %74)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.47, %if.else, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_ref_record_1(%struct.df* %df, %struct.rtx_def* %reg, %struct.rtx_def** %loc, %struct.rtx_def* %insn, i32 %ref_type, i32 %ref_flags) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ref_type.addr = alloca i32, align 4
  %ref_flags.addr = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %ref_type, i32* %ref_type.addr, align 4
  store i32 %ref_flags, i32* %ref_flags.addr, align 4
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = load i32, i32* %ref_type.addr, align 4
  %5 = load i32, i32* %ref_flags.addr, align 4
  %call = call %struct.ref* @df_ref_create(%struct.df* %0, %struct.rtx_def* %1, %struct.rtx_def** %2, %struct.rtx_def* %3, i32 %4, i32 %5)
  ret void
}

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.ref* @df_ref_create(%struct.df* %df, %struct.rtx_def* %reg, %struct.rtx_def** %loc, %struct.rtx_def* %insn, i32 %ref_type, i32 %ref_flags) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ref_type.addr = alloca i32, align 4
  %ref_flags.addr = alloca i32, align 4
  %this_ref = alloca %struct.ref*, align 8
  %uid = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp35 = alloca i8*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %ref_type, i32* %ref_type.addr, align 4
  store i32 %ref_flags, i32* %ref_flags.addr, align 4
  store %struct.obstack* @df_ref_obstack, %struct.obstack** %__h, align 8
  %0 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %0, %struct.obstack** %__o, align 8
  store i32 48, i32* %__len, align 4
  %1 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i32 0, i32 4
  %2 = load i8*, i8** %chunk_limit, align 8
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 3
  %4 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %5 = load i32, i32* %__len, align 4
  %conv = sext i32 %5 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %7 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %__len, align 4
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 3
  %10 = load i8*, i8** %next_free2, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free2, align 8
  %11 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %11, %struct.obstack** %__o1, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 2
  %13 = load i8*, i8** %object_base, align 8
  store i8* %13, i8** %value, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  %15 = load i8*, i8** %next_free5, align 8
  %16 = load i8*, i8** %value, align 8
  %cmp6 = icmp eq i8* %15, %16
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %17 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 3
  %19 = load i8*, i8** %next_free10, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %19 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast11, 0
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 6
  %21 = load i32, i32* %alignment_mask, align 4
  %conv13 = sext i32 %21 to i64
  %add = add nsw i64 %sub.ptr.sub12, %conv13
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask14 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 6
  %23 = load i32, i32* %alignment_mask14, align 4
  %neg = xor i32 %23, -1
  %conv15 = sext i32 %neg to i64
  %and = and i64 %add, %conv15
  %add.ptr16 = getelementptr inbounds i8, i8* null, i64 %and
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 3
  store i8* %add.ptr16, i8** %next_free17, align 8
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 3
  %26 = load i8*, i8** %next_free18, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 1
  %28 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %29 = bitcast %struct._obstack_chunk* %28 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %29 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit22 = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 4
  %31 = load i8*, i8** %chunk_limit22, align 8
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk23 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 1
  %33 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk23, align 8
  %34 = bitcast %struct._obstack_chunk* %33 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %34 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp sgt i64 %sub.ptr.sub21, %sub.ptr.sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.9
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit30 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 4
  %36 = load i8*, i8** %chunk_limit30, align 8
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free31 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 3
  store i8* %36, i8** %next_free31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.9
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  %39 = load i8*, i8** %next_free33, align 8
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base34 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 2
  store i8* %39, i8** %object_base34, align 8
  %41 = load i8*, i8** %value, align 8
  store i8* %41, i8** %tmp35
  %42 = load i8*, i8** %tmp35
  store i8* %42, i8** %tmp
  %43 = load i8*, i8** %tmp
  %44 = bitcast i8* %43 to %struct.ref*
  store %struct.ref* %44, %struct.ref** %this_ref, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %46 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %reg36 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 0
  store %struct.rtx_def* %45, %struct.rtx_def** %reg36, align 8
  %47 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %48 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %loc37 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 2
  store %struct.rtx_def** %47, %struct.rtx_def*** %loc37, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %50 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %insn38 = getelementptr inbounds %struct.ref, %struct.ref* %50, i32 0, i32 1
  store %struct.rtx_def* %49, %struct.rtx_def** %insn38, align 8
  %51 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %51, i32 0, i32 3
  store %struct.df_link* null, %struct.df_link** %chain, align 8
  %52 = load i32, i32* %ref_type.addr, align 4
  %53 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %type = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 4
  store i32 %52, i32* %type, align 4
  %54 = load i32, i32* %ref_flags.addr, align 4
  %55 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %flags = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 6
  store i32 %54, i32* %flags, align 4
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %57 = load i32, i32* %rtint, align 4
  store i32 %57, i32* %uid, align 4
  %58 = load i32, i32* %ref_type.addr, align 4
  %cmp39 = icmp eq i32 %58, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end.32
  %59 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id = getelementptr inbounds %struct.df, %struct.df* %59, i32 0, i32 9
  %60 = load i32, i32* %def_id, align 4
  %61 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_size = getelementptr inbounds %struct.df, %struct.df* %61, i32 0, i32 10
  %62 = load i32, i32* %def_size, align 4
  %cmp42 = icmp uge i32 %60, %62
  br i1 %cmp42, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %if.then.41
  %63 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_size45 = getelementptr inbounds %struct.df, %struct.df* %63, i32 0, i32 10
  %64 = load i32, i32* %def_size45, align 4
  %div = udiv i32 %64, 4
  %65 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_size46 = getelementptr inbounds %struct.df, %struct.df* %65, i32 0, i32 10
  %66 = load i32, i32* %def_size46, align 4
  %add47 = add i32 %66, %div
  store i32 %add47, i32* %def_size46, align 4
  %67 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs = getelementptr inbounds %struct.df, %struct.df* %67, i32 0, i32 2
  %68 = load %struct.ref**, %struct.ref*** %defs, align 8
  %69 = bitcast %struct.ref** %68 to i8*
  %70 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_size48 = getelementptr inbounds %struct.df, %struct.df* %70, i32 0, i32 10
  %71 = load i32, i32* %def_size48, align 4
  %conv49 = zext i32 %71 to i64
  %mul = mul i64 %conv49, 8
  %call = call i8* @xrealloc(i8* %69, i64 %mul)
  %72 = bitcast i8* %call to %struct.ref**
  %73 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs50 = getelementptr inbounds %struct.df, %struct.df* %73, i32 0, i32 2
  store %struct.ref** %72, %struct.ref*** %defs50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %if.then.41
  %74 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id52 = getelementptr inbounds %struct.df, %struct.df* %74, i32 0, i32 9
  %75 = load i32, i32* %def_id52, align 4
  %76 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %76, i32 0, i32 5
  store i32 %75, i32* %id, align 4
  %77 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %78 = load %struct.df*, %struct.df** %df.addr, align 8
  %def_id53 = getelementptr inbounds %struct.df, %struct.df* %78, i32 0, i32 9
  %79 = load i32, i32* %def_id53, align 4
  %inc = add i32 %79, 1
  store i32 %inc, i32* %def_id53, align 4
  %idxprom = zext i32 %79 to i64
  %80 = load %struct.df*, %struct.df** %df.addr, align 8
  %defs54 = getelementptr inbounds %struct.df, %struct.df* %80, i32 0, i32 2
  %81 = load %struct.ref**, %struct.ref*** %defs54, align 8
  %arrayidx55 = getelementptr inbounds %struct.ref*, %struct.ref** %81, i64 %idxprom
  store %struct.ref* %77, %struct.ref** %arrayidx55, align 8
  br label %if.end.76

if.else:                                          ; preds = %if.end.32
  %82 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id = getelementptr inbounds %struct.df, %struct.df* %82, i32 0, i32 12
  %83 = load i32, i32* %use_id, align 4
  %84 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_size = getelementptr inbounds %struct.df, %struct.df* %84, i32 0, i32 13
  %85 = load i32, i32* %use_size, align 4
  %cmp56 = icmp uge i32 %83, %85
  br i1 %cmp56, label %if.then.58, label %if.end.68

if.then.58:                                       ; preds = %if.else
  %86 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_size59 = getelementptr inbounds %struct.df, %struct.df* %86, i32 0, i32 13
  %87 = load i32, i32* %use_size59, align 4
  %div60 = udiv i32 %87, 4
  %88 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_size61 = getelementptr inbounds %struct.df, %struct.df* %88, i32 0, i32 13
  %89 = load i32, i32* %use_size61, align 4
  %add62 = add i32 %89, %div60
  store i32 %add62, i32* %use_size61, align 4
  %90 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses = getelementptr inbounds %struct.df, %struct.df* %90, i32 0, i32 3
  %91 = load %struct.ref**, %struct.ref*** %uses, align 8
  %92 = bitcast %struct.ref** %91 to i8*
  %93 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_size63 = getelementptr inbounds %struct.df, %struct.df* %93, i32 0, i32 13
  %94 = load i32, i32* %use_size63, align 4
  %conv64 = zext i32 %94 to i64
  %mul65 = mul i64 %conv64, 8
  %call66 = call i8* @xrealloc(i8* %92, i64 %mul65)
  %95 = bitcast i8* %call66 to %struct.ref**
  %96 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses67 = getelementptr inbounds %struct.df, %struct.df* %96, i32 0, i32 3
  store %struct.ref** %95, %struct.ref*** %uses67, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.58, %if.else
  %97 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id69 = getelementptr inbounds %struct.df, %struct.df* %97, i32 0, i32 12
  %98 = load i32, i32* %use_id69, align 4
  %99 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %id70 = getelementptr inbounds %struct.ref, %struct.ref* %99, i32 0, i32 5
  store i32 %98, i32* %id70, align 4
  %100 = load %struct.ref*, %struct.ref** %this_ref, align 8
  %101 = load %struct.df*, %struct.df** %df.addr, align 8
  %use_id71 = getelementptr inbounds %struct.df, %struct.df* %101, i32 0, i32 12
  %102 = load i32, i32* %use_id71, align 4
  %inc72 = add i32 %102, 1
  store i32 %inc72, i32* %use_id71, align 4
  %idxprom73 = zext i32 %102 to i64
  %103 = load %struct.df*, %struct.df** %df.addr, align 8
  %uses74 = getelementptr inbounds %struct.df, %struct.df* %103, i32 0, i32 3
  %104 = load %struct.ref**, %struct.ref*** %uses74, align 8
  %arrayidx75 = getelementptr inbounds %struct.ref*, %struct.ref** %104, i64 %idxprom73
  store %struct.ref* %100, %struct.ref** %arrayidx75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.68, %if.end.51
  %105 = load %struct.ref*, %struct.ref** %this_ref, align 8
  ret %struct.ref* %105
}

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @df_bb_refs_record(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %5 = load %struct.df*, %struct.df** %df.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @df_insn_refs_record(%struct.df* %5, %struct.basic_block_def* %6, %struct.rtx_def* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp2 = icmp eq %struct.rtx_def* %8, %10
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %for.end

if.end.5:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.df_link* @df_link_create(%struct.ref* %ref, %struct.df_link* %next) #5 {
entry:
  %ref.addr = alloca %struct.ref*, align 8
  %next.addr = alloca %struct.df_link*, align 8
  %link = alloca %struct.df_link*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp35 = alloca i8*, align 8
  store %struct.ref* %ref, %struct.ref** %ref.addr, align 8
  store %struct.df_link* %next, %struct.df_link** %next.addr, align 8
  store %struct.obstack* @df_ref_obstack, %struct.obstack** %__h, align 8
  %0 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %0, %struct.obstack** %__o, align 8
  store i32 16, i32* %__len, align 4
  %1 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i32 0, i32 4
  %2 = load i8*, i8** %chunk_limit, align 8
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 3
  %4 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %5 = load i32, i32* %__len, align 4
  %conv = sext i32 %5 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %7 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %6, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %__len, align 4
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 3
  %10 = load i8*, i8** %next_free2, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free2, align 8
  %11 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %11, %struct.obstack** %__o1, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %12, i32 0, i32 2
  %13 = load i8*, i8** %object_base, align 8
  store i8* %13, i8** %value, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  %15 = load i8*, i8** %next_free5, align 8
  %16 = load i8*, i8** %value, align 8
  %cmp6 = icmp eq i8* %15, %16
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %17 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 3
  %19 = load i8*, i8** %next_free10, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %19 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast11, 0
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 6
  %21 = load i32, i32* %alignment_mask, align 4
  %conv13 = sext i32 %21 to i64
  %add = add nsw i64 %sub.ptr.sub12, %conv13
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask14 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 6
  %23 = load i32, i32* %alignment_mask14, align 4
  %neg = xor i32 %23, -1
  %conv15 = sext i32 %neg to i64
  %and = and i64 %add, %conv15
  %add.ptr16 = getelementptr inbounds i8, i8* null, i64 %and
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 3
  store i8* %add.ptr16, i8** %next_free17, align 8
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 3
  %26 = load i8*, i8** %next_free18, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 1
  %28 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %29 = bitcast %struct._obstack_chunk* %28 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %29 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit22 = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 4
  %31 = load i8*, i8** %chunk_limit22, align 8
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk23 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 1
  %33 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk23, align 8
  %34 = bitcast %struct._obstack_chunk* %33 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %34 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp sgt i64 %sub.ptr.sub21, %sub.ptr.sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.9
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit30 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 4
  %36 = load i8*, i8** %chunk_limit30, align 8
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free31 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 3
  store i8* %36, i8** %next_free31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.9
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  %39 = load i8*, i8** %next_free33, align 8
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base34 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 2
  store i8* %39, i8** %object_base34, align 8
  %41 = load i8*, i8** %value, align 8
  store i8* %41, i8** %tmp35
  %42 = load i8*, i8** %tmp35
  store i8* %42, i8** %tmp
  %43 = load i8*, i8** %tmp
  %44 = bitcast i8* %43 to %struct.df_link*
  store %struct.df_link* %44, %struct.df_link** %link, align 8
  %45 = load %struct.df_link*, %struct.df_link** %next.addr, align 8
  %46 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next36 = getelementptr inbounds %struct.df_link, %struct.df_link* %46, i32 0, i32 0
  store %struct.df_link* %45, %struct.df_link** %next36, align 8
  %47 = load %struct.ref*, %struct.ref** %ref.addr, align 8
  %48 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref37 = getelementptr inbounds %struct.df_link, %struct.df_link* %48, i32 0, i32 1
  store %struct.ref* %47, %struct.ref** %ref37, align 8
  %49 = load %struct.df_link*, %struct.df_link** %link, align 8
  ret %struct.df_link* %49
}

; Function Attrs: nounwind uwtable
define internal i32 @df_bb_luids_set(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %luid = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 0, i32* %luid, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %5 = load i32, i32* %luid, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %luid, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %7 = load i32, i32* %rtint, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %8, i32 0, i32 7
  %9 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx4 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %9, i64 %idxprom3
  %luid5 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx4, i32 0, i32 2
  store i32 %5, i32* %luid5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond
  %10 = load i32, i32* %luid, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %12 = load i32, i32* %rtint8, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns10 = getelementptr inbounds %struct.df, %struct.df* %13, i32 0, i32 7
  %14 = load %struct.insn_info*, %struct.insn_info** %insns10, align 8
  %arrayidx11 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %14, i64 %idxprom9
  %luid12 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx11, i32 0, i32 2
  store i32 %10, i32* %luid12, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp13 = icmp eq %struct.rtx_def* %15, %17
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  br label %for.end

if.end.16:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.15
  %20 = load i32, i32* %luid, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @df_bb_reg_def_chain_create(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.df_link*, align 8
  %uid = alloca i32, align 4
  %def = alloca %struct.ref*, align 8
  %dregno = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %3, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %for.body, label %for.end.33

for.body:                                         ; preds = %land.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %9 = load i32, i32* %rtint, align 4
  store i32 %9, i32* %uid, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %12 to i32
  %cmp4 = icmp eq i32 %conv, 105
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.29

if.end:                                           ; preds = %for.body
  %13 = load i32, i32* %uid, align 4
  %idxprom6 = zext i32 %13 to i64
  %14 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %14, i32 0, i32 7
  %15 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx7 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %15, i64 %idxprom6
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx7, i32 0, i32 0
  %16 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %16, %struct.df_link** %link, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %17 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool9 = icmp ne %struct.df_link* %17, null
  br i1 %tobool9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %18 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %18, i32 0, i32 1
  %19 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %19, %struct.ref** %def, align 8
  %20 = load %struct.ref*, %struct.ref** %def, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %20, i32 0, i32 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load11 = load i32, i32* %22, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 63
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.10
  %23 = load %struct.ref*, %struct.ref** %def, align 8
  %reg15 = getelementptr inbounds %struct.ref, %struct.ref* %23, i32 0, i32 0
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.10
  %26 = load %struct.ref*, %struct.ref** %def, align 8
  %reg19 = getelementptr inbounds %struct.ref, %struct.ref* %26, i32 0, i32 0
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg19, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %25, %cond.true ], [ %27, %cond.false ]
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %28 = load i32, i32* %rtuint, align 4
  store i32 %28, i32* %dregno, align 4
  %29 = load %struct.ref*, %struct.ref** %def, align 8
  %30 = load i32, i32* %dregno, align 4
  %idxprom22 = zext i32 %30 to i64
  %31 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %31, i32 0, i32 5
  %32 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx23 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %32, i64 %idxprom22
  %defs24 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx23, i32 0, i32 0
  %33 = load %struct.df_link*, %struct.df_link** %defs24, align 8
  %call = call %struct.df_link* @df_link_create(%struct.ref* %29, %struct.df_link* %33)
  %34 = load i32, i32* %dregno, align 4
  %idxprom25 = zext i32 %34 to i64
  %35 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs26 = getelementptr inbounds %struct.df, %struct.df* %35, i32 0, i32 5
  %36 = load %struct.reg_info*, %struct.reg_info** %regs26, align 8
  %arrayidx27 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %36, i64 %idxprom25
  %defs28 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx27, i32 0, i32 0
  store %struct.df_link* %call, %struct.df_link** %defs28, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %37 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %37, i32 0, i32 0
  %38 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %38, %struct.df_link** %link, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end, %if.then
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.33:                                       ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_bb_reg_use_chain_create(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.df_link*, align 8
  %uid = alloca i32, align 4
  %use = alloca %struct.ref*, align 8
  %uregno = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %3, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %for.body, label %for.end.33

for.body:                                         ; preds = %land.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %9 = load i32, i32* %rtint, align 4
  store i32 %9, i32* %uid, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %12 to i32
  %cmp4 = icmp eq i32 %conv, 105
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.29

if.end:                                           ; preds = %for.body
  %13 = load i32, i32* %uid, align 4
  %idxprom6 = zext i32 %13 to i64
  %14 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %14, i32 0, i32 7
  %15 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx7 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %15, i64 %idxprom6
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx7, i32 0, i32 1
  %16 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %16, %struct.df_link** %link, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %17 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool9 = icmp ne %struct.df_link* %17, null
  br i1 %tobool9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %18 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %18, i32 0, i32 1
  %19 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %19, %struct.ref** %use, align 8
  %20 = load %struct.ref*, %struct.ref** %use, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %20, i32 0, i32 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load11 = load i32, i32* %22, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 63
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.10
  %23 = load %struct.ref*, %struct.ref** %use, align 8
  %reg15 = getelementptr inbounds %struct.ref, %struct.ref* %23, i32 0, i32 0
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.10
  %26 = load %struct.ref*, %struct.ref** %use, align 8
  %reg19 = getelementptr inbounds %struct.ref, %struct.ref* %26, i32 0, i32 0
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg19, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %25, %cond.true ], [ %27, %cond.false ]
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %28 = load i32, i32* %rtuint, align 4
  store i32 %28, i32* %uregno, align 4
  %29 = load %struct.ref*, %struct.ref** %use, align 8
  %30 = load i32, i32* %uregno, align 4
  %idxprom22 = zext i32 %30 to i64
  %31 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %31, i32 0, i32 5
  %32 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx23 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %32, i64 %idxprom22
  %uses24 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx23, i32 0, i32 1
  %33 = load %struct.df_link*, %struct.df_link** %uses24, align 8
  %call = call %struct.df_link* @df_link_create(%struct.ref* %29, %struct.df_link* %33)
  %34 = load i32, i32* %uregno, align 4
  %idxprom25 = zext i32 %34 to i64
  %35 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs26 = getelementptr inbounds %struct.df, %struct.df* %35, i32 0, i32 5
  %36 = load %struct.reg_info*, %struct.reg_info** %regs26, align 8
  %arrayidx27 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %36, i64 %idxprom25
  %uses28 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx27, i32 0, i32 1
  store %struct.df_link* %call, %struct.df_link** %uses28, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %37 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %37, i32 0, i32 0
  %38 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %38, %struct.df_link** %link, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end, %if.then
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 2
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.33:                                       ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_bb_rd_local_compute(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  %def_link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  %regno = alloca i32, align 4
  %def2_link = alloca %struct.df_link*, align 8
  %def2 = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 1
  %3 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx = getelementptr inbounds %struct.bb_info, %struct.bb_info* %3, i64 %idxprom
  store %struct.bb_info* %arrayidx, %struct.bb_info** %bb_info, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %7, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %for.body, label %for.end.41

for.body:                                         ; preds = %land.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %13 = load i32, i32* %rtint, align 4
  store i32 %13, i32* %uid, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom4 = sext i32 %bf.clear to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %16 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %16 to i32
  %cmp6 = icmp eq i32 %conv, 105
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.37

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %uid, align 4
  %idxprom8 = zext i32 %17 to i64
  %18 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %18, i32 0, i32 7
  %19 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx9 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %19, i64 %idxprom8
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx9, i32 0, i32 0
  %20 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %20, %struct.df_link** %def_link, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.34, %if.end
  %21 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %tobool11 = icmp ne %struct.df_link* %21, null
  br i1 %tobool11, label %for.body.12, label %for.end.36

for.body.12:                                      ; preds = %for.cond.10
  %22 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %22, i32 0, i32 1
  %23 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %23, %struct.ref** %def, align 8
  %24 = load %struct.ref*, %struct.ref** %def, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %24, i32 0, i32 0
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load13 = load i32, i32* %26, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 63
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.12
  %27 = load %struct.ref*, %struct.ref** %def, align 8
  %reg17 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 0
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.12
  %30 = load %struct.ref*, %struct.ref** %def, align 8
  %reg21 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %29, %cond.true ], [ %31, %cond.false ]
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %32 = load i32, i32* %rtuint, align 4
  store i32 %32, i32* %regno, align 4
  %33 = load i32, i32* %regno, align 4
  %idxprom24 = zext i32 %33 to i64
  %34 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %34, i32 0, i32 5
  %35 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx25 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %35, i64 %idxprom24
  %defs26 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx25, i32 0, i32 0
  %36 = load %struct.df_link*, %struct.df_link** %defs26, align 8
  store %struct.df_link* %36, %struct.df_link** %def2_link, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %cond.end
  %37 = load %struct.df_link*, %struct.df_link** %def2_link, align 8
  %tobool28 = icmp ne %struct.df_link* %37, null
  br i1 %tobool28, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.27
  %38 = load %struct.df_link*, %struct.df_link** %def2_link, align 8
  %ref30 = getelementptr inbounds %struct.df_link, %struct.df_link* %38, i32 0, i32 1
  %39 = load %struct.ref*, %struct.ref** %ref30, align 8
  store %struct.ref* %39, %struct.ref** %def2, align 8
  %40 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %40, i32 0, i32 0
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_kill, align 8
  %42 = load %struct.ref*, %struct.ref** %def2, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %42, i32 0, i32 5
  %43 = load i32, i32* %id, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %41, i32 %43)
  %44 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %44, i32 0, i32 1
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_gen, align 8
  %46 = load %struct.ref*, %struct.ref** %def2, align 8
  %id31 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 5
  %47 = load i32, i32* %id31, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %45, i32 %47)
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %48 = load %struct.df_link*, %struct.df_link** %def2_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %48, i32 0, i32 0
  %49 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %49, %struct.df_link** %def2_link, align 8
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  %50 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_gen32 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %50, i32 0, i32 1
  %51 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_gen32, align 8
  %52 = load %struct.ref*, %struct.ref** %def, align 8
  %id33 = getelementptr inbounds %struct.ref, %struct.ref* %52, i32 0, i32 5
  %53 = load i32, i32* %id33, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %51, i32 %53)
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %54 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %next35 = getelementptr inbounds %struct.df_link, %struct.df_link* %54, i32 0, i32 0
  %55 = load %struct.df_link*, %struct.df_link** %next35, align 8
  store %struct.df_link* %55, %struct.df_link** %def_link, align 8
  br label %for.cond.10

for.end.36:                                       ; preds = %for.cond.10
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36, %if.then
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 2
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.41:                                       ; preds = %land.end
  %58 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_valid = getelementptr inbounds %struct.bb_info, %struct.bb_info* %58, i32 0, i32 12
  store i32 1, i32* %rd_valid, align 4
  ret void
}

declare i32 @bitmap_union_of_diff(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define internal void @df_bb_ud_chain_create(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  %reg_def_last = alloca %struct.ref**, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  %use_link = alloca %struct.df_link*, align 8
  %def_link = alloca %struct.df_link*, align 8
  %use = alloca %struct.ref*, align 8
  %regno = alloca i32, align 4
  %def = alloca %struct.ref*, align 8
  %def58 = alloca %struct.ref*, align 8
  %dregno = alloca i32, align 4
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 1
  %3 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx = getelementptr inbounds %struct.bb_info, %struct.bb_info* %3, i64 %idxprom
  store %struct.bb_info* %arrayidx, %struct.bb_info** %bb_info, align 8
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %reg_def_last1 = getelementptr inbounds %struct.df, %struct.df* %4, i32 0, i32 4
  %5 = load %struct.ref**, %struct.ref*** %reg_def_last1, align 8
  store %struct.ref** %5, %struct.ref*** %reg_def_last, align 8
  %6 = load %struct.ref**, %struct.ref*** %reg_def_last, align 8
  %7 = bitcast %struct.ref** %6 to i8*
  %8 = load %struct.df*, %struct.df** %df.addr, align 8
  %n_regs = getelementptr inbounds %struct.df, %struct.df* %8, i32 0, i32 16
  %9 = load i32, i32* %n_regs, align 4
  %conv = zext i32 %9 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul, i32 8, i1 false)
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.82, %entry
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %13, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %17, label %for.body, label %for.end.86

for.body:                                         ; preds = %land.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %19 = load i32, i32* %rtint, align 4
  store i32 %19, i32* %uid, align 4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load = load i32, i32* %21, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom6 = sext i32 %bf.clear to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom6
  %22 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %22 to i32
  %cmp9 = icmp eq i32 %conv8, 105
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.82

if.end:                                           ; preds = %for.body
  %23 = load i32, i32* %uid, align 4
  %idxprom11 = zext i32 %23 to i64
  %24 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 7
  %25 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx12 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %25, i64 %idxprom11
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx12, i32 0, i32 1
  %26 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %26, %struct.df_link** %use_link, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.48, %if.end
  %27 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %tobool14 = icmp ne %struct.df_link* %27, null
  br i1 %tobool14, label %for.body.15, label %for.end.50

for.body.15:                                      ; preds = %for.cond.13
  %28 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %28, i32 0, i32 1
  %29 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %29, %struct.ref** %use, align 8
  %30 = load %struct.ref*, %struct.ref** %use, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load16 = load i32, i32* %32, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 63
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.15
  %33 = load %struct.ref*, %struct.ref** %use, align 8
  %reg20 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.15
  %36 = load %struct.ref*, %struct.ref** %use, align 8
  %reg24 = getelementptr inbounds %struct.ref, %struct.ref* %36, i32 0, i32 0
  %37 = load %struct.rtx_def*, %struct.rtx_def** %reg24, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %35, %cond.true ], [ %37, %cond.false ]
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %38 = load i32, i32* %rtuint, align 4
  store i32 %38, i32* %regno, align 4
  %39 = load %struct.ref*, %struct.ref** %use, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %39, i32 0, i32 3
  store %struct.df_link* null, %struct.df_link** %chain, align 8
  %40 = load i32, i32* %regno, align 4
  %idxprom27 = zext i32 %40 to i64
  %41 = load %struct.ref**, %struct.ref*** %reg_def_last, align 8
  %arrayidx28 = getelementptr inbounds %struct.ref*, %struct.ref** %41, i64 %idxprom27
  %42 = load %struct.ref*, %struct.ref** %arrayidx28, align 8
  %tobool29 = icmp ne %struct.ref* %42, null
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %cond.end
  %43 = load i32, i32* %regno, align 4
  %idxprom31 = zext i32 %43 to i64
  %44 = load %struct.ref**, %struct.ref*** %reg_def_last, align 8
  %arrayidx32 = getelementptr inbounds %struct.ref*, %struct.ref** %44, i64 %idxprom31
  %45 = load %struct.ref*, %struct.ref** %arrayidx32, align 8
  %call = call %struct.df_link* @df_link_create(%struct.ref* %45, %struct.df_link* null)
  %46 = load %struct.ref*, %struct.ref** %use, align 8
  %chain33 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 3
  store %struct.df_link* %call, %struct.df_link** %chain33, align 8
  br label %if.end.47

if.else:                                          ; preds = %cond.end
  %47 = load i32, i32* %regno, align 4
  %idxprom34 = zext i32 %47 to i64
  %48 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %48, i32 0, i32 5
  %49 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx35 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %49, i64 %idxprom34
  %defs = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx35, i32 0, i32 0
  %50 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %50, %struct.df_link** %def_link, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc, %if.else
  %51 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %tobool37 = icmp ne %struct.df_link* %51, null
  br i1 %tobool37, label %for.body.38, label %for.end

for.body.38:                                      ; preds = %for.cond.36
  %52 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %ref39 = getelementptr inbounds %struct.df_link, %struct.df_link* %52, i32 0, i32 1
  %53 = load %struct.ref*, %struct.ref** %ref39, align 8
  store %struct.ref* %53, %struct.ref** %def, align 8
  %54 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %rd_in = getelementptr inbounds %struct.bb_info, %struct.bb_info* %54, i32 0, i32 2
  %55 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %rd_in, align 8
  %56 = load %struct.ref*, %struct.ref** %def, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %56, i32 0, i32 5
  %57 = load i32, i32* %id, align 4
  %call40 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %55, i32 %57)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %for.body.38
  %58 = load %struct.ref*, %struct.ref** %def, align 8
  %59 = load %struct.ref*, %struct.ref** %use, align 8
  %chain43 = getelementptr inbounds %struct.ref, %struct.ref* %59, i32 0, i32 3
  %60 = load %struct.df_link*, %struct.df_link** %chain43, align 8
  %call44 = call %struct.df_link* @df_link_create(%struct.ref* %58, %struct.df_link* %60)
  %61 = load %struct.ref*, %struct.ref** %use, align 8
  %chain45 = getelementptr inbounds %struct.ref, %struct.ref* %61, i32 0, i32 3
  store %struct.df_link* %call44, %struct.df_link** %chain45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %for.body.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %62 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %62, i32 0, i32 0
  %63 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %63, %struct.df_link** %def_link, align 8
  br label %for.cond.36

for.end:                                          ; preds = %for.cond.36
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %if.then.30
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %64 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %next49 = getelementptr inbounds %struct.df_link, %struct.df_link* %64, i32 0, i32 0
  %65 = load %struct.df_link*, %struct.df_link** %next49, align 8
  store %struct.df_link* %65, %struct.df_link** %use_link, align 8
  br label %for.cond.13

for.end.50:                                       ; preds = %for.cond.13
  %66 = load i32, i32* %uid, align 4
  %idxprom51 = zext i32 %66 to i64
  %67 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns52 = getelementptr inbounds %struct.df, %struct.df* %67, i32 0, i32 7
  %68 = load %struct.insn_info*, %struct.insn_info** %insns52, align 8
  %arrayidx53 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %68, i64 %idxprom51
  %defs54 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx53, i32 0, i32 0
  %69 = load %struct.df_link*, %struct.df_link** %defs54, align 8
  store %struct.df_link* %69, %struct.df_link** %def_link, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.79, %for.end.50
  %70 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %tobool56 = icmp ne %struct.df_link* %70, null
  br i1 %tobool56, label %for.body.57, label %for.end.81

for.body.57:                                      ; preds = %for.cond.55
  %71 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %ref59 = getelementptr inbounds %struct.df_link, %struct.df_link* %71, i32 0, i32 1
  %72 = load %struct.ref*, %struct.ref** %ref59, align 8
  store %struct.ref* %72, %struct.ref** %def58, align 8
  %73 = load %struct.ref*, %struct.ref** %def58, align 8
  %reg60 = getelementptr inbounds %struct.ref, %struct.ref* %73, i32 0, i32 0
  %74 = load %struct.rtx_def*, %struct.rtx_def** %reg60, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load61 = load i32, i32* %75, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 63
  br i1 %cmp63, label %cond.true.65, label %cond.false.70

cond.true.65:                                     ; preds = %for.body.57
  %76 = load %struct.ref*, %struct.ref** %def58, align 8
  %reg66 = getelementptr inbounds %struct.ref, %struct.ref* %76, i32 0, i32 0
  %77 = load %struct.rtx_def*, %struct.rtx_def** %reg66, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  br label %cond.end.72

cond.false.70:                                    ; preds = %for.body.57
  %79 = load %struct.ref*, %struct.ref** %def58, align 8
  %reg71 = getelementptr inbounds %struct.ref, %struct.ref* %79, i32 0, i32 0
  %80 = load %struct.rtx_def*, %struct.rtx_def** %reg71, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.65
  %cond73 = phi %struct.rtx_def* [ %78, %cond.true.65 ], [ %80, %cond.false.70 ]
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond73, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtuint76 = bitcast %union.rtunion_def* %arrayidx75 to i32*
  %81 = load i32, i32* %rtuint76, align 4
  store i32 %81, i32* %dregno, align 4
  %82 = load %struct.ref*, %struct.ref** %def58, align 8
  %83 = load i32, i32* %dregno, align 4
  %idxprom77 = sext i32 %83 to i64
  %84 = load %struct.ref**, %struct.ref*** %reg_def_last, align 8
  %arrayidx78 = getelementptr inbounds %struct.ref*, %struct.ref** %84, i64 %idxprom77
  store %struct.ref* %82, %struct.ref** %arrayidx78, align 8
  br label %for.inc.79

for.inc.79:                                       ; preds = %cond.end.72
  %85 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %next80 = getelementptr inbounds %struct.df_link, %struct.df_link* %85, i32 0, i32 0
  %86 = load %struct.df_link*, %struct.df_link** %next80, align 8
  store %struct.df_link* %86, %struct.df_link** %def_link, align 8
  br label %for.cond.55

for.end.81:                                       ; preds = %for.cond.55
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.end.81, %if.then
  %87 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 2
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  store %struct.rtx_def* %88, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.86:                                       ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_bb_ru_local_compute(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  %def_link = alloca %struct.df_link*, align 8
  %use_link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  %dregno = alloca i32, align 4
  %use = alloca %struct.ref*, align 8
  %use41 = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 1
  %3 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx = getelementptr inbounds %struct.bb_info, %struct.bb_info* %3, i64 %idxprom
  store %struct.bb_info* %arrayidx, %struct.bb_info** %bb_info, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %7, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %for.body, label %for.end.52

for.body:                                         ; preds = %land.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %13 = load i32, i32* %rtint, align 4
  store i32 %13, i32* %uid, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom4 = sext i32 %bf.clear to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %16 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %16 to i32
  %cmp6 = icmp eq i32 %conv, 105
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.48

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %uid, align 4
  %idxprom8 = zext i32 %17 to i64
  %18 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %18, i32 0, i32 7
  %19 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx9 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %19, i64 %idxprom8
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx9, i32 0, i32 0
  %20 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %20, %struct.df_link** %def_link, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.31, %if.end
  %21 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %tobool11 = icmp ne %struct.df_link* %21, null
  br i1 %tobool11, label %for.body.12, label %for.end.33

for.body.12:                                      ; preds = %for.cond.10
  %22 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %22, i32 0, i32 1
  %23 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %23, %struct.ref** %def, align 8
  %24 = load %struct.ref*, %struct.ref** %def, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %24, i32 0, i32 0
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load13 = load i32, i32* %26, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 63
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.12
  %27 = load %struct.ref*, %struct.ref** %def, align 8
  %reg17 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 0
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.12
  %30 = load %struct.ref*, %struct.ref** %def, align 8
  %reg21 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %29, %cond.true ], [ %31, %cond.false ]
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %32 = load i32, i32* %rtuint, align 4
  store i32 %32, i32* %dregno, align 4
  %33 = load i32, i32* %dregno, align 4
  %idxprom24 = zext i32 %33 to i64
  %34 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %34, i32 0, i32 5
  %35 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx25 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %35, i64 %idxprom24
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx25, i32 0, i32 1
  %36 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %36, %struct.df_link** %use_link, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %cond.end
  %37 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %tobool27 = icmp ne %struct.df_link* %37, null
  br i1 %tobool27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.26
  %38 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %ref29 = getelementptr inbounds %struct.df_link, %struct.df_link* %38, i32 0, i32 1
  %39 = load %struct.ref*, %struct.ref** %ref29, align 8
  store %struct.ref* %39, %struct.ref** %use, align 8
  %40 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_kill = getelementptr inbounds %struct.bb_info, %struct.bb_info* %40, i32 0, i32 4
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_kill, align 8
  %42 = load %struct.ref*, %struct.ref** %use, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %42, i32 0, i32 5
  %43 = load i32, i32* %id, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %41, i32 %43)
  %44 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen = getelementptr inbounds %struct.bb_info, %struct.bb_info* %44, i32 0, i32 5
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_gen, align 8
  %46 = load %struct.ref*, %struct.ref** %use, align 8
  %id30 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 5
  %47 = load i32, i32* %id30, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %45, i32 %47)
  br label %for.inc

for.inc:                                          ; preds = %for.body.28
  %48 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %48, i32 0, i32 0
  %49 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %49, %struct.df_link** %use_link, align 8
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %50 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %next32 = getelementptr inbounds %struct.df_link, %struct.df_link* %50, i32 0, i32 0
  %51 = load %struct.df_link*, %struct.df_link** %next32, align 8
  store %struct.df_link* %51, %struct.df_link** %def_link, align 8
  br label %for.cond.10

for.end.33:                                       ; preds = %for.cond.10
  %52 = load i32, i32* %uid, align 4
  %idxprom34 = zext i32 %52 to i64
  %53 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns35 = getelementptr inbounds %struct.df, %struct.df* %53, i32 0, i32 7
  %54 = load %struct.insn_info*, %struct.insn_info** %insns35, align 8
  %arrayidx36 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %54, i64 %idxprom34
  %uses37 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx36, i32 0, i32 1
  %55 = load %struct.df_link*, %struct.df_link** %uses37, align 8
  store %struct.df_link* %55, %struct.df_link** %use_link, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.45, %for.end.33
  %56 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %tobool39 = icmp ne %struct.df_link* %56, null
  br i1 %tobool39, label %for.body.40, label %for.end.47

for.body.40:                                      ; preds = %for.cond.38
  %57 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %ref42 = getelementptr inbounds %struct.df_link, %struct.df_link* %57, i32 0, i32 1
  %58 = load %struct.ref*, %struct.ref** %ref42, align 8
  store %struct.ref* %58, %struct.ref** %use41, align 8
  %59 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_gen43 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %59, i32 0, i32 5
  %60 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_gen43, align 8
  %61 = load %struct.ref*, %struct.ref** %use41, align 8
  %id44 = getelementptr inbounds %struct.ref, %struct.ref* %61, i32 0, i32 5
  %62 = load i32, i32* %id44, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %60, i32 %62)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.40
  %63 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %next46 = getelementptr inbounds %struct.df_link, %struct.df_link* %63, i32 0, i32 0
  %64 = load %struct.df_link*, %struct.df_link** %next46, align 8
  store %struct.df_link* %64, %struct.df_link** %use_link, align 8
  br label %for.cond.38

for.end.47:                                       ; preds = %for.cond.38
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.47, %if.then
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.52:                                       ; preds = %land.end
  %67 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_valid = getelementptr inbounds %struct.bb_info, %struct.bb_info* %67, i32 0, i32 13
  store i32 1, i32* %ru_valid, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_bb_du_chain_create(%struct.df* %df, %struct.basic_block_def* %bb, %struct.bitmap_head_def* %ru) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %ru.addr = alloca %struct.bitmap_head_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %def_link = alloca %struct.df_link*, align 8
  %use_link = alloca %struct.df_link*, align 8
  %uid = alloca i32, align 4
  %def = alloca %struct.ref*, align 8
  %dregno = alloca i32, align 4
  %use = alloca %struct.ref*, align 8
  %use47 = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.bitmap_head_def* %ru, %struct.bitmap_head_def** %ru.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 1
  %3 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx = getelementptr inbounds %struct.bb_info, %struct.bb_info* %3, i64 %idxprom
  store %struct.bb_info* %arrayidx, %struct.bb_info** %bb_info, align 8
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru.addr, align 8
  %5 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %ru_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %5, i32 0, i32 7
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru_out, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %4, %struct.bitmap_head_def* %6)
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %10, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %14, label %for.body, label %for.end.57

for.body:                                         ; preds = %land.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %16 = load i32, i32* %rtint, align 4
  store i32 %16, i32* %uid, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load = load i32, i32* %18, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom4 = sext i32 %bf.clear to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %19 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %19 to i32
  %cmp6 = icmp eq i32 %conv, 105
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.53

if.end:                                           ; preds = %for.body
  %20 = load i32, i32* %uid, align 4
  %idxprom8 = zext i32 %20 to i64
  %21 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %21, i32 0, i32 7
  %22 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx9 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %22, i64 %idxprom8
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx9, i32 0, i32 0
  %23 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %23, %struct.df_link** %def_link, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.37, %if.end
  %24 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %tobool11 = icmp ne %struct.df_link* %24, null
  br i1 %tobool11, label %for.body.12, label %for.end.39

for.body.12:                                      ; preds = %for.cond.10
  %25 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %25, i32 0, i32 1
  %26 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %26, %struct.ref** %def, align 8
  %27 = load %struct.ref*, %struct.ref** %def, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 0
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load13 = load i32, i32* %29, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 63
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.12
  %30 = load %struct.ref*, %struct.ref** %def, align 8
  %reg17 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.12
  %33 = load %struct.ref*, %struct.ref** %def, align 8
  %reg21 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %32, %cond.true ], [ %34, %cond.false ]
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %35 = load i32, i32* %rtuint, align 4
  store i32 %35, i32* %dregno, align 4
  %36 = load %struct.ref*, %struct.ref** %def, align 8
  %chain = getelementptr inbounds %struct.ref, %struct.ref* %36, i32 0, i32 3
  store %struct.df_link* null, %struct.df_link** %chain, align 8
  %37 = load i32, i32* %dregno, align 4
  %idxprom24 = zext i32 %37 to i64
  %38 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %38, i32 0, i32 5
  %39 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  %arrayidx25 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %39, i64 %idxprom24
  %uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx25, i32 0, i32 1
  %40 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %40, %struct.df_link** %use_link, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %cond.end
  %41 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %tobool27 = icmp ne %struct.df_link* %41, null
  br i1 %tobool27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.26
  %42 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %ref29 = getelementptr inbounds %struct.df_link, %struct.df_link* %42, i32 0, i32 1
  %43 = load %struct.ref*, %struct.ref** %ref29, align 8
  store %struct.ref* %43, %struct.ref** %use, align 8
  %44 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru.addr, align 8
  %45 = load %struct.ref*, %struct.ref** %use, align 8
  %id = getelementptr inbounds %struct.ref, %struct.ref* %45, i32 0, i32 5
  %46 = load i32, i32* %id, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %44, i32 %46)
  %tobool30 = icmp ne i32 %call, 0
  br i1 %tobool30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %for.body.28
  %47 = load %struct.ref*, %struct.ref** %use, align 8
  %48 = load %struct.ref*, %struct.ref** %def, align 8
  %chain32 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 3
  %49 = load %struct.df_link*, %struct.df_link** %chain32, align 8
  %call33 = call %struct.df_link* @df_link_create(%struct.ref* %47, %struct.df_link* %49)
  %50 = load %struct.ref*, %struct.ref** %def, align 8
  %chain34 = getelementptr inbounds %struct.ref, %struct.ref* %50, i32 0, i32 3
  store %struct.df_link* %call33, %struct.df_link** %chain34, align 8
  %51 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru.addr, align 8
  %52 = load %struct.ref*, %struct.ref** %use, align 8
  %id35 = getelementptr inbounds %struct.ref, %struct.ref* %52, i32 0, i32 5
  %53 = load i32, i32* %id35, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %51, i32 %53)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.31, %for.body.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %54 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %54, i32 0, i32 0
  %55 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %55, %struct.df_link** %use_link, align 8
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end
  %56 = load %struct.df_link*, %struct.df_link** %def_link, align 8
  %next38 = getelementptr inbounds %struct.df_link, %struct.df_link* %56, i32 0, i32 0
  %57 = load %struct.df_link*, %struct.df_link** %next38, align 8
  store %struct.df_link* %57, %struct.df_link** %def_link, align 8
  br label %for.cond.10

for.end.39:                                       ; preds = %for.cond.10
  %58 = load i32, i32* %uid, align 4
  %idxprom40 = zext i32 %58 to i64
  %59 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns41 = getelementptr inbounds %struct.df, %struct.df* %59, i32 0, i32 7
  %60 = load %struct.insn_info*, %struct.insn_info** %insns41, align 8
  %arrayidx42 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %60, i64 %idxprom40
  %uses43 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx42, i32 0, i32 1
  %61 = load %struct.df_link*, %struct.df_link** %uses43, align 8
  store %struct.df_link* %61, %struct.df_link** %use_link, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.50, %for.end.39
  %62 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %tobool45 = icmp ne %struct.df_link* %62, null
  br i1 %tobool45, label %for.body.46, label %for.end.52

for.body.46:                                      ; preds = %for.cond.44
  %63 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %ref48 = getelementptr inbounds %struct.df_link, %struct.df_link* %63, i32 0, i32 1
  %64 = load %struct.ref*, %struct.ref** %ref48, align 8
  store %struct.ref* %64, %struct.ref** %use47, align 8
  %65 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %ru.addr, align 8
  %66 = load %struct.ref*, %struct.ref** %use47, align 8
  %id49 = getelementptr inbounds %struct.ref, %struct.ref* %66, i32 0, i32 5
  %67 = load i32, i32* %id49, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %65, i32 %67)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.46
  %68 = load %struct.df_link*, %struct.df_link** %use_link, align 8
  %next51 = getelementptr inbounds %struct.df_link, %struct.df_link* %68, i32 0, i32 0
  %69 = load %struct.df_link*, %struct.df_link** %next51, align 8
  store %struct.df_link* %69, %struct.df_link** %use_link, align 8
  br label %for.cond.44

for.end.52:                                       ; preds = %for.cond.44
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52, %if.then
  %70 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  store %struct.rtx_def* %71, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.57:                                       ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_bb_lr_local_compute(%struct.df* %df, %struct.basic_block_def* %bb) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  %dregno = alloca i32, align 4
  %use = alloca %struct.ref*, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %2, i32 0, i32 1
  %3 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx = getelementptr inbounds %struct.bb_info, %struct.bb_info* %3, i64 %idxprom
  store %struct.bb_info* %arrayidx, %struct.bb_info** %bb_info, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %7, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %for.body, label %for.end.56

for.body:                                         ; preds = %land.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %13 = load i32, i32* %rtint, align 4
  store i32 %13, i32* %uid, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom4 = sext i32 %bf.clear to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %16 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %16 to i32
  %cmp6 = icmp eq i32 %conv, 105
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.52

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %uid, align 4
  %idxprom8 = zext i32 %17 to i64
  %18 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %18, i32 0, i32 7
  %19 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx9 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %19, i64 %idxprom8
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx9, i32 0, i32 0
  %20 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %20, %struct.df_link** %link, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end
  %21 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool11 = icmp ne %struct.df_link* %21, null
  br i1 %tobool11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %22 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %22, i32 0, i32 1
  %23 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %23, %struct.ref** %def, align 8
  %24 = load %struct.ref*, %struct.ref** %def, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %24, i32 0, i32 0
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load13 = load i32, i32* %26, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 63
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.12
  %27 = load %struct.ref*, %struct.ref** %def, align 8
  %reg17 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 0
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.12
  %30 = load %struct.ref*, %struct.ref** %def, align 8
  %reg21 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %29, %cond.true ], [ %31, %cond.false ]
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %32 = load i32, i32* %rtuint, align 4
  store i32 %32, i32* %dregno, align 4
  %33 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_def = getelementptr inbounds %struct.bb_info, %struct.bb_info* %33, i32 0, i32 8
  %34 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_def, align 8
  %35 = load i32, i32* %dregno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %34, i32 %35)
  %36 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use = getelementptr inbounds %struct.bb_info, %struct.bb_info* %36, i32 0, i32 9
  %37 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_use, align 8
  %38 = load i32, i32* %dregno, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %37, i32 %38)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %39 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %39, i32 0, i32 0
  %40 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %40, %struct.df_link** %link, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %41 = load i32, i32* %uid, align 4
  %idxprom24 = zext i32 %41 to i64
  %42 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns25 = getelementptr inbounds %struct.df, %struct.df* %42, i32 0, i32 7
  %43 = load %struct.insn_info*, %struct.insn_info** %insns25, align 8
  %arrayidx26 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %43, i64 %idxprom24
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx26, i32 0, i32 1
  %44 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %44, %struct.df_link** %link, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.49, %for.end
  %45 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool28 = icmp ne %struct.df_link* %45, null
  br i1 %tobool28, label %for.body.29, label %for.end.51

for.body.29:                                      ; preds = %for.cond.27
  %46 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref30 = getelementptr inbounds %struct.df_link, %struct.df_link* %46, i32 0, i32 1
  %47 = load %struct.ref*, %struct.ref** %ref30, align 8
  store %struct.ref* %47, %struct.ref** %use, align 8
  %48 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_use31 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %48, i32 0, i32 9
  %49 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_use31, align 8
  %50 = load %struct.ref*, %struct.ref** %use, align 8
  %reg32 = getelementptr inbounds %struct.ref, %struct.ref* %50, i32 0, i32 0
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg32, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load33 = load i32, i32* %52, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 63
  br i1 %cmp35, label %cond.true.37, label %cond.false.42

cond.true.37:                                     ; preds = %for.body.29
  %53 = load %struct.ref*, %struct.ref** %use, align 8
  %reg38 = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 0
  %54 = load %struct.rtx_def*, %struct.rtx_def** %reg38, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  br label %cond.end.44

cond.false.42:                                    ; preds = %for.body.29
  %56 = load %struct.ref*, %struct.ref** %use, align 8
  %reg43 = getelementptr inbounds %struct.ref, %struct.ref* %56, i32 0, i32 0
  %57 = load %struct.rtx_def*, %struct.rtx_def** %reg43, align 8
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.37
  %cond45 = phi %struct.rtx_def* [ %55, %cond.true.37 ], [ %57, %cond.false.42 ]
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond45, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtuint48 = bitcast %union.rtunion_def* %arrayidx47 to i32*
  %58 = load i32, i32* %rtuint48, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %49, i32 %58)
  br label %for.inc.49

for.inc.49:                                       ; preds = %cond.end.44
  %59 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next50 = getelementptr inbounds %struct.df_link, %struct.df_link* %59, i32 0, i32 0
  %60 = load %struct.df_link*, %struct.df_link** %next50, align 8
  store %struct.df_link* %60, %struct.df_link** %link, align 8
  br label %for.cond.27

for.end.51:                                       ; preds = %for.cond.27
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end.51, %if.then
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.56:                                       ; preds = %land.end
  %63 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_valid = getelementptr inbounds %struct.bb_info, %struct.bb_info* %63, i32 0, i32 14
  store i32 1, i32* %lr_valid, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @df_bb_reg_info_compute(%struct.df* %df, %struct.basic_block_def* %bb, %struct.bitmap_head_def* %live) #0 {
entry:
  %df.addr = alloca %struct.df*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %live.addr = alloca %struct.bitmap_head_def*, align 8
  %reg_info = alloca %struct.reg_info*, align 8
  %bb_info = alloca %struct.bb_info*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  %regno = alloca i32, align 4
  %link = alloca %struct.df_link*, align 8
  %def = alloca %struct.ref*, align 8
  %dregno = alloca i32, align 4
  %use = alloca %struct.ref*, align 8
  %uregno = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.df* %df, %struct.df** %df.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.bitmap_head_def* %live, %struct.bitmap_head_def** %live.addr, align 8
  %0 = load %struct.df*, %struct.df** %df.addr, align 8
  %regs = getelementptr inbounds %struct.df, %struct.df* %0, i32 0, i32 5
  %1 = load %struct.reg_info*, %struct.reg_info** %regs, align 8
  store %struct.reg_info* %1, %struct.reg_info** %reg_info, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 11
  %3 = load i32, i32* %index, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.df*, %struct.df** %df.addr, align 8
  %bbs = getelementptr inbounds %struct.df, %struct.df* %4, i32 0, i32 1
  %5 = load %struct.bb_info*, %struct.bb_info** %bbs, align 8
  %arrayidx = getelementptr inbounds %struct.bb_info, %struct.bb_info* %5, i64 %idxprom
  store %struct.bb_info* %arrayidx, %struct.bb_info** %bb_info, align 8
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live.addr, align 8
  %7 = load %struct.bb_info*, %struct.bb_info** %bb_info, align 8
  %lr_out = getelementptr inbounds %struct.bb_info, %struct.bb_info* %7, i32 0, i32 11
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %lr_out, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %6, %struct.bitmap_head_def* %8)
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %entry
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %12, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %16 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %16, label %for.body, label %for.end.116

for.body:                                         ; preds = %land.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %18 = load i32, i32* %rtint, align 4
  store i32 %18, i32* %uid, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load = load i32, i32* %20, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom4 = sext i32 %bf.clear to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %21 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %21 to i32
  %cmp6 = icmp eq i32 %conv, 105
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.112

if.end:                                           ; preds = %for.body
  %22 = load i32, i32* %uid, align 4
  %idxprom8 = zext i32 %22 to i64
  %23 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns = getelementptr inbounds %struct.df, %struct.df* %23, i32 0, i32 7
  %24 = load %struct.insn_info*, %struct.insn_info** %insns, align 8
  %arrayidx9 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %24, i64 %idxprom8
  %defs = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx9, i32 0, i32 0
  %25 = load %struct.df_link*, %struct.df_link** %defs, align 8
  store %struct.df_link* %25, %struct.df_link** %link, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end
  %26 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool11 = icmp ne %struct.df_link* %26, null
  br i1 %tobool11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %27 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref = getelementptr inbounds %struct.df_link, %struct.df_link* %27, i32 0, i32 1
  %28 = load %struct.ref*, %struct.ref** %ref, align 8
  store %struct.ref* %28, %struct.ref** %def, align 8
  %29 = load %struct.ref*, %struct.ref** %def, align 8
  %reg = getelementptr inbounds %struct.ref, %struct.ref* %29, i32 0, i32 0
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load13 = load i32, i32* %31, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 63
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.12
  %32 = load %struct.ref*, %struct.ref** %def, align 8
  %reg17 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 0
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.12
  %35 = load %struct.ref*, %struct.ref** %def, align 8
  %reg21 = getelementptr inbounds %struct.ref, %struct.ref* %35, i32 0, i32 0
  %36 = load %struct.rtx_def*, %struct.rtx_def** %reg21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %34, %cond.true ], [ %36, %cond.false ]
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %37 = load i32, i32* %rtuint, align 4
  store i32 %37, i32* %dregno, align 4
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live.addr, align 8
  %39 = load i32, i32* %dregno, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %38, i32 %39)
  %40 = load i32, i32* %dregno, align 4
  %idxprom24 = zext i32 %40 to i64
  %41 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx25 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %41, i64 %idxprom24
  %n_defs = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx25, i32 0, i32 3
  %42 = load i32, i32* %n_defs, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %n_defs, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %43 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %43, i32 0, i32 0
  %44 = load %struct.df_link*, %struct.df_link** %next, align 8
  store %struct.df_link* %44, %struct.df_link** %link, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %45 = load i32, i32* %uid, align 4
  %idxprom26 = zext i32 %45 to i64
  %46 = load %struct.df*, %struct.df** %df.addr, align 8
  %insns27 = getelementptr inbounds %struct.df, %struct.df* %46, i32 0, i32 7
  %47 = load %struct.insn_info*, %struct.insn_info** %insns27, align 8
  %arrayidx28 = getelementptr inbounds %struct.insn_info, %struct.insn_info* %47, i64 %idxprom26
  %uses = getelementptr inbounds %struct.insn_info, %struct.insn_info* %arrayidx28, i32 0, i32 1
  %48 = load %struct.df_link*, %struct.df_link** %uses, align 8
  store %struct.df_link* %48, %struct.df_link** %link, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.53, %for.end
  %49 = load %struct.df_link*, %struct.df_link** %link, align 8
  %tobool30 = icmp ne %struct.df_link* %49, null
  br i1 %tobool30, label %for.body.31, label %for.end.55

for.body.31:                                      ; preds = %for.cond.29
  %50 = load %struct.df_link*, %struct.df_link** %link, align 8
  %ref32 = getelementptr inbounds %struct.df_link, %struct.df_link* %50, i32 0, i32 1
  %51 = load %struct.ref*, %struct.ref** %ref32, align 8
  store %struct.ref* %51, %struct.ref** %use, align 8
  %52 = load %struct.ref*, %struct.ref** %use, align 8
  %reg33 = getelementptr inbounds %struct.ref, %struct.ref* %52, i32 0, i32 0
  %53 = load %struct.rtx_def*, %struct.rtx_def** %reg33, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load34 = load i32, i32* %54, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 63
  br i1 %cmp36, label %cond.true.38, label %cond.false.43

cond.true.38:                                     ; preds = %for.body.31
  %55 = load %struct.ref*, %struct.ref** %use, align 8
  %reg39 = getelementptr inbounds %struct.ref, %struct.ref* %55, i32 0, i32 0
  %56 = load %struct.rtx_def*, %struct.rtx_def** %reg39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  br label %cond.end.45

cond.false.43:                                    ; preds = %for.body.31
  %58 = load %struct.ref*, %struct.ref** %use, align 8
  %reg44 = getelementptr inbounds %struct.ref, %struct.ref* %58, i32 0, i32 0
  %59 = load %struct.rtx_def*, %struct.rtx_def** %reg44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.38
  %cond46 = phi %struct.rtx_def* [ %57, %cond.true.38 ], [ %59, %cond.false.43 ]
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond46, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtuint49 = bitcast %union.rtunion_def* %arrayidx48 to i32*
  %60 = load i32, i32* %rtuint49, align 4
  store i32 %60, i32* %uregno, align 4
  %61 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live.addr, align 8
  %62 = load i32, i32* %uregno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %61, i32 %62)
  %63 = load i32, i32* %uregno, align 4
  %idxprom50 = zext i32 %63 to i64
  %64 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx51 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %64, i64 %idxprom50
  %n_uses = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx51, i32 0, i32 4
  %65 = load i32, i32* %n_uses, align 4
  %inc52 = add nsw i32 %65, 1
  store i32 %inc52, i32* %n_uses, align 4
  br label %for.inc.53

for.inc.53:                                       ; preds = %cond.end.45
  %66 = load %struct.df_link*, %struct.df_link** %link, align 8
  %next54 = getelementptr inbounds %struct.df_link, %struct.df_link* %66, i32 0, i32 0
  %67 = load %struct.df_link*, %struct.df_link** %next54, align 8
  store %struct.df_link* %67, %struct.df_link** %link, align 8
  br label %for.cond.29

for.end.55:                                       ; preds = %for.cond.29
  br label %do.body

do.body:                                          ; preds = %for.end.55
  %68 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %68, i32 0, i32 0
  %69 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %69, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %70 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp56 = icmp ne %struct.bitmap_element_def* %70, null
  br i1 %cmp56, label %land.rhs.58, label %land.end.61

land.rhs.58:                                      ; preds = %while.cond
  %71 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %71, i32 0, i32 2
  %72 = load i32, i32* %indx, align 4
  %73 = load i32, i32* %indx_, align 4
  %cmp59 = icmp ult i32 %72, %73
  br label %land.end.61

land.end.61:                                      ; preds = %land.rhs.58, %while.cond
  %74 = phi i1 [ false, %while.cond ], [ %cmp59, %land.rhs.58 ]
  br i1 %74, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.61
  %75 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next62 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %75, i32 0, i32 0
  %76 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next62, align 8
  store %struct.bitmap_element_def* %76, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.61
  %77 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp63 = icmp ne %struct.bitmap_element_def* %77, null
  br i1 %cmp63, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %while.end
  %78 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx65 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %78, i32 0, i32 2
  %79 = load i32, i32* %indx65, align 4
  %80 = load i32, i32* %indx_, align 4
  %cmp66 = icmp ne i32 %79, %80
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %land.lhs.true, %while.end
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.109, %if.end.69
  %81 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp71 = icmp ne %struct.bitmap_element_def* %81, null
  br i1 %cmp71, label %for.body.73, label %for.end.111

for.body.73:                                      ; preds = %for.cond.70
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.106, %for.body.73
  %82 = load i32, i32* %word_num_, align 4
  %cmp75 = icmp ult i32 %82, 2
  br i1 %cmp75, label %for.body.77, label %for.end.108

for.body.77:                                      ; preds = %for.cond.74
  %83 = load i32, i32* %word_num_, align 4
  %idxprom78 = zext i32 %83 to i64
  %84 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %84, i32 0, i32 3
  %arrayidx79 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom78
  %85 = load i64, i64* %arrayidx79, align 8
  store i64 %85, i64* %word_, align 8
  %86 = load i64, i64* %word_, align 8
  %cmp80 = icmp ne i64 %86, 0
  br i1 %cmp80, label %if.then.82, label %if.end.105

if.then.82:                                       ; preds = %for.body.77
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.102, %if.then.82
  %87 = load i32, i32* %bit_num_, align 4
  %cmp84 = icmp ult i32 %87, 64
  br i1 %cmp84, label %for.body.86, label %for.end.104

for.body.86:                                      ; preds = %for.cond.83
  %88 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %88 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %89 = load i64, i64* %word_, align 8
  %90 = load i64, i64* %mask_, align 8
  %and = and i64 %89, %90
  %cmp87 = icmp ne i64 %and, 0
  br i1 %cmp87, label %if.then.89, label %if.end.101

if.then.89:                                       ; preds = %for.body.86
  %91 = load i64, i64* %mask_, align 8
  %neg = xor i64 %91, -1
  %92 = load i64, i64* %word_, align 8
  %and90 = and i64 %92, %neg
  store i64 %and90, i64* %word_, align 8
  %93 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx91 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %93, i32 0, i32 2
  %94 = load i32, i32* %indx91, align 4
  %mul = mul i32 %94, 128
  %95 = load i32, i32* %word_num_, align 4
  %mul92 = mul i32 %95, 64
  %add = add i32 %mul, %mul92
  %96 = load i32, i32* %bit_num_, align 4
  %add93 = add i32 %add, %96
  store i32 %add93, i32* %regno, align 4
  %97 = load i32, i32* %regno, align 4
  %idxprom94 = zext i32 %97 to i64
  %98 = load %struct.reg_info*, %struct.reg_info** %reg_info, align 8
  %arrayidx95 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %98, i64 %idxprom94
  %lifetime = getelementptr inbounds %struct.reg_info, %struct.reg_info* %arrayidx95, i32 0, i32 2
  %99 = load i32, i32* %lifetime, align 4
  %inc96 = add nsw i32 %99, 1
  store i32 %inc96, i32* %lifetime, align 4
  %100 = load i64, i64* %word_, align 8
  %cmp97 = icmp eq i64 %100, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.89
  br label %for.end.104

if.end.100:                                       ; preds = %if.then.89
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %for.body.86
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %101 = load i32, i32* %bit_num_, align 4
  %inc103 = add i32 %101, 1
  store i32 %inc103, i32* %bit_num_, align 4
  br label %for.cond.83

for.end.104:                                      ; preds = %if.then.99, %for.cond.83
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %for.body.77
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %102 = load i32, i32* %word_num_, align 4
  %inc107 = add i32 %102, 1
  store i32 %inc107, i32* %word_num_, align 4
  br label %for.cond.74

for.end.108:                                      ; preds = %for.cond.74
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.108
  %103 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next110 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %103, i32 0, i32 0
  %104 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next110, align 8
  store %struct.bitmap_element_def* %104, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.70

for.end.111:                                      ; preds = %for.cond.70
  br label %do.end

do.end:                                           ; preds = %for.end.111
  br label %for.inc.112

for.inc.112:                                      ; preds = %do.end, %if.then
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 1
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.116:                                      ; preds = %land.end
  ret void
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @sbitmap_a_or_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @sbitmap_a_and_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
