; ModuleID = 'global.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
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
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.allocno = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.insn_chain = type { %struct.insn_chain*, %struct.insn_chain*, %struct.insn_chain*, i32, %struct.rtx_def*, %struct.bitmap_head_def, %struct.bitmap_head_def, %struct.reload*, i32, i64, %struct.needs, i8 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.reload = type opaque
%struct.needs = type { [2 x [25 x i16]], [25 x i16] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@global_alloc.eliminables = internal constant [4 x %struct.anon] [%struct.anon { i32 16, i32 7 }, %struct.anon { i32 16, i32 6 }, %struct.anon { i32 20, i32 7 }, %struct.anon { i32 20, i32 6 }], align 16
@flag_omit_frame_pointer = external global i32, align 4
@cfun = external global %struct.function*, align 8
@max_allocno = internal global i32 0, align 4
@no_global_alloc_regs = internal global i64 0, align 8
@eliminable_regset = internal global i64 0, align 8
@frame_pointer_needed = external global i32, align 4
@regs_used_so_far = internal global i64 0, align 8
@regs_ever_live = external global [53 x i8], align 16
@call_used_regs = external global [53 x i8], align 16
@max_regno = external global i32, align 4
@reg_renumber = external global i16*, align 8
@reg_allocno = internal global i32* null, align 8
@reg_may_share = internal global i32* null, align 8
@regs_may_share = external global %struct.rtx_def*, align 8
@reg_n_info = external global %struct.varray_head_tag*, align 8
@.str = private unnamed_addr constant [9 x i8] c"global.c\00", align 1
@__FUNCTION__.global_alloc = private unnamed_addr constant [13 x i8] c"global_alloc\00", align 1
@allocno = internal global %struct.allocno* null, align 8
@mode_size = external constant [59 x i8], align 16
@target_flags = external global i32, align 4
@local_reg_live_length = internal global [53 x i32] zeroinitializer, align 16
@local_reg_n_refs = internal global [53 x i32] zeroinitializer, align 16
@local_reg_freq = internal global [53 x i32] zeroinitializer, align 16
@mode_class = external constant [59 x i32], align 16
@allocno_row_words = internal global i32 0, align 4
@conflicts = internal global i64* null, align 8
@allocnos_live = internal global i64* null, align 8
@allocno_order = internal global i32* null, align 8
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@reload_insn_chain = external global %struct.insn_chain*, align 8
@live_relevant_regs = internal global %struct.bitmap_head_def* null, align 8
@rtx_class = external constant [153 x i8], align 16
@__FUNCTION__.build_insn_chain = private unnamed_addr constant [17 x i8] c"build_insn_chain\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c";; Register dispositions:\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%d in %d  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\0A\0A;; Hard regs used: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@max_parallel = external global i32, align 4
@regs_set = internal global %struct.rtx_def** null, align 8
@hard_regs_live = internal global i64 0, align 8
@n_regs_set = internal global i32 0, align 4
@fixed_regs = external global [53 x i8], align 16
@rtx_format = external constant [153 x i8*], align 16
@fixed_reg_set = external global i64, align 8
@call_used_reg_set = external global i64, align 8
@reg_class_contents = external global [25 x i64], align 16
@call_fixed_reg_set = external global i64, align 8
@reg_alloc_order = external global [53 x i32], align 16
@regclass_map = external constant [53 x i32], align 16
@flag_caller_saves = external global i32, align 4
@losing_caller_save_reg_set = external global i64, align 8
@caller_save_needed = external global i32, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c";; %d regs to allocate:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"+%d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c";; %d conflicts:\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c";; %d preferences:\00", align 1

; Function Attrs: nounwind uwtable
define i32 @global_alloc(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %retval1 = alloca i32, align 4
  %need_fp = alloca i32, align 4
  %i = alloca i64, align 8
  %x = alloca %struct.rtx_def*, align 8
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %num = alloca i32, align 4
  %regno = alloca i32, align 4
  %endregno = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i32, i32* @flag_omit_frame_pointer, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 56
  %2 = bitcast i24* %calls_alloca to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %call = call i32 @ix86_frame_pointer_required()
  %tobool3 = icmp ne i32 %call, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %3 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool3, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  store i32 %lor.ext, i32* %need_fp, align 4
  store i32 0, i32* @max_allocno, align 4
  store i64 0, i64* @no_global_alloc_regs, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end
  %4 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %4, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @global_alloc.eliminables, i32 0, i64 %5
  %from = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %from, align 4
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 1, %sh_prom
  %7 = load i64, i64* @eliminable_regset, align 8
  %or = or i64 %7, %shl
  store i64 %or, i64* @eliminable_regset, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @global_alloc.eliminables, i32 0, i64 %8
  %to = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx4, i32 0, i32 1
  %9 = load i32, i32* %to, align 4
  %cmp5 = icmp eq i32 %9, 7
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* @frame_pointer_needed, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then, label %lor.lhs.false.7

cond.false:                                       ; preds = %for.body
  br i1 true, label %lor.lhs.false.7, label %if.then

lor.lhs.false.7:                                  ; preds = %cond.false, %cond.true
  %11 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @global_alloc.eliminables, i32 0, i64 %11
  %to9 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx8, i32 0, i32 1
  %12 = load i32, i32* %to9, align 4
  %cmp10 = icmp eq i32 %12, 7
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.7
  %13 = load i32, i32* %need_fp, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %cond.false, %cond.true
  %14 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @global_alloc.eliminables, i32 0, i64 %14
  %from13 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx12, i32 0, i32 0
  %15 = load i32, i32* %from13, align 4
  %sh_prom14 = zext i32 %15 to i64
  %shl15 = shl i64 1, %sh_prom14
  %16 = load i64, i64* @no_global_alloc_regs, align 8
  %or16 = or i64 %16, %shl15
  store i64 %or16, i64* @no_global_alloc_regs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* @eliminable_regset, align 8
  %or17 = or i64 %18, 64
  store i64 %or17, i64* @eliminable_regset, align 8
  %19 = load i32, i32* %need_fp, align 4
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.end
  %20 = load i64, i64* @no_global_alloc_regs, align 8
  %or20 = or i64 %20, 64
  store i64 %or20, i64* @no_global_alloc_regs, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %for.end
  store i64 0, i64* @regs_used_so_far, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.35, %if.end.21
  %21 = load i64, i64* %i, align 8
  %cmp23 = icmp ult i64 %21, 53
  br i1 %cmp23, label %for.body.24, label %for.end.37

for.body.24:                                      ; preds = %for.cond.22
  %22 = load i64, i64* %i, align 8
  %arrayidx25 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %22
  %23 = load i8, i8* %arrayidx25, align 1
  %conv = sext i8 %23 to i32
  %tobool26 = icmp ne i32 %conv, 0
  br i1 %tobool26, label %if.then.31, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %for.body.24
  %24 = load i64, i64* %i, align 8
  %arrayidx28 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %24
  %25 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %25 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %lor.lhs.false.27, %for.body.24
  %26 = load i64, i64* %i, align 8
  %shl32 = shl i64 1, %26
  %27 = load i64, i64* @regs_used_so_far, align 8
  %or33 = or i64 %27, %shl32
  store i64 %or33, i64* @regs_used_so_far, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %lor.lhs.false.27
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %28 = load i64, i64* %i, align 8
  %inc36 = add i64 %28, 1
  store i64 %inc36, i64* %i, align 8
  br label %for.cond.22

for.end.37:                                       ; preds = %for.cond.22
  store i64 53, i64* %i, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.54, %for.end.37
  %29 = load i64, i64* %i, align 8
  %30 = load i32, i32* @max_regno, align 4
  %conv39 = sext i32 %30 to i64
  %cmp40 = icmp ult i64 %29, %conv39
  br i1 %cmp40, label %for.body.42, label %for.end.56

for.body.42:                                      ; preds = %for.cond.38
  %31 = load i64, i64* %i, align 8
  %32 = load i16*, i16** @reg_renumber, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %32, i64 %31
  %33 = load i16, i16* %arrayidx43, align 2
  %conv44 = sext i16 %33 to i32
  %cmp45 = icmp sge i32 %conv44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %for.body.42
  %34 = load i64, i64* %i, align 8
  %35 = load i16*, i16** @reg_renumber, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %35, i64 %34
  %36 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %36 to i32
  %sh_prom50 = zext i32 %conv49 to i64
  %shl51 = shl i64 1, %sh_prom50
  %37 = load i64, i64* @regs_used_so_far, align 8
  %or52 = or i64 %37, %shl51
  store i64 %or52, i64* @regs_used_so_far, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.47, %for.body.42
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %38 = load i64, i64* %i, align 8
  %inc55 = add i64 %38, 1
  store i64 %inc55, i64* %i, align 8
  br label %for.cond.38

for.end.56:                                       ; preds = %for.cond.38
  %39 = load i32, i32* @max_regno, align 4
  %conv57 = sext i32 %39 to i64
  %mul = mul i64 %conv57, 4
  %call58 = call noalias i8* @xmalloc(i64 %mul)
  %40 = bitcast i8* %call58 to i32*
  store i32* %40, i32** @reg_allocno, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.64, %for.end.56
  %41 = load i64, i64* %i, align 8
  %cmp60 = icmp ult i64 %41, 53
  br i1 %cmp60, label %for.body.62, label %for.end.66

for.body.62:                                      ; preds = %for.cond.59
  %42 = load i64, i64* %i, align 8
  %43 = load i32*, i32** @reg_allocno, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %43, i64 %42
  store i32 -1, i32* %arrayidx63, align 4
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.62
  %44 = load i64, i64* %i, align 8
  %inc65 = add i64 %44, 1
  store i64 %inc65, i64* %i, align 8
  br label %for.cond.59

for.end.66:                                       ; preds = %for.cond.59
  %45 = load i32, i32* @max_regno, align 4
  %conv67 = sext i32 %45 to i64
  %call68 = call noalias i8* @xcalloc(i64 %conv67, i64 4)
  %46 = bitcast i8* %call68 to i32*
  store i32* %46, i32** @reg_may_share, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** @regs_may_share, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %x, align 8
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.91, %for.end.66
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool70 = icmp ne %struct.rtx_def* %48, null
  br i1 %tobool70, label %for.body.71, label %for.end.98

for.body.71:                                      ; preds = %for.cond.69
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx74 to i32*
  %51 = load i32, i32* %rtuint, align 4
  store i32 %51, i32* %r1, align 4
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 1
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtuint83 = bitcast %union.rtunion_def* %arrayidx82 to i32*
  %55 = load i32, i32* %rtuint83, align 4
  store i32 %55, i32* %r2, align 4
  %56 = load i32, i32* %r1, align 4
  %57 = load i32, i32* %r2, align 4
  %cmp84 = icmp sgt i32 %56, %57
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %for.body.71
  %58 = load i32, i32* %r2, align 4
  %59 = load i32, i32* %r1, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load i32*, i32** @reg_may_share, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %60, i64 %idxprom
  store i32 %58, i32* %arrayidx87, align 4
  br label %if.end.90

if.else:                                          ; preds = %for.body.71
  %61 = load i32, i32* %r1, align 4
  %62 = load i32, i32* %r2, align 4
  %idxprom88 = sext i32 %62 to i64
  %63 = load i32*, i32** @reg_may_share, align 8
  %arrayidx89 = getelementptr inbounds i32, i32* %63, i64 %idxprom88
  store i32 %61, i32* %arrayidx89, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.else, %if.then.86
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.90
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 1
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 1
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %x, align 8
  br label %for.cond.69

for.end.98:                                       ; preds = %for.cond.69
  store i64 53, i64* %i, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.158, %for.end.98
  %67 = load i64, i64* %i, align 8
  %68 = load i32, i32* @max_regno, align 4
  %conv100 = sext i32 %68 to i64
  %cmp101 = icmp ult i64 %67, %conv100
  br i1 %cmp101, label %for.body.103, label %for.end.160

for.body.103:                                     ; preds = %for.cond.99
  %69 = load i64, i64* %i, align 8
  %70 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %70, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx104 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %69
  %71 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx104, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %71, i32 0, i32 4
  %72 = load i32, i32* %refs, align 4
  %cmp105 = icmp ne i32 %72, 0
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.155

land.lhs.true.107:                                ; preds = %for.body.103
  %73 = load i64, i64* %i, align 8
  %74 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data108 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %74, i32 0, i32 4
  %reg109 = bitcast %union.varray_data_tag* %data108 to [1 x %struct.reg_info_def*]*
  %arrayidx110 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg109, i32 0, i64 %73
  %75 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx110, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %75, i32 0, i32 7
  %76 = load i32, i32* %live_length, align 4
  %cmp111 = icmp ne i32 %76, -1
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.155

land.lhs.true.113:                                ; preds = %land.lhs.true.107
  %77 = load %struct.function*, %struct.function** @cfun, align 8
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %77, i32 0, i32 56
  %78 = bitcast i24* %has_nonlocal_label to i32*
  %bf.load114 = load i32, i32* %78, align 8
  %bf.lshr115 = lshr i32 %bf.load114, 8
  %bf.clear116 = and i32 %bf.lshr115, 1
  %tobool117 = icmp ne i32 %bf.clear116, 0
  br i1 %tobool117, label %lor.lhs.false.118, label %if.then.124

lor.lhs.false.118:                                ; preds = %land.lhs.true.113
  %79 = load i64, i64* %i, align 8
  %80 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data119 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %80, i32 0, i32 4
  %reg120 = bitcast %union.varray_data_tag* %data119 to [1 x %struct.reg_info_def*]*
  %arrayidx121 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg120, i32 0, i64 %79
  %81 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx121, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %81, i32 0, i32 8
  %82 = load i32, i32* %calls_crossed, align 4
  %cmp122 = icmp eq i32 %82, 0
  br i1 %cmp122, label %if.then.124, label %if.else.155

if.then.124:                                      ; preds = %lor.lhs.false.118, %land.lhs.true.113
  %83 = load i64, i64* %i, align 8
  %84 = load i16*, i16** @reg_renumber, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %84, i64 %83
  %85 = load i16, i16* %arrayidx125, align 2
  %conv126 = sext i16 %85 to i32
  %cmp127 = icmp slt i32 %conv126, 0
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.143

land.lhs.true.129:                                ; preds = %if.then.124
  %86 = load i64, i64* %i, align 8
  %87 = load i32*, i32** @reg_may_share, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %87, i64 %86
  %88 = load i32, i32* %arrayidx130, align 4
  %tobool131 = icmp ne i32 %88, 0
  br i1 %tobool131, label %land.lhs.true.132, label %if.else.143

land.lhs.true.132:                                ; preds = %land.lhs.true.129
  %89 = load i64, i64* %i, align 8
  %90 = load i32*, i32** @reg_may_share, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %90, i64 %89
  %91 = load i32, i32* %arrayidx133, align 4
  %idxprom134 = sext i32 %91 to i64
  %92 = load i32*, i32** @reg_allocno, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %92, i64 %idxprom134
  %93 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp sge i32 %93, 0
  br i1 %cmp136, label %if.then.138, label %if.else.143

if.then.138:                                      ; preds = %land.lhs.true.132
  %94 = load i64, i64* %i, align 8
  %95 = load i32*, i32** @reg_may_share, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %95, i64 %94
  %96 = load i32, i32* %arrayidx139, align 4
  %idxprom140 = sext i32 %96 to i64
  %97 = load i32*, i32** @reg_allocno, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %97, i64 %idxprom140
  %98 = load i32, i32* %arrayidx141, align 4
  %99 = load i64, i64* %i, align 8
  %100 = load i32*, i32** @reg_allocno, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %100, i64 %99
  store i32 %98, i32* %arrayidx142, align 4
  br label %if.end.146

if.else.143:                                      ; preds = %land.lhs.true.132, %land.lhs.true.129, %if.then.124
  %101 = load i32, i32* @max_allocno, align 4
  %inc144 = add nsw i32 %101, 1
  store i32 %inc144, i32* @max_allocno, align 4
  %102 = load i64, i64* %i, align 8
  %103 = load i32*, i32** @reg_allocno, align 8
  %arrayidx145 = getelementptr inbounds i32, i32* %103, i64 %102
  store i32 %101, i32* %arrayidx145, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.143, %if.then.138
  %104 = load i64, i64* %i, align 8
  %105 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data147 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %105, i32 0, i32 4
  %reg148 = bitcast %union.varray_data_tag* %data147 to [1 x %struct.reg_info_def*]*
  %arrayidx149 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg148, i32 0, i64 %104
  %106 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx149, align 8
  %live_length150 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %106, i32 0, i32 7
  %107 = load i32, i32* %live_length150, align 4
  %cmp151 = icmp eq i32 %107, 0
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.146
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 441, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.global_alloc, i32 0, i32 0)) #5
  unreachable

if.end.154:                                       ; preds = %if.end.146
  br label %if.end.157

if.else.155:                                      ; preds = %lor.lhs.false.118, %land.lhs.true.107, %for.body.103
  %108 = load i64, i64* %i, align 8
  %109 = load i32*, i32** @reg_allocno, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %109, i64 %108
  store i32 -1, i32* %arrayidx156, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.155, %if.end.154
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %110 = load i64, i64* %i, align 8
  %inc159 = add i64 %110, 1
  store i64 %inc159, i64* %i, align 8
  br label %for.cond.99

for.end.160:                                      ; preds = %for.cond.99
  %111 = load i32, i32* @max_allocno, align 4
  %conv161 = sext i32 %111 to i64
  %call162 = call noalias i8* @xcalloc(i64 %conv161, i64 64)
  %112 = bitcast i8* %call162 to %struct.allocno*
  store %struct.allocno* %112, %struct.allocno** @allocno, align 8
  store i64 53, i64* %i, align 8
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.231, %for.end.160
  %113 = load i64, i64* %i, align 8
  %114 = load i32, i32* @max_regno, align 4
  %conv164 = sext i32 %114 to i64
  %cmp165 = icmp ult i64 %113, %conv164
  br i1 %cmp165, label %for.body.167, label %for.end.233

for.body.167:                                     ; preds = %for.cond.163
  %115 = load i64, i64* %i, align 8
  %116 = load i32*, i32** @reg_allocno, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %116, i64 %115
  %117 = load i32, i32* %arrayidx168, align 4
  %cmp169 = icmp sge i32 %117, 0
  br i1 %cmp169, label %if.then.171, label %if.end.230

if.then.171:                                      ; preds = %for.body.167
  %118 = load i64, i64* %i, align 8
  %119 = load i32*, i32** @reg_allocno, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %119, i64 %118
  %120 = load i32, i32* %arrayidx172, align 4
  store i32 %120, i32* %num, align 4
  %121 = load i64, i64* %i, align 8
  %conv173 = trunc i64 %121 to i32
  %122 = load i32, i32* %num, align 4
  %idxprom174 = sext i32 %122 to i64
  %123 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx175 = getelementptr inbounds %struct.allocno, %struct.allocno* %123, i64 %idxprom174
  %reg176 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx175, i32 0, i32 0
  store i32 %conv173, i32* %reg176, align 4
  %124 = load i64, i64* %i, align 8
  %125 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %125, i32 0, i32 3
  %126 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %126, i32 0, i32 12
  %127 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx177 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %127, i64 %124
  %128 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx177, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %bf.load178 = load i32, i32* %129, align 8
  %bf.lshr179 = lshr i32 %bf.load178, 16
  %bf.clear180 = and i32 %bf.lshr179, 255
  %idxprom181 = sext i32 %bf.clear180 to i64
  %arrayidx182 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom181
  %130 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %130 to i32
  %131 = load i32, i32* @target_flags, align 4
  %and = and i32 %131, 33554432
  %tobool184 = icmp ne i32 %and, 0
  %cond = select i1 %tobool184, i32 8, i32 4
  %add = add nsw i32 %conv183, %cond
  %sub = sub nsw i32 %add, 1
  %132 = load i32, i32* @target_flags, align 4
  %and185 = and i32 %132, 33554432
  %tobool186 = icmp ne i32 %and185, 0
  %cond187 = select i1 %tobool186, i32 8, i32 4
  %div = sdiv i32 %sub, %cond187
  %133 = load i32, i32* %num, align 4
  %idxprom188 = sext i32 %133 to i64
  %134 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx189 = getelementptr inbounds %struct.allocno, %struct.allocno* %134, i64 %idxprom188
  %size = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx189, i32 0, i32 1
  store i32 %div, i32* %size, align 4
  %135 = load i64, i64* %i, align 8
  %136 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data190 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %136, i32 0, i32 4
  %reg191 = bitcast %union.varray_data_tag* %data190 to [1 x %struct.reg_info_def*]*
  %arrayidx192 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg191, i32 0, i64 %135
  %137 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx192, align 8
  %calls_crossed193 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %137, i32 0, i32 8
  %138 = load i32, i32* %calls_crossed193, align 4
  %139 = load i32, i32* %num, align 4
  %idxprom194 = sext i32 %139 to i64
  %140 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx195 = getelementptr inbounds %struct.allocno, %struct.allocno* %140, i64 %idxprom194
  %calls_crossed196 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx195, i32 0, i32 2
  %141 = load i32, i32* %calls_crossed196, align 4
  %add197 = add nsw i32 %141, %138
  store i32 %add197, i32* %calls_crossed196, align 4
  %142 = load i64, i64* %i, align 8
  %143 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data198 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %143, i32 0, i32 4
  %reg199 = bitcast %union.varray_data_tag* %data198 to [1 x %struct.reg_info_def*]*
  %arrayidx200 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg199, i32 0, i64 %142
  %144 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx200, align 8
  %refs201 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %144, i32 0, i32 4
  %145 = load i32, i32* %refs201, align 4
  %146 = load i32, i32* %num, align 4
  %idxprom202 = sext i32 %146 to i64
  %147 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx203 = getelementptr inbounds %struct.allocno, %struct.allocno* %147, i64 %idxprom202
  %n_refs = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx203, i32 0, i32 3
  %148 = load i32, i32* %n_refs, align 4
  %add204 = add nsw i32 %148, %145
  store i32 %add204, i32* %n_refs, align 4
  %149 = load i64, i64* %i, align 8
  %150 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data205 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %150, i32 0, i32 4
  %reg206 = bitcast %union.varray_data_tag* %data205 to [1 x %struct.reg_info_def*]*
  %arrayidx207 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg206, i32 0, i64 %149
  %151 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx207, align 8
  %freq = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %151, i32 0, i32 5
  %152 = load i32, i32* %freq, align 4
  %153 = load i32, i32* %num, align 4
  %idxprom208 = sext i32 %153 to i64
  %154 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx209 = getelementptr inbounds %struct.allocno, %struct.allocno* %154, i64 %idxprom208
  %freq210 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx209, i32 0, i32 4
  %155 = load i32, i32* %freq210, align 4
  %add211 = add nsw i32 %155, %152
  store i32 %add211, i32* %freq210, align 4
  %156 = load i32, i32* %num, align 4
  %idxprom212 = sext i32 %156 to i64
  %157 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx213 = getelementptr inbounds %struct.allocno, %struct.allocno* %157, i64 %idxprom212
  %live_length214 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx213, i32 0, i32 5
  %158 = load i32, i32* %live_length214, align 4
  %159 = load i64, i64* %i, align 8
  %160 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data215 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %160, i32 0, i32 4
  %reg216 = bitcast %union.varray_data_tag* %data215 to [1 x %struct.reg_info_def*]*
  %arrayidx217 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg216, i32 0, i64 %159
  %161 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx217, align 8
  %live_length218 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %161, i32 0, i32 7
  %162 = load i32, i32* %live_length218, align 4
  %cmp219 = icmp slt i32 %158, %162
  br i1 %cmp219, label %if.then.221, label %if.end.229

if.then.221:                                      ; preds = %if.then.171
  %163 = load i64, i64* %i, align 8
  %164 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data222 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %164, i32 0, i32 4
  %reg223 = bitcast %union.varray_data_tag* %data222 to [1 x %struct.reg_info_def*]*
  %arrayidx224 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg223, i32 0, i64 %163
  %165 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx224, align 8
  %live_length225 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %165, i32 0, i32 7
  %166 = load i32, i32* %live_length225, align 4
  %167 = load i32, i32* %num, align 4
  %idxprom226 = sext i32 %167 to i64
  %168 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx227 = getelementptr inbounds %struct.allocno, %struct.allocno* %168, i64 %idxprom226
  %live_length228 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx227, i32 0, i32 5
  store i32 %166, i32* %live_length228, align 4
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.221, %if.then.171
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %for.body.167
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.230
  %169 = load i64, i64* %i, align 8
  %inc232 = add i64 %169, 1
  store i64 %inc232, i64* %i, align 8
  br label %for.cond.163

for.end.233:                                      ; preds = %for.cond.163
  call void @llvm.memset.p0i8.i64(i8* bitcast ([53 x i32]* @local_reg_live_length to i8*), i8 0, i64 212, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([53 x i32]* @local_reg_n_refs to i8*), i8 0, i64 212, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([53 x i32]* @local_reg_freq to i8*), i8 0, i64 212, i32 1, i1 false)
  store i64 53, i64* %i, align 8
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.374, %for.end.233
  %170 = load i64, i64* %i, align 8
  %171 = load i32, i32* @max_regno, align 4
  %conv235 = sext i32 %171 to i64
  %cmp236 = icmp ult i64 %170, %conv235
  br i1 %cmp236, label %for.body.238, label %for.end.376

for.body.238:                                     ; preds = %for.cond.234
  %172 = load i64, i64* %i, align 8
  %173 = load i16*, i16** @reg_renumber, align 8
  %arrayidx239 = getelementptr inbounds i16, i16* %173, i64 %172
  %174 = load i16, i16* %arrayidx239, align 2
  %conv240 = sext i16 %174 to i32
  %cmp241 = icmp sge i32 %conv240, 0
  br i1 %cmp241, label %if.then.243, label %if.end.373

if.then.243:                                      ; preds = %for.body.238
  %175 = load i64, i64* %i, align 8
  %176 = load i16*, i16** @reg_renumber, align 8
  %arrayidx244 = getelementptr inbounds i16, i16* %176, i64 %175
  %177 = load i16, i16* %arrayidx244, align 2
  %conv245 = sext i16 %177 to i32
  store i32 %conv245, i32* %regno, align 4
  %178 = load i32, i32* %regno, align 4
  %179 = load i32, i32* %regno, align 4
  %cmp246 = icmp sge i32 %179, 8
  br i1 %cmp246, label %land.lhs.true.248, label %lor.lhs.false.251

land.lhs.true.248:                                ; preds = %if.then.243
  %180 = load i32, i32* %regno, align 4
  %cmp249 = icmp sle i32 %180, 15
  br i1 %cmp249, label %cond.true.269, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %land.lhs.true.248, %if.then.243
  %181 = load i32, i32* %regno, align 4
  %cmp252 = icmp sge i32 %181, 21
  br i1 %cmp252, label %land.lhs.true.254, label %lor.lhs.false.257

land.lhs.true.254:                                ; preds = %lor.lhs.false.251
  %182 = load i32, i32* %regno, align 4
  %cmp255 = icmp sle i32 %182, 28
  br i1 %cmp255, label %cond.true.269, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %land.lhs.true.254, %lor.lhs.false.251
  %183 = load i32, i32* %regno, align 4
  %cmp258 = icmp sge i32 %183, 45
  br i1 %cmp258, label %land.lhs.true.260, label %lor.lhs.false.263

land.lhs.true.260:                                ; preds = %lor.lhs.false.257
  %184 = load i32, i32* %regno, align 4
  %cmp261 = icmp sle i32 %184, 52
  br i1 %cmp261, label %cond.true.269, label %lor.lhs.false.263

lor.lhs.false.263:                                ; preds = %land.lhs.true.260, %lor.lhs.false.257
  %185 = load i32, i32* %regno, align 4
  %cmp264 = icmp sge i32 %185, 29
  br i1 %cmp264, label %land.lhs.true.266, label %cond.false.294

land.lhs.true.266:                                ; preds = %lor.lhs.false.263
  %186 = load i32, i32* %regno, align 4
  %cmp267 = icmp sle i32 %186, 36
  br i1 %cmp267, label %cond.true.269, label %cond.false.294

cond.true.269:                                    ; preds = %land.lhs.true.266, %land.lhs.true.260, %land.lhs.true.254, %land.lhs.true.248
  %187 = load i64, i64* %i, align 8
  %188 = load %struct.function*, %struct.function** @cfun, align 8
  %emit270 = getelementptr inbounds %struct.function, %struct.function* %188, i32 0, i32 3
  %189 = load %struct.emit_status*, %struct.emit_status** %emit270, align 8
  %x_regno_reg_rtx271 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %189, i32 0, i32 12
  %190 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx271, align 8
  %arrayidx272 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %190, i64 %187
  %191 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx272, align 8
  %192 = bitcast %struct.rtx_def* %191 to i32*
  %bf.load273 = load i32, i32* %192, align 8
  %bf.lshr274 = lshr i32 %bf.load273, 16
  %bf.clear275 = and i32 %bf.lshr274, 255
  %idxprom276 = sext i32 %bf.clear275 to i64
  %arrayidx277 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom276
  %193 = load i32, i32* %arrayidx277, align 4
  %cmp278 = icmp eq i32 %193, 5
  br i1 %cmp278, label %lor.end.291, label %lor.rhs.280

lor.rhs.280:                                      ; preds = %cond.true.269
  %194 = load i64, i64* %i, align 8
  %195 = load %struct.function*, %struct.function** @cfun, align 8
  %emit281 = getelementptr inbounds %struct.function, %struct.function* %195, i32 0, i32 3
  %196 = load %struct.emit_status*, %struct.emit_status** %emit281, align 8
  %x_regno_reg_rtx282 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %196, i32 0, i32 12
  %197 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx282, align 8
  %arrayidx283 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %197, i64 %194
  %198 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx283, align 8
  %199 = bitcast %struct.rtx_def* %198 to i32*
  %bf.load284 = load i32, i32* %199, align 8
  %bf.lshr285 = lshr i32 %bf.load284, 16
  %bf.clear286 = and i32 %bf.lshr285, 255
  %idxprom287 = sext i32 %bf.clear286 to i64
  %arrayidx288 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom287
  %200 = load i32, i32* %arrayidx288, align 4
  %cmp289 = icmp eq i32 %200, 6
  br label %lor.end.291

lor.end.291:                                      ; preds = %lor.rhs.280, %cond.true.269
  %201 = phi i1 [ true, %cond.true.269 ], [ %cmp289, %lor.rhs.280 ]
  %cond293 = select i1 %201, i32 2, i32 1
  br label %cond.end.342

cond.false.294:                                   ; preds = %land.lhs.true.266, %lor.lhs.false.263
  %202 = load i64, i64* %i, align 8
  %203 = load %struct.function*, %struct.function** @cfun, align 8
  %emit295 = getelementptr inbounds %struct.function, %struct.function* %203, i32 0, i32 3
  %204 = load %struct.emit_status*, %struct.emit_status** %emit295, align 8
  %x_regno_reg_rtx296 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %204, i32 0, i32 12
  %205 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx296, align 8
  %arrayidx297 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %205, i64 %202
  %206 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx297, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %bf.load298 = load i32, i32* %207, align 8
  %bf.lshr299 = lshr i32 %bf.load298, 16
  %bf.clear300 = and i32 %bf.lshr299, 255
  %cmp301 = icmp eq i32 %bf.clear300, 18
  br i1 %cmp301, label %cond.true.303, label %cond.false.307

cond.true.303:                                    ; preds = %cond.false.294
  %208 = load i32, i32* @target_flags, align 4
  %and304 = and i32 %208, 33554432
  %tobool305 = icmp ne i32 %and304, 0
  %cond306 = select i1 %tobool305, i32 2, i32 3
  br label %cond.end.340

cond.false.307:                                   ; preds = %cond.false.294
  %209 = load i64, i64* %i, align 8
  %210 = load %struct.function*, %struct.function** @cfun, align 8
  %emit308 = getelementptr inbounds %struct.function, %struct.function* %210, i32 0, i32 3
  %211 = load %struct.emit_status*, %struct.emit_status** %emit308, align 8
  %x_regno_reg_rtx309 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %211, i32 0, i32 12
  %212 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx309, align 8
  %arrayidx310 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %212, i64 %209
  %213 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx310, align 8
  %214 = bitcast %struct.rtx_def* %213 to i32*
  %bf.load311 = load i32, i32* %214, align 8
  %bf.lshr312 = lshr i32 %bf.load311, 16
  %bf.clear313 = and i32 %bf.lshr312, 255
  %cmp314 = icmp eq i32 %bf.clear313, 24
  br i1 %cmp314, label %cond.true.316, label %cond.false.320

cond.true.316:                                    ; preds = %cond.false.307
  %215 = load i32, i32* @target_flags, align 4
  %and317 = and i32 %215, 33554432
  %tobool318 = icmp ne i32 %and317, 0
  %cond319 = select i1 %tobool318, i32 4, i32 6
  br label %cond.end

cond.false.320:                                   ; preds = %cond.false.307
  %216 = load i64, i64* %i, align 8
  %217 = load %struct.function*, %struct.function** @cfun, align 8
  %emit321 = getelementptr inbounds %struct.function, %struct.function* %217, i32 0, i32 3
  %218 = load %struct.emit_status*, %struct.emit_status** %emit321, align 8
  %x_regno_reg_rtx322 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %218, i32 0, i32 12
  %219 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx322, align 8
  %arrayidx323 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %219, i64 %216
  %220 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx323, align 8
  %221 = bitcast %struct.rtx_def* %220 to i32*
  %bf.load324 = load i32, i32* %221, align 8
  %bf.lshr325 = lshr i32 %bf.load324, 16
  %bf.clear326 = and i32 %bf.lshr325, 255
  %idxprom327 = sext i32 %bf.clear326 to i64
  %arrayidx328 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom327
  %222 = load i8, i8* %arrayidx328, align 1
  %conv329 = zext i8 %222 to i32
  %223 = load i32, i32* @target_flags, align 4
  %and330 = and i32 %223, 33554432
  %tobool331 = icmp ne i32 %and330, 0
  %cond332 = select i1 %tobool331, i32 8, i32 4
  %add333 = add nsw i32 %conv329, %cond332
  %sub334 = sub nsw i32 %add333, 1
  %224 = load i32, i32* @target_flags, align 4
  %and335 = and i32 %224, 33554432
  %tobool336 = icmp ne i32 %and335, 0
  %cond337 = select i1 %tobool336, i32 8, i32 4
  %div338 = sdiv i32 %sub334, %cond337
  br label %cond.end

cond.end:                                         ; preds = %cond.false.320, %cond.true.316
  %cond339 = phi i32 [ %cond319, %cond.true.316 ], [ %div338, %cond.false.320 ]
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.end, %cond.true.303
  %cond341 = phi i32 [ %cond306, %cond.true.303 ], [ %cond339, %cond.end ]
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.end.340, %lor.end.291
  %cond343 = phi i32 [ %cond293, %lor.end.291 ], [ %cond341, %cond.end.340 ]
  %add344 = add nsw i32 %178, %cond343
  store i32 %add344, i32* %endregno, align 4
  %225 = load i32, i32* %regno, align 4
  store i32 %225, i32* %j, align 4
  br label %for.cond.345

for.cond.345:                                     ; preds = %for.inc.370, %cond.end.342
  %226 = load i32, i32* %j, align 4
  %227 = load i32, i32* %endregno, align 4
  %cmp346 = icmp slt i32 %226, %227
  br i1 %cmp346, label %for.body.348, label %for.end.372

for.body.348:                                     ; preds = %for.cond.345
  %228 = load i64, i64* %i, align 8
  %229 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data349 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %229, i32 0, i32 4
  %reg350 = bitcast %union.varray_data_tag* %data349 to [1 x %struct.reg_info_def*]*
  %arrayidx351 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg350, i32 0, i64 %228
  %230 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx351, align 8
  %refs352 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %230, i32 0, i32 4
  %231 = load i32, i32* %refs352, align 4
  %232 = load i32, i32* %j, align 4
  %idxprom353 = sext i32 %232 to i64
  %arrayidx354 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_n_refs, i32 0, i64 %idxprom353
  %233 = load i32, i32* %arrayidx354, align 4
  %add355 = add nsw i32 %233, %231
  store i32 %add355, i32* %arrayidx354, align 4
  %234 = load i64, i64* %i, align 8
  %235 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data356 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %235, i32 0, i32 4
  %reg357 = bitcast %union.varray_data_tag* %data356 to [1 x %struct.reg_info_def*]*
  %arrayidx358 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg357, i32 0, i64 %234
  %236 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx358, align 8
  %freq359 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %236, i32 0, i32 5
  %237 = load i32, i32* %freq359, align 4
  %238 = load i32, i32* %j, align 4
  %idxprom360 = sext i32 %238 to i64
  %arrayidx361 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_freq, i32 0, i64 %idxprom360
  %239 = load i32, i32* %arrayidx361, align 4
  %add362 = add nsw i32 %239, %237
  store i32 %add362, i32* %arrayidx361, align 4
  %240 = load i64, i64* %i, align 8
  %241 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data363 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %241, i32 0, i32 4
  %reg364 = bitcast %union.varray_data_tag* %data363 to [1 x %struct.reg_info_def*]*
  %arrayidx365 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg364, i32 0, i64 %240
  %242 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx365, align 8
  %live_length366 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %242, i32 0, i32 7
  %243 = load i32, i32* %live_length366, align 4
  %244 = load i32, i32* %j, align 4
  %idxprom367 = sext i32 %244 to i64
  %arrayidx368 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_live_length, i32 0, i64 %idxprom367
  %245 = load i32, i32* %arrayidx368, align 4
  %add369 = add nsw i32 %245, %243
  store i32 %add369, i32* %arrayidx368, align 4
  br label %for.inc.370

for.inc.370:                                      ; preds = %for.body.348
  %246 = load i32, i32* %j, align 4
  %inc371 = add nsw i32 %246, 1
  store i32 %inc371, i32* %j, align 4
  br label %for.cond.345

for.end.372:                                      ; preds = %for.cond.345
  br label %if.end.373

if.end.373:                                       ; preds = %for.end.372, %for.body.238
  br label %for.inc.374

for.inc.374:                                      ; preds = %if.end.373
  %247 = load i64, i64* %i, align 8
  %inc375 = add i64 %247, 1
  store i64 %inc375, i64* %i, align 8
  br label %for.cond.234

for.end.376:                                      ; preds = %for.cond.234
  store i64 0, i64* %i, align 8
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.387, %for.end.376
  %248 = load i64, i64* %i, align 8
  %cmp378 = icmp ult i64 %248, 53
  br i1 %cmp378, label %for.body.380, label %for.end.389

for.body.380:                                     ; preds = %for.cond.377
  %249 = load i64, i64* %i, align 8
  %arrayidx381 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %249
  %250 = load i8, i8* %arrayidx381, align 1
  %tobool382 = icmp ne i8 %250, 0
  br i1 %tobool382, label %if.then.383, label %if.end.386

if.then.383:                                      ; preds = %for.body.380
  %251 = load i64, i64* %i, align 8
  %arrayidx384 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_n_refs, i32 0, i64 %251
  store i32 0, i32* %arrayidx384, align 4
  %252 = load i64, i64* %i, align 8
  %arrayidx385 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_freq, i32 0, i64 %252
  store i32 0, i32* %arrayidx385, align 4
  br label %if.end.386

if.end.386:                                       ; preds = %if.then.383, %for.body.380
  br label %for.inc.387

for.inc.387:                                      ; preds = %if.end.386
  %253 = load i64, i64* %i, align 8
  %inc388 = add i64 %253, 1
  store i64 %inc388, i64* %i, align 8
  br label %for.cond.377

for.end.389:                                      ; preds = %for.cond.377
  %254 = load i32, i32* @max_allocno, align 4
  %add390 = add nsw i32 %254, 64
  %sub391 = sub nsw i32 %add390, 1
  %div392 = sdiv i32 %sub391, 64
  store i32 %div392, i32* @allocno_row_words, align 4
  %255 = load i32, i32* @max_allocno, align 4
  %256 = load i32, i32* @allocno_row_words, align 4
  %mul393 = mul nsw i32 %255, %256
  %conv394 = sext i32 %mul393 to i64
  %call395 = call noalias i8* @xcalloc(i64 %conv394, i64 8)
  %257 = bitcast i8* %call395 to i64*
  store i64* %257, i64** @conflicts, align 8
  %258 = load i32, i32* @allocno_row_words, align 4
  %conv396 = sext i32 %258 to i64
  %mul397 = mul i64 %conv396, 8
  %call398 = call noalias i8* @xmalloc(i64 %mul397)
  %259 = bitcast i8* %call398 to i64*
  store i64* %259, i64** @allocnos_live, align 8
  %260 = load i32, i32* @max_allocno, align 4
  %cmp399 = icmp sgt i32 %260, 0
  br i1 %cmp399, label %if.then.401, label %if.end.511

if.then.401:                                      ; preds = %for.end.389
  call void @global_conflicts()
  call void @mirror_conflicts()
  store i64 0, i64* %i, align 8
  br label %for.cond.402

for.cond.402:                                     ; preds = %for.inc.415, %if.then.401
  %261 = load i64, i64* %i, align 8
  %262 = load i32, i32* @max_allocno, align 4
  %conv403 = sext i32 %262 to i64
  %cmp404 = icmp ult i64 %261, %conv403
  br i1 %cmp404, label %for.body.406, label %for.end.417

for.body.406:                                     ; preds = %for.cond.402
  %263 = load i64, i64* @eliminable_regset, align 8
  %neg = xor i64 %263, -1
  %264 = load i64, i64* %i, align 8
  %265 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx407 = getelementptr inbounds %struct.allocno, %struct.allocno* %265, i64 %264
  %hard_reg_conflicts = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx407, i32 0, i32 6
  %266 = load i64, i64* %hard_reg_conflicts, align 8
  %and408 = and i64 %266, %neg
  store i64 %and408, i64* %hard_reg_conflicts, align 8
  %267 = load i64, i64* @eliminable_regset, align 8
  %neg409 = xor i64 %267, -1
  %268 = load i64, i64* %i, align 8
  %269 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx410 = getelementptr inbounds %struct.allocno, %struct.allocno* %269, i64 %268
  %hard_reg_copy_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx410, i32 0, i32 8
  %270 = load i64, i64* %hard_reg_copy_preferences, align 8
  %and411 = and i64 %270, %neg409
  store i64 %and411, i64* %hard_reg_copy_preferences, align 8
  %271 = load i64, i64* @eliminable_regset, align 8
  %neg412 = xor i64 %271, -1
  %272 = load i64, i64* %i, align 8
  %273 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx413 = getelementptr inbounds %struct.allocno, %struct.allocno* %273, i64 %272
  %hard_reg_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx413, i32 0, i32 7
  %274 = load i64, i64* %hard_reg_preferences, align 8
  %and414 = and i64 %274, %neg412
  store i64 %and414, i64* %hard_reg_preferences, align 8
  br label %for.inc.415

for.inc.415:                                      ; preds = %for.body.406
  %275 = load i64, i64* %i, align 8
  %inc416 = add i64 %275, 1
  store i64 %inc416, i64* %i, align 8
  br label %for.cond.402

for.end.417:                                      ; preds = %for.cond.402
  call void @expand_preferences()
  %276 = load i32, i32* @max_allocno, align 4
  %conv418 = sext i32 %276 to i64
  %mul419 = mul i64 %conv418, 4
  %call420 = call noalias i8* @xmalloc(i64 %mul419)
  %277 = bitcast i8* %call420 to i32*
  store i32* %277, i32** @allocno_order, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.428, %for.end.417
  %278 = load i64, i64* %i, align 8
  %279 = load i32, i32* @max_allocno, align 4
  %conv422 = sext i32 %279 to i64
  %cmp423 = icmp ult i64 %278, %conv422
  br i1 %cmp423, label %for.body.425, label %for.end.430

for.body.425:                                     ; preds = %for.cond.421
  %280 = load i64, i64* %i, align 8
  %conv426 = trunc i64 %280 to i32
  %281 = load i64, i64* %i, align 8
  %282 = load i32*, i32** @allocno_order, align 8
  %arrayidx427 = getelementptr inbounds i32, i32* %282, i64 %281
  store i32 %conv426, i32* %arrayidx427, align 4
  br label %for.inc.428

for.inc.428:                                      ; preds = %for.body.425
  %283 = load i64, i64* %i, align 8
  %inc429 = add i64 %283, 1
  store i64 %inc429, i64* %i, align 8
  br label %for.cond.421

for.end.430:                                      ; preds = %for.cond.421
  store i64 0, i64* %i, align 8
  br label %for.cond.431

for.cond.431:                                     ; preds = %for.inc.452, %for.end.430
  %284 = load i64, i64* %i, align 8
  %285 = load i32, i32* @max_allocno, align 4
  %conv432 = sext i32 %285 to i64
  %cmp433 = icmp ult i64 %284, %conv432
  br i1 %cmp433, label %for.body.435, label %for.end.454

for.body.435:                                     ; preds = %for.cond.431
  %286 = load i64, i64* %i, align 8
  %287 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx436 = getelementptr inbounds %struct.allocno, %struct.allocno* %287, i64 %286
  %size437 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx436, i32 0, i32 1
  %288 = load i32, i32* %size437, align 4
  %cmp438 = icmp eq i32 %288, 0
  br i1 %cmp438, label %if.then.440, label %if.end.443

if.then.440:                                      ; preds = %for.body.435
  %289 = load i64, i64* %i, align 8
  %290 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx441 = getelementptr inbounds %struct.allocno, %struct.allocno* %290, i64 %289
  %size442 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx441, i32 0, i32 1
  store i32 1, i32* %size442, align 4
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.440, %for.body.435
  %291 = load i64, i64* %i, align 8
  %292 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx444 = getelementptr inbounds %struct.allocno, %struct.allocno* %292, i64 %291
  %live_length445 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx444, i32 0, i32 5
  %293 = load i32, i32* %live_length445, align 4
  %cmp446 = icmp eq i32 %293, 0
  br i1 %cmp446, label %if.then.448, label %if.end.451

if.then.448:                                      ; preds = %if.end.443
  %294 = load i64, i64* %i, align 8
  %295 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx449 = getelementptr inbounds %struct.allocno, %struct.allocno* %295, i64 %294
  %live_length450 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx449, i32 0, i32 5
  store i32 -1, i32* %live_length450, align 4
  br label %if.end.451

if.end.451:                                       ; preds = %if.then.448, %if.end.443
  br label %for.inc.452

for.inc.452:                                      ; preds = %if.end.451
  %296 = load i64, i64* %i, align 8
  %inc453 = add i64 %296, 1
  store i64 %inc453, i64* %i, align 8
  br label %for.cond.431

for.end.454:                                      ; preds = %for.cond.431
  %297 = load i32*, i32** @allocno_order, align 8
  %298 = bitcast i32* %297 to i8*
  %299 = load i32, i32* @max_allocno, align 4
  call void @specqsort(i8* %298, i32 %299, i32 4, i32 (...)* bitcast (i32 (i8*, i8*)* @allocno_compare to i32 (...)*))
  call void @prune_preferences()
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool455 = icmp ne %struct._IO_FILE* %300, null
  br i1 %tobool455, label %if.then.456, label %if.end.457

if.then.456:                                      ; preds = %for.end.454
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @dump_conflicts(%struct._IO_FILE* %301)
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.456, %for.end.454
  store i64 0, i64* %i, align 8
  br label %for.cond.458

for.cond.458:                                     ; preds = %for.inc.508, %if.end.457
  %302 = load i64, i64* %i, align 8
  %303 = load i32, i32* @max_allocno, align 4
  %conv459 = sext i32 %303 to i64
  %cmp460 = icmp ult i64 %302, %conv459
  br i1 %cmp460, label %for.body.462, label %for.end.510

for.body.462:                                     ; preds = %for.cond.458
  %304 = load i64, i64* %i, align 8
  %305 = load i32*, i32** @allocno_order, align 8
  %arrayidx463 = getelementptr inbounds i32, i32* %305, i64 %304
  %306 = load i32, i32* %arrayidx463, align 4
  %idxprom464 = sext i32 %306 to i64
  %307 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx465 = getelementptr inbounds %struct.allocno, %struct.allocno* %307, i64 %idxprom464
  %reg466 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx465, i32 0, i32 0
  %308 = load i32, i32* %reg466, align 4
  %idxprom467 = sext i32 %308 to i64
  %309 = load i16*, i16** @reg_renumber, align 8
  %arrayidx468 = getelementptr inbounds i16, i16* %309, i64 %idxprom467
  %310 = load i16, i16* %arrayidx468, align 2
  %conv469 = sext i16 %310 to i32
  %cmp470 = icmp slt i32 %conv469, 0
  br i1 %cmp470, label %land.lhs.true.472, label %if.end.507

land.lhs.true.472:                                ; preds = %for.body.462
  %311 = load i64, i64* %i, align 8
  %312 = load i32*, i32** @allocno_order, align 8
  %arrayidx473 = getelementptr inbounds i32, i32* %312, i64 %311
  %313 = load i32, i32* %arrayidx473, align 4
  %idxprom474 = sext i32 %313 to i64
  %314 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx475 = getelementptr inbounds %struct.allocno, %struct.allocno* %314, i64 %idxprom474
  %reg476 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx475, i32 0, i32 0
  %315 = load i32, i32* %reg476, align 4
  %idxprom477 = sext i32 %315 to i64
  %316 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data478 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %316, i32 0, i32 4
  %reg479 = bitcast %union.varray_data_tag* %data478 to [1 x %struct.reg_info_def*]*
  %arrayidx480 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg479, i32 0, i64 %idxprom477
  %317 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx480, align 8
  %live_length481 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %317, i32 0, i32 7
  %318 = load i32, i32* %live_length481, align 4
  %cmp482 = icmp sge i32 %318, 0
  br i1 %cmp482, label %if.then.484, label %if.end.507

if.then.484:                                      ; preds = %land.lhs.true.472
  %319 = load i64, i64* %i, align 8
  %320 = load i32*, i32** @allocno_order, align 8
  %arrayidx485 = getelementptr inbounds i32, i32* %320, i64 %319
  %321 = load i32, i32* %arrayidx485, align 4
  call void @find_reg(i32 %321, i64 0, i32 0, i32 0, i32 0)
  %322 = load i64, i64* %i, align 8
  %323 = load i32*, i32** @allocno_order, align 8
  %arrayidx486 = getelementptr inbounds i32, i32* %323, i64 %322
  %324 = load i32, i32* %arrayidx486, align 4
  %idxprom487 = sext i32 %324 to i64
  %325 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx488 = getelementptr inbounds %struct.allocno, %struct.allocno* %325, i64 %idxprom487
  %reg489 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx488, i32 0, i32 0
  %326 = load i32, i32* %reg489, align 4
  %idxprom490 = sext i32 %326 to i64
  %327 = load i16*, i16** @reg_renumber, align 8
  %arrayidx491 = getelementptr inbounds i16, i16* %327, i64 %idxprom490
  %328 = load i16, i16* %arrayidx491, align 2
  %conv492 = sext i16 %328 to i32
  %cmp493 = icmp sge i32 %conv492, 0
  br i1 %cmp493, label %if.then.495, label %if.end.496

if.then.495:                                      ; preds = %if.then.484
  br label %for.inc.508

if.end.496:                                       ; preds = %if.then.484
  %329 = load i64, i64* %i, align 8
  %330 = load i32*, i32** @allocno_order, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %330, i64 %329
  %331 = load i32, i32* %arrayidx497, align 4
  %idxprom498 = sext i32 %331 to i64
  %332 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx499 = getelementptr inbounds %struct.allocno, %struct.allocno* %332, i64 %idxprom498
  %reg500 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx499, i32 0, i32 0
  %333 = load i32, i32* %reg500, align 4
  %call501 = call i32 @reg_alternate_class(i32 %333)
  %cmp502 = icmp ne i32 %call501, 0
  br i1 %cmp502, label %if.then.504, label %if.end.506

if.then.504:                                      ; preds = %if.end.496
  %334 = load i64, i64* %i, align 8
  %335 = load i32*, i32** @allocno_order, align 8
  %arrayidx505 = getelementptr inbounds i32, i32* %335, i64 %334
  %336 = load i32, i32* %arrayidx505, align 4
  call void @find_reg(i32 %336, i64 0, i32 1, i32 0, i32 0)
  br label %if.end.506

if.end.506:                                       ; preds = %if.then.504, %if.end.496
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %land.lhs.true.472, %for.body.462
  br label %for.inc.508

for.inc.508:                                      ; preds = %if.end.507, %if.then.495
  %337 = load i64, i64* %i, align 8
  %inc509 = add i64 %337, 1
  store i64 %inc509, i64* %i, align 8
  br label %for.cond.458

for.end.510:                                      ; preds = %for.cond.458
  %338 = load i32*, i32** @allocno_order, align 8
  %339 = bitcast i32* %338 to i8*
  call void @free(i8* %339) #3
  br label %if.end.511

if.end.511:                                       ; preds = %for.end.510, %for.end.389
  %call512 = call %struct.rtx_def* @get_insns()
  call void @build_insn_chain(%struct.rtx_def* %call512)
  %call513 = call %struct.rtx_def* @get_insns()
  %call514 = call i32 @reload(%struct.rtx_def* %call513, i32 1)
  store i32 %call514, i32* %retval1, align 4
  %340 = load i32*, i32** @reg_allocno, align 8
  %341 = bitcast i32* %340 to i8*
  call void @free(i8* %341) #3
  %342 = load i32*, i32** @reg_may_share, align 8
  %343 = bitcast i32* %342 to i8*
  call void @free(i8* %343) #3
  %344 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %345 = bitcast %struct.allocno* %344 to i8*
  call void @free(i8* %345) #3
  %346 = load i64*, i64** @conflicts, align 8
  %347 = bitcast i64* %346 to i8*
  call void @free(i8* %347) #3
  %348 = load i64*, i64** @allocnos_live, align 8
  %349 = bitcast i64* %348 to i8*
  call void @free(i8* %349) #3
  %350 = load i32, i32* %retval1, align 4
  ret i32 %350
}

declare i32 @ix86_frame_pointer_required() #1

declare noalias i8* @xmalloc(i64) #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @global_conflicts() #0 {
entry:
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %block_start_allocnos = alloca i32*, align 8
  %old = alloca %struct.bitmap_head_def*, align 8
  %ax = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %a = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %code = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %used_in_output = alloca i32, align 4
  %i165 = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %0 = load i32, i32* @max_parallel, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %mul1 = mul i64 %mul, 2
  %call = call noalias i8* @xmalloc(i64 %mul1)
  %1 = bitcast i8* %call to %struct.rtx_def**
  store %struct.rtx_def** %1, %struct.rtx_def*** @regs_set, align 8
  %2 = load i32, i32* @max_allocno, align 4
  %conv2 = sext i32 %2 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call noalias i8* @xmalloc(i64 %mul3)
  %3 = bitcast i8* %call4 to i32*
  store i32* %3, i32** %block_start_allocnos, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.254, %entry
  %4 = load i32, i32* %b, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.256

for.body:                                         ; preds = %for.cond
  %6 = load i64*, i64** @allocnos_live, align 8
  %7 = bitcast i64* %6 to i8*
  %8 = load i32, i32* @allocno_row_words, align 4
  %conv6 = sext i32 %8 to i64
  %mul7 = mul i64 %conv6, 8
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 %mul7, i32 1, i1 false)
  %9 = load i32, i32* %b, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 8
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  store %struct.bitmap_head_def* %12, %struct.bitmap_head_def** %old, align 8
  store i32 0, i32* %ax, align 4
  br label %do.body

do.body:                                          ; preds = %for.body
  store i64 0, i64* @hard_regs_live, align 8
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %old, align 8
  call void @reg_set_to_hard_reg_set(i64* @hard_regs_live, %struct.bitmap_head_def* %13)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %do.end
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %old, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %14, i32 0, i32 0
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %15, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 53, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.8
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp9 = icmp ne %struct.bitmap_element_def* %16, null
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i32 0, i32 2
  %18 = load i32, i32* %indx, align 4
  %19 = load i32, i32* %indx_, align 4
  %cmp11 = icmp ult i32 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %21, i32 0, i32 0
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %22, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp13 = icmp ne %struct.bitmap_element_def* %23, null
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %24 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %24, i32 0, i32 2
  %25 = load i32, i32* %indx15, align 4
  %26 = load i32, i32* %indx_, align 4
  %cmp16 = icmp ne i32 %25, %26
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.74, %if.end
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp19 = icmp ne %struct.bitmap_element_def* %27, null
  br i1 %cmp19, label %for.body.21, label %for.end.76

for.body.21:                                      ; preds = %for.cond.18
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.71, %for.body.21
  %28 = load i32, i32* %word_num_, align 4
  %cmp23 = icmp ult i32 %28, 2
  br i1 %cmp23, label %for.body.25, label %for.end.73

for.body.25:                                      ; preds = %for.cond.22
  %29 = load i32, i32* %word_num_, align 4
  %idxprom26 = zext i32 %29 to i64
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %30, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom26
  %31 = load i64, i64* %arrayidx27, align 8
  store i64 %31, i64* %word_, align 8
  %32 = load i64, i64* %word_, align 8
  %cmp28 = icmp ne i64 %32, 0
  br i1 %cmp28, label %if.then.30, label %if.end.70

if.then.30:                                       ; preds = %for.body.25
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.then.30
  %33 = load i32, i32* %bit_num_, align 4
  %cmp32 = icmp ult i32 %33, 64
  br i1 %cmp32, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.31
  %34 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %34 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %35 = load i64, i64* %word_, align 8
  %36 = load i64, i64* %mask_, align 8
  %and = and i64 %35, %36
  %cmp35 = icmp ne i64 %and, 0
  br i1 %cmp35, label %if.then.37, label %if.end.68

if.then.37:                                       ; preds = %for.body.34
  %37 = load i64, i64* %mask_, align 8
  %neg = xor i64 %37, -1
  %38 = load i64, i64* %word_, align 8
  %and38 = and i64 %38, %neg
  store i64 %and38, i64* %word_, align 8
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx39 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %39, i32 0, i32 2
  %40 = load i32, i32* %indx39, align 4
  %mul40 = mul i32 %40, 128
  %41 = load i32, i32* %word_num_, align 4
  %mul41 = mul i32 %41, 64
  %add = add i32 %mul40, %mul41
  %42 = load i32, i32* %bit_num_, align 4
  %add42 = add i32 %add, %42
  store i32 %add42, i32* %i, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %43 to i64
  %44 = load i32*, i32** @reg_allocno, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %44, i64 %idxprom43
  %45 = load i32, i32* %arrayidx44, align 4
  store i32 %45, i32* %a, align 4
  %46 = load i32, i32* %a, align 4
  %cmp45 = icmp sge i32 %46, 0
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.then.37
  %47 = load i32, i32* %a, align 4
  %rem = urem i32 %47, 64
  %sh_prom48 = zext i32 %rem to i64
  %shl49 = shl i64 1, %sh_prom48
  %48 = load i32, i32* %a, align 4
  %div = udiv i32 %48, 64
  %idxprom50 = zext i32 %div to i64
  %49 = load i64*, i64** @allocnos_live, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %49, i64 %idxprom50
  %50 = load i64, i64* %arrayidx51, align 8
  %or = or i64 %50, %shl49
  store i64 %or, i64* %arrayidx51, align 8
  %51 = load i32, i32* %a, align 4
  %52 = load i32, i32* %ax, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %ax, align 4
  %idxprom52 = sext i32 %52 to i64
  %53 = load i32*, i32** %block_start_allocnos, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %53, i64 %idxprom52
  store i32 %51, i32* %arrayidx53, align 4
  br label %if.end.63

if.else:                                          ; preds = %if.then.37
  %54 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load i16*, i16** @reg_renumber, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %55, i64 %idxprom54
  %56 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %56 to i32
  store i32 %conv56, i32* %a, align 4
  %cmp57 = icmp sge i32 %conv56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.else
  %57 = load i32, i32* %a, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %58 to i64
  %59 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %59, i32 0, i32 3
  %60 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %60, i32 0, i32 12
  %61 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx61 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %61, i64 %idxprom60
  %62 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx61, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load = load i32, i32* %63, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  call void @mark_reg_live_nc(i32 %57, i32 %bf.clear)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.else
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.47
  %64 = load i64, i64* %word_, align 8
  %cmp64 = icmp eq i64 %64, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.63
  br label %for.end

if.end.67:                                        ; preds = %if.end.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %65 = load i32, i32* %bit_num_, align 4
  %inc69 = add i32 %65, 1
  store i32 %inc69, i32* %bit_num_, align 4
  br label %for.cond.31

for.end:                                          ; preds = %if.then.66, %for.cond.31
  br label %if.end.70

if.end.70:                                        ; preds = %for.end, %for.body.25
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %66 = load i32, i32* %word_num_, align 4
  %inc72 = add i32 %66, 1
  store i32 %inc72, i32* %word_num_, align 4
  br label %for.cond.22

for.end.73:                                       ; preds = %for.cond.22
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.73
  %67 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next75 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %67, i32 0, i32 0
  %68 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next75, align 8
  store %struct.bitmap_element_def* %68, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.18

for.end.76:                                       ; preds = %for.cond.18
  br label %do.end.77

do.end.77:                                        ; preds = %for.end.76
  %69 = load i32*, i32** %block_start_allocnos, align 8
  %70 = load i32, i32* %ax, align 4
  call void @record_conflicts(i32* %69, i32 %70)
  %71 = load i32, i32* %b, align 4
  %idxprom78 = sext i32 %71 to i64
  %72 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data79 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %72, i32 0, i32 4
  %bb80 = bitcast %union.varray_data_tag* %data79 to [1 x %struct.basic_block_def*]*
  %arrayidx81 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb80, i32 0, i64 %idxprom78
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx81, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %73, i32 0, i32 4
  %74 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %74, %struct.edge_def** %e, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.88, %do.end.77
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %75, null
  br i1 %tobool, label %for.body.83, label %for.end.89

for.body.83:                                      ; preds = %for.cond.82
  %76 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %76, i32 0, i32 6
  %77 = load i32, i32* %flags, align 4
  %and84 = and i32 %77, 2
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.body.83
  br label %for.end.89

if.end.87:                                        ; preds = %for.body.83
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %78 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i32 0, i32 0
  %79 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %79, %struct.edge_def** %e, align 8
  br label %for.cond.82

for.end.89:                                       ; preds = %if.then.86, %for.cond.82
  %80 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp90 = icmp ne %struct.edge_def* %80, null
  br i1 %cmp90, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %for.end.89
  store i32 8, i32* %ax, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.97, %if.then.92
  %81 = load i32, i32* %ax, align 4
  %cmp94 = icmp sle i32 %81, 15
  br i1 %cmp94, label %for.body.96, label %for.end.99

for.body.96:                                      ; preds = %for.cond.93
  %82 = load i32, i32* %ax, align 4
  call void @record_one_conflict(i32 %82)
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.96
  %83 = load i32, i32* %ax, align 4
  %inc98 = add nsw i32 %83, 1
  store i32 %inc98, i32* %ax, align 4
  br label %for.cond.93

for.end.99:                                       ; preds = %for.cond.93
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %for.end.89
  %84 = load i32, i32* %b, align 4
  %idxprom101 = sext i32 %84 to i64
  %85 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data102 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %85, i32 0, i32 4
  %bb103 = bitcast %union.varray_data_tag* %data102 to [1 x %struct.basic_block_def*]*
  %arrayidx104 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb103, i32 0, i64 %idxprom101
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx104, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %86, i32 0, i32 0
  %87 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %insn, align 8
  br label %while.body.106

while.body.106:                                   ; preds = %if.end.100, %if.end.249
  %88 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load107 = load i32, i32* %89, align 8
  %bf.clear108 = and i32 %bf.load107, 65535
  store i32 %bf.clear108, i32* %code, align 4
  store i32 0, i32* @n_regs_set, align 4
  %90 = load i32, i32* %code, align 4
  %cmp109 = icmp eq i32 %90, 32
  br i1 %cmp109, label %if.then.116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.106
  %91 = load i32, i32* %code, align 4
  %cmp111 = icmp eq i32 %91, 34
  br i1 %cmp111, label %if.then.116, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false
  %92 = load i32, i32* %code, align 4
  %cmp114 = icmp eq i32 %92, 33
  br i1 %cmp114, label %if.then.116, label %if.end.241

if.then.116:                                      ; preds = %lor.lhs.false.113, %lor.lhs.false, %while.body.106
  %93 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @note_stores(%struct.rtx_def* %94, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @mark_reg_clobber, i8* null)
  %95 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 6
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %link, align 8
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.134, %if.then.116
  %97 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool122 = icmp ne %struct.rtx_def* %97, null
  br i1 %tobool122, label %for.body.123, label %for.end.138

for.body.123:                                     ; preds = %for.cond.121
  %98 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load124 = load i32, i32* %99, align 8
  %bf.lshr125 = lshr i32 %bf.load124, 16
  %bf.clear126 = and i32 %bf.lshr125, 255
  %cmp127 = icmp eq i32 %bf.clear126, 1
  br i1 %cmp127, label %if.then.129, label %if.end.133

if.then.129:                                      ; preds = %for.body.123
  %100 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx132, align 8
  call void @mark_reg_death(%struct.rtx_def* %101)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.129, %for.body.123
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %102 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 1
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %link, align 8
  br label %for.cond.121

for.end.138:                                      ; preds = %for.cond.121
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 3
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  call void @note_stores(%struct.rtx_def* %105, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @mark_reg_store, i8* null)
  %106 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 3
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load145 = load i32, i32* %108, align 8
  %bf.clear146 = and i32 %bf.load145, 65535
  %cmp147 = icmp eq i32 %bf.clear146, 39
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.223

land.lhs.true.149:                                ; preds = %for.end.138
  %109 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call150 = call i32 @multiple_sets(%struct.rtx_def* %109)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.then.152, label %if.end.223

if.then.152:                                      ; preds = %land.lhs.true.149
  %110 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 6
  %rtx155 = bitcast %union.rtunion_def* %arrayidx154 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx155, align 8
  store %struct.rtx_def* %111, %struct.rtx_def** %link, align 8
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.218, %if.then.152
  %112 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool157 = icmp ne %struct.rtx_def* %112, null
  br i1 %tobool157, label %for.body.158, label %for.end.222

for.body.158:                                     ; preds = %for.cond.156
  %113 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load159 = load i32, i32* %114, align 8
  %bf.lshr160 = lshr i32 %bf.load159, 16
  %bf.clear161 = and i32 %bf.lshr160, 255
  %cmp162 = icmp eq i32 %bf.clear161, 1
  br i1 %cmp162, label %if.then.164, label %if.end.217

if.then.164:                                      ; preds = %for.body.158
  store i32 0, i32* %used_in_output, align 4
  %115 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 0
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %reg, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld169 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld169, i32 0, i64 3
  %rtx171 = bitcast %union.rtunion_def* %arrayidx170 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx171, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtvec_def**
  %119 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %119, i32 0, i32 0
  %120 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %120, 1
  store i32 %sub, i32* %i165, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.212, %if.then.164
  %121 = load i32, i32* %i165, align 4
  %cmp175 = icmp sge i32 %121, 0
  br i1 %cmp175, label %for.body.177, label %for.end.213

for.body.177:                                     ; preds = %for.cond.174
  %122 = load i32, i32* %i165, align 4
  %idxprom178 = sext i32 %122 to i64
  %123 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 3
  %rtx181 = bitcast %union.rtunion_def* %arrayidx180 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx181, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 0
  %rtvec184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtvec_def**
  %125 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec184, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %125, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom178
  %126 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx185, align 8
  store %struct.rtx_def* %126, %struct.rtx_def** %set, align 8
  %127 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load186 = load i32, i32* %128, align 8
  %bf.clear187 = and i32 %bf.load186, 65535
  %cmp188 = icmp eq i32 %bf.clear187, 47
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.211

land.lhs.true.190:                                ; preds = %for.body.177
  %129 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 0
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load194 = load i32, i32* %131, align 8
  %bf.clear195 = and i32 %bf.load194, 65535
  %cmp196 = icmp ne i32 %bf.clear195, 61
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.211

land.lhs.true.198:                                ; preds = %land.lhs.true.190
  %132 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld199, i32 0, i64 0
  %rtx201 = bitcast %union.rtunion_def* %arrayidx200 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx201, align 8
  %call202 = call i32 @rtx_equal_p(%struct.rtx_def* %132, %struct.rtx_def* %134)
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.end.211, label %land.lhs.true.204

land.lhs.true.204:                                ; preds = %land.lhs.true.198
  %135 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld205 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld205, i32 0, i64 0
  %rtx207 = bitcast %union.rtunion_def* %arrayidx206 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx207, align 8
  %call208 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %135, %struct.rtx_def* %137)
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %land.lhs.true.204
  store i32 1, i32* %used_in_output, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %land.lhs.true.204, %land.lhs.true.198, %land.lhs.true.190, %for.body.177
  br label %for.inc.212

for.inc.212:                                      ; preds = %if.end.211
  %138 = load i32, i32* %i165, align 4
  %dec = add nsw i32 %138, -1
  store i32 %dec, i32* %i165, align 4
  br label %for.cond.174

for.end.213:                                      ; preds = %for.cond.174
  %139 = load i32, i32* %used_in_output, align 4
  %tobool214 = icmp ne i32 %139, 0
  br i1 %tobool214, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %for.end.213
  %140 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  call void @mark_reg_conflicts(%struct.rtx_def* %140)
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %for.end.213
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %for.body.158
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217
  %141 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 1
  %rtx221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx221, align 8
  store %struct.rtx_def* %142, %struct.rtx_def** %link, align 8
  br label %for.cond.156

for.end.222:                                      ; preds = %for.cond.156
  br label %if.end.223

if.end.223:                                       ; preds = %for.end.222, %land.lhs.true.149, %for.end.138
  br label %while.cond.224

while.cond.224:                                   ; preds = %if.end.239, %if.end.223
  %143 = load i32, i32* @n_regs_set, align 4
  %dec225 = add nsw i32 %143, -1
  store i32 %dec225, i32* @n_regs_set, align 4
  %cmp226 = icmp sgt i32 %143, 0
  br i1 %cmp226, label %while.body.228, label %while.end.240

while.body.228:                                   ; preds = %while.cond.224
  %144 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %145 = load i32, i32* @n_regs_set, align 4
  %idxprom229 = sext i32 %145 to i64
  %146 = load %struct.rtx_def**, %struct.rtx_def*** @regs_set, align 8
  %arrayidx230 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %146, i64 %idxprom229
  %147 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx230, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx232 to i32*
  %148 = load i32, i32* %rtuint, align 4
  %call233 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %144, i32 10, i32 %148)
  store %struct.rtx_def* %call233, %struct.rtx_def** %note, align 8
  %149 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool234 = icmp ne %struct.rtx_def* %149, null
  br i1 %tobool234, label %if.then.235, label %if.end.239

if.then.235:                                      ; preds = %while.body.228
  %150 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld236, i32 0, i64 0
  %rtx238 = bitcast %union.rtunion_def* %arrayidx237 to %struct.rtx_def**
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rtx238, align 8
  call void @mark_reg_death(%struct.rtx_def* %151)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.235, %while.body.228
  br label %while.cond.224

while.end.240:                                    ; preds = %while.cond.224
  br label %if.end.241

if.end.241:                                       ; preds = %while.end.240, %lor.lhs.false.113
  %152 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %153 = load i32, i32* %b, align 4
  %idxprom242 = sext i32 %153 to i64
  %154 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data243 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %154, i32 0, i32 4
  %bb244 = bitcast %union.varray_data_tag* %data243 to [1 x %struct.basic_block_def*]*
  %arrayidx245 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb244, i32 0, i64 %idxprom242
  %155 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx245, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %155, i32 0, i32 1
  %156 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp246 = icmp eq %struct.rtx_def* %152, %156
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.241
  br label %while.end.253

if.end.249:                                       ; preds = %if.end.241
  %157 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 2
  %rtx252 = bitcast %union.rtunion_def* %arrayidx251 to %struct.rtx_def**
  %158 = load %struct.rtx_def*, %struct.rtx_def** %rtx252, align 8
  store %struct.rtx_def* %158, %struct.rtx_def** %insn, align 8
  br label %while.body.106

while.end.253:                                    ; preds = %if.then.248
  br label %for.inc.254

for.inc.254:                                      ; preds = %while.end.253
  %159 = load i32, i32* %b, align 4
  %inc255 = add nsw i32 %159, 1
  store i32 %inc255, i32* %b, align 4
  br label %for.cond

for.end.256:                                      ; preds = %for.cond
  %160 = load i32*, i32** %block_start_allocnos, align 8
  %161 = bitcast i32* %160 to i8*
  call void @free(i8* %161) #3
  %162 = load %struct.rtx_def**, %struct.rtx_def*** @regs_set, align 8
  %163 = bitcast %struct.rtx_def** %162 to i8*
  call void @free(i8* %163) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mirror_conflicts() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %rw = alloca i32, align 4
  %rwb = alloca i32, align 4
  %p = alloca i64*, align 8
  %q0 = alloca i64*, align 8
  %q1 = alloca i64*, align 8
  %q2 = alloca i64*, align 8
  %mask = alloca i64, align 8
  %word = alloca i64, align 8
  %0 = load i32, i32* @allocno_row_words, align 4
  store i32 %0, i32* %rw, align 4
  %1 = load i32, i32* %rw, align 4
  %mul = mul nsw i32 %1, 64
  store i32 %mul, i32* %rwb, align 4
  %2 = load i64*, i64** @conflicts, align 8
  store i64* %2, i64** %p, align 8
  %3 = load i64*, i64** @conflicts, align 8
  store i64* %3, i64** %q0, align 8
  %4 = load i32, i32* @max_allocno, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  store i64 1, i64* %mask, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %mask, align 8
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i64 1, i64* %mask, align 8
  %7 = load i64*, i64** %q0, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %7, i32 1
  store i64* %incdec.ptr, i64** %q0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load i32, i32* @allocno_row_words, align 4
  %sub1 = sub nsw i32 %8, 1
  store i32 %sub1, i32* %j, align 4
  %9 = load i64*, i64** %q0, align 8
  store i64* %9, i64** %q1, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.12, %if.end
  %10 = load i32, i32* %j, align 4
  %cmp3 = icmp sge i32 %10, 0
  br i1 %cmp3, label %for.body.4, label %for.end.15

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i64*, i64** %p, align 8
  %incdec.ptr5 = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %incdec.ptr5, i64** %p, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %word, align 8
  %13 = load i64*, i64** %q1, align 8
  store i64* %13, i64** %q2, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.4
  %14 = load i64, i64* %word, align 8
  %tobool7 = icmp ne i64 %14, 0
  br i1 %tobool7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %15 = load i64, i64* %word, align 8
  %and = and i64 %15, 1
  %tobool9 = icmp ne i64 %and, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body.8
  %16 = load i64, i64* %mask, align 8
  %17 = load i64*, i64** %q2, align 8
  %18 = load i64, i64* %17, align 8
  %or = or i64 %18, %16
  store i64 %or, i64* %17, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %19 = load i64, i64* %word, align 8
  %shr = lshr i64 %19, 1
  store i64 %shr, i64* %word, align 8
  %20 = load i32, i32* %rw, align 4
  %21 = load i64*, i64** %q2, align 8
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i64, i64* %21, i64 %idx.ext
  store i64* %add.ptr, i64** %q2, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %j, align 4
  %23 = load i32, i32* %rwb, align 4
  %24 = load i64*, i64** %q1, align 8
  %idx.ext13 = sext i32 %23 to i64
  %add.ptr14 = getelementptr inbounds i64, i64* %24, i64 %idx.ext13
  store i64* %add.ptr14, i64** %q1, align 8
  br label %for.cond.2

for.end.15:                                       ; preds = %for.cond.2
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end.15
  %25 = load i32, i32* %i, align 4
  %dec17 = add nsw i32 %25, -1
  store i32 %dec17, i32* %i, align 4
  %26 = load i64, i64* %mask, align 8
  %shl = shl i64 %26, 1
  store i64 %shl, i64* %mask, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @expand_preferences() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.171, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end.175

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %land.lhs.true, label %if.end.170

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom4 = sext i32 %bf.clear3 to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 105
  br i1 %cmp7, label %cond.true, label %cond.false.22

cond.true:                                        ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load10 = load i32, i32* %9, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 47
  br i1 %cmp12, label %cond.true.14, label %cond.false

cond.true.14:                                     ; preds = %cond.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %call21 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %12, %struct.rtx_def* %14)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.14
  %cond = phi %struct.rtx_def* [ %11, %cond.true.14 ], [ %call21, %cond.false ]
  br label %cond.end.23

cond.false.22:                                    ; preds = %land.lhs.true
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.end
  %cond24 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.22 ]
  store %struct.rtx_def* %cond24, %struct.rtx_def** %set, align 8
  %cmp25 = icmp ne %struct.rtx_def* %cond24, null
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.170

land.lhs.true.27:                                 ; preds = %cond.end.23
  %15 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load31 = load i32, i32* %17, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 61
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.170

land.lhs.true.35:                                 ; preds = %land.lhs.true.27
  %18 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %20 = load i32, i32* %rtuint, align 4
  %idxprom41 = zext i32 %20 to i64
  %21 = load i32*, i32** @reg_allocno, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %21, i64 %idxprom41
  %22 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp sge i32 %22, 0
  br i1 %cmp43, label %if.then, label %if.end.170

if.then:                                          ; preds = %land.lhs.true.35
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 6
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %link, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc, %if.then
  %25 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool49 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool49, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.48
  %26 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load51 = load i32, i32* %27, align 8
  %bf.lshr = lshr i32 %bf.load51, 16
  %bf.clear52 = and i32 %bf.lshr, 255
  %cmp53 = icmp eq i32 %bf.clear52, 1
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.166

land.lhs.true.55:                                 ; preds = %for.body.50
  %28 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load59 = load i32, i32* %30, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 61
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.166

land.lhs.true.63:                                 ; preds = %land.lhs.true.55
  %31 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtuint69 = bitcast %union.rtunion_def* %arrayidx68 to i32*
  %33 = load i32, i32* %rtuint69, align 4
  %idxprom70 = zext i32 %33 to i64
  %34 = load i32*, i32** @reg_allocno, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %34, i64 %idxprom70
  %35 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp sge i32 %35, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.166

land.lhs.true.74:                                 ; preds = %land.lhs.true.63
  %36 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtuint80 = bitcast %union.rtunion_def* %arrayidx79 to i32*
  %38 = load i32, i32* %rtuint80, align 4
  %idxprom81 = zext i32 %38 to i64
  %39 = load i32*, i32** @reg_allocno, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %39, i64 %idxprom81
  %40 = load i32, i32* %arrayidx82, align 4
  %41 = load i32, i32* @allocno_row_words, align 4
  %mul = mul nsw i32 %40, %41
  %42 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtuint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %44 = load i32, i32* %rtuint88, align 4
  %idxprom89 = zext i32 %44 to i64
  %45 = load i32*, i32** @reg_allocno, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %45, i64 %idxprom89
  %46 = load i32, i32* %arrayidx90, align 4
  %div = udiv i32 %46, 64
  %add = add i32 %mul, %div
  %idxprom91 = zext i32 %add to i64
  %47 = load i64*, i64** @conflicts, align 8
  %arrayidx92 = getelementptr inbounds i64, i64* %47, i64 %idxprom91
  %48 = load i64, i64* %arrayidx92, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtuint98 = bitcast %union.rtunion_def* %arrayidx97 to i32*
  %51 = load i32, i32* %rtuint98, align 4
  %idxprom99 = zext i32 %51 to i64
  %52 = load i32*, i32** @reg_allocno, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %52, i64 %idxprom99
  %53 = load i32, i32* %arrayidx100, align 4
  %rem = urem i32 %53, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %48, %shl
  %tobool101 = icmp ne i64 %and, 0
  br i1 %tobool101, label %if.end.166, label %if.then.102

if.then.102:                                      ; preds = %land.lhs.true.74
  %54 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 0
  %rtuint108 = bitcast %union.rtunion_def* %arrayidx107 to i32*
  %56 = load i32, i32* %rtuint108, align 4
  %idxprom109 = zext i32 %56 to i64
  %57 = load i32*, i32** @reg_allocno, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %57, i64 %idxprom109
  %58 = load i32, i32* %arrayidx110, align 4
  store i32 %58, i32* %a1, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtx113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx113, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtuint116 = bitcast %union.rtunion_def* %arrayidx115 to i32*
  %61 = load i32, i32* %rtuint116, align 4
  %idxprom117 = zext i32 %61 to i64
  %62 = load i32*, i32** @reg_allocno, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %62, i64 %idxprom117
  %63 = load i32, i32* %arrayidx118, align 4
  store i32 %63, i32* %a2, align 4
  %64 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 1
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx124, align 8
  %cmp125 = icmp eq %struct.rtx_def* %65, %67
  br i1 %cmp125, label %if.then.127, label %if.end

if.then.127:                                      ; preds = %if.then.102
  %68 = load i32, i32* %a2, align 4
  %idxprom128 = sext i32 %68 to i64
  %69 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx129 = getelementptr inbounds %struct.allocno, %struct.allocno* %69, i64 %idxprom128
  %hard_reg_copy_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx129, i32 0, i32 8
  %70 = load i64, i64* %hard_reg_copy_preferences, align 8
  %71 = load i32, i32* %a1, align 4
  %idxprom130 = sext i32 %71 to i64
  %72 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx131 = getelementptr inbounds %struct.allocno, %struct.allocno* %72, i64 %idxprom130
  %hard_reg_copy_preferences132 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx131, i32 0, i32 8
  %73 = load i64, i64* %hard_reg_copy_preferences132, align 8
  %or = or i64 %73, %70
  store i64 %or, i64* %hard_reg_copy_preferences132, align 8
  %74 = load i32, i32* %a1, align 4
  %idxprom133 = sext i32 %74 to i64
  %75 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx134 = getelementptr inbounds %struct.allocno, %struct.allocno* %75, i64 %idxprom133
  %hard_reg_copy_preferences135 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx134, i32 0, i32 8
  %76 = load i64, i64* %hard_reg_copy_preferences135, align 8
  %77 = load i32, i32* %a2, align 4
  %idxprom136 = sext i32 %77 to i64
  %78 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx137 = getelementptr inbounds %struct.allocno, %struct.allocno* %78, i64 %idxprom136
  %hard_reg_copy_preferences138 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx137, i32 0, i32 8
  %79 = load i64, i64* %hard_reg_copy_preferences138, align 8
  %or139 = or i64 %79, %76
  store i64 %or139, i64* %hard_reg_copy_preferences138, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.127, %if.then.102
  %80 = load i32, i32* %a2, align 4
  %idxprom140 = sext i32 %80 to i64
  %81 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx141 = getelementptr inbounds %struct.allocno, %struct.allocno* %81, i64 %idxprom140
  %hard_reg_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx141, i32 0, i32 7
  %82 = load i64, i64* %hard_reg_preferences, align 8
  %83 = load i32, i32* %a1, align 4
  %idxprom142 = sext i32 %83 to i64
  %84 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx143 = getelementptr inbounds %struct.allocno, %struct.allocno* %84, i64 %idxprom142
  %hard_reg_preferences144 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx143, i32 0, i32 7
  %85 = load i64, i64* %hard_reg_preferences144, align 8
  %or145 = or i64 %85, %82
  store i64 %or145, i64* %hard_reg_preferences144, align 8
  %86 = load i32, i32* %a1, align 4
  %idxprom146 = sext i32 %86 to i64
  %87 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx147 = getelementptr inbounds %struct.allocno, %struct.allocno* %87, i64 %idxprom146
  %hard_reg_preferences148 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx147, i32 0, i32 7
  %88 = load i64, i64* %hard_reg_preferences148, align 8
  %89 = load i32, i32* %a2, align 4
  %idxprom149 = sext i32 %89 to i64
  %90 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx150 = getelementptr inbounds %struct.allocno, %struct.allocno* %90, i64 %idxprom149
  %hard_reg_preferences151 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx150, i32 0, i32 7
  %91 = load i64, i64* %hard_reg_preferences151, align 8
  %or152 = or i64 %91, %88
  store i64 %or152, i64* %hard_reg_preferences151, align 8
  %92 = load i32, i32* %a2, align 4
  %idxprom153 = sext i32 %92 to i64
  %93 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx154 = getelementptr inbounds %struct.allocno, %struct.allocno* %93, i64 %idxprom153
  %hard_reg_full_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx154, i32 0, i32 9
  %94 = load i64, i64* %hard_reg_full_preferences, align 8
  %95 = load i32, i32* %a1, align 4
  %idxprom155 = sext i32 %95 to i64
  %96 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx156 = getelementptr inbounds %struct.allocno, %struct.allocno* %96, i64 %idxprom155
  %hard_reg_full_preferences157 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx156, i32 0, i32 9
  %97 = load i64, i64* %hard_reg_full_preferences157, align 8
  %or158 = or i64 %97, %94
  store i64 %or158, i64* %hard_reg_full_preferences157, align 8
  %98 = load i32, i32* %a1, align 4
  %idxprom159 = sext i32 %98 to i64
  %99 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx160 = getelementptr inbounds %struct.allocno, %struct.allocno* %99, i64 %idxprom159
  %hard_reg_full_preferences161 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx160, i32 0, i32 9
  %100 = load i64, i64* %hard_reg_full_preferences161, align 8
  %101 = load i32, i32* %a2, align 4
  %idxprom162 = sext i32 %101 to i64
  %102 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx163 = getelementptr inbounds %struct.allocno, %struct.allocno* %102, i64 %idxprom162
  %hard_reg_full_preferences164 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx163, i32 0, i32 9
  %103 = load i64, i64* %hard_reg_full_preferences164, align 8
  %or165 = or i64 %103, %100
  store i64 %or165, i64* %hard_reg_full_preferences164, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.end, %land.lhs.true.74, %land.lhs.true.63, %land.lhs.true.55, %for.body.50
  br label %for.inc

for.inc:                                          ; preds = %if.end.166
  %104 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 1
  %rtx169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx169, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %link, align 8
  br label %for.cond.48

for.end:                                          ; preds = %for.cond.48
  br label %if.end.170

if.end.170:                                       ; preds = %for.end, %land.lhs.true.35, %land.lhs.true.27, %cond.end.23, %for.body
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170
  %106 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 2
  %rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx174, align 8
  store %struct.rtx_def* %107, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.175:                                      ; preds = %for.cond
  ret void
}

declare void @specqsort(i8*, i32, i32, i32 (...)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @allocno_compare(i8* %v1p, i8* %v2p) #0 {
entry:
  %retval = alloca i32, align 4
  %v1p.addr = alloca i8*, align 8
  %v2p.addr = alloca i8*, align 8
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %pri1 = alloca i32, align 4
  %pri2 = alloca i32, align 4
  store i8* %v1p, i8** %v1p.addr, align 8
  store i8* %v2p, i8** %v2p.addr, align 8
  %0 = load i8*, i8** %v1p.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %v1, align 4
  %3 = load i8*, i8** %v2p.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %v2, align 4
  %6 = load i32, i32* %v1, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx = getelementptr inbounds %struct.allocno, %struct.allocno* %7, i64 %idxprom
  %size = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx, i32 0, i32 1
  %8 = load i32, i32* %size, align 4
  %mul = mul nsw i32 10, %8
  %9 = load i32, i32* %v1, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx2 = getelementptr inbounds %struct.allocno, %struct.allocno* %10, i64 %idxprom1
  %n_refs = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx2, i32 0, i32 3
  %11 = load i32, i32* %n_refs, align 4
  %conv = sext i32 %11 to i64
  %call = call i32 @floor_log2_wide(i64 %conv)
  %12 = load i32, i32* %v1, align 4
  %idxprom3 = sext i32 %12 to i64
  %13 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx4 = getelementptr inbounds %struct.allocno, %struct.allocno* %13, i64 %idxprom3
  %freq = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx4, i32 0, i32 4
  %14 = load i32, i32* %freq, align 4
  %mul5 = mul nsw i32 %call, %14
  %mul6 = mul nsw i32 %mul, %mul5
  %15 = load i32, i32* %v1, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx8 = getelementptr inbounds %struct.allocno, %struct.allocno* %16, i64 %idxprom7
  %live_length = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx8, i32 0, i32 5
  %17 = load i32, i32* %live_length, align 4
  %div = sdiv i32 %mul6, %17
  store i32 %div, i32* %pri1, align 4
  %18 = load i32, i32* %v2, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx10 = getelementptr inbounds %struct.allocno, %struct.allocno* %19, i64 %idxprom9
  %size11 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx10, i32 0, i32 1
  %20 = load i32, i32* %size11, align 4
  %mul12 = mul nsw i32 10, %20
  %21 = load i32, i32* %v2, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx14 = getelementptr inbounds %struct.allocno, %struct.allocno* %22, i64 %idxprom13
  %n_refs15 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx14, i32 0, i32 3
  %23 = load i32, i32* %n_refs15, align 4
  %conv16 = sext i32 %23 to i64
  %call17 = call i32 @floor_log2_wide(i64 %conv16)
  %24 = load i32, i32* %v2, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx19 = getelementptr inbounds %struct.allocno, %struct.allocno* %25, i64 %idxprom18
  %freq20 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx19, i32 0, i32 4
  %26 = load i32, i32* %freq20, align 4
  %mul21 = mul nsw i32 %call17, %26
  %mul22 = mul nsw i32 %mul12, %mul21
  %27 = load i32, i32* %v2, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx24 = getelementptr inbounds %struct.allocno, %struct.allocno* %28, i64 %idxprom23
  %live_length25 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx24, i32 0, i32 5
  %29 = load i32, i32* %live_length25, align 4
  %div26 = sdiv i32 %mul22, %29
  store i32 %div26, i32* %pri2, align 4
  %30 = load i32, i32* %pri2, align 4
  %31 = load i32, i32* %pri1, align 4
  %sub = sub nsw i32 %30, %31
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %32 = load i32, i32* %pri2, align 4
  %33 = load i32, i32* %pri1, align 4
  %sub27 = sub nsw i32 %32, %33
  store i32 %sub27, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %34 = load i32, i32* %v1, align 4
  %35 = load i32, i32* %v2, align 4
  %sub28 = sub nsw i32 %34, %35
  store i32 %sub28, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal void @prune_preferences() #0 {
entry:
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %allocno_to_order = alloca i32*, align 8
  %temp = alloca i64, align 8
  %temp33 = alloca i64, align 8
  %temp2 = alloca i64, align 8
  %allocno2 = alloca i32, align 4
  %i_ = alloca i32, align 4
  %allocno_ = alloca i32, align 4
  %p_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %0 = load i32, i32* @max_allocno, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %allocno_to_order, align 8
  %2 = load i32, i32* @max_allocno, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** @allocno_order, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %num, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %num, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i32*, i32** %allocno_to_order, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  store i32 %7, i32* %arrayidx3, align 4
  %10 = load i32, i32* %num, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx5 = getelementptr inbounds %struct.allocno, %struct.allocno* %11, i64 %idxprom4
  %hard_reg_conflicts = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx5, i32 0, i32 6
  %12 = load i64, i64* %hard_reg_conflicts, align 8
  store i64 %12, i64* %temp, align 8
  %13 = load i32, i32* %num, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx7 = getelementptr inbounds %struct.allocno, %struct.allocno* %14, i64 %idxprom6
  %calls_crossed = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx7, i32 0, i32 2
  %15 = load i32, i32* %calls_crossed, align 4
  %cmp8 = icmp eq i32 %15, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %16 = load i64, i64* @fixed_reg_set, align 8
  %17 = load i64, i64* %temp, align 8
  %or = or i64 %17, %16
  store i64 %or, i64* %temp, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %18 = load i64, i64* @call_used_reg_set, align 8
  %19 = load i64, i64* %temp, align 8
  %or10 = or i64 %19, %18
  store i64 %or10, i64* %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load i32, i32* %num, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx12 = getelementptr inbounds %struct.allocno, %struct.allocno* %21, i64 %idxprom11
  %reg = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx12, i32 0, i32 0
  %22 = load i32, i32* %reg, align 4
  %call13 = call i32 @reg_preferred_class(i32 %22)
  %idxprom14 = sext i32 %call13 to i64
  %arrayidx15 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom14
  %23 = load i64, i64* %arrayidx15, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %temp, align 8
  %or16 = or i64 %24, %neg
  store i64 %or16, i64* %temp, align 8
  %25 = load i64, i64* %temp, align 8
  %neg17 = xor i64 %25, -1
  %26 = load i32, i32* %num, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx19 = getelementptr inbounds %struct.allocno, %struct.allocno* %27, i64 %idxprom18
  %hard_reg_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx19, i32 0, i32 7
  %28 = load i64, i64* %hard_reg_preferences, align 8
  %and = and i64 %28, %neg17
  store i64 %and, i64* %hard_reg_preferences, align 8
  %29 = load i64, i64* %temp, align 8
  %neg20 = xor i64 %29, -1
  %30 = load i32, i32* %num, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx22 = getelementptr inbounds %struct.allocno, %struct.allocno* %31, i64 %idxprom21
  %hard_reg_copy_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx22, i32 0, i32 8
  %32 = load i64, i64* %hard_reg_copy_preferences, align 8
  %and23 = and i64 %32, %neg20
  store i64 %and23, i64* %hard_reg_copy_preferences, align 8
  %33 = load i64, i64* %temp, align 8
  %neg24 = xor i64 %33, -1
  %34 = load i32, i32* %num, align 4
  %idxprom25 = sext i32 %34 to i64
  %35 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx26 = getelementptr inbounds %struct.allocno, %struct.allocno* %35, i64 %idxprom25
  %hard_reg_full_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx26, i32 0, i32 9
  %36 = load i64, i64* %hard_reg_full_preferences, align 8
  %and27 = and i64 %36, %neg24
  store i64 %and27, i64* %hard_reg_full_preferences, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, i32* %i, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* @max_allocno, align 4
  %sub28 = sub nsw i32 %38, 1
  store i32 %sub28, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.85, %for.end
  %39 = load i32, i32* %i, align 4
  %cmp30 = icmp sge i32 %39, 0
  br i1 %cmp30, label %for.body.32, label %for.end.87

for.body.32:                                      ; preds = %for.cond.29
  %40 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %40 to i64
  %41 = load i32*, i32** @allocno_order, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %41, i64 %idxprom34
  %42 = load i32, i32* %arrayidx35, align 4
  store i32 %42, i32* %num, align 4
  store i64 0, i64* %temp33, align 8
  store i64 0, i64* %temp2, align 8
  br label %do.body

do.body:                                          ; preds = %for.body.32
  %43 = load i64*, i64** @conflicts, align 8
  %44 = load i32, i32* %num, align 4
  %45 = load i32, i32* @allocno_row_words, align 4
  %mul36 = mul nsw i32 %44, %45
  %idx.ext = sext i32 %mul36 to i64
  %add.ptr = getelementptr inbounds i64, i64* %43, i64 %idx.ext
  store i64* %add.ptr, i64** %p_, align 8
  %46 = load i32, i32* @allocno_row_words, align 4
  %sub37 = sub nsw i32 %46, 1
  store i32 %sub37, i32* %i_, align 4
  store i32 0, i32* %allocno_, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.74, %do.body
  %47 = load i32, i32* %i_, align 4
  %cmp39 = icmp sge i32 %47, 0
  br i1 %cmp39, label %for.body.41, label %for.end.76

for.body.41:                                      ; preds = %for.cond.38
  %48 = load i64*, i64** %p_, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %incdec.ptr, i64** %p_, align 8
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %word_, align 8
  %50 = load i32, i32* %allocno_, align 4
  store i32 %50, i32* %allocno2, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.72, %for.body.41
  %51 = load i64, i64* %word_, align 8
  %tobool = icmp ne i64 %51, 0
  br i1 %tobool, label %for.body.43, label %for.end.73

for.body.43:                                      ; preds = %for.cond.42
  %52 = load i64, i64* %word_, align 8
  %and44 = and i64 %52, 1
  %tobool45 = icmp ne i64 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.71

if.then.46:                                       ; preds = %for.body.43
  %53 = load i32, i32* %allocno2, align 4
  %idxprom47 = sext i32 %53 to i64
  %54 = load i32*, i32** %allocno_to_order, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %54, i64 %idxprom47
  %55 = load i32, i32* %arrayidx48, align 4
  %56 = load i32, i32* %i, align 4
  %cmp49 = icmp sgt i32 %55, %56
  br i1 %cmp49, label %if.then.51, label %if.end.70

if.then.51:                                       ; preds = %if.then.46
  %57 = load i32, i32* %allocno2, align 4
  %idxprom52 = sext i32 %57 to i64
  %58 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx53 = getelementptr inbounds %struct.allocno, %struct.allocno* %58, i64 %idxprom52
  %size = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx53, i32 0, i32 1
  %59 = load i32, i32* %size, align 4
  %60 = load i32, i32* %num, align 4
  %idxprom54 = sext i32 %60 to i64
  %61 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx55 = getelementptr inbounds %struct.allocno, %struct.allocno* %61, i64 %idxprom54
  %size56 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx55, i32 0, i32 1
  %62 = load i32, i32* %size56, align 4
  %cmp57 = icmp sle i32 %59, %62
  br i1 %cmp57, label %if.then.59, label %if.else.64

if.then.59:                                       ; preds = %if.then.51
  %63 = load i32, i32* %allocno2, align 4
  %idxprom60 = sext i32 %63 to i64
  %64 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx61 = getelementptr inbounds %struct.allocno, %struct.allocno* %64, i64 %idxprom60
  %hard_reg_full_preferences62 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx61, i32 0, i32 9
  %65 = load i64, i64* %hard_reg_full_preferences62, align 8
  %66 = load i64, i64* %temp33, align 8
  %or63 = or i64 %66, %65
  store i64 %or63, i64* %temp33, align 8
  br label %if.end.69

if.else.64:                                       ; preds = %if.then.51
  %67 = load i32, i32* %allocno2, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx66 = getelementptr inbounds %struct.allocno, %struct.allocno* %68, i64 %idxprom65
  %hard_reg_full_preferences67 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx66, i32 0, i32 9
  %69 = load i64, i64* %hard_reg_full_preferences67, align 8
  %70 = load i64, i64* %temp2, align 8
  %or68 = or i64 %70, %69
  store i64 %or68, i64* %temp2, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.64, %if.then.59
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.46
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %for.body.43
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %71 = load i64, i64* %word_, align 8
  %shr = lshr i64 %71, 1
  store i64 %shr, i64* %word_, align 8
  %72 = load i32, i32* %allocno2, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %allocno2, align 4
  br label %for.cond.42

for.end.73:                                       ; preds = %for.cond.42
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.73
  %73 = load i32, i32* %i_, align 4
  %dec75 = add nsw i32 %73, -1
  store i32 %dec75, i32* %i_, align 4
  %74 = load i32, i32* %allocno_, align 4
  %add = add nsw i32 %74, 64
  store i32 %add, i32* %allocno_, align 4
  br label %for.cond.38

for.end.76:                                       ; preds = %for.cond.38
  br label %do.end

do.end:                                           ; preds = %for.end.76
  %75 = load i32, i32* %num, align 4
  %idxprom77 = sext i32 %75 to i64
  %76 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx78 = getelementptr inbounds %struct.allocno, %struct.allocno* %76, i64 %idxprom77
  %hard_reg_full_preferences79 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx78, i32 0, i32 9
  %77 = load i64, i64* %hard_reg_full_preferences79, align 8
  %neg80 = xor i64 %77, -1
  %78 = load i64, i64* %temp33, align 8
  %and81 = and i64 %78, %neg80
  store i64 %and81, i64* %temp33, align 8
  %79 = load i64, i64* %temp2, align 8
  %80 = load i64, i64* %temp33, align 8
  %or82 = or i64 %80, %79
  store i64 %or82, i64* %temp33, align 8
  %81 = load i64, i64* %temp33, align 8
  %82 = load i32, i32* %num, align 4
  %idxprom83 = sext i32 %82 to i64
  %83 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx84 = getelementptr inbounds %struct.allocno, %struct.allocno* %83, i64 %idxprom83
  %regs_someone_prefers = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx84, i32 0, i32 10
  store i64 %81, i64* %regs_someone_prefers, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %do.end
  %84 = load i32, i32* %i, align 4
  %dec86 = add nsw i32 %84, -1
  store i32 %dec86, i32* %i, align 4
  br label %for.cond.29

for.end.87:                                       ; preds = %for.cond.29
  %85 = load i32*, i32** %allocno_to_order, align 8
  %86 = bitcast i32* %85 to i8*
  call void @free(i8* %86) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump_conflicts(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %has_preferences = alloca i32, align 4
  %nregs = alloca i32, align 4
  %j = alloca i32, align 4
  %j75 = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 0, i32* %nregs, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_allocno, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** @allocno_order, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx2 = getelementptr inbounds %struct.allocno, %struct.allocno* %5, i64 %idxprom1
  %reg = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx2, i32 0, i32 0
  %6 = load i32, i32* %reg, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load i16*, i16** @reg_renumber, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %7, i64 %idxprom3
  %8 = load i16, i16* %arrayidx4, align 2
  %conv = sext i16 %8 to i32
  %cmp5 = icmp sge i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %nregs, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %nregs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %10 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load i32, i32* %nregs, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 %12)
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.67, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @max_allocno, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body.11, label %for.end.69

for.body.11:                                      ; preds = %for.cond.8
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i32*, i32** @allocno_order, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %16, i64 %idxprom12
  %17 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx15 = getelementptr inbounds %struct.allocno, %struct.allocno* %18, i64 %idxprom14
  %reg16 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx15, i32 0, i32 0
  %19 = load i32, i32* %reg16, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i16*, i16** @reg_renumber, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %20, i64 %idxprom17
  %21 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %21 to i32
  %cmp20 = icmp sge i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body.11
  br label %for.inc.67

if.end.23:                                        ; preds = %for.body.11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load i32*, i32** @allocno_order, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %24, i64 %idxprom24
  %25 = load i32, i32* %arrayidx25, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx27 = getelementptr inbounds %struct.allocno, %struct.allocno* %26, i64 %idxprom26
  %reg28 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx27, i32 0, i32 0
  %27 = load i32, i32* %reg28, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %27)
  store i32 0, i32* %j, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.50, %if.end.23
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* @max_regno, align 4
  %cmp31 = icmp slt i32 %28, %29
  br i1 %cmp31, label %for.body.33, label %for.end.52

for.body.33:                                      ; preds = %for.cond.30
  %30 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load i32*, i32** @reg_allocno, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %31, i64 %idxprom34
  %32 = load i32, i32* %arrayidx35, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load i32*, i32** @allocno_order, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %34, i64 %idxprom36
  %35 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp eq i32 %32, %35
  br i1 %cmp38, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %for.body.33
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %37 to i64
  %38 = load i32*, i32** @allocno_order, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %38, i64 %idxprom40
  %39 = load i32, i32* %arrayidx41, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx43 = getelementptr inbounds %struct.allocno, %struct.allocno* %40, i64 %idxprom42
  %reg44 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx43, i32 0, i32 0
  %41 = load i32, i32* %reg44, align 4
  %cmp45 = icmp ne i32 %36, %41
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %land.lhs.true
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %43 = load i32, i32* %j, align 4
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %43)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %land.lhs.true, %for.body.33
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %44 = load i32, i32* %j, align 4
  %inc51 = add nsw i32 %44, 1
  store i32 %inc51, i32* %j, align 4
  br label %for.cond.30

for.end.52:                                       ; preds = %for.cond.30
  %45 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %45 to i64
  %46 = load i32*, i32** @allocno_order, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %46, i64 %idxprom53
  %47 = load i32, i32* %arrayidx54, align 4
  %idxprom55 = sext i32 %47 to i64
  %48 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx56 = getelementptr inbounds %struct.allocno, %struct.allocno* %48, i64 %idxprom55
  %size = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx56, i32 0, i32 1
  %49 = load i32, i32* %size, align 4
  %cmp57 = icmp ne i32 %49, 1
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %for.end.52
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %51 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %51 to i64
  %52 = load i32*, i32** @allocno_order, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %52, i64 %idxprom60
  %53 = load i32, i32* %arrayidx61, align 4
  %idxprom62 = sext i32 %53 to i64
  %54 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx63 = getelementptr inbounds %struct.allocno, %struct.allocno* %54, i64 %idxprom62
  %size64 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx63, i32 0, i32 1
  %55 = load i32, i32* %size64, align 4
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 %55)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.59, %for.end.52
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66, %if.then.22
  %56 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %56, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.8

for.end.69:                                       ; preds = %for.cond.8
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.152, %for.end.69
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* @max_allocno, align 4
  %cmp72 = icmp slt i32 %58, %59
  br i1 %cmp72, label %for.body.74, label %for.end.154

for.body.74:                                      ; preds = %for.cond.71
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %61 to i64
  %62 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx77 = getelementptr inbounds %struct.allocno, %struct.allocno* %62, i64 %idxprom76
  %reg78 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx77, i32 0, i32 0
  %63 = load i32, i32* %reg78, align 4
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 %63)
  store i32 0, i32* %j75, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.92, %for.body.74
  %64 = load i32, i32* %j75, align 4
  %65 = load i32, i32* @max_allocno, align 4
  %cmp81 = icmp slt i32 %64, %65
  br i1 %cmp81, label %for.body.83, label %for.end.94

for.body.83:                                      ; preds = %for.cond.80
  %66 = load i32, i32* %j75, align 4
  %67 = load i32, i32* @allocno_row_words, align 4
  %mul = mul nsw i32 %66, %67
  %68 = load i32, i32* %i, align 4
  %div = udiv i32 %68, 64
  %add = add i32 %mul, %div
  %idxprom84 = zext i32 %add to i64
  %69 = load i64*, i64** @conflicts, align 8
  %arrayidx85 = getelementptr inbounds i64, i64* %69, i64 %idxprom84
  %70 = load i64, i64* %arrayidx85, align 8
  %71 = load i32, i32* %i, align 4
  %rem = urem i32 %71, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %70, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %for.body.83
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %73 = load i32, i32* %j75, align 4
  %idxprom87 = sext i32 %73 to i64
  %74 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx88 = getelementptr inbounds %struct.allocno, %struct.allocno* %74, i64 %idxprom87
  %reg89 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx88, i32 0, i32 0
  %75 = load i32, i32* %reg89, align 4
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %75)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %for.body.83
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %76 = load i32, i32* %j75, align 4
  %inc93 = add nsw i32 %76, 1
  store i32 %inc93, i32* %j75, align 4
  br label %for.cond.80

for.end.94:                                       ; preds = %for.cond.80
  store i32 0, i32* %j75, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.108, %for.end.94
  %77 = load i32, i32* %j75, align 4
  %cmp96 = icmp slt i32 %77, 53
  br i1 %cmp96, label %for.body.98, label %for.end.110

for.body.98:                                      ; preds = %for.cond.95
  %78 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %78 to i64
  %79 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx100 = getelementptr inbounds %struct.allocno, %struct.allocno* %79, i64 %idxprom99
  %hard_reg_conflicts = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx100, i32 0, i32 6
  %80 = load i64, i64* %hard_reg_conflicts, align 8
  %81 = load i32, i32* %j75, align 4
  %sh_prom101 = zext i32 %81 to i64
  %shl102 = shl i64 1, %sh_prom101
  %and103 = and i64 %80, %shl102
  %tobool104 = icmp ne i64 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %for.body.98
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %83 = load i32, i32* %j75, align 4
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %83)
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %for.body.98
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %84 = load i32, i32* %j75, align 4
  %inc109 = add nsw i32 %84, 1
  store i32 %inc109, i32* %j75, align 4
  br label %for.cond.95

for.end.110:                                      ; preds = %for.cond.95
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %has_preferences, align 4
  store i32 0, i32* %j75, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.124, %for.end.110
  %86 = load i32, i32* %j75, align 4
  %cmp113 = icmp slt i32 %86, 53
  br i1 %cmp113, label %for.body.115, label %for.end.126

for.body.115:                                     ; preds = %for.cond.112
  %87 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %87 to i64
  %88 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx117 = getelementptr inbounds %struct.allocno, %struct.allocno* %88, i64 %idxprom116
  %hard_reg_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx117, i32 0, i32 7
  %89 = load i64, i64* %hard_reg_preferences, align 8
  %90 = load i32, i32* %j75, align 4
  %sh_prom118 = zext i32 %90 to i64
  %shl119 = shl i64 1, %sh_prom118
  %and120 = and i64 %89, %shl119
  %tobool121 = icmp ne i64 %and120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %for.body.115
  store i32 1, i32* %has_preferences, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %for.body.115
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %91 = load i32, i32* %j75, align 4
  %inc125 = add nsw i32 %91, 1
  store i32 %inc125, i32* %j75, align 4
  br label %for.cond.112

for.end.126:                                      ; preds = %for.cond.112
  %92 = load i32, i32* %has_preferences, align 4
  %tobool127 = icmp ne i32 %92, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %for.end.126
  br label %for.inc.152

if.end.129:                                       ; preds = %for.end.126
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %94 to i64
  %95 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx131 = getelementptr inbounds %struct.allocno, %struct.allocno* %95, i64 %idxprom130
  %reg132 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx131, i32 0, i32 0
  %96 = load i32, i32* %reg132, align 4
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i32 %96)
  store i32 0, i32* %j75, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.148, %if.end.129
  %97 = load i32, i32* %j75, align 4
  %cmp135 = icmp slt i32 %97, 53
  br i1 %cmp135, label %for.body.137, label %for.end.150

for.body.137:                                     ; preds = %for.cond.134
  %98 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %98 to i64
  %99 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx139 = getelementptr inbounds %struct.allocno, %struct.allocno* %99, i64 %idxprom138
  %hard_reg_preferences140 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx139, i32 0, i32 7
  %100 = load i64, i64* %hard_reg_preferences140, align 8
  %101 = load i32, i32* %j75, align 4
  %sh_prom141 = zext i32 %101 to i64
  %shl142 = shl i64 1, %sh_prom141
  %and143 = and i64 %100, %shl142
  %tobool144 = icmp ne i64 %and143, 0
  br i1 %tobool144, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %for.body.137
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %103 = load i32, i32* %j75, align 4
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %103)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %for.body.137
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %104 = load i32, i32* %j75, align 4
  %inc149 = add nsw i32 %104, 1
  store i32 %inc149, i32* %j75, align 4
  br label %for.cond.134

for.end.150:                                      ; preds = %for.cond.134
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.end.150, %if.then.128
  %106 = load i32, i32* %i, align 4
  %inc153 = add nsw i32 %106, 1
  store i32 %inc153, i32* %i, align 4
  br label %for.cond.71

for.end.154:                                      ; preds = %for.cond.71
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_reg(i32 %num, i64 %losers, i32 %alt_regs_p, i32 %accept_call_clobbered, i32 %retrying) #0 {
entry:
  %num.addr = alloca i32, align 4
  %losers.addr = alloca i64, align 8
  %alt_regs_p.addr = alloca i32, align 4
  %accept_call_clobbered.addr = alloca i32, align 4
  %retrying.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %best_reg = alloca i32, align 4
  %pass = alloca i32, align 4
  %used = alloca i64, align 8
  %used1 = alloca i64, align 8
  %used2 = alloca i64, align 8
  %class = alloca i32, align 4
  %mode = alloca i32, align 4
  %regno = alloca i32, align 4
  %j = alloca i32, align 4
  %lim = alloca i32, align 4
  %j186 = alloca i32, align 4
  %lim187 = alloca i32, align 4
  %j369 = alloca i32, align 4
  %lim370 = alloca i32, align 4
  %new_losers = alloca i64, align 8
  %regno543 = alloca i32, align 4
  %tmp1 = alloca double, align 8
  %tmp2 = alloca double, align 8
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %endregno = alloca i32, align 4
  %lim723 = alloca i32, align 4
  %j724 = alloca i32, align 4
  %this_reg = alloca i64, align 8
  %i_ = alloca i32, align 4
  %allocno_ = alloca i32, align 4
  %p_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  store i32 %num, i32* %num.addr, align 4
  store i64 %losers, i64* %losers.addr, align 8
  store i32 %alt_regs_p, i32* %alt_regs_p.addr, align 4
  store i32 %accept_call_clobbered, i32* %accept_call_clobbered.addr, align 4
  store i32 %retrying, i32* %retrying.addr, align 4
  %0 = load i32, i32* %alt_regs_p.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %num.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx = getelementptr inbounds %struct.allocno, %struct.allocno* %2, i64 %idxprom
  %reg = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %reg, align 4
  %call = call i32 @reg_alternate_class(i32 %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %num.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx2 = getelementptr inbounds %struct.allocno, %struct.allocno* %5, i64 %idxprom1
  %reg3 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx2, i32 0, i32 0
  %6 = load i32, i32* %reg3, align 4
  %call4 = call i32 @reg_preferred_class(i32 %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call4, %cond.false ]
  store i32 %cond, i32* %class, align 4
  %7 = load i32, i32* %num.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx6 = getelementptr inbounds %struct.allocno, %struct.allocno* %8, i64 %idxprom5
  %reg7 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx6, i32 0, i32 0
  %9 = load i32, i32* %reg7, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 3
  %11 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %11, i32 0, i32 12
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx9 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %12, i64 %idxprom8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx9, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %15 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %16 = load i64, i64* @call_fixed_reg_set, align 8
  store i64 %16, i64* %used1, align 8
  br label %if.end.15

if.else:                                          ; preds = %cond.end
  %17 = load i32, i32* %num.addr, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx12 = getelementptr inbounds %struct.allocno, %struct.allocno* %18, i64 %idxprom11
  %calls_crossed = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx12, i32 0, i32 2
  %19 = load i32, i32* %calls_crossed, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  %20 = load i64, i64* @fixed_reg_set, align 8
  store i64 %20, i64* %used1, align 8
  br label %if.end

if.else.14:                                       ; preds = %if.else
  %21 = load i64, i64* @call_used_reg_set, align 8
  store i64 %21, i64* %used1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %22 = load i64, i64* @no_global_alloc_regs, align 8
  %23 = load i64, i64* %used1, align 8
  %or = or i64 %23, %22
  store i64 %or, i64* %used1, align 8
  %24 = load i64, i64* %losers.addr, align 8
  %tobool16 = icmp ne i64 %24, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %25 = load i64, i64* %losers.addr, align 8
  %26 = load i64, i64* %used1, align 8
  %or18 = or i64 %26, %25
  store i64 %or18, i64* %used1, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  %27 = load i32, i32* %class, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom20
  %28 = load i64, i64* %arrayidx21, align 8
  %neg = xor i64 %28, -1
  %29 = load i64, i64* %used1, align 8
  %or22 = or i64 %29, %neg
  store i64 %or22, i64* %used1, align 8
  %30 = load i64, i64* %used1, align 8
  store i64 %30, i64* %used2, align 8
  %31 = load i32, i32* %num.addr, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx24 = getelementptr inbounds %struct.allocno, %struct.allocno* %32, i64 %idxprom23
  %hard_reg_conflicts = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx24, i32 0, i32 6
  %33 = load i64, i64* %hard_reg_conflicts, align 8
  %34 = load i64, i64* %used1, align 8
  %or25 = or i64 %34, %33
  store i64 %or25, i64* %used1, align 8
  %35 = load i64, i64* %used1, align 8
  store i64 %35, i64* %used, align 8
  %36 = load i64, i64* @regs_used_so_far, align 8
  %neg26 = xor i64 %36, -1
  %37 = load i64, i64* %used, align 8
  %or27 = or i64 %37, %neg26
  store i64 %or27, i64* %used, align 8
  %38 = load i32, i32* %num.addr, align 4
  %idxprom28 = sext i32 %38 to i64
  %39 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx29 = getelementptr inbounds %struct.allocno, %struct.allocno* %39, i64 %idxprom28
  %regs_someone_prefers = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx29, i32 0, i32 10
  %40 = load i64, i64* %regs_someone_prefers, align 8
  %41 = load i64, i64* %used, align 8
  %or30 = or i64 %41, %40
  store i64 %or30, i64* %used, align 8
  store i32 -1, i32* %best_reg, align 4
  store i32 53, i32* %i, align 4
  store i32 0, i32* %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.122, %if.end.19
  %42 = load i32, i32* %pass, align 4
  %cmp31 = icmp sle i32 %42, 1
  br i1 %cmp31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %43 = load i32, i32* %i, align 4
  %cmp32 = icmp sge i32 %43, 53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %44 = phi i1 [ false, %for.cond ], [ %cmp32, %land.rhs ]
  br i1 %44, label %for.body, label %for.end.124

for.body:                                         ; preds = %land.end
  %45 = load i32, i32* %pass, align 4
  %cmp33 = icmp eq i32 %45, 1
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body
  %46 = load i64, i64* %used1, align 8
  store i64 %46, i64* %used, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.119, %if.end.35
  %47 = load i32, i32* %i, align 4
  %cmp37 = icmp slt i32 %47, 53
  br i1 %cmp37, label %for.body.38, label %for.end.121

for.body.38:                                      ; preds = %for.cond.36
  %48 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %48 to i64
  %arrayidx40 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i32 0, i64 %idxprom39
  %49 = load i32, i32* %arrayidx40, align 4
  store i32 %49, i32* %regno, align 4
  %50 = load i64, i64* %used, align 8
  %51 = load i32, i32* %regno, align 4
  %sh_prom = zext i32 %51 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %50, %shl
  %tobool41 = icmp ne i64 %and, 0
  br i1 %tobool41, label %if.end.118, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.38
  %52 = load i32, i32* %regno, align 4
  %53 = load i32, i32* %mode, align 4
  %call42 = call i32 @ix86_hard_regno_mode_ok(i32 %52, i32 %53)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.118

land.lhs.true.44:                                 ; preds = %land.lhs.true
  %54 = load i32, i32* %num.addr, align 4
  %idxprom45 = sext i32 %54 to i64
  %55 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx46 = getelementptr inbounds %struct.allocno, %struct.allocno* %55, i64 %idxprom45
  %calls_crossed47 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx46, i32 0, i32 2
  %56 = load i32, i32* %calls_crossed47, align 4
  %cmp48 = icmp eq i32 %56, 0
  br i1 %cmp48, label %if.then.51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.44
  %57 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool49 = icmp ne i32 %57, 0
  br i1 %tobool49, label %if.then.51, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false
  br i1 false, label %if.end.118, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false, %land.lhs.true.44
  %58 = load i32, i32* %regno, align 4
  %59 = load i32, i32* %regno, align 4
  %cmp52 = icmp sge i32 %59, 8
  br i1 %cmp52, label %land.lhs.true.53, label %lor.lhs.false.55

land.lhs.true.53:                                 ; preds = %if.then.51
  %60 = load i32, i32* %regno, align 4
  %cmp54 = icmp sle i32 %60, 15
  br i1 %cmp54, label %cond.true.67, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53, %if.then.51
  %61 = load i32, i32* %regno, align 4
  %cmp56 = icmp sge i32 %61, 21
  br i1 %cmp56, label %land.lhs.true.57, label %lor.lhs.false.59

land.lhs.true.57:                                 ; preds = %lor.lhs.false.55
  %62 = load i32, i32* %regno, align 4
  %cmp58 = icmp sle i32 %62, 28
  br i1 %cmp58, label %cond.true.67, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.57, %lor.lhs.false.55
  %63 = load i32, i32* %regno, align 4
  %cmp60 = icmp sge i32 %63, 45
  br i1 %cmp60, label %land.lhs.true.61, label %lor.lhs.false.63

land.lhs.true.61:                                 ; preds = %lor.lhs.false.59
  %64 = load i32, i32* %regno, align 4
  %cmp62 = icmp sle i32 %64, 52
  br i1 %cmp62, label %cond.true.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.61, %lor.lhs.false.59
  %65 = load i32, i32* %regno, align 4
  %cmp64 = icmp sge i32 %65, 29
  br i1 %cmp64, label %land.lhs.true.65, label %cond.false.75

land.lhs.true.65:                                 ; preds = %lor.lhs.false.63
  %66 = load i32, i32* %regno, align 4
  %cmp66 = icmp sle i32 %66, 36
  br i1 %cmp66, label %cond.true.67, label %cond.false.75

cond.true.67:                                     ; preds = %land.lhs.true.65, %land.lhs.true.61, %land.lhs.true.57, %land.lhs.true.53
  %67 = load i32, i32* %mode, align 4
  %idxprom68 = sext i32 %67 to i64
  %arrayidx69 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom68
  %68 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp eq i32 %68, 5
  br i1 %cmp70, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.67
  %69 = load i32, i32* %mode, align 4
  %idxprom71 = sext i32 %69 to i64
  %arrayidx72 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom71
  %70 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp eq i32 %70, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.67
  %71 = phi i1 [ true, %cond.true.67 ], [ %cmp73, %lor.rhs ]
  %cond74 = select i1 %71, i32 2, i32 1
  br label %cond.end.100

cond.false.75:                                    ; preds = %land.lhs.true.65, %lor.lhs.false.63
  %72 = load i32, i32* %mode, align 4
  %cmp76 = icmp eq i32 %72, 18
  br i1 %cmp76, label %cond.true.77, label %cond.false.81

cond.true.77:                                     ; preds = %cond.false.75
  %73 = load i32, i32* @target_flags, align 4
  %and78 = and i32 %73, 33554432
  %tobool79 = icmp ne i32 %and78, 0
  %cond80 = select i1 %tobool79, i32 2, i32 3
  br label %cond.end.98

cond.false.81:                                    ; preds = %cond.false.75
  %74 = load i32, i32* %mode, align 4
  %cmp82 = icmp eq i32 %74, 24
  br i1 %cmp82, label %cond.true.83, label %cond.false.87

cond.true.83:                                     ; preds = %cond.false.81
  %75 = load i32, i32* @target_flags, align 4
  %and84 = and i32 %75, 33554432
  %tobool85 = icmp ne i32 %and84, 0
  %cond86 = select i1 %tobool85, i32 4, i32 6
  br label %cond.end.96

cond.false.87:                                    ; preds = %cond.false.81
  %76 = load i32, i32* %mode, align 4
  %idxprom88 = sext i32 %76 to i64
  %arrayidx89 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom88
  %77 = load i8, i8* %arrayidx89, align 1
  %conv = zext i8 %77 to i32
  %78 = load i32, i32* @target_flags, align 4
  %and90 = and i32 %78, 33554432
  %tobool91 = icmp ne i32 %and90, 0
  %cond92 = select i1 %tobool91, i32 8, i32 4
  %add = add nsw i32 %conv, %cond92
  %sub = sub nsw i32 %add, 1
  %79 = load i32, i32* @target_flags, align 4
  %and93 = and i32 %79, 33554432
  %tobool94 = icmp ne i32 %and93, 0
  %cond95 = select i1 %tobool94, i32 8, i32 4
  %div = sdiv i32 %sub, %cond95
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.87, %cond.true.83
  %cond97 = phi i32 [ %cond86, %cond.true.83 ], [ %div, %cond.false.87 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.77
  %cond99 = phi i32 [ %cond80, %cond.true.77 ], [ %cond97, %cond.end.96 ]
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.end.98, %lor.end
  %cond101 = phi i32 [ %cond74, %lor.end ], [ %cond99, %cond.end.98 ]
  %add102 = add nsw i32 %58, %cond101
  store i32 %add102, i32* %lim, align 4
  %80 = load i32, i32* %regno, align 4
  %add103 = add nsw i32 %80, 1
  store i32 %add103, i32* %j, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc, %cond.end.100
  %81 = load i32, i32* %j, align 4
  %82 = load i32, i32* %lim, align 4
  %cmp105 = icmp slt i32 %81, %82
  br i1 %cmp105, label %land.rhs.107, label %land.end.112

land.rhs.107:                                     ; preds = %for.cond.104
  %83 = load i64, i64* %used, align 8
  %84 = load i32, i32* %j, align 4
  %sh_prom108 = zext i32 %84 to i64
  %shl109 = shl i64 1, %sh_prom108
  %and110 = and i64 %83, %shl109
  %tobool111 = icmp ne i64 %and110, 0
  %lnot = xor i1 %tobool111, true
  br label %land.end.112

land.end.112:                                     ; preds = %land.rhs.107, %for.cond.104
  %85 = phi i1 [ false, %for.cond.104 ], [ %lnot, %land.rhs.107 ]
  br i1 %85, label %for.body.113, label %for.end

for.body.113:                                     ; preds = %land.end.112
  br label %for.inc

for.inc:                                          ; preds = %for.body.113
  %86 = load i32, i32* %j, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.104

for.end:                                          ; preds = %land.end.112
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* %lim, align 4
  %cmp114 = icmp eq i32 %87, %88
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %for.end
  %89 = load i32, i32* %regno, align 4
  store i32 %89, i32* %best_reg, align 4
  br label %for.end.121

if.end.117:                                       ; preds = %for.end
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %lor.lhs.false.50, %land.lhs.true, %for.body.38
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118
  %90 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %90, 1
  store i32 %inc120, i32* %i, align 4
  br label %for.cond.36

for.end.121:                                      ; preds = %if.then.116, %for.cond.36
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.end.121
  %91 = load i32, i32* %pass, align 4
  %inc123 = add nsw i32 %91, 1
  store i32 %inc123, i32* %pass, align 4
  br label %for.cond

for.end.124:                                      ; preds = %land.end
  %92 = load i64, i64* %used, align 8
  %neg125 = xor i64 %92, -1
  %93 = load i32, i32* %num.addr, align 4
  %idxprom126 = sext i32 %93 to i64
  %94 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx127 = getelementptr inbounds %struct.allocno, %struct.allocno* %94, i64 %idxprom126
  %hard_reg_copy_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx127, i32 0, i32 8
  %95 = load i64, i64* %hard_reg_copy_preferences, align 8
  %and128 = and i64 %95, %neg125
  store i64 %and128, i64* %hard_reg_copy_preferences, align 8
  %96 = load i32, i32* %num.addr, align 4
  %idxprom129 = sext i32 %96 to i64
  %97 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx130 = getelementptr inbounds %struct.allocno, %struct.allocno* %97, i64 %idxprom129
  %hard_reg_copy_preferences131 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx130, i32 0, i32 8
  %98 = load i64, i64* %hard_reg_copy_preferences131, align 8
  %99 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 0), align 8
  %neg132 = xor i64 %99, -1
  %and133 = and i64 %98, %neg132
  %cmp134 = icmp eq i64 0, %and133
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end.124
  br label %no_copy_prefs

if.end.137:                                       ; preds = %for.end.124
  %100 = load i32, i32* %best_reg, align 4
  %cmp138 = icmp sge i32 %100, 0
  br i1 %cmp138, label %if.then.140, label %if.end.307

if.then.140:                                      ; preds = %if.end.137
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.304, %if.then.140
  %101 = load i32, i32* %i, align 4
  %cmp142 = icmp slt i32 %101, 53
  br i1 %cmp142, label %for.body.144, label %for.end.306

for.body.144:                                     ; preds = %for.cond.141
  %102 = load i32, i32* %num.addr, align 4
  %idxprom145 = sext i32 %102 to i64
  %103 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx146 = getelementptr inbounds %struct.allocno, %struct.allocno* %103, i64 %idxprom145
  %hard_reg_copy_preferences147 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx146, i32 0, i32 8
  %104 = load i64, i64* %hard_reg_copy_preferences147, align 8
  %105 = load i32, i32* %i, align 4
  %sh_prom148 = zext i32 %105 to i64
  %shl149 = shl i64 1, %sh_prom148
  %and150 = and i64 %104, %shl149
  %tobool151 = icmp ne i64 %and150, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.303

land.lhs.true.152:                                ; preds = %for.body.144
  %106 = load i32, i32* %i, align 4
  %107 = load i32, i32* %mode, align 4
  %call153 = call i32 @ix86_hard_regno_mode_ok(i32 %106, i32 %107)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %land.lhs.true.155, label %if.end.303

land.lhs.true.155:                                ; preds = %land.lhs.true.152
  %108 = load i32, i32* %num.addr, align 4
  %idxprom156 = sext i32 %108 to i64
  %109 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx157 = getelementptr inbounds %struct.allocno, %struct.allocno* %109, i64 %idxprom156
  %calls_crossed158 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx157, i32 0, i32 2
  %110 = load i32, i32* %calls_crossed158, align 4
  %cmp159 = icmp eq i32 %110, 0
  br i1 %cmp159, label %land.lhs.true.164, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.155
  %111 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool162 = icmp ne i32 %111, 0
  br i1 %tobool162, label %land.lhs.true.164, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %lor.lhs.false.161
  br i1 false, label %if.end.303, label %land.lhs.true.164

land.lhs.true.164:                                ; preds = %lor.lhs.false.163, %lor.lhs.false.161, %land.lhs.true.155
  %112 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %112 to i64
  %arrayidx166 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom165
  %113 = load i32, i32* %arrayidx166, align 4
  %114 = load i32, i32* %best_reg, align 4
  %idxprom167 = sext i32 %114 to i64
  %arrayidx168 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom167
  %115 = load i32, i32* %arrayidx168, align 4
  %cmp169 = icmp eq i32 %113, %115
  br i1 %cmp169, label %if.then.185, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %land.lhs.true.164
  %116 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %116 to i64
  %arrayidx173 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom172
  %117 = load i32, i32* %arrayidx173, align 4
  %118 = load i32, i32* %best_reg, align 4
  %idxprom174 = sext i32 %118 to i64
  %arrayidx175 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom174
  %119 = load i32, i32* %arrayidx175, align 4
  %call176 = call i32 @reg_class_subset_p(i32 %117, i32 %119)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.then.185, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %lor.lhs.false.171
  %120 = load i32, i32* %best_reg, align 4
  %idxprom179 = sext i32 %120 to i64
  %arrayidx180 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom179
  %121 = load i32, i32* %arrayidx180, align 4
  %122 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %122 to i64
  %arrayidx182 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom181
  %123 = load i32, i32* %arrayidx182, align 4
  %call183 = call i32 @reg_class_subset_p(i32 %121, i32 %123)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.then.185, label %if.end.303

if.then.185:                                      ; preds = %lor.lhs.false.178, %lor.lhs.false.171, %land.lhs.true.164
  %124 = load i32, i32* %i, align 4
  %125 = load i32, i32* %i, align 4
  %cmp188 = icmp sge i32 %125, 8
  br i1 %cmp188, label %land.lhs.true.190, label %lor.lhs.false.193

land.lhs.true.190:                                ; preds = %if.then.185
  %126 = load i32, i32* %i, align 4
  %cmp191 = icmp sle i32 %126, 15
  br i1 %cmp191, label %cond.true.211, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %land.lhs.true.190, %if.then.185
  %127 = load i32, i32* %i, align 4
  %cmp194 = icmp sge i32 %127, 21
  br i1 %cmp194, label %land.lhs.true.196, label %lor.lhs.false.199

land.lhs.true.196:                                ; preds = %lor.lhs.false.193
  %128 = load i32, i32* %i, align 4
  %cmp197 = icmp sle i32 %128, 28
  br i1 %cmp197, label %cond.true.211, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %land.lhs.true.196, %lor.lhs.false.193
  %129 = load i32, i32* %i, align 4
  %cmp200 = icmp sge i32 %129, 45
  br i1 %cmp200, label %land.lhs.true.202, label %lor.lhs.false.205

land.lhs.true.202:                                ; preds = %lor.lhs.false.199
  %130 = load i32, i32* %i, align 4
  %cmp203 = icmp sle i32 %130, 52
  br i1 %cmp203, label %cond.true.211, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %land.lhs.true.202, %lor.lhs.false.199
  %131 = load i32, i32* %i, align 4
  %cmp206 = icmp sge i32 %131, 29
  br i1 %cmp206, label %land.lhs.true.208, label %cond.false.223

land.lhs.true.208:                                ; preds = %lor.lhs.false.205
  %132 = load i32, i32* %i, align 4
  %cmp209 = icmp sle i32 %132, 36
  br i1 %cmp209, label %cond.true.211, label %cond.false.223

cond.true.211:                                    ; preds = %land.lhs.true.208, %land.lhs.true.202, %land.lhs.true.196, %land.lhs.true.190
  %133 = load i32, i32* %mode, align 4
  %idxprom212 = sext i32 %133 to i64
  %arrayidx213 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom212
  %134 = load i32, i32* %arrayidx213, align 4
  %cmp214 = icmp eq i32 %134, 5
  br i1 %cmp214, label %lor.end.221, label %lor.rhs.216

lor.rhs.216:                                      ; preds = %cond.true.211
  %135 = load i32, i32* %mode, align 4
  %idxprom217 = sext i32 %135 to i64
  %arrayidx218 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom217
  %136 = load i32, i32* %arrayidx218, align 4
  %cmp219 = icmp eq i32 %136, 6
  br label %lor.end.221

lor.end.221:                                      ; preds = %lor.rhs.216, %cond.true.211
  %137 = phi i1 [ true, %cond.true.211 ], [ %cmp219, %lor.rhs.216 ]
  %cond222 = select i1 %137, i32 2, i32 1
  br label %cond.end.254

cond.false.223:                                   ; preds = %land.lhs.true.208, %lor.lhs.false.205
  %138 = load i32, i32* %mode, align 4
  %cmp224 = icmp eq i32 %138, 18
  br i1 %cmp224, label %cond.true.226, label %cond.false.230

cond.true.226:                                    ; preds = %cond.false.223
  %139 = load i32, i32* @target_flags, align 4
  %and227 = and i32 %139, 33554432
  %tobool228 = icmp ne i32 %and227, 0
  %cond229 = select i1 %tobool228, i32 2, i32 3
  br label %cond.end.252

cond.false.230:                                   ; preds = %cond.false.223
  %140 = load i32, i32* %mode, align 4
  %cmp231 = icmp eq i32 %140, 24
  br i1 %cmp231, label %cond.true.233, label %cond.false.237

cond.true.233:                                    ; preds = %cond.false.230
  %141 = load i32, i32* @target_flags, align 4
  %and234 = and i32 %141, 33554432
  %tobool235 = icmp ne i32 %and234, 0
  %cond236 = select i1 %tobool235, i32 4, i32 6
  br label %cond.end.250

cond.false.237:                                   ; preds = %cond.false.230
  %142 = load i32, i32* %mode, align 4
  %idxprom238 = sext i32 %142 to i64
  %arrayidx239 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom238
  %143 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %143 to i32
  %144 = load i32, i32* @target_flags, align 4
  %and241 = and i32 %144, 33554432
  %tobool242 = icmp ne i32 %and241, 0
  %cond243 = select i1 %tobool242, i32 8, i32 4
  %add244 = add nsw i32 %conv240, %cond243
  %sub245 = sub nsw i32 %add244, 1
  %145 = load i32, i32* @target_flags, align 4
  %and246 = and i32 %145, 33554432
  %tobool247 = icmp ne i32 %and246, 0
  %cond248 = select i1 %tobool247, i32 8, i32 4
  %div249 = sdiv i32 %sub245, %cond248
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.237, %cond.true.233
  %cond251 = phi i32 [ %cond236, %cond.true.233 ], [ %div249, %cond.false.237 ]
  br label %cond.end.252

cond.end.252:                                     ; preds = %cond.end.250, %cond.true.226
  %cond253 = phi i32 [ %cond229, %cond.true.226 ], [ %cond251, %cond.end.250 ]
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.end.252, %lor.end.221
  %cond255 = phi i32 [ %cond222, %lor.end.221 ], [ %cond253, %cond.end.252 ]
  %add256 = add nsw i32 %124, %cond255
  store i32 %add256, i32* %lim187, align 4
  %146 = load i32, i32* %i, align 4
  %add257 = add nsw i32 %146, 1
  store i32 %add257, i32* %j186, align 4
  br label %for.cond.258

for.cond.258:                                     ; preds = %for.inc.296, %cond.end.254
  %147 = load i32, i32* %j186, align 4
  %148 = load i32, i32* %lim187, align 4
  %cmp259 = icmp slt i32 %147, %148
  br i1 %cmp259, label %land.lhs.true.261, label %land.end.294

land.lhs.true.261:                                ; preds = %for.cond.258
  %149 = load i64, i64* %used, align 8
  %150 = load i32, i32* %j186, align 4
  %sh_prom262 = zext i32 %150 to i64
  %shl263 = shl i64 1, %sh_prom262
  %and264 = and i64 %149, %shl263
  %tobool265 = icmp ne i64 %and264, 0
  br i1 %tobool265, label %land.end.294, label %land.rhs.266

land.rhs.266:                                     ; preds = %land.lhs.true.261
  %151 = load i32, i32* %j186, align 4
  %idxprom267 = sext i32 %151 to i64
  %arrayidx268 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom267
  %152 = load i32, i32* %arrayidx268, align 4
  %153 = load i32, i32* %best_reg, align 4
  %154 = load i32, i32* %j186, align 4
  %155 = load i32, i32* %i, align 4
  %sub269 = sub nsw i32 %154, %155
  %add270 = add nsw i32 %153, %sub269
  %idxprom271 = sext i32 %add270 to i64
  %arrayidx272 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom271
  %156 = load i32, i32* %arrayidx272, align 4
  %cmp273 = icmp eq i32 %152, %156
  br i1 %cmp273, label %lor.end.293, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %land.rhs.266
  %157 = load i32, i32* %j186, align 4
  %idxprom276 = sext i32 %157 to i64
  %arrayidx277 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom276
  %158 = load i32, i32* %arrayidx277, align 4
  %159 = load i32, i32* %best_reg, align 4
  %160 = load i32, i32* %j186, align 4
  %161 = load i32, i32* %i, align 4
  %sub278 = sub nsw i32 %160, %161
  %add279 = add nsw i32 %159, %sub278
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom280
  %162 = load i32, i32* %arrayidx281, align 4
  %call282 = call i32 @reg_class_subset_p(i32 %158, i32 %162)
  %tobool283 = icmp ne i32 %call282, 0
  br i1 %tobool283, label %lor.end.293, label %lor.rhs.284

lor.rhs.284:                                      ; preds = %lor.lhs.false.275
  %163 = load i32, i32* %best_reg, align 4
  %164 = load i32, i32* %j186, align 4
  %165 = load i32, i32* %i, align 4
  %sub285 = sub nsw i32 %164, %165
  %add286 = add nsw i32 %163, %sub285
  %idxprom287 = sext i32 %add286 to i64
  %arrayidx288 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom287
  %166 = load i32, i32* %arrayidx288, align 4
  %167 = load i32, i32* %j186, align 4
  %idxprom289 = sext i32 %167 to i64
  %arrayidx290 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom289
  %168 = load i32, i32* %arrayidx290, align 4
  %call291 = call i32 @reg_class_subset_p(i32 %166, i32 %168)
  %tobool292 = icmp ne i32 %call291, 0
  br label %lor.end.293

lor.end.293:                                      ; preds = %lor.rhs.284, %lor.lhs.false.275, %land.rhs.266
  %169 = phi i1 [ true, %lor.lhs.false.275 ], [ true, %land.rhs.266 ], [ %tobool292, %lor.rhs.284 ]
  br label %land.end.294

land.end.294:                                     ; preds = %lor.end.293, %land.lhs.true.261, %for.cond.258
  %170 = phi i1 [ false, %land.lhs.true.261 ], [ false, %for.cond.258 ], [ %169, %lor.end.293 ]
  br i1 %170, label %for.body.295, label %for.end.298

for.body.295:                                     ; preds = %land.end.294
  br label %for.inc.296

for.inc.296:                                      ; preds = %for.body.295
  %171 = load i32, i32* %j186, align 4
  %inc297 = add nsw i32 %171, 1
  store i32 %inc297, i32* %j186, align 4
  br label %for.cond.258

for.end.298:                                      ; preds = %land.end.294
  %172 = load i32, i32* %j186, align 4
  %173 = load i32, i32* %lim187, align 4
  %cmp299 = icmp eq i32 %172, %173
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %for.end.298
  %174 = load i32, i32* %i, align 4
  store i32 %174, i32* %best_reg, align 4
  br label %no_prefs

if.end.302:                                       ; preds = %for.end.298
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %lor.lhs.false.178, %lor.lhs.false.163, %land.lhs.true.152, %for.body.144
  br label %for.inc.304

for.inc.304:                                      ; preds = %if.end.303
  %175 = load i32, i32* %i, align 4
  %inc305 = add nsw i32 %175, 1
  store i32 %inc305, i32* %i, align 4
  br label %for.cond.141

for.end.306:                                      ; preds = %for.cond.141
  br label %if.end.307

if.end.307:                                       ; preds = %for.end.306, %if.end.137
  br label %no_copy_prefs

no_copy_prefs:                                    ; preds = %if.end.307, %if.then.136
  %176 = load i64, i64* %used, align 8
  %neg308 = xor i64 %176, -1
  %177 = load i32, i32* %num.addr, align 4
  %idxprom309 = sext i32 %177 to i64
  %178 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx310 = getelementptr inbounds %struct.allocno, %struct.allocno* %178, i64 %idxprom309
  %hard_reg_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx310, i32 0, i32 7
  %179 = load i64, i64* %hard_reg_preferences, align 8
  %and311 = and i64 %179, %neg308
  store i64 %and311, i64* %hard_reg_preferences, align 8
  %180 = load i32, i32* %num.addr, align 4
  %idxprom312 = sext i32 %180 to i64
  %181 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx313 = getelementptr inbounds %struct.allocno, %struct.allocno* %181, i64 %idxprom312
  %hard_reg_preferences314 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx313, i32 0, i32 7
  %182 = load i64, i64* %hard_reg_preferences314, align 8
  %183 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 0), align 8
  %neg315 = xor i64 %183, -1
  %and316 = and i64 %182, %neg315
  %cmp317 = icmp eq i64 0, %and316
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %no_copy_prefs
  br label %no_prefs

if.end.320:                                       ; preds = %no_copy_prefs
  %184 = load i32, i32* %best_reg, align 4
  %cmp321 = icmp sge i32 %184, 0
  br i1 %cmp321, label %if.then.323, label %if.end.490

if.then.323:                                      ; preds = %if.end.320
  store i32 0, i32* %i, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.487, %if.then.323
  %185 = load i32, i32* %i, align 4
  %cmp325 = icmp slt i32 %185, 53
  br i1 %cmp325, label %for.body.327, label %for.end.489

for.body.327:                                     ; preds = %for.cond.324
  %186 = load i32, i32* %num.addr, align 4
  %idxprom328 = sext i32 %186 to i64
  %187 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx329 = getelementptr inbounds %struct.allocno, %struct.allocno* %187, i64 %idxprom328
  %hard_reg_preferences330 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx329, i32 0, i32 7
  %188 = load i64, i64* %hard_reg_preferences330, align 8
  %189 = load i32, i32* %i, align 4
  %sh_prom331 = zext i32 %189 to i64
  %shl332 = shl i64 1, %sh_prom331
  %and333 = and i64 %188, %shl332
  %tobool334 = icmp ne i64 %and333, 0
  br i1 %tobool334, label %land.lhs.true.335, label %if.end.486

land.lhs.true.335:                                ; preds = %for.body.327
  %190 = load i32, i32* %i, align 4
  %191 = load i32, i32* %mode, align 4
  %call336 = call i32 @ix86_hard_regno_mode_ok(i32 %190, i32 %191)
  %tobool337 = icmp ne i32 %call336, 0
  br i1 %tobool337, label %land.lhs.true.338, label %if.end.486

land.lhs.true.338:                                ; preds = %land.lhs.true.335
  %192 = load i32, i32* %num.addr, align 4
  %idxprom339 = sext i32 %192 to i64
  %193 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx340 = getelementptr inbounds %struct.allocno, %struct.allocno* %193, i64 %idxprom339
  %calls_crossed341 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx340, i32 0, i32 2
  %194 = load i32, i32* %calls_crossed341, align 4
  %cmp342 = icmp eq i32 %194, 0
  br i1 %cmp342, label %land.lhs.true.347, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %land.lhs.true.338
  %195 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool345 = icmp ne i32 %195, 0
  br i1 %tobool345, label %land.lhs.true.347, label %lor.lhs.false.346

lor.lhs.false.346:                                ; preds = %lor.lhs.false.344
  br i1 false, label %if.end.486, label %land.lhs.true.347

land.lhs.true.347:                                ; preds = %lor.lhs.false.346, %lor.lhs.false.344, %land.lhs.true.338
  %196 = load i32, i32* %i, align 4
  %idxprom348 = sext i32 %196 to i64
  %arrayidx349 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom348
  %197 = load i32, i32* %arrayidx349, align 4
  %198 = load i32, i32* %best_reg, align 4
  %idxprom350 = sext i32 %198 to i64
  %arrayidx351 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom350
  %199 = load i32, i32* %arrayidx351, align 4
  %cmp352 = icmp eq i32 %197, %199
  br i1 %cmp352, label %if.then.368, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %land.lhs.true.347
  %200 = load i32, i32* %i, align 4
  %idxprom355 = sext i32 %200 to i64
  %arrayidx356 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom355
  %201 = load i32, i32* %arrayidx356, align 4
  %202 = load i32, i32* %best_reg, align 4
  %idxprom357 = sext i32 %202 to i64
  %arrayidx358 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom357
  %203 = load i32, i32* %arrayidx358, align 4
  %call359 = call i32 @reg_class_subset_p(i32 %201, i32 %203)
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.then.368, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %lor.lhs.false.354
  %204 = load i32, i32* %best_reg, align 4
  %idxprom362 = sext i32 %204 to i64
  %arrayidx363 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom362
  %205 = load i32, i32* %arrayidx363, align 4
  %206 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %206 to i64
  %arrayidx365 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom364
  %207 = load i32, i32* %arrayidx365, align 4
  %call366 = call i32 @reg_class_subset_p(i32 %205, i32 %207)
  %tobool367 = icmp ne i32 %call366, 0
  br i1 %tobool367, label %if.then.368, label %if.end.486

if.then.368:                                      ; preds = %lor.lhs.false.361, %lor.lhs.false.354, %land.lhs.true.347
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %i, align 4
  %cmp371 = icmp sge i32 %209, 8
  br i1 %cmp371, label %land.lhs.true.373, label %lor.lhs.false.376

land.lhs.true.373:                                ; preds = %if.then.368
  %210 = load i32, i32* %i, align 4
  %cmp374 = icmp sle i32 %210, 15
  br i1 %cmp374, label %cond.true.394, label %lor.lhs.false.376

lor.lhs.false.376:                                ; preds = %land.lhs.true.373, %if.then.368
  %211 = load i32, i32* %i, align 4
  %cmp377 = icmp sge i32 %211, 21
  br i1 %cmp377, label %land.lhs.true.379, label %lor.lhs.false.382

land.lhs.true.379:                                ; preds = %lor.lhs.false.376
  %212 = load i32, i32* %i, align 4
  %cmp380 = icmp sle i32 %212, 28
  br i1 %cmp380, label %cond.true.394, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %land.lhs.true.379, %lor.lhs.false.376
  %213 = load i32, i32* %i, align 4
  %cmp383 = icmp sge i32 %213, 45
  br i1 %cmp383, label %land.lhs.true.385, label %lor.lhs.false.388

land.lhs.true.385:                                ; preds = %lor.lhs.false.382
  %214 = load i32, i32* %i, align 4
  %cmp386 = icmp sle i32 %214, 52
  br i1 %cmp386, label %cond.true.394, label %lor.lhs.false.388

lor.lhs.false.388:                                ; preds = %land.lhs.true.385, %lor.lhs.false.382
  %215 = load i32, i32* %i, align 4
  %cmp389 = icmp sge i32 %215, 29
  br i1 %cmp389, label %land.lhs.true.391, label %cond.false.406

land.lhs.true.391:                                ; preds = %lor.lhs.false.388
  %216 = load i32, i32* %i, align 4
  %cmp392 = icmp sle i32 %216, 36
  br i1 %cmp392, label %cond.true.394, label %cond.false.406

cond.true.394:                                    ; preds = %land.lhs.true.391, %land.lhs.true.385, %land.lhs.true.379, %land.lhs.true.373
  %217 = load i32, i32* %mode, align 4
  %idxprom395 = sext i32 %217 to i64
  %arrayidx396 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom395
  %218 = load i32, i32* %arrayidx396, align 4
  %cmp397 = icmp eq i32 %218, 5
  br i1 %cmp397, label %lor.end.404, label %lor.rhs.399

lor.rhs.399:                                      ; preds = %cond.true.394
  %219 = load i32, i32* %mode, align 4
  %idxprom400 = sext i32 %219 to i64
  %arrayidx401 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom400
  %220 = load i32, i32* %arrayidx401, align 4
  %cmp402 = icmp eq i32 %220, 6
  br label %lor.end.404

lor.end.404:                                      ; preds = %lor.rhs.399, %cond.true.394
  %221 = phi i1 [ true, %cond.true.394 ], [ %cmp402, %lor.rhs.399 ]
  %cond405 = select i1 %221, i32 2, i32 1
  br label %cond.end.437

cond.false.406:                                   ; preds = %land.lhs.true.391, %lor.lhs.false.388
  %222 = load i32, i32* %mode, align 4
  %cmp407 = icmp eq i32 %222, 18
  br i1 %cmp407, label %cond.true.409, label %cond.false.413

cond.true.409:                                    ; preds = %cond.false.406
  %223 = load i32, i32* @target_flags, align 4
  %and410 = and i32 %223, 33554432
  %tobool411 = icmp ne i32 %and410, 0
  %cond412 = select i1 %tobool411, i32 2, i32 3
  br label %cond.end.435

cond.false.413:                                   ; preds = %cond.false.406
  %224 = load i32, i32* %mode, align 4
  %cmp414 = icmp eq i32 %224, 24
  br i1 %cmp414, label %cond.true.416, label %cond.false.420

cond.true.416:                                    ; preds = %cond.false.413
  %225 = load i32, i32* @target_flags, align 4
  %and417 = and i32 %225, 33554432
  %tobool418 = icmp ne i32 %and417, 0
  %cond419 = select i1 %tobool418, i32 4, i32 6
  br label %cond.end.433

cond.false.420:                                   ; preds = %cond.false.413
  %226 = load i32, i32* %mode, align 4
  %idxprom421 = sext i32 %226 to i64
  %arrayidx422 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom421
  %227 = load i8, i8* %arrayidx422, align 1
  %conv423 = zext i8 %227 to i32
  %228 = load i32, i32* @target_flags, align 4
  %and424 = and i32 %228, 33554432
  %tobool425 = icmp ne i32 %and424, 0
  %cond426 = select i1 %tobool425, i32 8, i32 4
  %add427 = add nsw i32 %conv423, %cond426
  %sub428 = sub nsw i32 %add427, 1
  %229 = load i32, i32* @target_flags, align 4
  %and429 = and i32 %229, 33554432
  %tobool430 = icmp ne i32 %and429, 0
  %cond431 = select i1 %tobool430, i32 8, i32 4
  %div432 = sdiv i32 %sub428, %cond431
  br label %cond.end.433

cond.end.433:                                     ; preds = %cond.false.420, %cond.true.416
  %cond434 = phi i32 [ %cond419, %cond.true.416 ], [ %div432, %cond.false.420 ]
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.end.433, %cond.true.409
  %cond436 = phi i32 [ %cond412, %cond.true.409 ], [ %cond434, %cond.end.433 ]
  br label %cond.end.437

cond.end.437:                                     ; preds = %cond.end.435, %lor.end.404
  %cond438 = phi i32 [ %cond405, %lor.end.404 ], [ %cond436, %cond.end.435 ]
  %add439 = add nsw i32 %208, %cond438
  store i32 %add439, i32* %lim370, align 4
  %230 = load i32, i32* %i, align 4
  %add440 = add nsw i32 %230, 1
  store i32 %add440, i32* %j369, align 4
  br label %for.cond.441

for.cond.441:                                     ; preds = %for.inc.479, %cond.end.437
  %231 = load i32, i32* %j369, align 4
  %232 = load i32, i32* %lim370, align 4
  %cmp442 = icmp slt i32 %231, %232
  br i1 %cmp442, label %land.lhs.true.444, label %land.end.477

land.lhs.true.444:                                ; preds = %for.cond.441
  %233 = load i64, i64* %used, align 8
  %234 = load i32, i32* %j369, align 4
  %sh_prom445 = zext i32 %234 to i64
  %shl446 = shl i64 1, %sh_prom445
  %and447 = and i64 %233, %shl446
  %tobool448 = icmp ne i64 %and447, 0
  br i1 %tobool448, label %land.end.477, label %land.rhs.449

land.rhs.449:                                     ; preds = %land.lhs.true.444
  %235 = load i32, i32* %j369, align 4
  %idxprom450 = sext i32 %235 to i64
  %arrayidx451 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom450
  %236 = load i32, i32* %arrayidx451, align 4
  %237 = load i32, i32* %best_reg, align 4
  %238 = load i32, i32* %j369, align 4
  %239 = load i32, i32* %i, align 4
  %sub452 = sub nsw i32 %238, %239
  %add453 = add nsw i32 %237, %sub452
  %idxprom454 = sext i32 %add453 to i64
  %arrayidx455 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom454
  %240 = load i32, i32* %arrayidx455, align 4
  %cmp456 = icmp eq i32 %236, %240
  br i1 %cmp456, label %lor.end.476, label %lor.lhs.false.458

lor.lhs.false.458:                                ; preds = %land.rhs.449
  %241 = load i32, i32* %j369, align 4
  %idxprom459 = sext i32 %241 to i64
  %arrayidx460 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom459
  %242 = load i32, i32* %arrayidx460, align 4
  %243 = load i32, i32* %best_reg, align 4
  %244 = load i32, i32* %j369, align 4
  %245 = load i32, i32* %i, align 4
  %sub461 = sub nsw i32 %244, %245
  %add462 = add nsw i32 %243, %sub461
  %idxprom463 = sext i32 %add462 to i64
  %arrayidx464 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom463
  %246 = load i32, i32* %arrayidx464, align 4
  %call465 = call i32 @reg_class_subset_p(i32 %242, i32 %246)
  %tobool466 = icmp ne i32 %call465, 0
  br i1 %tobool466, label %lor.end.476, label %lor.rhs.467

lor.rhs.467:                                      ; preds = %lor.lhs.false.458
  %247 = load i32, i32* %best_reg, align 4
  %248 = load i32, i32* %j369, align 4
  %249 = load i32, i32* %i, align 4
  %sub468 = sub nsw i32 %248, %249
  %add469 = add nsw i32 %247, %sub468
  %idxprom470 = sext i32 %add469 to i64
  %arrayidx471 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom470
  %250 = load i32, i32* %arrayidx471, align 4
  %251 = load i32, i32* %j369, align 4
  %idxprom472 = sext i32 %251 to i64
  %arrayidx473 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom472
  %252 = load i32, i32* %arrayidx473, align 4
  %call474 = call i32 @reg_class_subset_p(i32 %250, i32 %252)
  %tobool475 = icmp ne i32 %call474, 0
  br label %lor.end.476

lor.end.476:                                      ; preds = %lor.rhs.467, %lor.lhs.false.458, %land.rhs.449
  %253 = phi i1 [ true, %lor.lhs.false.458 ], [ true, %land.rhs.449 ], [ %tobool475, %lor.rhs.467 ]
  br label %land.end.477

land.end.477:                                     ; preds = %lor.end.476, %land.lhs.true.444, %for.cond.441
  %254 = phi i1 [ false, %land.lhs.true.444 ], [ false, %for.cond.441 ], [ %253, %lor.end.476 ]
  br i1 %254, label %for.body.478, label %for.end.481

for.body.478:                                     ; preds = %land.end.477
  br label %for.inc.479

for.inc.479:                                      ; preds = %for.body.478
  %255 = load i32, i32* %j369, align 4
  %inc480 = add nsw i32 %255, 1
  store i32 %inc480, i32* %j369, align 4
  br label %for.cond.441

for.end.481:                                      ; preds = %land.end.477
  %256 = load i32, i32* %j369, align 4
  %257 = load i32, i32* %lim370, align 4
  %cmp482 = icmp eq i32 %256, %257
  br i1 %cmp482, label %if.then.484, label %if.end.485

if.then.484:                                      ; preds = %for.end.481
  %258 = load i32, i32* %i, align 4
  store i32 %258, i32* %best_reg, align 4
  br label %for.end.489

if.end.485:                                       ; preds = %for.end.481
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %lor.lhs.false.361, %lor.lhs.false.346, %land.lhs.true.335, %for.body.327
  br label %for.inc.487

for.inc.487:                                      ; preds = %if.end.486
  %259 = load i32, i32* %i, align 4
  %inc488 = add nsw i32 %259, 1
  store i32 %inc488, i32* %i, align 4
  br label %for.cond.324

for.end.489:                                      ; preds = %if.then.484, %for.cond.324
  br label %if.end.490

if.end.490:                                       ; preds = %for.end.489, %if.end.320
  br label %no_prefs

no_prefs:                                         ; preds = %if.end.490, %if.then.319, %if.then.301
  %260 = load i32, i32* @flag_caller_saves, align 4
  %tobool491 = icmp ne i32 %260, 0
  br i1 %tobool491, label %land.lhs.true.492, label %if.end.528

land.lhs.true.492:                                ; preds = %no_prefs
  %261 = load i32, i32* %best_reg, align 4
  %cmp493 = icmp slt i32 %261, 0
  br i1 %cmp493, label %if.then.495, label %if.end.528

if.then.495:                                      ; preds = %land.lhs.true.492
  %262 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool496 = icmp ne i32 %262, 0
  br i1 %tobool496, label %if.end.527, label %land.lhs.true.497

land.lhs.true.497:                                ; preds = %if.then.495
  %263 = load i32, i32* %num.addr, align 4
  %idxprom498 = sext i32 %263 to i64
  %264 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx499 = getelementptr inbounds %struct.allocno, %struct.allocno* %264, i64 %idxprom498
  %calls_crossed500 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx499, i32 0, i32 2
  %265 = load i32, i32* %calls_crossed500, align 4
  %cmp501 = icmp ne i32 %265, 0
  br i1 %cmp501, label %land.lhs.true.503, label %if.end.527

land.lhs.true.503:                                ; preds = %land.lhs.true.497
  %266 = load i32, i32* %num.addr, align 4
  %idxprom504 = sext i32 %266 to i64
  %267 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx505 = getelementptr inbounds %struct.allocno, %struct.allocno* %267, i64 %idxprom504
  %calls_crossed506 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx505, i32 0, i32 2
  %268 = load i32, i32* %calls_crossed506, align 4
  %mul = mul nsw i32 4, %268
  %269 = load i32, i32* %num.addr, align 4
  %idxprom507 = sext i32 %269 to i64
  %270 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx508 = getelementptr inbounds %struct.allocno, %struct.allocno* %270, i64 %idxprom507
  %n_refs = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx508, i32 0, i32 3
  %271 = load i32, i32* %n_refs, align 4
  %cmp509 = icmp slt i32 %mul, %271
  br i1 %cmp509, label %if.then.511, label %if.end.527

if.then.511:                                      ; preds = %land.lhs.true.503
  %272 = load i64, i64* %losers.addr, align 8
  %tobool512 = icmp ne i64 %272, 0
  br i1 %tobool512, label %if.else.514, label %if.then.513

if.then.513:                                      ; preds = %if.then.511
  store i64 0, i64* %new_losers, align 8
  br label %if.end.515

if.else.514:                                      ; preds = %if.then.511
  %273 = load i64, i64* %losers.addr, align 8
  store i64 %273, i64* %new_losers, align 8
  br label %if.end.515

if.end.515:                                       ; preds = %if.else.514, %if.then.513
  %274 = load i64, i64* @losing_caller_save_reg_set, align 8
  %275 = load i64, i64* %new_losers, align 8
  %or516 = or i64 %275, %274
  store i64 %or516, i64* %new_losers, align 8
  %276 = load i32, i32* %num.addr, align 4
  %277 = load i64, i64* %new_losers, align 8
  %278 = load i32, i32* %alt_regs_p.addr, align 4
  %279 = load i32, i32* %retrying.addr, align 4
  call void @find_reg(i32 %276, i64 %277, i32 %278, i32 1, i32 %279)
  %280 = load i32, i32* %num.addr, align 4
  %idxprom517 = sext i32 %280 to i64
  %281 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx518 = getelementptr inbounds %struct.allocno, %struct.allocno* %281, i64 %idxprom517
  %reg519 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx518, i32 0, i32 0
  %282 = load i32, i32* %reg519, align 4
  %idxprom520 = sext i32 %282 to i64
  %283 = load i16*, i16** @reg_renumber, align 8
  %arrayidx521 = getelementptr inbounds i16, i16* %283, i64 %idxprom520
  %284 = load i16, i16* %arrayidx521, align 2
  %conv522 = sext i16 %284 to i32
  %cmp523 = icmp sge i32 %conv522, 0
  br i1 %cmp523, label %if.then.525, label %if.end.526

if.then.525:                                      ; preds = %if.end.515
  store i32 1, i32* @caller_save_needed, align 4
  br label %if.end.865

if.end.526:                                       ; preds = %if.end.515
  br label %if.end.527

if.end.527:                                       ; preds = %if.end.526, %land.lhs.true.503, %land.lhs.true.497, %if.then.495
  br label %if.end.528

if.end.528:                                       ; preds = %if.end.527, %land.lhs.true.492, %no_prefs
  %285 = load i32, i32* %best_reg, align 4
  %cmp529 = icmp slt i32 %285, 0
  br i1 %cmp529, label %land.lhs.true.531, label %if.end.719

land.lhs.true.531:                                ; preds = %if.end.528
  %286 = load i32, i32* %retrying.addr, align 4
  %tobool532 = icmp ne i32 %286, 0
  br i1 %tobool532, label %if.end.719, label %land.lhs.true.533

land.lhs.true.533:                                ; preds = %land.lhs.true.531
  %287 = load i32, i32* %num.addr, align 4
  %idxprom534 = sext i32 %287 to i64
  %288 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx535 = getelementptr inbounds %struct.allocno, %struct.allocno* %288, i64 %idxprom534
  %size = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx535, i32 0, i32 1
  %289 = load i32, i32* %size, align 4
  %cmp536 = icmp eq i32 %289, 1
  br i1 %cmp536, label %if.then.538, label %if.end.719

if.then.538:                                      ; preds = %land.lhs.true.533
  store i32 52, i32* %i, align 4
  br label %for.cond.539

for.cond.539:                                     ; preds = %for.inc.717, %if.then.538
  %290 = load i32, i32* %i, align 4
  %cmp540 = icmp sge i32 %290, 0
  br i1 %cmp540, label %for.body.542, label %for.end.718

for.body.542:                                     ; preds = %for.cond.539
  %291 = load i32, i32* %i, align 4
  %idxprom544 = sext i32 %291 to i64
  %arrayidx545 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i32 0, i64 %idxprom544
  %292 = load i32, i32* %arrayidx545, align 4
  store i32 %292, i32* %regno543, align 4
  %293 = load i32, i32* %regno543, align 4
  %idxprom546 = sext i32 %293 to i64
  %arrayidx547 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_n_refs, i32 0, i64 %idxprom546
  %294 = load i32, i32* %arrayidx547, align 4
  %cmp548 = icmp ne i32 %294, 0
  br i1 %cmp548, label %land.lhs.true.550, label %if.end.716

land.lhs.true.550:                                ; preds = %for.body.542
  %295 = load i64, i64* %used2, align 8
  %296 = load i32, i32* %regno543, align 4
  %sh_prom551 = zext i32 %296 to i64
  %shl552 = shl i64 1, %sh_prom551
  %and553 = and i64 %295, %shl552
  %tobool554 = icmp ne i64 %and553, 0
  br i1 %tobool554, label %if.end.716, label %land.lhs.true.555

land.lhs.true.555:                                ; preds = %land.lhs.true.550
  %297 = load i32, i32* %regno543, align 4
  %298 = load i32, i32* %mode, align 4
  %call556 = call i32 @ix86_hard_regno_mode_ok(i32 %297, i32 %298)
  %tobool557 = icmp ne i32 %call556, 0
  br i1 %tobool557, label %land.lhs.true.558, label %if.end.716

land.lhs.true.558:                                ; preds = %land.lhs.true.555
  %299 = load i32, i32* %num.addr, align 4
  %idxprom559 = sext i32 %299 to i64
  %300 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx560 = getelementptr inbounds %struct.allocno, %struct.allocno* %300, i64 %idxprom559
  %calls_crossed561 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx560, i32 0, i32 2
  %301 = load i32, i32* %calls_crossed561, align 4
  %cmp562 = icmp eq i32 %301, 0
  br i1 %cmp562, label %if.then.567, label %lor.lhs.false.564

lor.lhs.false.564:                                ; preds = %land.lhs.true.558
  %302 = load i32, i32* %accept_call_clobbered.addr, align 4
  %tobool565 = icmp ne i32 %302, 0
  br i1 %tobool565, label %if.then.567, label %lor.lhs.false.566

lor.lhs.false.566:                                ; preds = %lor.lhs.false.564
  br i1 false, label %if.end.716, label %if.then.567

if.then.567:                                      ; preds = %lor.lhs.false.566, %lor.lhs.false.564, %land.lhs.true.558
  %303 = load i32, i32* %regno543, align 4
  %idxprom568 = sext i32 %303 to i64
  %arrayidx569 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_freq, i32 0, i64 %idxprom568
  %304 = load i32, i32* %arrayidx569, align 4
  %conv570 = sitofp i32 %304 to double
  %305 = load i32, i32* %regno543, align 4
  %idxprom571 = sext i32 %305 to i64
  %arrayidx572 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_live_length, i32 0, i64 %idxprom571
  %306 = load i32, i32* %arrayidx572, align 4
  %conv573 = sitofp i32 %306 to double
  %div574 = fdiv double %conv570, %conv573
  store double %div574, double* %tmp1, align 8
  %307 = load i32, i32* %num.addr, align 4
  %idxprom575 = sext i32 %307 to i64
  %308 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx576 = getelementptr inbounds %struct.allocno, %struct.allocno* %308, i64 %idxprom575
  %freq = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx576, i32 0, i32 4
  %309 = load i32, i32* %freq, align 4
  %conv577 = sitofp i32 %309 to double
  %310 = load i32, i32* %num.addr, align 4
  %idxprom578 = sext i32 %310 to i64
  %311 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx579 = getelementptr inbounds %struct.allocno, %struct.allocno* %311, i64 %idxprom578
  %live_length = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx579, i32 0, i32 5
  %312 = load i32, i32* %live_length, align 4
  %conv580 = sitofp i32 %312 to double
  %div581 = fdiv double %conv577, %conv580
  store double %div581, double* %tmp2, align 8
  %313 = load double, double* %tmp1, align 8
  %314 = load double, double* %tmp2, align 8
  %cmp582 = fcmp olt double %313, %314
  br i1 %cmp582, label %if.then.584, label %if.end.715

if.then.584:                                      ; preds = %if.then.567
  store i32 0, i32* %k, align 4
  br label %for.cond.585

for.cond.585:                                     ; preds = %for.inc.712, %if.then.584
  %315 = load i32, i32* %k, align 4
  %316 = load i32, i32* @max_regno, align 4
  %cmp586 = icmp slt i32 %315, %316
  br i1 %cmp586, label %for.body.588, label %for.end.714

for.body.588:                                     ; preds = %for.cond.585
  %317 = load i32, i32* %k, align 4
  %idxprom589 = sext i32 %317 to i64
  %318 = load i16*, i16** @reg_renumber, align 8
  %arrayidx590 = getelementptr inbounds i16, i16* %318, i64 %idxprom589
  %319 = load i16, i16* %arrayidx590, align 2
  %conv591 = sext i16 %319 to i32
  %cmp592 = icmp sge i32 %conv591, 0
  br i1 %cmp592, label %if.then.594, label %if.end.711

if.then.594:                                      ; preds = %for.body.588
  %320 = load i32, i32* %k, align 4
  %idxprom595 = sext i32 %320 to i64
  %321 = load i16*, i16** @reg_renumber, align 8
  %arrayidx596 = getelementptr inbounds i16, i16* %321, i64 %idxprom595
  %322 = load i16, i16* %arrayidx596, align 2
  %conv597 = sext i16 %322 to i32
  store i32 %conv597, i32* %r, align 4
  %323 = load i32, i32* %r, align 4
  %324 = load i32, i32* %r, align 4
  %cmp598 = icmp sge i32 %324, 8
  br i1 %cmp598, label %land.lhs.true.600, label %lor.lhs.false.603

land.lhs.true.600:                                ; preds = %if.then.594
  %325 = load i32, i32* %r, align 4
  %cmp601 = icmp sle i32 %325, 15
  br i1 %cmp601, label %cond.true.621, label %lor.lhs.false.603

lor.lhs.false.603:                                ; preds = %land.lhs.true.600, %if.then.594
  %326 = load i32, i32* %r, align 4
  %cmp604 = icmp sge i32 %326, 21
  br i1 %cmp604, label %land.lhs.true.606, label %lor.lhs.false.609

land.lhs.true.606:                                ; preds = %lor.lhs.false.603
  %327 = load i32, i32* %r, align 4
  %cmp607 = icmp sle i32 %327, 28
  br i1 %cmp607, label %cond.true.621, label %lor.lhs.false.609

lor.lhs.false.609:                                ; preds = %land.lhs.true.606, %lor.lhs.false.603
  %328 = load i32, i32* %r, align 4
  %cmp610 = icmp sge i32 %328, 45
  br i1 %cmp610, label %land.lhs.true.612, label %lor.lhs.false.615

land.lhs.true.612:                                ; preds = %lor.lhs.false.609
  %329 = load i32, i32* %r, align 4
  %cmp613 = icmp sle i32 %329, 52
  br i1 %cmp613, label %cond.true.621, label %lor.lhs.false.615

lor.lhs.false.615:                                ; preds = %land.lhs.true.612, %lor.lhs.false.609
  %330 = load i32, i32* %r, align 4
  %cmp616 = icmp sge i32 %330, 29
  br i1 %cmp616, label %land.lhs.true.618, label %cond.false.647

land.lhs.true.618:                                ; preds = %lor.lhs.false.615
  %331 = load i32, i32* %r, align 4
  %cmp619 = icmp sle i32 %331, 36
  br i1 %cmp619, label %cond.true.621, label %cond.false.647

cond.true.621:                                    ; preds = %land.lhs.true.618, %land.lhs.true.612, %land.lhs.true.606, %land.lhs.true.600
  %332 = load i32, i32* %k, align 4
  %idxprom622 = sext i32 %332 to i64
  %333 = load %struct.function*, %struct.function** @cfun, align 8
  %emit623 = getelementptr inbounds %struct.function, %struct.function* %333, i32 0, i32 3
  %334 = load %struct.emit_status*, %struct.emit_status** %emit623, align 8
  %x_regno_reg_rtx624 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %334, i32 0, i32 12
  %335 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx624, align 8
  %arrayidx625 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %335, i64 %idxprom622
  %336 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx625, align 8
  %337 = bitcast %struct.rtx_def* %336 to i32*
  %bf.load626 = load i32, i32* %337, align 8
  %bf.lshr627 = lshr i32 %bf.load626, 16
  %bf.clear628 = and i32 %bf.lshr627, 255
  %idxprom629 = sext i32 %bf.clear628 to i64
  %arrayidx630 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom629
  %338 = load i32, i32* %arrayidx630, align 4
  %cmp631 = icmp eq i32 %338, 5
  br i1 %cmp631, label %lor.end.645, label %lor.rhs.633

lor.rhs.633:                                      ; preds = %cond.true.621
  %339 = load i32, i32* %k, align 4
  %idxprom634 = sext i32 %339 to i64
  %340 = load %struct.function*, %struct.function** @cfun, align 8
  %emit635 = getelementptr inbounds %struct.function, %struct.function* %340, i32 0, i32 3
  %341 = load %struct.emit_status*, %struct.emit_status** %emit635, align 8
  %x_regno_reg_rtx636 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %341, i32 0, i32 12
  %342 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx636, align 8
  %arrayidx637 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %342, i64 %idxprom634
  %343 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx637, align 8
  %344 = bitcast %struct.rtx_def* %343 to i32*
  %bf.load638 = load i32, i32* %344, align 8
  %bf.lshr639 = lshr i32 %bf.load638, 16
  %bf.clear640 = and i32 %bf.lshr639, 255
  %idxprom641 = sext i32 %bf.clear640 to i64
  %arrayidx642 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom641
  %345 = load i32, i32* %arrayidx642, align 4
  %cmp643 = icmp eq i32 %345, 6
  br label %lor.end.645

lor.end.645:                                      ; preds = %lor.rhs.633, %cond.true.621
  %346 = phi i1 [ true, %cond.true.621 ], [ %cmp643, %lor.rhs.633 ]
  %cond646 = select i1 %346, i32 2, i32 1
  br label %cond.end.699

cond.false.647:                                   ; preds = %land.lhs.true.618, %lor.lhs.false.615
  %347 = load i32, i32* %k, align 4
  %idxprom648 = sext i32 %347 to i64
  %348 = load %struct.function*, %struct.function** @cfun, align 8
  %emit649 = getelementptr inbounds %struct.function, %struct.function* %348, i32 0, i32 3
  %349 = load %struct.emit_status*, %struct.emit_status** %emit649, align 8
  %x_regno_reg_rtx650 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %349, i32 0, i32 12
  %350 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx650, align 8
  %arrayidx651 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %350, i64 %idxprom648
  %351 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx651, align 8
  %352 = bitcast %struct.rtx_def* %351 to i32*
  %bf.load652 = load i32, i32* %352, align 8
  %bf.lshr653 = lshr i32 %bf.load652, 16
  %bf.clear654 = and i32 %bf.lshr653, 255
  %cmp655 = icmp eq i32 %bf.clear654, 18
  br i1 %cmp655, label %cond.true.657, label %cond.false.661

cond.true.657:                                    ; preds = %cond.false.647
  %353 = load i32, i32* @target_flags, align 4
  %and658 = and i32 %353, 33554432
  %tobool659 = icmp ne i32 %and658, 0
  %cond660 = select i1 %tobool659, i32 2, i32 3
  br label %cond.end.697

cond.false.661:                                   ; preds = %cond.false.647
  %354 = load i32, i32* %k, align 4
  %idxprom662 = sext i32 %354 to i64
  %355 = load %struct.function*, %struct.function** @cfun, align 8
  %emit663 = getelementptr inbounds %struct.function, %struct.function* %355, i32 0, i32 3
  %356 = load %struct.emit_status*, %struct.emit_status** %emit663, align 8
  %x_regno_reg_rtx664 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %356, i32 0, i32 12
  %357 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx664, align 8
  %arrayidx665 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %357, i64 %idxprom662
  %358 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx665, align 8
  %359 = bitcast %struct.rtx_def* %358 to i32*
  %bf.load666 = load i32, i32* %359, align 8
  %bf.lshr667 = lshr i32 %bf.load666, 16
  %bf.clear668 = and i32 %bf.lshr667, 255
  %cmp669 = icmp eq i32 %bf.clear668, 24
  br i1 %cmp669, label %cond.true.671, label %cond.false.675

cond.true.671:                                    ; preds = %cond.false.661
  %360 = load i32, i32* @target_flags, align 4
  %and672 = and i32 %360, 33554432
  %tobool673 = icmp ne i32 %and672, 0
  %cond674 = select i1 %tobool673, i32 4, i32 6
  br label %cond.end.695

cond.false.675:                                   ; preds = %cond.false.661
  %361 = load i32, i32* %k, align 4
  %idxprom676 = sext i32 %361 to i64
  %362 = load %struct.function*, %struct.function** @cfun, align 8
  %emit677 = getelementptr inbounds %struct.function, %struct.function* %362, i32 0, i32 3
  %363 = load %struct.emit_status*, %struct.emit_status** %emit677, align 8
  %x_regno_reg_rtx678 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %363, i32 0, i32 12
  %364 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx678, align 8
  %arrayidx679 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %364, i64 %idxprom676
  %365 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx679, align 8
  %366 = bitcast %struct.rtx_def* %365 to i32*
  %bf.load680 = load i32, i32* %366, align 8
  %bf.lshr681 = lshr i32 %bf.load680, 16
  %bf.clear682 = and i32 %bf.lshr681, 255
  %idxprom683 = sext i32 %bf.clear682 to i64
  %arrayidx684 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom683
  %367 = load i8, i8* %arrayidx684, align 1
  %conv685 = zext i8 %367 to i32
  %368 = load i32, i32* @target_flags, align 4
  %and686 = and i32 %368, 33554432
  %tobool687 = icmp ne i32 %and686, 0
  %cond688 = select i1 %tobool687, i32 8, i32 4
  %add689 = add nsw i32 %conv685, %cond688
  %sub690 = sub nsw i32 %add689, 1
  %369 = load i32, i32* @target_flags, align 4
  %and691 = and i32 %369, 33554432
  %tobool692 = icmp ne i32 %and691, 0
  %cond693 = select i1 %tobool692, i32 8, i32 4
  %div694 = sdiv i32 %sub690, %cond693
  br label %cond.end.695

cond.end.695:                                     ; preds = %cond.false.675, %cond.true.671
  %cond696 = phi i32 [ %cond674, %cond.true.671 ], [ %div694, %cond.false.675 ]
  br label %cond.end.697

cond.end.697:                                     ; preds = %cond.end.695, %cond.true.657
  %cond698 = phi i32 [ %cond660, %cond.true.657 ], [ %cond696, %cond.end.695 ]
  br label %cond.end.699

cond.end.699:                                     ; preds = %cond.end.697, %lor.end.645
  %cond700 = phi i32 [ %cond646, %lor.end.645 ], [ %cond698, %cond.end.697 ]
  %add701 = add nsw i32 %323, %cond700
  store i32 %add701, i32* %endregno, align 4
  %370 = load i32, i32* %regno543, align 4
  %371 = load i32, i32* %r, align 4
  %cmp702 = icmp sge i32 %370, %371
  br i1 %cmp702, label %land.lhs.true.704, label %if.end.710

land.lhs.true.704:                                ; preds = %cond.end.699
  %372 = load i32, i32* %regno543, align 4
  %373 = load i32, i32* %endregno, align 4
  %cmp705 = icmp slt i32 %372, %373
  br i1 %cmp705, label %if.then.707, label %if.end.710

if.then.707:                                      ; preds = %land.lhs.true.704
  %374 = load i32, i32* %k, align 4
  %idxprom708 = sext i32 %374 to i64
  %375 = load i16*, i16** @reg_renumber, align 8
  %arrayidx709 = getelementptr inbounds i16, i16* %375, i64 %idxprom708
  store i16 -1, i16* %arrayidx709, align 2
  br label %if.end.710

if.end.710:                                       ; preds = %if.then.707, %land.lhs.true.704, %cond.end.699
  br label %if.end.711

if.end.711:                                       ; preds = %if.end.710, %for.body.588
  br label %for.inc.712

for.inc.712:                                      ; preds = %if.end.711
  %376 = load i32, i32* %k, align 4
  %inc713 = add nsw i32 %376, 1
  store i32 %inc713, i32* %k, align 4
  br label %for.cond.585

for.end.714:                                      ; preds = %for.cond.585
  %377 = load i32, i32* %regno543, align 4
  store i32 %377, i32* %best_reg, align 4
  br label %for.end.718

if.end.715:                                       ; preds = %if.then.567
  br label %if.end.716

if.end.716:                                       ; preds = %if.end.715, %lor.lhs.false.566, %land.lhs.true.555, %land.lhs.true.550, %for.body.542
  br label %for.inc.717

for.inc.717:                                      ; preds = %if.end.716
  %378 = load i32, i32* %i, align 4
  %dec = add nsw i32 %378, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.539

for.end.718:                                      ; preds = %for.end.714, %for.cond.539
  br label %if.end.719

if.end.719:                                       ; preds = %for.end.718, %land.lhs.true.533, %land.lhs.true.531, %if.end.528
  %379 = load i32, i32* %best_reg, align 4
  %cmp720 = icmp sge i32 %379, 0
  br i1 %cmp720, label %if.then.722, label %if.end.865

if.then.722:                                      ; preds = %if.end.719
  %380 = load i32, i32* %best_reg, align 4
  %conv725 = trunc i32 %380 to i16
  %381 = load i32, i32* %num.addr, align 4
  %idxprom726 = sext i32 %381 to i64
  %382 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx727 = getelementptr inbounds %struct.allocno, %struct.allocno* %382, i64 %idxprom726
  %reg728 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx727, i32 0, i32 0
  %383 = load i32, i32* %reg728, align 4
  %idxprom729 = sext i32 %383 to i64
  %384 = load i16*, i16** @reg_renumber, align 8
  %arrayidx730 = getelementptr inbounds i16, i16* %384, i64 %idxprom729
  store i16 %conv725, i16* %arrayidx730, align 2
  %385 = load i32, i32* %num.addr, align 4
  %idxprom731 = sext i32 %385 to i64
  %386 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx732 = getelementptr inbounds %struct.allocno, %struct.allocno* %386, i64 %idxprom731
  %reg733 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx732, i32 0, i32 0
  %387 = load i32, i32* %reg733, align 4
  %idxprom734 = sext i32 %387 to i64
  %388 = load i32*, i32** @reg_may_share, align 8
  %arrayidx735 = getelementptr inbounds i32, i32* %388, i64 %idxprom734
  %389 = load i32, i32* %arrayidx735, align 4
  %tobool736 = icmp ne i32 %389, 0
  br i1 %tobool736, label %if.then.737, label %if.end.754

if.then.737:                                      ; preds = %if.then.722
  store i32 53, i32* %j724, align 4
  br label %for.cond.738

for.cond.738:                                     ; preds = %for.inc.751, %if.then.737
  %390 = load i32, i32* %j724, align 4
  %391 = load i32, i32* @max_regno, align 4
  %cmp739 = icmp slt i32 %390, %391
  br i1 %cmp739, label %for.body.741, label %for.end.753

for.body.741:                                     ; preds = %for.cond.738
  %392 = load i32, i32* %j724, align 4
  %idxprom742 = sext i32 %392 to i64
  %393 = load i32*, i32** @reg_allocno, align 8
  %arrayidx743 = getelementptr inbounds i32, i32* %393, i64 %idxprom742
  %394 = load i32, i32* %arrayidx743, align 4
  %395 = load i32, i32* %num.addr, align 4
  %cmp744 = icmp eq i32 %394, %395
  br i1 %cmp744, label %if.then.746, label %if.end.750

if.then.746:                                      ; preds = %for.body.741
  %396 = load i32, i32* %best_reg, align 4
  %conv747 = trunc i32 %396 to i16
  %397 = load i32, i32* %j724, align 4
  %idxprom748 = sext i32 %397 to i64
  %398 = load i16*, i16** @reg_renumber, align 8
  %arrayidx749 = getelementptr inbounds i16, i16* %398, i64 %idxprom748
  store i16 %conv747, i16* %arrayidx749, align 2
  br label %if.end.750

if.end.750:                                       ; preds = %if.then.746, %for.body.741
  br label %for.inc.751

for.inc.751:                                      ; preds = %if.end.750
  %399 = load i32, i32* %j724, align 4
  %inc752 = add nsw i32 %399, 1
  store i32 %inc752, i32* %j724, align 4
  br label %for.cond.738

for.end.753:                                      ; preds = %for.cond.738
  br label %if.end.754

if.end.754:                                       ; preds = %for.end.753, %if.then.722
  store i64 0, i64* %this_reg, align 8
  %400 = load i32, i32* %best_reg, align 4
  %401 = load i32, i32* %best_reg, align 4
  %cmp755 = icmp sge i32 %401, 8
  br i1 %cmp755, label %land.lhs.true.757, label %lor.lhs.false.760

land.lhs.true.757:                                ; preds = %if.end.754
  %402 = load i32, i32* %best_reg, align 4
  %cmp758 = icmp sle i32 %402, 15
  br i1 %cmp758, label %cond.true.778, label %lor.lhs.false.760

lor.lhs.false.760:                                ; preds = %land.lhs.true.757, %if.end.754
  %403 = load i32, i32* %best_reg, align 4
  %cmp761 = icmp sge i32 %403, 21
  br i1 %cmp761, label %land.lhs.true.763, label %lor.lhs.false.766

land.lhs.true.763:                                ; preds = %lor.lhs.false.760
  %404 = load i32, i32* %best_reg, align 4
  %cmp764 = icmp sle i32 %404, 28
  br i1 %cmp764, label %cond.true.778, label %lor.lhs.false.766

lor.lhs.false.766:                                ; preds = %land.lhs.true.763, %lor.lhs.false.760
  %405 = load i32, i32* %best_reg, align 4
  %cmp767 = icmp sge i32 %405, 45
  br i1 %cmp767, label %land.lhs.true.769, label %lor.lhs.false.772

land.lhs.true.769:                                ; preds = %lor.lhs.false.766
  %406 = load i32, i32* %best_reg, align 4
  %cmp770 = icmp sle i32 %406, 52
  br i1 %cmp770, label %cond.true.778, label %lor.lhs.false.772

lor.lhs.false.772:                                ; preds = %land.lhs.true.769, %lor.lhs.false.766
  %407 = load i32, i32* %best_reg, align 4
  %cmp773 = icmp sge i32 %407, 29
  br i1 %cmp773, label %land.lhs.true.775, label %cond.false.790

land.lhs.true.775:                                ; preds = %lor.lhs.false.772
  %408 = load i32, i32* %best_reg, align 4
  %cmp776 = icmp sle i32 %408, 36
  br i1 %cmp776, label %cond.true.778, label %cond.false.790

cond.true.778:                                    ; preds = %land.lhs.true.775, %land.lhs.true.769, %land.lhs.true.763, %land.lhs.true.757
  %409 = load i32, i32* %mode, align 4
  %idxprom779 = sext i32 %409 to i64
  %arrayidx780 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom779
  %410 = load i32, i32* %arrayidx780, align 4
  %cmp781 = icmp eq i32 %410, 5
  br i1 %cmp781, label %lor.end.788, label %lor.rhs.783

lor.rhs.783:                                      ; preds = %cond.true.778
  %411 = load i32, i32* %mode, align 4
  %idxprom784 = sext i32 %411 to i64
  %arrayidx785 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom784
  %412 = load i32, i32* %arrayidx785, align 4
  %cmp786 = icmp eq i32 %412, 6
  br label %lor.end.788

lor.end.788:                                      ; preds = %lor.rhs.783, %cond.true.778
  %413 = phi i1 [ true, %cond.true.778 ], [ %cmp786, %lor.rhs.783 ]
  %cond789 = select i1 %413, i32 2, i32 1
  br label %cond.end.821

cond.false.790:                                   ; preds = %land.lhs.true.775, %lor.lhs.false.772
  %414 = load i32, i32* %mode, align 4
  %cmp791 = icmp eq i32 %414, 18
  br i1 %cmp791, label %cond.true.793, label %cond.false.797

cond.true.793:                                    ; preds = %cond.false.790
  %415 = load i32, i32* @target_flags, align 4
  %and794 = and i32 %415, 33554432
  %tobool795 = icmp ne i32 %and794, 0
  %cond796 = select i1 %tobool795, i32 2, i32 3
  br label %cond.end.819

cond.false.797:                                   ; preds = %cond.false.790
  %416 = load i32, i32* %mode, align 4
  %cmp798 = icmp eq i32 %416, 24
  br i1 %cmp798, label %cond.true.800, label %cond.false.804

cond.true.800:                                    ; preds = %cond.false.797
  %417 = load i32, i32* @target_flags, align 4
  %and801 = and i32 %417, 33554432
  %tobool802 = icmp ne i32 %and801, 0
  %cond803 = select i1 %tobool802, i32 4, i32 6
  br label %cond.end.817

cond.false.804:                                   ; preds = %cond.false.797
  %418 = load i32, i32* %mode, align 4
  %idxprom805 = sext i32 %418 to i64
  %arrayidx806 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom805
  %419 = load i8, i8* %arrayidx806, align 1
  %conv807 = zext i8 %419 to i32
  %420 = load i32, i32* @target_flags, align 4
  %and808 = and i32 %420, 33554432
  %tobool809 = icmp ne i32 %and808, 0
  %cond810 = select i1 %tobool809, i32 8, i32 4
  %add811 = add nsw i32 %conv807, %cond810
  %sub812 = sub nsw i32 %add811, 1
  %421 = load i32, i32* @target_flags, align 4
  %and813 = and i32 %421, 33554432
  %tobool814 = icmp ne i32 %and813, 0
  %cond815 = select i1 %tobool814, i32 8, i32 4
  %div816 = sdiv i32 %sub812, %cond815
  br label %cond.end.817

cond.end.817:                                     ; preds = %cond.false.804, %cond.true.800
  %cond818 = phi i32 [ %cond803, %cond.true.800 ], [ %div816, %cond.false.804 ]
  br label %cond.end.819

cond.end.819:                                     ; preds = %cond.end.817, %cond.true.793
  %cond820 = phi i32 [ %cond796, %cond.true.793 ], [ %cond818, %cond.end.817 ]
  br label %cond.end.821

cond.end.821:                                     ; preds = %cond.end.819, %lor.end.788
  %cond822 = phi i32 [ %cond789, %lor.end.788 ], [ %cond820, %cond.end.819 ]
  %add823 = add nsw i32 %400, %cond822
  store i32 %add823, i32* %lim723, align 4
  %422 = load i32, i32* %best_reg, align 4
  store i32 %422, i32* %j724, align 4
  br label %for.cond.824

for.cond.824:                                     ; preds = %for.inc.838, %cond.end.821
  %423 = load i32, i32* %j724, align 4
  %424 = load i32, i32* %lim723, align 4
  %cmp825 = icmp slt i32 %423, %424
  br i1 %cmp825, label %for.body.827, label %for.end.840

for.body.827:                                     ; preds = %for.cond.824
  %425 = load i32, i32* %j724, align 4
  %sh_prom828 = zext i32 %425 to i64
  %shl829 = shl i64 1, %sh_prom828
  %426 = load i64, i64* %this_reg, align 8
  %or830 = or i64 %426, %shl829
  store i64 %or830, i64* %this_reg, align 8
  %427 = load i32, i32* %j724, align 4
  %sh_prom831 = zext i32 %427 to i64
  %shl832 = shl i64 1, %sh_prom831
  %428 = load i64, i64* @regs_used_so_far, align 8
  %or833 = or i64 %428, %shl832
  store i64 %or833, i64* @regs_used_so_far, align 8
  %429 = load i32, i32* %j724, align 4
  %idxprom834 = sext i32 %429 to i64
  %arrayidx835 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_n_refs, i32 0, i64 %idxprom834
  store i32 0, i32* %arrayidx835, align 4
  %430 = load i32, i32* %j724, align 4
  %idxprom836 = sext i32 %430 to i64
  %arrayidx837 = getelementptr inbounds [53 x i32], [53 x i32]* @local_reg_freq, i32 0, i64 %idxprom836
  store i32 0, i32* %arrayidx837, align 4
  br label %for.inc.838

for.inc.838:                                      ; preds = %for.body.827
  %431 = load i32, i32* %j724, align 4
  %inc839 = add nsw i32 %431, 1
  store i32 %inc839, i32* %j724, align 4
  br label %for.cond.824

for.end.840:                                      ; preds = %for.cond.824
  %432 = load i32, i32* %num.addr, align 4
  store i32 %432, i32* %lim723, align 4
  br label %do.body

do.body:                                          ; preds = %for.end.840
  %433 = load i64*, i64** @conflicts, align 8
  %434 = load i32, i32* %lim723, align 4
  %435 = load i32, i32* @allocno_row_words, align 4
  %mul841 = mul nsw i32 %434, %435
  %idx.ext = sext i32 %mul841 to i64
  %add.ptr = getelementptr inbounds i64, i64* %433, i64 %idx.ext
  store i64* %add.ptr, i64** %p_, align 8
  %436 = load i32, i32* @allocno_row_words, align 4
  %sub842 = sub nsw i32 %436, 1
  store i32 %sub842, i32* %i_, align 4
  store i32 0, i32* %allocno_, align 4
  br label %for.cond.843

for.cond.843:                                     ; preds = %for.inc.861, %do.body
  %437 = load i32, i32* %i_, align 4
  %cmp844 = icmp sge i32 %437, 0
  br i1 %cmp844, label %for.body.846, label %for.end.864

for.body.846:                                     ; preds = %for.cond.843
  %438 = load i64*, i64** %p_, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %438, i32 1
  store i64* %incdec.ptr, i64** %p_, align 8
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %word_, align 8
  %440 = load i32, i32* %allocno_, align 4
  store i32 %440, i32* %j724, align 4
  br label %for.cond.847

for.cond.847:                                     ; preds = %for.inc.858, %for.body.846
  %441 = load i64, i64* %word_, align 8
  %tobool848 = icmp ne i64 %441, 0
  br i1 %tobool848, label %for.body.849, label %for.end.860

for.body.849:                                     ; preds = %for.cond.847
  %442 = load i64, i64* %word_, align 8
  %and850 = and i64 %442, 1
  %tobool851 = icmp ne i64 %and850, 0
  br i1 %tobool851, label %if.then.852, label %if.end.857

if.then.852:                                      ; preds = %for.body.849
  %443 = load i64, i64* %this_reg, align 8
  %444 = load i32, i32* %j724, align 4
  %idxprom853 = sext i32 %444 to i64
  %445 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx854 = getelementptr inbounds %struct.allocno, %struct.allocno* %445, i64 %idxprom853
  %hard_reg_conflicts855 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx854, i32 0, i32 6
  %446 = load i64, i64* %hard_reg_conflicts855, align 8
  %or856 = or i64 %446, %443
  store i64 %or856, i64* %hard_reg_conflicts855, align 8
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.852, %for.body.849
  br label %for.inc.858

for.inc.858:                                      ; preds = %if.end.857
  %447 = load i64, i64* %word_, align 8
  %shr = lshr i64 %447, 1
  store i64 %shr, i64* %word_, align 8
  %448 = load i32, i32* %j724, align 4
  %inc859 = add nsw i32 %448, 1
  store i32 %inc859, i32* %j724, align 4
  br label %for.cond.847

for.end.860:                                      ; preds = %for.cond.847
  br label %for.inc.861

for.inc.861:                                      ; preds = %for.end.860
  %449 = load i32, i32* %i_, align 4
  %dec862 = add nsw i32 %449, -1
  store i32 %dec862, i32* %i_, align 4
  %450 = load i32, i32* %allocno_, align 4
  %add863 = add nsw i32 %450, 64
  store i32 %add863, i32* %allocno_, align 4
  br label %for.cond.843

for.end.864:                                      ; preds = %for.cond.843
  br label %do.end

do.end:                                           ; preds = %for.end.864
  br label %if.end.865

if.end.865:                                       ; preds = %if.then.525, %do.end, %if.end.719
  ret void
}

declare i32 @reg_alternate_class(i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @build_insn_chain(%struct.rtx_def* %first) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.insn_chain**, align 8
  %prev = alloca %struct.insn_chain*, align 8
  %b = alloca i32, align 4
  %live_relevant_regs_head = alloca %struct.bitmap_head_def, align 8
  %c = alloca %struct.insn_chain*, align 8
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %link = alloca %struct.rtx_def*, align 8
  %link121 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store %struct.insn_chain** @reload_insn_chain, %struct.insn_chain*** %p, align 8
  store %struct.insn_chain* null, %struct.insn_chain** %prev, align 8
  store i32 0, i32* %b, align 4
  %call = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %live_relevant_regs_head)
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** @live_relevant_regs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.228, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end.232

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %2 = load i32, i32* %b, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp = icmp eq %struct.rtx_def* %1, %5
  br i1 %cmp, label %if.then, label %if.end.54

if.then:                                          ; preds = %for.body
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %6)
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load i32, i32* %b, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data2 to [1 x %struct.basic_block_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom1
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx4, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 8
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %first5 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %10, i32 0, i32 0
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first5, align 8
  store %struct.bitmap_element_def* %11, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %12, null
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i32 0, i32 2
  %14 = load i32, i32* %indx, align 4
  %15 = load i32, i32* %indx_, align 4
  %cmp7 = icmp ult i32 %14, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i32 0, i32 0
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %18, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp8 = icmp ne %struct.bitmap_element_def* %19, null
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %20, i32 0, i32 2
  %21 = load i32, i32* %indx9, align 4
  %22 = load i32, i32* %indx_, align 4
  %cmp10 = icmp ne i32 %21, %22
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true, %while.end
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.51, %if.end
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp13 = icmp ne %struct.bitmap_element_def* %23, null
  br i1 %cmp13, label %for.body.14, label %for.end.53

for.body.14:                                      ; preds = %for.cond.12
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.48, %for.body.14
  %24 = load i32, i32* %word_num_, align 4
  %cmp16 = icmp ult i32 %24, 2
  br i1 %cmp16, label %for.body.17, label %for.end.50

for.body.17:                                      ; preds = %for.cond.15
  %25 = load i32, i32* %word_num_, align 4
  %idxprom18 = zext i32 %25 to i64
  %26 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %26, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom18
  %27 = load i64, i64* %arrayidx19, align 8
  store i64 %27, i64* %word_, align 8
  %28 = load i64, i64* %word_, align 8
  %cmp20 = icmp ne i64 %28, 0
  br i1 %cmp20, label %if.then.21, label %if.end.47

if.then.21:                                       ; preds = %for.body.17
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.21
  %29 = load i32, i32* %bit_num_, align 4
  %cmp23 = icmp ult i32 %29, 64
  br i1 %cmp23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.22
  %30 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %30 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %31 = load i64, i64* %word_, align 8
  %32 = load i64, i64* %mask_, align 8
  %and = and i64 %31, %32
  %cmp25 = icmp ne i64 %and, 0
  br i1 %cmp25, label %if.then.26, label %if.end.46

if.then.26:                                       ; preds = %for.body.24
  %33 = load i64, i64* %mask_, align 8
  %neg = xor i64 %33, -1
  %34 = load i64, i64* %word_, align 8
  %and27 = and i64 %34, %neg
  store i64 %and27, i64* %word_, align 8
  %35 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx28 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %35, i32 0, i32 2
  %36 = load i32, i32* %indx28, align 4
  %mul = mul i32 %36, 128
  %37 = load i32, i32* %word_num_, align 4
  %mul29 = mul i32 %37, 64
  %add = add i32 %mul, %mul29
  %38 = load i32, i32* %bit_num_, align 4
  %add30 = add i32 %add, %38
  store i32 %add30, i32* %i, align 4
  %39 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %39, 53
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.26
  %40 = load i64, i64* @eliminable_regset, align 8
  %41 = load i32, i32* %i, align 4
  %sh_prom32 = zext i32 %41 to i64
  %shl33 = shl i64 1, %sh_prom32
  %and34 = and i64 %40, %shl33
  %tobool35 = icmp ne i64 %and34, 0
  br i1 %tobool35, label %if.end.41, label %if.then.40

cond.false:                                       ; preds = %if.then.26
  %42 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %42 to i64
  %43 = load i16*, i16** @reg_renumber, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %43, i64 %idxprom36
  %44 = load i16, i16* %arrayidx37, align 2
  %conv = sext i16 %44 to i32
  %cmp38 = icmp sge i32 %conv, 0
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %cond.false, %cond.true
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %46 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %45, i32 %46)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %cond.false, %cond.true
  %47 = load i64, i64* %word_, align 8
  %cmp42 = icmp eq i64 %47, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  br label %for.end

if.end.45:                                        ; preds = %if.end.41
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %48 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %48, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.22

for.end:                                          ; preds = %if.then.44, %for.cond.22
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %for.body.17
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %49 = load i32, i32* %word_num_, align 4
  %inc49 = add i32 %49, 1
  store i32 %inc49, i32* %word_num_, align 4
  br label %for.cond.15

for.end.50:                                       ; preds = %for.cond.15
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %50 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next52 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %50, i32 0, i32 0
  %51 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next52, align 8
  store %struct.bitmap_element_def* %51, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.12

for.end.53:                                       ; preds = %for.cond.12
  br label %do.end

do.end:                                           ; preds = %for.end.53
  br label %if.end.54

if.end.54:                                        ; preds = %do.end, %for.body
  %52 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load = load i32, i32* %53, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp55 = icmp ne i32 %bf.clear, 37
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.161

land.lhs.true.57:                                 ; preds = %if.end.54
  %54 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load58 = load i32, i32* %55, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp ne i32 %bf.clear59, 35
  br i1 %cmp60, label %if.then.62, label %if.end.161

if.then.62:                                       ; preds = %land.lhs.true.57
  %call63 = call %struct.insn_chain* @new_insn_chain()
  store %struct.insn_chain* %call63, %struct.insn_chain** %c, align 8
  %56 = load %struct.insn_chain*, %struct.insn_chain** %prev, align 8
  %57 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  %prev64 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %57, i32 0, i32 1
  store %struct.insn_chain* %56, %struct.insn_chain** %prev64, align 8
  %58 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  store %struct.insn_chain* %58, %struct.insn_chain** %prev, align 8
  %59 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  %60 = load %struct.insn_chain**, %struct.insn_chain*** %p, align 8
  store %struct.insn_chain* %59, %struct.insn_chain** %60, align 8
  %61 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  %next65 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %61, i32 0, i32 0
  store %struct.insn_chain** %next65, %struct.insn_chain*** %p, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %63 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  %insn = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %63, i32 0, i32 4
  store %struct.rtx_def* %62, %struct.rtx_def** %insn, align 8
  %64 = load i32, i32* %b, align 4
  %65 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  %block = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %65, i32 0, i32 3
  store i32 %64, i32* %block, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load66 = load i32, i32* %67, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %idxprom68 = sext i32 %bf.clear67 to i64
  %arrayidx69 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom68
  %68 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %68 to i32
  %cmp71 = icmp eq i32 %conv70, 105
  br i1 %cmp71, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %if.then.62
  %69 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %link, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.103, %if.then.73
  %71 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool76 = icmp ne %struct.rtx_def* %71, null
  br i1 %tobool76, label %for.body.77, label %for.end.107

for.body.77:                                      ; preds = %for.cond.75
  %72 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load78 = load i32, i32* %73, align 8
  %bf.lshr = lshr i32 %bf.load78, 16
  %bf.clear79 = and i32 %bf.lshr, 255
  %cmp80 = icmp eq i32 %bf.clear79, 1
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.102

land.lhs.true.82:                                 ; preds = %for.body.77
  %74 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load86 = load i32, i32* %76, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp eq i32 %bf.clear87, 61
  br i1 %cmp88, label %if.then.90, label %if.end.102

if.then.90:                                       ; preds = %land.lhs.true.82
  %77 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx95 to i32*
  %79 = load i32, i32* %rtuint, align 4
  %80 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load99 = load i32, i32* %82, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 16
  %bf.clear101 = and i32 %bf.lshr100, 255
  %83 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  call void @reg_dies(i32 %79, i32 %bf.clear101, %struct.insn_chain* %83)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.90, %land.lhs.true.82, %for.body.77
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %84 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 1
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  store %struct.rtx_def* %85, %struct.rtx_def** %link, align 8
  br label %for.cond.75

for.end.107:                                      ; preds = %for.cond.75
  %86 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  %live_throughout = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %86, i32 0, i32 5
  %87 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %live_throughout, %struct.bitmap_head_def* %87)
  %88 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 3
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %90 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  %dead_or_set = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %90, i32 0, i32 6
  %91 = bitcast %struct.bitmap_head_def* %dead_or_set to i8*
  call void @note_stores(%struct.rtx_def* %89, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @reg_becomes_live, i8* %91)
  br label %if.end.112

if.else:                                          ; preds = %if.then.62
  %92 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  %live_throughout111 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %92, i32 0, i32 5
  %93 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %live_throughout111, %struct.bitmap_head_def* %93)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else, %for.end.107
  %94 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load113 = load i32, i32* %95, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %idxprom115 = sext i32 %bf.clear114 to i64
  %arrayidx116 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom115
  %96 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %96 to i32
  %cmp118 = icmp eq i32 %conv117, 105
  br i1 %cmp118, label %if.then.120, label %if.end.160

if.then.120:                                      ; preds = %if.end.112
  %97 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 6
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx124, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %link121, align 8
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.155, %if.then.120
  %99 = load %struct.rtx_def*, %struct.rtx_def** %link121, align 8
  %tobool126 = icmp ne %struct.rtx_def* %99, null
  br i1 %tobool126, label %for.body.127, label %for.end.159

for.body.127:                                     ; preds = %for.cond.125
  %100 = load %struct.rtx_def*, %struct.rtx_def** %link121, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load128 = load i32, i32* %101, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %cmp131 = icmp eq i32 %bf.clear130, 10
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.154

land.lhs.true.133:                                ; preds = %for.body.127
  %102 = load %struct.rtx_def*, %struct.rtx_def** %link121, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load137 = load i32, i32* %104, align 8
  %bf.clear138 = and i32 %bf.load137, 65535
  %cmp139 = icmp eq i32 %bf.clear138, 61
  br i1 %cmp139, label %if.then.141, label %if.end.154

if.then.141:                                      ; preds = %land.lhs.true.133
  %105 = load %struct.rtx_def*, %struct.rtx_def** %link121, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 0
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 0
  %rtuint147 = bitcast %union.rtunion_def* %arrayidx146 to i32*
  %107 = load i32, i32* %rtuint147, align 4
  %108 = load %struct.rtx_def*, %struct.rtx_def** %link121, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 0
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx150, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load151 = load i32, i32* %110, align 8
  %bf.lshr152 = lshr i32 %bf.load151, 16
  %bf.clear153 = and i32 %bf.lshr152, 255
  %111 = load %struct.insn_chain*, %struct.insn_chain** %c, align 8
  call void @reg_dies(i32 %107, i32 %bf.clear153, %struct.insn_chain* %111)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.141, %land.lhs.true.133, %for.body.127
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %112 = load %struct.rtx_def*, %struct.rtx_def** %link121, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 1
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  store %struct.rtx_def* %113, %struct.rtx_def** %link121, align 8
  br label %for.cond.125

for.end.159:                                      ; preds = %for.cond.125
  br label %if.end.160

if.end.160:                                       ; preds = %for.end.159, %if.end.112
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %land.lhs.true.57, %if.end.54
  %114 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %115 = load i32, i32* %b, align 4
  %idxprom162 = sext i32 %115 to i64
  %116 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data163 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %116, i32 0, i32 4
  %bb164 = bitcast %union.varray_data_tag* %data163 to [1 x %struct.basic_block_def*]*
  %arrayidx165 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb164, i32 0, i64 %idxprom162
  %117 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx165, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %117, i32 0, i32 1
  %118 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp166 = icmp eq %struct.rtx_def* %114, %118
  br i1 %cmp166, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %if.end.161
  %119 = load i32, i32* %b, align 4
  %inc169 = add nsw i32 %119, 1
  store i32 %inc169, i32* %b, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %if.end.161
  %120 = load i32, i32* %b, align 4
  %121 = load i32, i32* @n_basic_blocks, align 4
  %cmp171 = icmp eq i32 %120, %121
  br i1 %cmp171, label %if.then.173, label %if.end.227

if.then.173:                                      ; preds = %if.end.170
  %122 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 2
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtx176, align 8
  store %struct.rtx_def* %123, %struct.rtx_def** %first.addr, align 8
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.222, %if.then.173
  %124 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %tobool178 = icmp ne %struct.rtx_def* %124, null
  br i1 %tobool178, label %for.body.179, label %for.end.226

for.body.179:                                     ; preds = %for.cond.177
  %125 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %bf.load180 = load i32, i32* %126, align 8
  %bf.clear181 = and i32 %bf.load180, 65535
  %idxprom182 = sext i32 %bf.clear181 to i64
  %arrayidx183 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom182
  %127 = load i8, i8* %arrayidx183, align 1
  %conv184 = sext i8 %127 to i32
  %cmp185 = icmp eq i32 %conv184, 105
  br i1 %cmp185, label %land.lhs.true.187, label %if.end.221

land.lhs.true.187:                                ; preds = %for.body.179
  %128 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 3
  %rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx190, align 8
  %130 = bitcast %struct.rtx_def* %129 to i32*
  %bf.load191 = load i32, i32* %130, align 8
  %bf.clear192 = and i32 %bf.load191, 65535
  %cmp193 = icmp ne i32 %bf.clear192, 48
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.221

land.lhs.true.195:                                ; preds = %land.lhs.true.187
  %131 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 3
  %rtx198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtx198, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load199 = load i32, i32* %133, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %cmp201 = icmp eq i32 %bf.clear200, 44
  br i1 %cmp201, label %land.lhs.true.210, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.195
  %134 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 3
  %rtx205 = bitcast %union.rtunion_def* %arrayidx204 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %rtx205, align 8
  %136 = bitcast %struct.rtx_def* %135 to i32*
  %bf.load206 = load i32, i32* %136, align 8
  %bf.clear207 = and i32 %bf.load206, 65535
  %cmp208 = icmp eq i32 %bf.clear207, 45
  br i1 %cmp208, label %land.lhs.true.210, label %if.then.220

land.lhs.true.210:                                ; preds = %lor.lhs.false, %land.lhs.true.195
  %137 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %call211 = call %struct.rtx_def* @prev_real_insn(%struct.rtx_def* %137)
  %cmp212 = icmp ne %struct.rtx_def* %call211, null
  br i1 %cmp212, label %land.lhs.true.214, label %if.then.220

land.lhs.true.214:                                ; preds = %land.lhs.true.210
  %138 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %call215 = call %struct.rtx_def* @prev_real_insn(%struct.rtx_def* %138)
  %139 = bitcast %struct.rtx_def* %call215 to i32*
  %bf.load216 = load i32, i32* %139, align 8
  %bf.clear217 = and i32 %bf.load216, 65535
  %cmp218 = icmp eq i32 %bf.clear217, 33
  br i1 %cmp218, label %if.end.221, label %if.then.220

if.then.220:                                      ; preds = %land.lhs.true.214, %land.lhs.true.210, %lor.lhs.false
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1898, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.build_insn_chain, i32 0, i32 0)) #5
  unreachable

if.end.221:                                       ; preds = %land.lhs.true.214, %land.lhs.true.187, %for.body.179
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.221
  %140 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 2
  %rtx225 = bitcast %union.rtunion_def* %arrayidx224 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx225, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %first.addr, align 8
  br label %for.cond.177

for.end.226:                                      ; preds = %for.cond.177
  br label %for.end.232

if.end.227:                                       ; preds = %if.end.170
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %142 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 2
  %rtx231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx231, align 8
  store %struct.rtx_def* %143, %struct.rtx_def** %first.addr, align 8
  br label %for.cond

for.end.232:                                      ; preds = %for.end.226, %for.cond
  br label %do.body.233

do.body.233:                                      ; preds = %for.end.232
  %144 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %tobool234 = icmp ne %struct.bitmap_head_def* %144, null
  br i1 %tobool234, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %do.body.233
  %145 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %145)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** @live_relevant_regs, align 8
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.235, %do.body.233
  br label %do.end.237

do.end.237:                                       ; preds = %if.end.236
  %146 = load %struct.insn_chain**, %struct.insn_chain*** %p, align 8
  store %struct.insn_chain* null, %struct.insn_chain** %146, align 8
  ret void
}

declare %struct.rtx_def* @get_insns() #1

declare i32 @reload(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define void @retry_global_alloc(i32 %regno, i64 %forbidden_regs) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %forbidden_regs.addr = alloca i64, align 8
  %alloc_no = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i64 %forbidden_regs, i64* %forbidden_regs.addr, align 8
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32*, i32** @reg_allocno, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %alloc_no, align 4
  %3 = load i32, i32* %alloc_no, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.21

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %alloc_no, align 4
  %5 = load i64, i64* %forbidden_regs.addr, align 8
  call void @find_reg(i32 %4, i64 %5, i32 0, i32 0, i32 1)
  %6 = load i32, i32* %regno.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load i16*, i16** @reg_renumber, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 %idxprom1
  %8 = load i16, i16* %arrayidx2, align 2
  %conv = sext i16 %8 to i32
  %cmp3 = icmp slt i32 %conv, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, i32* %regno.addr, align 4
  %call = call i32 @reg_alternate_class(i32 %9)
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* %alloc_no, align 4
  %11 = load i64, i64* %forbidden_regs.addr, align 8
  call void @find_reg(i32 %10, i64 %11, i32 1, i32 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %land.lhs.true, %if.then
  %12 = load i32, i32* %regno.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i16*, i16** @reg_renumber, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %13, i64 %idxprom8
  %14 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %14 to i32
  %cmp11 = icmp sge i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end
  %15 = load i32, i32* %regno.addr, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i16*, i16** @reg_renumber, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %16, i64 %idxprom14
  %17 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %17 to i32
  %18 = load i32, i32* %regno.addr, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 3
  %20 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %20, i32 0, i32 12
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx18 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %21, i64 %idxprom17
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx18, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx19 to i32*
  store i32 %conv16, i32* %rtuint, align 4
  %23 = load i32, i32* %regno.addr, align 4
  call void @mark_home_live(i32 %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.13, %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %entry
  ret void
}

declare void @mark_home_live(i32) #1

; Function Attrs: nounwind uwtable
define void @mark_elimination(i32 %from, i32 %to) #0 {
entry:
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca %struct.bitmap_head_def*, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 8
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  store %struct.bitmap_head_def* %5, %struct.bitmap_head_def** %r, align 8
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %r, align 8
  %7 = load i32, i32* %from.addr, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %6, i32 %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %r, align 8
  %9 = load i32, i32* %from.addr, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %8, i32 %9)
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %r, align 8
  %11 = load i32, i32* %to.addr, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

declare void @bitmap_clear_bit(%struct.bitmap_head_def*, i32) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare %struct.insn_chain* @new_insn_chain() #1

; Function Attrs: nounwind uwtable
define internal void @reg_dies(i32 %regno, i32 %mode, %struct.insn_chain* %chain) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %chain.addr = alloca %struct.insn_chain*, align 8
  %nregs = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.insn_chain* %chain, %struct.insn_chain** %chain.addr, align 8
  %0 = load i32, i32* %regno.addr, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %cmp1 = icmp sge i32 %1, 8
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %regno.addr, align 4
  %cmp2 = icmp sle i32 %2, 15
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %3 = load i32, i32* %regno.addr, align 4
  %cmp3 = icmp sge i32 %3, 21
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false.6

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %regno.addr, align 4
  %cmp5 = icmp sle i32 %4, 28
  br i1 %cmp5, label %cond.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.4, %lor.lhs.false
  %5 = load i32, i32* %regno.addr, align 4
  %cmp7 = icmp sge i32 %5, 45
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.10

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %6 = load i32, i32* %regno.addr, align 4
  %cmp9 = icmp sle i32 %6, 52
  br i1 %cmp9, label %cond.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %7 = load i32, i32* %regno.addr, align 4
  %cmp11 = icmp sge i32 %7, 29
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %8 = load i32, i32* %regno.addr, align 4
  %cmp13 = icmp sle i32 %8, 36
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true
  %9 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp14 = icmp eq i32 %10, 5
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %11 = load i32, i32* %mode.addr, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom15
  %12 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %12, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %13 = phi i1 [ true, %cond.true ], [ %cmp17, %lor.rhs ]
  %cond = select i1 %13, i32 2, i32 1
  br label %cond.end.39

cond.false:                                       ; preds = %land.lhs.true.12, %lor.lhs.false.10
  %14 = load i32, i32* %mode.addr, align 4
  %cmp18 = icmp eq i32 %14, 18
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.false
  %15 = load i32, i32* @target_flags, align 4
  %and = and i32 %15, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond20 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.37

cond.false.21:                                    ; preds = %cond.false
  %16 = load i32, i32* %mode.addr, align 4
  %cmp22 = icmp eq i32 %16, 24
  br i1 %cmp22, label %cond.true.23, label %cond.false.27

cond.true.23:                                     ; preds = %cond.false.21
  %17 = load i32, i32* @target_flags, align 4
  %and24 = and i32 %17, 33554432
  %tobool25 = icmp ne i32 %and24, 0
  %cond26 = select i1 %tobool25, i32 4, i32 6
  br label %cond.end

cond.false.27:                                    ; preds = %cond.false.21
  %18 = load i32, i32* %mode.addr, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom28
  %19 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32, i32* @target_flags, align 4
  %and30 = and i32 %20, 33554432
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 8, i32 4
  %add = add nsw i32 %conv, %cond32
  %sub = sub nsw i32 %add, 1
  %21 = load i32, i32* @target_flags, align 4
  %and33 = and i32 %21, 33554432
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
  store i32 %cond40, i32* %nregs, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end.39
  %22 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %nregs, align 4
  %cmp41 = icmp sgt i32 %22, 0
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %24 = load i32, i32* %regno.addr, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %23, i32 %24)
  %25 = load i32, i32* %regno.addr, align 4
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom43
  %26 = load i8, i8* %arrayidx44, align 1
  %tobool45 = icmp ne i8 %26, 0
  br i1 %tobool45, label %if.end, label %if.then.46

if.then.46:                                       ; preds = %while.body
  %27 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %dead_or_set = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %27, i32 0, i32 6
  %28 = load i32, i32* %regno.addr, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %dead_or_set, i32 %28)
  br label %if.end

if.end:                                           ; preds = %if.then.46, %while.body
  %29 = load i32, i32* %regno.addr, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %regno.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.55

if.else:                                          ; preds = %entry
  %30 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %31 = load i32, i32* %regno.addr, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %30, i32 %31)
  %32 = load i32, i32* %regno.addr, align 4
  %idxprom47 = sext i32 %32 to i64
  %33 = load i16*, i16** @reg_renumber, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %33, i64 %idxprom47
  %34 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %34 to i32
  %cmp50 = icmp sge i32 %conv49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.else
  %35 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %dead_or_set53 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %35, i32 0, i32 6
  %36 = load i32, i32* %regno.addr, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %dead_or_set53, i32 %36)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.else
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %while.end
  ret void
}

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @reg_becomes_live(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %regs_set) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %regs_set.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %nregs = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %regs_set, i8** %regs_set.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %reg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.79

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %7 = load i32, i32* %rtuint, align 4
  store i32 %7, i32* %regno, align 4
  %8 = load i32, i32* %regno, align 4
  %cmp8 = icmp slt i32 %8, 53
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.5
  %9 = load i32, i32* %regno, align 4
  %cmp10 = icmp sge i32 %9, 8
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.9
  %10 = load i32, i32* %regno, align 4
  %cmp11 = icmp sle i32 %10, 15
  br i1 %cmp11, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.9
  %11 = load i32, i32* %regno, align 4
  %cmp12 = icmp sge i32 %11, 21
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %regno, align 4
  %cmp14 = icmp sle i32 %12, 28
  br i1 %cmp14, label %cond.true, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %lor.lhs.false
  %13 = load i32, i32* %regno, align 4
  %cmp16 = icmp sge i32 %13, 45
  br i1 %cmp16, label %land.lhs.true.17, label %lor.lhs.false.19

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %14 = load i32, i32* %regno, align 4
  %cmp18 = icmp sle i32 %14, 52
  br i1 %cmp18, label %cond.true, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.17, %lor.lhs.false.15
  %15 = load i32, i32* %regno, align 4
  %cmp20 = icmp sge i32 %15, 29
  br i1 %cmp20, label %land.lhs.true.21, label %cond.false

land.lhs.true.21:                                 ; preds = %lor.lhs.false.19
  %16 = load i32, i32* %regno, align 4
  %cmp22 = icmp sle i32 %16, 36
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load23 = load i32, i32* %18, align 8
  %bf.lshr = lshr i32 %bf.load23, 16
  %bf.clear24 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear24 to i64
  %arrayidx25 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %19, 5
  br i1 %cmp26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load27 = load i32, i32* %21, align 8
  %bf.lshr28 = lshr i32 %bf.load27, 16
  %bf.clear29 = and i32 %bf.lshr28, 255
  %idxprom30 = sext i32 %bf.clear29 to i64
  %arrayidx31 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom30
  %22 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp eq i32 %22, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %23 = phi i1 [ true, %cond.true ], [ %cmp32, %lor.rhs ]
  %cond = select i1 %23, i32 2, i32 1
  br label %cond.end.63

cond.false:                                       ; preds = %land.lhs.true.21, %lor.lhs.false.19
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load33 = load i32, i32* %25, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 16
  %bf.clear35 = and i32 %bf.lshr34, 255
  %cmp36 = icmp eq i32 %bf.clear35, 18
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.false
  %26 = load i32, i32* @target_flags, align 4
  %and = and i32 %26, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond38 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.61

cond.false.39:                                    ; preds = %cond.false
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load40 = load i32, i32* %28, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 16
  %bf.clear42 = and i32 %bf.lshr41, 255
  %cmp43 = icmp eq i32 %bf.clear42, 24
  br i1 %cmp43, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %cond.false.39
  %29 = load i32, i32* @target_flags, align 4
  %and45 = and i32 %29, 33554432
  %tobool46 = icmp ne i32 %and45, 0
  %cond47 = select i1 %tobool46, i32 4, i32 6
  br label %cond.end

cond.false.48:                                    ; preds = %cond.false.39
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load49 = load i32, i32* %31, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 16
  %bf.clear51 = and i32 %bf.lshr50, 255
  %idxprom52 = sext i32 %bf.clear51 to i64
  %arrayidx53 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom52
  %32 = load i8, i8* %arrayidx53, align 1
  %conv = zext i8 %32 to i32
  %33 = load i32, i32* @target_flags, align 4
  %and54 = and i32 %33, 33554432
  %tobool55 = icmp ne i32 %and54, 0
  %cond56 = select i1 %tobool55, i32 8, i32 4
  %add = add nsw i32 %conv, %cond56
  %sub = sub nsw i32 %add, 1
  %34 = load i32, i32* @target_flags, align 4
  %and57 = and i32 %34, 33554432
  %tobool58 = icmp ne i32 %and57, 0
  %cond59 = select i1 %tobool58, i32 8, i32 4
  %div = sdiv i32 %sub, %cond59
  br label %cond.end

cond.end:                                         ; preds = %cond.false.48, %cond.true.44
  %cond60 = phi i32 [ %cond47, %cond.true.44 ], [ %div, %cond.false.48 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end, %cond.true.37
  %cond62 = phi i32 [ %cond38, %cond.true.37 ], [ %cond60, %cond.end ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %lor.end
  %cond64 = phi i32 [ %cond, %lor.end ], [ %cond62, %cond.end.61 ]
  store i32 %cond64, i32* %nregs, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %cond.end.63
  %35 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %nregs, align 4
  %cmp65 = icmp sgt i32 %35, 0
  br i1 %cmp65, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %37 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %36, i32 %37)
  %38 = load i32, i32* %regno, align 4
  %idxprom67 = sext i32 %38 to i64
  %arrayidx68 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom67
  %39 = load i8, i8* %arrayidx68, align 1
  %tobool69 = icmp ne i8 %39, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %while.body
  %40 = load i8*, i8** %regs_set.addr, align 8
  %41 = bitcast i8* %40 to %struct.bitmap_head_def*
  %42 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %41, i32 %42)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %while.body
  %43 = load i32, i32* %regno, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %regno, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.79

if.else:                                          ; preds = %if.end.5
  %44 = load i32, i32* %regno, align 4
  %idxprom72 = sext i32 %44 to i64
  %45 = load i16*, i16** @reg_renumber, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %45, i64 %idxprom72
  %46 = load i16, i16* %arrayidx73, align 2
  %conv74 = sext i16 %46 to i32
  %cmp75 = icmp sge i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.else
  %47 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @live_relevant_regs, align 8
  %48 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %47, i32 %48)
  %49 = load i8*, i8** %regs_set.addr, align 8
  %50 = bitcast i8* %49 to %struct.bitmap_head_def*
  %51 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %50, i32 %51)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.else
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.4, %if.end.78, %while.end
  ret void
}

declare %struct.rtx_def* @prev_real_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @dump_global_regs(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0))
  store i32 53, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @max_regno, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16*, i16** @reg_renumber, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %5 to i32
  %cmp1 = icmp sge i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end.11

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load i16*, i16** @reg_renumber, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %9, i64 %idxprom3
  %10 = load i16, i16* %arrayidx4, align 2
  %conv5 = sext i16 %10 to i32
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %7, i32 %conv5)
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  %rem = srem i32 %inc, 6
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %13 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.23, %for.end
  %15 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %15, 53
  br i1 %cmp15, label %for.body.17, label %for.end.25

for.body.17:                                      ; preds = %for.cond.14
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %idxprom18
  %17 = load i8, i8* %arrayidx19, align 1
  %tobool = icmp ne i8 %17, 0
  br i1 %tobool, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.body.17
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %19 = load i32, i32* %i, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %for.body.17
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %20 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.14

for.end.25:                                       ; preds = %for.cond.14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @floor_log2_wide(i64) #1

declare void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_reg_live_nc(i32 %regno, i32 %mode) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %last = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %1 = load i32, i32* %regno.addr, align 4
  %cmp = icmp sge i32 %1, 8
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %regno.addr, align 4
  %cmp1 = icmp sle i32 %2, 15
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %regno.addr, align 4
  %cmp2 = icmp sge i32 %3, 21
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false.5

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %regno.addr, align 4
  %cmp4 = icmp sle i32 %4, 28
  br i1 %cmp4, label %cond.true, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true.3, %lor.lhs.false
  %5 = load i32, i32* %regno.addr, align 4
  %cmp6 = icmp sge i32 %5, 45
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5
  %6 = load i32, i32* %regno.addr, align 4
  %cmp8 = icmp sle i32 %6, 52
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %lor.lhs.false.5
  %7 = load i32, i32* %regno.addr, align 4
  %cmp10 = icmp sge i32 %7, 29
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %8 = load i32, i32* %regno.addr, align 4
  %cmp12 = icmp sle i32 %8, 36
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  %9 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp13 = icmp eq i32 %10, 5
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %11 = load i32, i32* %mode.addr, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %12, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %13 = phi i1 [ true, %cond.true ], [ %cmp16, %lor.rhs ]
  %cond = select i1 %13, i32 2, i32 1
  br label %cond.end.38

cond.false:                                       ; preds = %land.lhs.true.11, %lor.lhs.false.9
  %14 = load i32, i32* %mode.addr, align 4
  %cmp17 = icmp eq i32 %14, 18
  br i1 %cmp17, label %cond.true.18, label %cond.false.20

cond.true.18:                                     ; preds = %cond.false
  %15 = load i32, i32* @target_flags, align 4
  %and = and i32 %15, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond19 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.36

cond.false.20:                                    ; preds = %cond.false
  %16 = load i32, i32* %mode.addr, align 4
  %cmp21 = icmp eq i32 %16, 24
  br i1 %cmp21, label %cond.true.22, label %cond.false.26

cond.true.22:                                     ; preds = %cond.false.20
  %17 = load i32, i32* @target_flags, align 4
  %and23 = and i32 %17, 33554432
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 4, i32 6
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false.20
  %18 = load i32, i32* %mode.addr, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom27
  %19 = load i8, i8* %arrayidx28, align 1
  %conv = zext i8 %19 to i32
  %20 = load i32, i32* @target_flags, align 4
  %and29 = and i32 %20, 33554432
  %tobool30 = icmp ne i32 %and29, 0
  %cond31 = select i1 %tobool30, i32 8, i32 4
  %add = add nsw i32 %conv, %cond31
  %sub = sub nsw i32 %add, 1
  %21 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %21, 33554432
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
  %add40 = add nsw i32 %0, %cond39
  store i32 %add40, i32* %last, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.38
  %22 = load i32, i32* %regno.addr, align 4
  %23 = load i32, i32* %last, align 4
  %cmp41 = icmp slt i32 %22, %23
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i32, i32* %regno.addr, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  %25 = load i64, i64* @hard_regs_live, align 8
  %or = or i64 %25, %shl
  store i64 %or, i64* @hard_regs_live, align 8
  %26 = load i32, i32* %regno.addr, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %regno.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_conflicts(i32* %allocno_vec, i32 %len) #0 {
entry:
  %allocno_vec.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %num = alloca i32, align 4
  %ialloc_prod = alloca i32, align 4
  store i32* %allocno_vec, i32** %allocno_vec.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %len.addr, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %allocno_vec.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %num, align 4
  %4 = load i32, i32* %num, align 4
  %5 = load i32, i32* @allocno_row_words, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %ialloc_prod, align 4
  %6 = load i64, i64* @hard_regs_live, align 8
  %7 = load i32, i32* %num, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx2 = getelementptr inbounds %struct.allocno, %struct.allocno* %8, i64 %idxprom1
  %hard_reg_conflicts = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx2, i32 0, i32 6
  %9 = load i64, i64* %hard_reg_conflicts, align 8
  %or = or i64 %9, %6
  store i64 %or, i64* %hard_reg_conflicts, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_one_conflict(i32 %regno) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %i_ = alloca i32, align 4
  %allocno_ = alloca i32, align 4
  %p_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %ialloc = alloca i32, align 4
  %ialloc_prod = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load i64*, i64** @allocnos_live, align 8
  store i64* %1, i64** %p_, align 8
  %2 = load i32, i32* @allocno_row_words, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i_, align 4
  store i32 0, i32* %allocno_, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %do.body
  %3 = load i32, i32* %i_, align 4
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  %4 = load i64*, i64** %p_, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %4, i32 1
  store i64* %incdec.ptr, i64** %p_, align 8
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %word_, align 8
  %6 = load i32, i32* %allocno_, align 4
  store i32 %6, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load i64, i64* %word_, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %8 = load i64, i64* %word_, align 8
  %and = and i64 %8, 1
  %tobool4 = icmp ne i64 %and, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body.3
  %9 = load i32, i32* %regno.addr, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 1, %sh_prom
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx = getelementptr inbounds %struct.allocno, %struct.allocno* %11, i64 %idxprom
  %hard_reg_conflicts = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx, i32 0, i32 6
  %12 = load i64, i64* %hard_reg_conflicts, align 8
  %or = or i64 %12, %shl
  store i64 %or, i64* %hard_reg_conflicts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, i64* %word_, align 8
  %shr = lshr i64 %13, 1
  store i64 %shr, i64* %word_, align 8
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %15 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i_, align 4
  %16 = load i32, i32* %allocno_, align 4
  %add = add nsw i32 %16, 64
  store i32 %add, i32* %allocno_, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.7
  br label %if.end.27

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %regno.addr, align 4
  %idxprom8 = sext i32 %17 to i64
  %18 = load i32*, i32** @reg_allocno, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 %idxprom8
  %19 = load i32, i32* %arrayidx9, align 4
  store i32 %19, i32* %ialloc, align 4
  %20 = load i32, i32* %ialloc, align 4
  %21 = load i32, i32* @allocno_row_words, align 4
  %mul = mul nsw i32 %20, %21
  store i32 %mul, i32* %ialloc_prod, align 4
  %22 = load i64, i64* @hard_regs_live, align 8
  %23 = load i32, i32* %ialloc, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx11 = getelementptr inbounds %struct.allocno, %struct.allocno* %24, i64 %idxprom10
  %hard_reg_conflicts12 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx11, i32 0, i32 6
  %25 = load i64, i64* %hard_reg_conflicts12, align 8
  %or13 = or i64 %25, %22
  store i64 %or13, i64* %hard_reg_conflicts12, align 8
  %26 = load i32, i32* @allocno_row_words, align 4
  %sub14 = sub nsw i32 %26, 1
  store i32 %sub14, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.24, %if.else
  %27 = load i32, i32* %j, align 4
  %cmp16 = icmp sge i32 %27, 0
  br i1 %cmp16, label %for.body.17, label %for.end.26

for.body.17:                                      ; preds = %for.cond.15
  %28 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load i64*, i64** @allocnos_live, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %29, i64 %idxprom18
  %30 = load i64, i64* %arrayidx19, align 8
  %31 = load i32, i32* %ialloc_prod, align 4
  %32 = load i32, i32* %j, align 4
  %add20 = add nsw i32 %31, %32
  %idxprom21 = sext i32 %add20 to i64
  %33 = load i64*, i64** @conflicts, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %33, i64 %idxprom21
  %34 = load i64, i64* %arrayidx22, align 8
  %or23 = or i64 %34, %30
  store i64 %or23, i64* %arrayidx22, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.17
  %35 = load i32, i32* %j, align 4
  %dec25 = add nsw i32 %35, -1
  store i32 %dec25, i32* %j, align 4
  br label %for.cond.15

for.end.26:                                       ; preds = %for.cond.15
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_reg_clobber(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %setter.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 49
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %setter.addr, align 8
  %4 = load i8*, i8** %data.addr, align 8
  call void @mark_reg_store(%struct.rtx_def* %2, %struct.rtx_def* %3, i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_reg_death(%struct.rtx_def* %reg) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %last = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %regno, align 4
  %2 = load i32, i32* %regno, align 4
  %cmp = icmp sge i32 %2, 53
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** @reg_allocno, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx1, align 4
  %cmp2 = icmp sge i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %regno, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32*, i32** @reg_allocno, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %rem = urem i32 %8, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %9 = load i32, i32* %regno, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32*, i32** @reg_allocno, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %11 = load i32, i32* %arrayidx7, align 4
  %div = udiv i32 %11, 64
  %idxprom8 = zext i32 %div to i64
  %12 = load i64*, i64** @allocnos_live, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %12, i64 %idxprom8
  %13 = load i64, i64* %arrayidx9, align 8
  %and = and i64 %13, %neg
  store i64 %and, i64* %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %14 = load i32, i32* %regno, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i16*, i16** @reg_renumber, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %15, i64 %idxprom11
  %16 = load i16, i16* %arrayidx12, align 2
  %conv = sext i16 %16 to i32
  %cmp13 = icmp sge i32 %conv, 0
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.10
  %17 = load i32, i32* %regno, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load i16*, i16** @reg_renumber, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %18, i64 %idxprom16
  %19 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %19 to i32
  store i32 %conv18, i32* %regno, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.10
  %20 = load i32, i32* %regno, align 4
  %cmp20 = icmp slt i32 %20, 53
  br i1 %cmp20, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %if.end.19
  %21 = load i32, i32* %regno, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom22
  %22 = load i8, i8* %arrayidx23, align 1
  %tobool = icmp ne i8 %22, 0
  br i1 %tobool, label %if.end.103, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %regno, align 4
  %24 = load i32, i32* %regno, align 4
  %cmp25 = icmp sge i32 %24, 8
  br i1 %cmp25, label %land.lhs.true.27, label %lor.lhs.false

land.lhs.true.27:                                 ; preds = %if.then.24
  %25 = load i32, i32* %regno, align 4
  %cmp28 = icmp sle i32 %25, 15
  br i1 %cmp28, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.27, %if.then.24
  %26 = load i32, i32* %regno, align 4
  %cmp30 = icmp sge i32 %26, 21
  br i1 %cmp30, label %land.lhs.true.32, label %lor.lhs.false.35

land.lhs.true.32:                                 ; preds = %lor.lhs.false
  %27 = load i32, i32* %regno, align 4
  %cmp33 = icmp sle i32 %27, 28
  br i1 %cmp33, label %cond.true, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.32, %lor.lhs.false
  %28 = load i32, i32* %regno, align 4
  %cmp36 = icmp sge i32 %28, 45
  br i1 %cmp36, label %land.lhs.true.38, label %lor.lhs.false.41

land.lhs.true.38:                                 ; preds = %lor.lhs.false.35
  %29 = load i32, i32* %regno, align 4
  %cmp39 = icmp sle i32 %29, 52
  br i1 %cmp39, label %cond.true, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.lhs.true.38, %lor.lhs.false.35
  %30 = load i32, i32* %regno, align 4
  %cmp42 = icmp sge i32 %30, 29
  br i1 %cmp42, label %land.lhs.true.44, label %cond.false

land.lhs.true.44:                                 ; preds = %lor.lhs.false.41
  %31 = load i32, i32* %regno, align 4
  %cmp45 = icmp sle i32 %31, 36
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.44, %land.lhs.true.38, %land.lhs.true.32, %land.lhs.true.27
  %32 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load = load i32, i32* %33, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom47 = sext i32 %bf.clear to i64
  %arrayidx48 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom47
  %34 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp eq i32 %34, 5
  br i1 %cmp49, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %35 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load51 = load i32, i32* %36, align 8
  %bf.lshr52 = lshr i32 %bf.load51, 16
  %bf.clear53 = and i32 %bf.lshr52, 255
  %idxprom54 = sext i32 %bf.clear53 to i64
  %arrayidx55 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom54
  %37 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp eq i32 %37, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %38 = phi i1 [ true, %cond.true ], [ %cmp56, %lor.rhs ]
  %cond = select i1 %38, i32 2, i32 1
  br label %cond.end.94

cond.false:                                       ; preds = %land.lhs.true.44, %lor.lhs.false.41
  %39 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load58 = load i32, i32* %40, align 8
  %bf.lshr59 = lshr i32 %bf.load58, 16
  %bf.clear60 = and i32 %bf.lshr59, 255
  %cmp61 = icmp eq i32 %bf.clear60, 18
  br i1 %cmp61, label %cond.true.63, label %cond.false.67

cond.true.63:                                     ; preds = %cond.false
  %41 = load i32, i32* @target_flags, align 4
  %and64 = and i32 %41, 33554432
  %tobool65 = icmp ne i32 %and64, 0
  %cond66 = select i1 %tobool65, i32 2, i32 3
  br label %cond.end.92

cond.false.67:                                    ; preds = %cond.false
  %42 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load68 = load i32, i32* %43, align 8
  %bf.lshr69 = lshr i32 %bf.load68, 16
  %bf.clear70 = and i32 %bf.lshr69, 255
  %cmp71 = icmp eq i32 %bf.clear70, 24
  br i1 %cmp71, label %cond.true.73, label %cond.false.77

cond.true.73:                                     ; preds = %cond.false.67
  %44 = load i32, i32* @target_flags, align 4
  %and74 = and i32 %44, 33554432
  %tobool75 = icmp ne i32 %and74, 0
  %cond76 = select i1 %tobool75, i32 4, i32 6
  br label %cond.end

cond.false.77:                                    ; preds = %cond.false.67
  %45 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load78 = load i32, i32* %46, align 8
  %bf.lshr79 = lshr i32 %bf.load78, 16
  %bf.clear80 = and i32 %bf.lshr79, 255
  %idxprom81 = sext i32 %bf.clear80 to i64
  %arrayidx82 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom81
  %47 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %47 to i32
  %48 = load i32, i32* @target_flags, align 4
  %and84 = and i32 %48, 33554432
  %tobool85 = icmp ne i32 %and84, 0
  %cond86 = select i1 %tobool85, i32 8, i32 4
  %add = add nsw i32 %conv83, %cond86
  %sub = sub nsw i32 %add, 1
  %49 = load i32, i32* @target_flags, align 4
  %and87 = and i32 %49, 33554432
  %tobool88 = icmp ne i32 %and87, 0
  %cond89 = select i1 %tobool88, i32 8, i32 4
  %div90 = sdiv i32 %sub, %cond89
  br label %cond.end

cond.end:                                         ; preds = %cond.false.77, %cond.true.73
  %cond91 = phi i32 [ %cond76, %cond.true.73 ], [ %div90, %cond.false.77 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end, %cond.true.63
  %cond93 = phi i32 [ %cond66, %cond.true.63 ], [ %cond91, %cond.end ]
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.end.92, %lor.end
  %cond95 = phi i32 [ %cond, %lor.end ], [ %cond93, %cond.end.92 ]
  %add96 = add nsw i32 %23, %cond95
  store i32 %add96, i32* %last, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.94
  %50 = load i32, i32* %regno, align 4
  %51 = load i32, i32* %last, align 4
  %cmp97 = icmp slt i32 %50, %51
  br i1 %cmp97, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i32, i32* %regno, align 4
  %sh_prom99 = zext i32 %52 to i64
  %shl100 = shl i64 1, %sh_prom99
  %neg101 = xor i64 %shl100, -1
  %53 = load i64, i64* @hard_regs_live, align 8
  %and102 = and i64 %53, %neg101
  store i64 %and102, i64* @hard_regs_live, align 8
  %54 = load i32, i32* %regno, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %regno, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.103

if.end.103:                                       ; preds = %while.end, %land.lhs.true, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_reg_store(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %last = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %reg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.126

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %7 = load i32, i32* @n_regs_set, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @n_regs_set, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.rtx_def**, %struct.rtx_def*** @regs_set, align 8
  %arrayidx6 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom
  store %struct.rtx_def* %6, %struct.rtx_def** %arrayidx6, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %setter.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.5
  %10 = load %struct.rtx_def*, %struct.rtx_def** %setter.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load7 = load i32, i32* %11, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp ne i32 %bf.clear8, 49
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %setter.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  call void @set_preference(%struct.rtx_def* %12, %struct.rtx_def* %14)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %land.lhs.true, %if.end.5
  %15 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %16 = load i32, i32* %rtuint, align 4
  store i32 %16, i32* %regno, align 4
  %17 = load i32, i32* %regno, align 4
  %cmp17 = icmp sge i32 %17, 53
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.14
  %18 = load i32, i32* %regno, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load i32*, i32** @reg_allocno, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %19, i64 %idxprom19
  %20 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp sge i32 %20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %if.then.18
  %21 = load i32, i32* %regno, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load i32*, i32** @reg_allocno, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %22, i64 %idxprom23
  %23 = load i32, i32* %arrayidx24, align 4
  %rem = urem i32 %23, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %24 = load i32, i32* %regno, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load i32*, i32** @reg_allocno, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %25, i64 %idxprom25
  %26 = load i32, i32* %arrayidx26, align 4
  %div = udiv i32 %26, 64
  %idxprom27 = zext i32 %div to i64
  %27 = load i64*, i64** @allocnos_live, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %27, i64 %idxprom27
  %28 = load i64, i64* %arrayidx28, align 8
  %or = or i64 %28, %shl
  store i64 %or, i64* %arrayidx28, align 8
  %29 = load i32, i32* %regno, align 4
  call void @record_one_conflict(i32 %29)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.22, %if.then.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.14
  %30 = load i32, i32* %regno, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load i16*, i16** @reg_renumber, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %31, i64 %idxprom31
  %32 = load i16, i16* %arrayidx32, align 2
  %conv = sext i16 %32 to i32
  %cmp33 = icmp sge i32 %conv, 0
  br i1 %cmp33, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.30
  %33 = load i32, i32* %regno, align 4
  %idxprom36 = sext i32 %33 to i64
  %34 = load i16*, i16** @reg_renumber, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %34, i64 %idxprom36
  %35 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %35 to i32
  store i32 %conv38, i32* %regno, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %if.end.30
  %36 = load i32, i32* %regno, align 4
  %cmp40 = icmp slt i32 %36, 53
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.126

land.lhs.true.42:                                 ; preds = %if.end.39
  %37 = load i32, i32* %regno, align 4
  %idxprom43 = sext i32 %37 to i64
  %arrayidx44 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom43
  %38 = load i8, i8* %arrayidx44, align 1
  %tobool45 = icmp ne i8 %38, 0
  br i1 %tobool45, label %if.end.126, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true.42
  %39 = load i32, i32* %regno, align 4
  %40 = load i32, i32* %regno, align 4
  %cmp47 = icmp sge i32 %40, 8
  br i1 %cmp47, label %land.lhs.true.49, label %lor.lhs.false

land.lhs.true.49:                                 ; preds = %if.then.46
  %41 = load i32, i32* %regno, align 4
  %cmp50 = icmp sle i32 %41, 15
  br i1 %cmp50, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.49, %if.then.46
  %42 = load i32, i32* %regno, align 4
  %cmp52 = icmp sge i32 %42, 21
  br i1 %cmp52, label %land.lhs.true.54, label %lor.lhs.false.57

land.lhs.true.54:                                 ; preds = %lor.lhs.false
  %43 = load i32, i32* %regno, align 4
  %cmp55 = icmp sle i32 %43, 28
  br i1 %cmp55, label %cond.true, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.54, %lor.lhs.false
  %44 = load i32, i32* %regno, align 4
  %cmp58 = icmp sge i32 %44, 45
  br i1 %cmp58, label %land.lhs.true.60, label %lor.lhs.false.63

land.lhs.true.60:                                 ; preds = %lor.lhs.false.57
  %45 = load i32, i32* %regno, align 4
  %cmp61 = icmp sle i32 %45, 52
  br i1 %cmp61, label %cond.true, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.60, %lor.lhs.false.57
  %46 = load i32, i32* %regno, align 4
  %cmp64 = icmp sge i32 %46, 29
  br i1 %cmp64, label %land.lhs.true.66, label %cond.false

land.lhs.true.66:                                 ; preds = %lor.lhs.false.63
  %47 = load i32, i32* %regno, align 4
  %cmp67 = icmp sle i32 %47, 36
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.66, %land.lhs.true.60, %land.lhs.true.54, %land.lhs.true.49
  %48 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load69 = load i32, i32* %49, align 8
  %bf.lshr = lshr i32 %bf.load69, 16
  %bf.clear70 = and i32 %bf.lshr, 255
  %idxprom71 = sext i32 %bf.clear70 to i64
  %arrayidx72 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom71
  %50 = load i32, i32* %arrayidx72, align 4
  %cmp73 = icmp eq i32 %50, 5
  br i1 %cmp73, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load75 = load i32, i32* %52, align 8
  %bf.lshr76 = lshr i32 %bf.load75, 16
  %bf.clear77 = and i32 %bf.lshr76, 255
  %idxprom78 = sext i32 %bf.clear77 to i64
  %arrayidx79 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom78
  %53 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp eq i32 %53, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %54 = phi i1 [ true, %cond.true ], [ %cmp80, %lor.rhs ]
  %cond = select i1 %54, i32 2, i32 1
  br label %cond.end.117

cond.false:                                       ; preds = %land.lhs.true.66, %lor.lhs.false.63
  %55 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load82 = load i32, i32* %56, align 8
  %bf.lshr83 = lshr i32 %bf.load82, 16
  %bf.clear84 = and i32 %bf.lshr83, 255
  %cmp85 = icmp eq i32 %bf.clear84, 18
  br i1 %cmp85, label %cond.true.87, label %cond.false.90

cond.true.87:                                     ; preds = %cond.false
  %57 = load i32, i32* @target_flags, align 4
  %and = and i32 %57, 33554432
  %tobool88 = icmp ne i32 %and, 0
  %cond89 = select i1 %tobool88, i32 2, i32 3
  br label %cond.end.115

cond.false.90:                                    ; preds = %cond.false
  %58 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load91 = load i32, i32* %59, align 8
  %bf.lshr92 = lshr i32 %bf.load91, 16
  %bf.clear93 = and i32 %bf.lshr92, 255
  %cmp94 = icmp eq i32 %bf.clear93, 24
  br i1 %cmp94, label %cond.true.96, label %cond.false.100

cond.true.96:                                     ; preds = %cond.false.90
  %60 = load i32, i32* @target_flags, align 4
  %and97 = and i32 %60, 33554432
  %tobool98 = icmp ne i32 %and97, 0
  %cond99 = select i1 %tobool98, i32 4, i32 6
  br label %cond.end

cond.false.100:                                   ; preds = %cond.false.90
  %61 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load101 = load i32, i32* %62, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 16
  %bf.clear103 = and i32 %bf.lshr102, 255
  %idxprom104 = sext i32 %bf.clear103 to i64
  %arrayidx105 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom104
  %63 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %63 to i32
  %64 = load i32, i32* @target_flags, align 4
  %and107 = and i32 %64, 33554432
  %tobool108 = icmp ne i32 %and107, 0
  %cond109 = select i1 %tobool108, i32 8, i32 4
  %add = add nsw i32 %conv106, %cond109
  %sub = sub nsw i32 %add, 1
  %65 = load i32, i32* @target_flags, align 4
  %and110 = and i32 %65, 33554432
  %tobool111 = icmp ne i32 %and110, 0
  %cond112 = select i1 %tobool111, i32 8, i32 4
  %div113 = sdiv i32 %sub, %cond112
  br label %cond.end

cond.end:                                         ; preds = %cond.false.100, %cond.true.96
  %cond114 = phi i32 [ %cond99, %cond.true.96 ], [ %div113, %cond.false.100 ]
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.end, %cond.true.87
  %cond116 = phi i32 [ %cond89, %cond.true.87 ], [ %cond114, %cond.end ]
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.end.115, %lor.end
  %cond118 = phi i32 [ %cond, %lor.end ], [ %cond116, %cond.end.115 ]
  %add119 = add nsw i32 %39, %cond118
  store i32 %add119, i32* %last, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.117
  %66 = load i32, i32* %regno, align 4
  %67 = load i32, i32* %last, align 4
  %cmp120 = icmp slt i32 %66, %67
  br i1 %cmp120, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load i32, i32* %regno, align 4
  call void @record_one_conflict(i32 %68)
  %69 = load i32, i32* %regno, align 4
  %sh_prom122 = zext i32 %69 to i64
  %shl123 = shl i64 1, %sh_prom122
  %70 = load i64, i64* @hard_regs_live, align 8
  %or124 = or i64 %70, %shl123
  store i64 %or124, i64* @hard_regs_live, align 8
  %71 = load i32, i32* %regno, align 4
  %inc125 = add nsw i32 %71, 1
  store i32 %inc125, i32* %regno, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.4, %while.end, %land.lhs.true.42, %if.end.39
  ret void
}

declare i32 @multiple_sets(%struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_reg_conflicts(%struct.rtx_def* %reg) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %last = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %reg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %if.end.103

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %7 = load i32, i32* %rtuint, align 4
  store i32 %7, i32* %regno, align 4
  %8 = load i32, i32* %regno, align 4
  %cmp8 = icmp sge i32 %8, 53
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.5
  %9 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** @reg_allocno, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp sge i32 %11, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %12 = load i32, i32* %regno, align 4
  call void @record_one_conflict(i32 %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.5
  %13 = load i32, i32* %regno, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load i16*, i16** @reg_renumber, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %14, i64 %idxprom15
  %15 = load i16, i16* %arrayidx16, align 2
  %conv = sext i16 %15 to i32
  %cmp17 = icmp sge i32 %conv, 0
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.14
  %16 = load i32, i32* %regno, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load i16*, i16** @reg_renumber, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %17, i64 %idxprom20
  %18 = load i16, i16* %arrayidx21, align 2
  %conv22 = sext i16 %18 to i32
  store i32 %conv22, i32* %regno, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.14
  %19 = load i32, i32* %regno, align 4
  %cmp24 = icmp slt i32 %19, 53
  br i1 %cmp24, label %land.lhs.true, label %if.end.103

land.lhs.true:                                    ; preds = %if.end.23
  %20 = load i32, i32* %regno, align 4
  %idxprom26 = sext i32 %20 to i64
  %arrayidx27 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom26
  %21 = load i8, i8* %arrayidx27, align 1
  %tobool = icmp ne i8 %21, 0
  br i1 %tobool, label %if.end.103, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* %regno, align 4
  %23 = load i32, i32* %regno, align 4
  %cmp29 = icmp sge i32 %23, 8
  br i1 %cmp29, label %land.lhs.true.31, label %lor.lhs.false

land.lhs.true.31:                                 ; preds = %if.then.28
  %24 = load i32, i32* %regno, align 4
  %cmp32 = icmp sle i32 %24, 15
  br i1 %cmp32, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.31, %if.then.28
  %25 = load i32, i32* %regno, align 4
  %cmp34 = icmp sge i32 %25, 21
  br i1 %cmp34, label %land.lhs.true.36, label %lor.lhs.false.39

land.lhs.true.36:                                 ; preds = %lor.lhs.false
  %26 = load i32, i32* %regno, align 4
  %cmp37 = icmp sle i32 %26, 28
  br i1 %cmp37, label %cond.true, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %land.lhs.true.36, %lor.lhs.false
  %27 = load i32, i32* %regno, align 4
  %cmp40 = icmp sge i32 %27, 45
  br i1 %cmp40, label %land.lhs.true.42, label %lor.lhs.false.45

land.lhs.true.42:                                 ; preds = %lor.lhs.false.39
  %28 = load i32, i32* %regno, align 4
  %cmp43 = icmp sle i32 %28, 52
  br i1 %cmp43, label %cond.true, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.42, %lor.lhs.false.39
  %29 = load i32, i32* %regno, align 4
  %cmp46 = icmp sge i32 %29, 29
  br i1 %cmp46, label %land.lhs.true.48, label %cond.false

land.lhs.true.48:                                 ; preds = %lor.lhs.false.45
  %30 = load i32, i32* %regno, align 4
  %cmp49 = icmp sle i32 %30, 36
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.48, %land.lhs.true.42, %land.lhs.true.36, %land.lhs.true.31
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load51 = load i32, i32* %32, align 8
  %bf.lshr = lshr i32 %bf.load51, 16
  %bf.clear52 = and i32 %bf.lshr, 255
  %idxprom53 = sext i32 %bf.clear52 to i64
  %arrayidx54 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom53
  %33 = load i32, i32* %arrayidx54, align 4
  %cmp55 = icmp eq i32 %33, 5
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load57 = load i32, i32* %35, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 16
  %bf.clear59 = and i32 %bf.lshr58, 255
  %idxprom60 = sext i32 %bf.clear59 to i64
  %arrayidx61 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom60
  %36 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp eq i32 %36, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %37 = phi i1 [ true, %cond.true ], [ %cmp62, %lor.rhs ]
  %cond = select i1 %37, i32 2, i32 1
  br label %cond.end.98

cond.false:                                       ; preds = %land.lhs.true.48, %lor.lhs.false.45
  %38 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load64 = load i32, i32* %39, align 8
  %bf.lshr65 = lshr i32 %bf.load64, 16
  %bf.clear66 = and i32 %bf.lshr65, 255
  %cmp67 = icmp eq i32 %bf.clear66, 18
  br i1 %cmp67, label %cond.true.69, label %cond.false.72

cond.true.69:                                     ; preds = %cond.false
  %40 = load i32, i32* @target_flags, align 4
  %and = and i32 %40, 33554432
  %tobool70 = icmp ne i32 %and, 0
  %cond71 = select i1 %tobool70, i32 2, i32 3
  br label %cond.end.96

cond.false.72:                                    ; preds = %cond.false
  %41 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load73 = load i32, i32* %42, align 8
  %bf.lshr74 = lshr i32 %bf.load73, 16
  %bf.clear75 = and i32 %bf.lshr74, 255
  %cmp76 = icmp eq i32 %bf.clear75, 24
  br i1 %cmp76, label %cond.true.78, label %cond.false.82

cond.true.78:                                     ; preds = %cond.false.72
  %43 = load i32, i32* @target_flags, align 4
  %and79 = and i32 %43, 33554432
  %tobool80 = icmp ne i32 %and79, 0
  %cond81 = select i1 %tobool80, i32 4, i32 6
  br label %cond.end

cond.false.82:                                    ; preds = %cond.false.72
  %44 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load83 = load i32, i32* %45, align 8
  %bf.lshr84 = lshr i32 %bf.load83, 16
  %bf.clear85 = and i32 %bf.lshr84, 255
  %idxprom86 = sext i32 %bf.clear85 to i64
  %arrayidx87 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom86
  %46 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %46 to i32
  %47 = load i32, i32* @target_flags, align 4
  %and89 = and i32 %47, 33554432
  %tobool90 = icmp ne i32 %and89, 0
  %cond91 = select i1 %tobool90, i32 8, i32 4
  %add = add nsw i32 %conv88, %cond91
  %sub = sub nsw i32 %add, 1
  %48 = load i32, i32* @target_flags, align 4
  %and92 = and i32 %48, 33554432
  %tobool93 = icmp ne i32 %and92, 0
  %cond94 = select i1 %tobool93, i32 8, i32 4
  %div = sdiv i32 %sub, %cond94
  br label %cond.end

cond.end:                                         ; preds = %cond.false.82, %cond.true.78
  %cond95 = phi i32 [ %cond81, %cond.true.78 ], [ %div, %cond.false.82 ]
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end, %cond.true.69
  %cond97 = phi i32 [ %cond71, %cond.true.69 ], [ %cond95, %cond.end ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %lor.end
  %cond99 = phi i32 [ %cond, %lor.end ], [ %cond97, %cond.end.96 ]
  %add100 = add nsw i32 %22, %cond99
  store i32 %add100, i32* %last, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.98
  %49 = load i32, i32* %regno, align 4
  %50 = load i32, i32* %last, align 4
  %cmp101 = icmp slt i32 %49, %50
  br i1 %cmp101, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i32, i32* %regno, align 4
  call void @record_one_conflict(i32 %51)
  %52 = load i32, i32* %regno, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %regno, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.4, %while.end, %land.lhs.true, %if.end.23
  ret void
}

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @set_preference(%struct.rtx_def* %dest, %struct.rtx_def* %src) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %src_regno = alloca i32, align 4
  %dest_regno = alloca i32, align 4
  %offset = alloca i32, align 4
  %i = alloca i32, align 4
  %copy = alloca i32, align 4
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  store i32 0, i32* %offset, align 4
  store i32 1, i32* %copy, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 101
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %src.addr, align 8
  store i32 0, i32* %copy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 61
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %9 = load i32, i32* %rtuint, align 4
  store i32 %9, i32* %src_regno, align 4
  br label %if.end.63

if.else:                                          ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load11 = load i32, i32* %11, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 63
  br i1 %cmp13, label %land.lhs.true, label %if.else.61

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load18 = load i32, i32* %14, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 61
  br i1 %cmp20, label %if.then.22, label %if.else.61

if.then.22:                                       ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtuint28 = bitcast %union.rtunion_def* %arrayidx27 to i32*
  %17 = load i32, i32* %rtuint28, align 4
  store i32 %17, i32* %src_regno, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtuint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %20 = load i32, i32* %rtuint34, align 4
  %cmp35 = icmp ult i32 %20, 53
  br i1 %cmp35, label %if.then.37, label %if.else.55

if.then.37:                                       ; preds = %if.then.22
  %21 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtuint43 = bitcast %union.rtunion_def* %arrayidx42 to i32*
  %23 = load i32, i32* %rtuint43, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load47 = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load47, 16
  %bf.clear48 = and i32 %bf.lshr, 255
  %27 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtuint51 = bitcast %union.rtunion_def* %arrayidx50 to i32*
  %28 = load i32, i32* %rtuint51, align 4
  %29 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load52 = load i32, i32* %30, align 8
  %bf.lshr53 = lshr i32 %bf.load52, 16
  %bf.clear54 = and i32 %bf.lshr53, 255
  %call = call i32 @subreg_regno_offset(i32 %23, i32 %bf.clear48, i32 %28, i32 %bf.clear54)
  %31 = load i32, i32* %offset, align 4
  %add = add i32 %31, %call
  store i32 %add, i32* %offset, align 4
  br label %if.end.60

if.else.55:                                       ; preds = %if.then.22
  %32 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 1
  %rtuint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %33 = load i32, i32* %rtuint58, align 4
  %34 = load i32, i32* @target_flags, align 4
  %and = and i32 %34, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %div = udiv i32 %33, %cond
  %35 = load i32, i32* %offset, align 4
  %add59 = add i32 %35, %div
  store i32 %add59, i32* %offset, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.55, %if.then.37
  br label %if.end.62

if.else.61:                                       ; preds = %land.lhs.true, %if.else
  br label %if.end.405

if.end.62:                                        ; preds = %if.end.60
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load64 = load i32, i32* %37, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 61
  br i1 %cmp66, label %if.then.68, label %if.else.72

if.then.68:                                       ; preds = %if.end.63
  %38 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtuint71 = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %39 = load i32, i32* %rtuint71, align 4
  store i32 %39, i32* %dest_regno, align 4
  br label %if.end.132

if.else.72:                                       ; preds = %if.end.63
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load73 = load i32, i32* %41, align 8
  %bf.clear74 = and i32 %bf.load73, 65535
  %cmp75 = icmp eq i32 %bf.clear74, 63
  br i1 %cmp75, label %land.lhs.true.77, label %if.else.130

land.lhs.true.77:                                 ; preds = %if.else.72
  %42 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load81 = load i32, i32* %44, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 61
  br i1 %cmp83, label %if.then.85, label %if.else.130

if.then.85:                                       ; preds = %land.lhs.true.77
  %45 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtuint91 = bitcast %union.rtunion_def* %arrayidx90 to i32*
  %47 = load i32, i32* %rtuint91, align 4
  store i32 %47, i32* %dest_regno, align 4
  %48 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtuint97 = bitcast %union.rtunion_def* %arrayidx96 to i32*
  %50 = load i32, i32* %rtuint97, align 4
  %cmp98 = icmp ult i32 %50, 53
  br i1 %cmp98, label %if.then.100, label %if.else.120

if.then.100:                                      ; preds = %if.then.85
  %51 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtuint106 = bitcast %union.rtunion_def* %arrayidx105 to i32*
  %53 = load i32, i32* %rtuint106, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load110 = load i32, i32* %56, align 8
  %bf.lshr111 = lshr i32 %bf.load110, 16
  %bf.clear112 = and i32 %bf.lshr111, 255
  %57 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 1
  %rtuint115 = bitcast %union.rtunion_def* %arrayidx114 to i32*
  %58 = load i32, i32* %rtuint115, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load116 = load i32, i32* %60, align 8
  %bf.lshr117 = lshr i32 %bf.load116, 16
  %bf.clear118 = and i32 %bf.lshr117, 255
  %call119 = call i32 @subreg_regno_offset(i32 %53, i32 %bf.clear112, i32 %58, i32 %bf.clear118)
  %61 = load i32, i32* %offset, align 4
  %sub = sub i32 %61, %call119
  store i32 %sub, i32* %offset, align 4
  br label %if.end.129

if.else.120:                                      ; preds = %if.then.85
  %62 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 1
  %rtuint123 = bitcast %union.rtunion_def* %arrayidx122 to i32*
  %63 = load i32, i32* %rtuint123, align 4
  %64 = load i32, i32* @target_flags, align 4
  %and124 = and i32 %64, 33554432
  %tobool125 = icmp ne i32 %and124, 0
  %cond126 = select i1 %tobool125, i32 8, i32 4
  %div127 = udiv i32 %63, %cond126
  %65 = load i32, i32* %offset, align 4
  %sub128 = sub i32 %65, %div127
  store i32 %sub128, i32* %offset, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.120, %if.then.100
  br label %if.end.131

if.else.130:                                      ; preds = %land.lhs.true.77, %if.else.72
  br label %if.end.405

if.end.131:                                       ; preds = %if.end.129
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.68
  %66 = load i32, i32* %src_regno, align 4
  %idxprom133 = zext i32 %66 to i64
  %67 = load i16*, i16** @reg_renumber, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %67, i64 %idxprom133
  %68 = load i16, i16* %arrayidx134, align 2
  %conv135 = sext i16 %68 to i32
  %cmp136 = icmp sge i32 %conv135, 0
  br i1 %cmp136, label %if.then.138, label %if.end.142

if.then.138:                                      ; preds = %if.end.132
  %69 = load i32, i32* %src_regno, align 4
  %idxprom139 = zext i32 %69 to i64
  %70 = load i16*, i16** @reg_renumber, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %70, i64 %idxprom139
  %71 = load i16, i16* %arrayidx140, align 2
  %conv141 = sext i16 %71 to i32
  store i32 %conv141, i32* %src_regno, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.138, %if.end.132
  %72 = load i32, i32* %dest_regno, align 4
  %idxprom143 = zext i32 %72 to i64
  %73 = load i16*, i16** @reg_renumber, align 8
  %arrayidx144 = getelementptr inbounds i16, i16* %73, i64 %idxprom143
  %74 = load i16, i16* %arrayidx144, align 2
  %conv145 = sext i16 %74 to i32
  %cmp146 = icmp sge i32 %conv145, 0
  br i1 %cmp146, label %if.then.148, label %if.end.152

if.then.148:                                      ; preds = %if.end.142
  %75 = load i32, i32* %dest_regno, align 4
  %idxprom149 = zext i32 %75 to i64
  %76 = load i16*, i16** @reg_renumber, align 8
  %arrayidx150 = getelementptr inbounds i16, i16* %76, i64 %idxprom149
  %77 = load i16, i16* %arrayidx150, align 2
  %conv151 = sext i16 %77 to i32
  store i32 %conv151, i32* %dest_regno, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.148, %if.end.142
  %78 = load i32, i32* %dest_regno, align 4
  %cmp153 = icmp ult i32 %78, 53
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.270

land.lhs.true.155:                                ; preds = %if.end.152
  %79 = load i32, i32* %src_regno, align 4
  %cmp156 = icmp uge i32 %79, 53
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.270

land.lhs.true.158:                                ; preds = %land.lhs.true.155
  %80 = load i32, i32* %src_regno, align 4
  %idxprom159 = zext i32 %80 to i64
  %81 = load i32*, i32** @reg_allocno, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %81, i64 %idxprom159
  %82 = load i32, i32* %arrayidx160, align 4
  %cmp161 = icmp sge i32 %82, 0
  br i1 %cmp161, label %if.then.163, label %if.end.270

if.then.163:                                      ; preds = %land.lhs.true.158
  %83 = load i32, i32* %offset, align 4
  %84 = load i32, i32* %dest_regno, align 4
  %sub164 = sub i32 %84, %83
  store i32 %sub164, i32* %dest_regno, align 4
  %85 = load i32, i32* %dest_regno, align 4
  %cmp165 = icmp ult i32 %85, 53
  br i1 %cmp165, label %if.then.167, label %if.end.269

if.then.167:                                      ; preds = %if.then.163
  %86 = load i32, i32* %copy, align 4
  %tobool168 = icmp ne i32 %86, 0
  br i1 %tobool168, label %if.then.169, label %if.end.174

if.then.169:                                      ; preds = %if.then.167
  %87 = load i32, i32* %dest_regno, align 4
  %sh_prom = zext i32 %87 to i64
  %shl = shl i64 1, %sh_prom
  %88 = load i32, i32* %src_regno, align 4
  %idxprom170 = zext i32 %88 to i64
  %89 = load i32*, i32** @reg_allocno, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %89, i64 %idxprom170
  %90 = load i32, i32* %arrayidx171, align 4
  %idxprom172 = sext i32 %90 to i64
  %91 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx173 = getelementptr inbounds %struct.allocno, %struct.allocno* %91, i64 %idxprom172
  %hard_reg_copy_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx173, i32 0, i32 8
  %92 = load i64, i64* %hard_reg_copy_preferences, align 8
  %or = or i64 %92, %shl
  store i64 %or, i64* %hard_reg_copy_preferences, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.169, %if.then.167
  %93 = load i32, i32* %dest_regno, align 4
  %sh_prom175 = zext i32 %93 to i64
  %shl176 = shl i64 1, %sh_prom175
  %94 = load i32, i32* %src_regno, align 4
  %idxprom177 = zext i32 %94 to i64
  %95 = load i32*, i32** @reg_allocno, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %95, i64 %idxprom177
  %96 = load i32, i32* %arrayidx178, align 4
  %idxprom179 = sext i32 %96 to i64
  %97 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx180 = getelementptr inbounds %struct.allocno, %struct.allocno* %97, i64 %idxprom179
  %hard_reg_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx180, i32 0, i32 7
  %98 = load i64, i64* %hard_reg_preferences, align 8
  %or181 = or i64 %98, %shl176
  store i64 %or181, i64* %hard_reg_preferences, align 8
  %99 = load i32, i32* %dest_regno, align 4
  store i32 %99, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.174
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %dest_regno, align 4
  %102 = load i32, i32* %dest_regno, align 4
  %cmp182 = icmp uge i32 %102, 8
  br i1 %cmp182, label %land.lhs.true.184, label %lor.lhs.false

land.lhs.true.184:                                ; preds = %for.cond
  %103 = load i32, i32* %dest_regno, align 4
  %cmp185 = icmp ule i32 %103, 15
  br i1 %cmp185, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.184, %for.cond
  %104 = load i32, i32* %dest_regno, align 4
  %cmp187 = icmp uge i32 %104, 21
  br i1 %cmp187, label %land.lhs.true.189, label %lor.lhs.false.192

land.lhs.true.189:                                ; preds = %lor.lhs.false
  %105 = load i32, i32* %dest_regno, align 4
  %cmp190 = icmp ule i32 %105, 28
  br i1 %cmp190, label %cond.true, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %land.lhs.true.189, %lor.lhs.false
  %106 = load i32, i32* %dest_regno, align 4
  %cmp193 = icmp uge i32 %106, 45
  br i1 %cmp193, label %land.lhs.true.195, label %lor.lhs.false.198

land.lhs.true.195:                                ; preds = %lor.lhs.false.192
  %107 = load i32, i32* %dest_regno, align 4
  %cmp196 = icmp ule i32 %107, 52
  br i1 %cmp196, label %cond.true, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %land.lhs.true.195, %lor.lhs.false.192
  %108 = load i32, i32* %dest_regno, align 4
  %cmp199 = icmp uge i32 %108, 29
  br i1 %cmp199, label %land.lhs.true.201, label %cond.false

land.lhs.true.201:                                ; preds = %lor.lhs.false.198
  %109 = load i32, i32* %dest_regno, align 4
  %cmp202 = icmp ule i32 %109, 36
  br i1 %cmp202, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.201, %land.lhs.true.195, %land.lhs.true.189, %land.lhs.true.184
  %110 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load204 = load i32, i32* %111, align 8
  %bf.lshr205 = lshr i32 %bf.load204, 16
  %bf.clear206 = and i32 %bf.lshr205, 255
  %idxprom207 = sext i32 %bf.clear206 to i64
  %arrayidx208 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom207
  %112 = load i32, i32* %arrayidx208, align 4
  %cmp209 = icmp eq i32 %112, 5
  br i1 %cmp209, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %113 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load211 = load i32, i32* %114, align 8
  %bf.lshr212 = lshr i32 %bf.load211, 16
  %bf.clear213 = and i32 %bf.lshr212, 255
  %idxprom214 = sext i32 %bf.clear213 to i64
  %arrayidx215 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom214
  %115 = load i32, i32* %arrayidx215, align 4
  %cmp216 = icmp eq i32 %115, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %116 = phi i1 [ true, %cond.true ], [ %cmp216, %lor.rhs ]
  %cond218 = select i1 %116, i32 2, i32 1
  br label %cond.end.257

cond.false:                                       ; preds = %land.lhs.true.201, %lor.lhs.false.198
  %117 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load219 = load i32, i32* %118, align 8
  %bf.lshr220 = lshr i32 %bf.load219, 16
  %bf.clear221 = and i32 %bf.lshr220, 255
  %cmp222 = icmp eq i32 %bf.clear221, 18
  br i1 %cmp222, label %cond.true.224, label %cond.false.228

cond.true.224:                                    ; preds = %cond.false
  %119 = load i32, i32* @target_flags, align 4
  %and225 = and i32 %119, 33554432
  %tobool226 = icmp ne i32 %and225, 0
  %cond227 = select i1 %tobool226, i32 2, i32 3
  br label %cond.end.255

cond.false.228:                                   ; preds = %cond.false
  %120 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load229 = load i32, i32* %121, align 8
  %bf.lshr230 = lshr i32 %bf.load229, 16
  %bf.clear231 = and i32 %bf.lshr230, 255
  %cmp232 = icmp eq i32 %bf.clear231, 24
  br i1 %cmp232, label %cond.true.234, label %cond.false.238

cond.true.234:                                    ; preds = %cond.false.228
  %122 = load i32, i32* @target_flags, align 4
  %and235 = and i32 %122, 33554432
  %tobool236 = icmp ne i32 %and235, 0
  %cond237 = select i1 %tobool236, i32 4, i32 6
  br label %cond.end

cond.false.238:                                   ; preds = %cond.false.228
  %123 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load239 = load i32, i32* %124, align 8
  %bf.lshr240 = lshr i32 %bf.load239, 16
  %bf.clear241 = and i32 %bf.lshr240, 255
  %idxprom242 = sext i32 %bf.clear241 to i64
  %arrayidx243 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom242
  %125 = load i8, i8* %arrayidx243, align 1
  %conv244 = zext i8 %125 to i32
  %126 = load i32, i32* @target_flags, align 4
  %and245 = and i32 %126, 33554432
  %tobool246 = icmp ne i32 %and245, 0
  %cond247 = select i1 %tobool246, i32 8, i32 4
  %add248 = add nsw i32 %conv244, %cond247
  %sub249 = sub nsw i32 %add248, 1
  %127 = load i32, i32* @target_flags, align 4
  %and250 = and i32 %127, 33554432
  %tobool251 = icmp ne i32 %and250, 0
  %cond252 = select i1 %tobool251, i32 8, i32 4
  %div253 = sdiv i32 %sub249, %cond252
  br label %cond.end

cond.end:                                         ; preds = %cond.false.238, %cond.true.234
  %cond254 = phi i32 [ %cond237, %cond.true.234 ], [ %div253, %cond.false.238 ]
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.end, %cond.true.224
  %cond256 = phi i32 [ %cond227, %cond.true.224 ], [ %cond254, %cond.end ]
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.end.255, %lor.end
  %cond258 = phi i32 [ %cond218, %lor.end ], [ %cond256, %cond.end.255 ]
  %add259 = add i32 %101, %cond258
  %cmp260 = icmp ult i32 %100, %add259
  br i1 %cmp260, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.257
  %128 = load i32, i32* %i, align 4
  %sh_prom262 = zext i32 %128 to i64
  %shl263 = shl i64 1, %sh_prom262
  %129 = load i32, i32* %src_regno, align 4
  %idxprom264 = zext i32 %129 to i64
  %130 = load i32*, i32** @reg_allocno, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %130, i64 %idxprom264
  %131 = load i32, i32* %arrayidx265, align 4
  %idxprom266 = sext i32 %131 to i64
  %132 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx267 = getelementptr inbounds %struct.allocno, %struct.allocno* %132, i64 %idxprom266
  %hard_reg_full_preferences = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx267, i32 0, i32 9
  %133 = load i64, i64* %hard_reg_full_preferences, align 8
  %or268 = or i64 %133, %shl263
  store i64 %or268, i64* %hard_reg_full_preferences, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %134 = load i32, i32* %i, align 4
  %inc = add i32 %134, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end.257
  br label %if.end.269

if.end.269:                                       ; preds = %for.end, %if.then.163
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %land.lhs.true.158, %land.lhs.true.155, %if.end.152
  %135 = load i32, i32* %src_regno, align 4
  %cmp271 = icmp ult i32 %135, 53
  br i1 %cmp271, label %land.lhs.true.273, label %if.end.405

land.lhs.true.273:                                ; preds = %if.end.270
  %136 = load i32, i32* %dest_regno, align 4
  %cmp274 = icmp uge i32 %136, 53
  br i1 %cmp274, label %land.lhs.true.276, label %if.end.405

land.lhs.true.276:                                ; preds = %land.lhs.true.273
  %137 = load i32, i32* %dest_regno, align 4
  %idxprom277 = zext i32 %137 to i64
  %138 = load i32*, i32** @reg_allocno, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %138, i64 %idxprom277
  %139 = load i32, i32* %arrayidx278, align 4
  %cmp279 = icmp sge i32 %139, 0
  br i1 %cmp279, label %if.then.281, label %if.end.405

if.then.281:                                      ; preds = %land.lhs.true.276
  %140 = load i32, i32* %offset, align 4
  %141 = load i32, i32* %src_regno, align 4
  %add282 = add i32 %141, %140
  store i32 %add282, i32* %src_regno, align 4
  %142 = load i32, i32* %src_regno, align 4
  %cmp283 = icmp ult i32 %142, 53
  br i1 %cmp283, label %if.then.285, label %if.end.404

if.then.285:                                      ; preds = %if.then.281
  %143 = load i32, i32* %copy, align 4
  %tobool286 = icmp ne i32 %143, 0
  br i1 %tobool286, label %if.then.287, label %if.end.296

if.then.287:                                      ; preds = %if.then.285
  %144 = load i32, i32* %src_regno, align 4
  %sh_prom288 = zext i32 %144 to i64
  %shl289 = shl i64 1, %sh_prom288
  %145 = load i32, i32* %dest_regno, align 4
  %idxprom290 = zext i32 %145 to i64
  %146 = load i32*, i32** @reg_allocno, align 8
  %arrayidx291 = getelementptr inbounds i32, i32* %146, i64 %idxprom290
  %147 = load i32, i32* %arrayidx291, align 4
  %idxprom292 = sext i32 %147 to i64
  %148 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx293 = getelementptr inbounds %struct.allocno, %struct.allocno* %148, i64 %idxprom292
  %hard_reg_copy_preferences294 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx293, i32 0, i32 8
  %149 = load i64, i64* %hard_reg_copy_preferences294, align 8
  %or295 = or i64 %149, %shl289
  store i64 %or295, i64* %hard_reg_copy_preferences294, align 8
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.287, %if.then.285
  %150 = load i32, i32* %src_regno, align 4
  %sh_prom297 = zext i32 %150 to i64
  %shl298 = shl i64 1, %sh_prom297
  %151 = load i32, i32* %dest_regno, align 4
  %idxprom299 = zext i32 %151 to i64
  %152 = load i32*, i32** @reg_allocno, align 8
  %arrayidx300 = getelementptr inbounds i32, i32* %152, i64 %idxprom299
  %153 = load i32, i32* %arrayidx300, align 4
  %idxprom301 = sext i32 %153 to i64
  %154 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx302 = getelementptr inbounds %struct.allocno, %struct.allocno* %154, i64 %idxprom301
  %hard_reg_preferences303 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx302, i32 0, i32 7
  %155 = load i64, i64* %hard_reg_preferences303, align 8
  %or304 = or i64 %155, %shl298
  store i64 %or304, i64* %hard_reg_preferences303, align 8
  %156 = load i32, i32* %src_regno, align 4
  store i32 %156, i32* %i, align 4
  br label %for.cond.305

for.cond.305:                                     ; preds = %for.inc.401, %if.end.296
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %src_regno, align 4
  %159 = load i32, i32* %src_regno, align 4
  %cmp306 = icmp uge i32 %159, 8
  br i1 %cmp306, label %land.lhs.true.308, label %lor.lhs.false.311

land.lhs.true.308:                                ; preds = %for.cond.305
  %160 = load i32, i32* %src_regno, align 4
  %cmp309 = icmp ule i32 %160, 15
  br i1 %cmp309, label %cond.true.329, label %lor.lhs.false.311

lor.lhs.false.311:                                ; preds = %land.lhs.true.308, %for.cond.305
  %161 = load i32, i32* %src_regno, align 4
  %cmp312 = icmp uge i32 %161, 21
  br i1 %cmp312, label %land.lhs.true.314, label %lor.lhs.false.317

land.lhs.true.314:                                ; preds = %lor.lhs.false.311
  %162 = load i32, i32* %src_regno, align 4
  %cmp315 = icmp ule i32 %162, 28
  br i1 %cmp315, label %cond.true.329, label %lor.lhs.false.317

lor.lhs.false.317:                                ; preds = %land.lhs.true.314, %lor.lhs.false.311
  %163 = load i32, i32* %src_regno, align 4
  %cmp318 = icmp uge i32 %163, 45
  br i1 %cmp318, label %land.lhs.true.320, label %lor.lhs.false.323

land.lhs.true.320:                                ; preds = %lor.lhs.false.317
  %164 = load i32, i32* %src_regno, align 4
  %cmp321 = icmp ule i32 %164, 52
  br i1 %cmp321, label %cond.true.329, label %lor.lhs.false.323

lor.lhs.false.323:                                ; preds = %land.lhs.true.320, %lor.lhs.false.317
  %165 = load i32, i32* %src_regno, align 4
  %cmp324 = icmp uge i32 %165, 29
  br i1 %cmp324, label %land.lhs.true.326, label %cond.false.347

land.lhs.true.326:                                ; preds = %lor.lhs.false.323
  %166 = load i32, i32* %src_regno, align 4
  %cmp327 = icmp ule i32 %166, 36
  br i1 %cmp327, label %cond.true.329, label %cond.false.347

cond.true.329:                                    ; preds = %land.lhs.true.326, %land.lhs.true.320, %land.lhs.true.314, %land.lhs.true.308
  %167 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load330 = load i32, i32* %168, align 8
  %bf.lshr331 = lshr i32 %bf.load330, 16
  %bf.clear332 = and i32 %bf.lshr331, 255
  %idxprom333 = sext i32 %bf.clear332 to i64
  %arrayidx334 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom333
  %169 = load i32, i32* %arrayidx334, align 4
  %cmp335 = icmp eq i32 %169, 5
  br i1 %cmp335, label %lor.end.345, label %lor.rhs.337

lor.rhs.337:                                      ; preds = %cond.true.329
  %170 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load338 = load i32, i32* %171, align 8
  %bf.lshr339 = lshr i32 %bf.load338, 16
  %bf.clear340 = and i32 %bf.lshr339, 255
  %idxprom341 = sext i32 %bf.clear340 to i64
  %arrayidx342 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom341
  %172 = load i32, i32* %arrayidx342, align 4
  %cmp343 = icmp eq i32 %172, 6
  br label %lor.end.345

lor.end.345:                                      ; preds = %lor.rhs.337, %cond.true.329
  %173 = phi i1 [ true, %cond.true.329 ], [ %cmp343, %lor.rhs.337 ]
  %cond346 = select i1 %173, i32 2, i32 1
  br label %cond.end.387

cond.false.347:                                   ; preds = %land.lhs.true.326, %lor.lhs.false.323
  %174 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load348 = load i32, i32* %175, align 8
  %bf.lshr349 = lshr i32 %bf.load348, 16
  %bf.clear350 = and i32 %bf.lshr349, 255
  %cmp351 = icmp eq i32 %bf.clear350, 18
  br i1 %cmp351, label %cond.true.353, label %cond.false.357

cond.true.353:                                    ; preds = %cond.false.347
  %176 = load i32, i32* @target_flags, align 4
  %and354 = and i32 %176, 33554432
  %tobool355 = icmp ne i32 %and354, 0
  %cond356 = select i1 %tobool355, i32 2, i32 3
  br label %cond.end.385

cond.false.357:                                   ; preds = %cond.false.347
  %177 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %178 = bitcast %struct.rtx_def* %177 to i32*
  %bf.load358 = load i32, i32* %178, align 8
  %bf.lshr359 = lshr i32 %bf.load358, 16
  %bf.clear360 = and i32 %bf.lshr359, 255
  %cmp361 = icmp eq i32 %bf.clear360, 24
  br i1 %cmp361, label %cond.true.363, label %cond.false.367

cond.true.363:                                    ; preds = %cond.false.357
  %179 = load i32, i32* @target_flags, align 4
  %and364 = and i32 %179, 33554432
  %tobool365 = icmp ne i32 %and364, 0
  %cond366 = select i1 %tobool365, i32 4, i32 6
  br label %cond.end.383

cond.false.367:                                   ; preds = %cond.false.357
  %180 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %181 = bitcast %struct.rtx_def* %180 to i32*
  %bf.load368 = load i32, i32* %181, align 8
  %bf.lshr369 = lshr i32 %bf.load368, 16
  %bf.clear370 = and i32 %bf.lshr369, 255
  %idxprom371 = sext i32 %bf.clear370 to i64
  %arrayidx372 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom371
  %182 = load i8, i8* %arrayidx372, align 1
  %conv373 = zext i8 %182 to i32
  %183 = load i32, i32* @target_flags, align 4
  %and374 = and i32 %183, 33554432
  %tobool375 = icmp ne i32 %and374, 0
  %cond376 = select i1 %tobool375, i32 8, i32 4
  %add377 = add nsw i32 %conv373, %cond376
  %sub378 = sub nsw i32 %add377, 1
  %184 = load i32, i32* @target_flags, align 4
  %and379 = and i32 %184, 33554432
  %tobool380 = icmp ne i32 %and379, 0
  %cond381 = select i1 %tobool380, i32 8, i32 4
  %div382 = sdiv i32 %sub378, %cond381
  br label %cond.end.383

cond.end.383:                                     ; preds = %cond.false.367, %cond.true.363
  %cond384 = phi i32 [ %cond366, %cond.true.363 ], [ %div382, %cond.false.367 ]
  br label %cond.end.385

cond.end.385:                                     ; preds = %cond.end.383, %cond.true.353
  %cond386 = phi i32 [ %cond356, %cond.true.353 ], [ %cond384, %cond.end.383 ]
  br label %cond.end.387

cond.end.387:                                     ; preds = %cond.end.385, %lor.end.345
  %cond388 = phi i32 [ %cond346, %lor.end.345 ], [ %cond386, %cond.end.385 ]
  %add389 = add i32 %158, %cond388
  %cmp390 = icmp ult i32 %157, %add389
  br i1 %cmp390, label %for.body.392, label %for.end.403

for.body.392:                                     ; preds = %cond.end.387
  %185 = load i32, i32* %i, align 4
  %sh_prom393 = zext i32 %185 to i64
  %shl394 = shl i64 1, %sh_prom393
  %186 = load i32, i32* %dest_regno, align 4
  %idxprom395 = zext i32 %186 to i64
  %187 = load i32*, i32** @reg_allocno, align 8
  %arrayidx396 = getelementptr inbounds i32, i32* %187, i64 %idxprom395
  %188 = load i32, i32* %arrayidx396, align 4
  %idxprom397 = sext i32 %188 to i64
  %189 = load %struct.allocno*, %struct.allocno** @allocno, align 8
  %arrayidx398 = getelementptr inbounds %struct.allocno, %struct.allocno* %189, i64 %idxprom397
  %hard_reg_full_preferences399 = getelementptr inbounds %struct.allocno, %struct.allocno* %arrayidx398, i32 0, i32 9
  %190 = load i64, i64* %hard_reg_full_preferences399, align 8
  %or400 = or i64 %190, %shl394
  store i64 %or400, i64* %hard_reg_full_preferences399, align 8
  br label %for.inc.401

for.inc.401:                                      ; preds = %for.body.392
  %191 = load i32, i32* %i, align 4
  %inc402 = add i32 %191, 1
  store i32 %inc402, i32* %i, align 4
  br label %for.cond.305

for.end.403:                                      ; preds = %cond.end.387
  br label %if.end.404

if.end.404:                                       ; preds = %for.end.403, %if.then.281
  br label %if.end.405

if.end.405:                                       ; preds = %if.else.61, %if.else.130, %if.end.404, %land.lhs.true.276, %land.lhs.true.273, %if.end.270
  ret void
}

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_preferred_class(i32) #1

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare i32 @reg_class_subset_p(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
