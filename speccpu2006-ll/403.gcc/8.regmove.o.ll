; ModuleID = 'regmove.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.match = type { [30 x i32], [30 x i32], [30 x i32], [30 x i32] }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.csa_memlist = type { i64, %struct.rtx_def*, %struct.rtx_def**, %struct.csa_memlist* }
%struct.record_stack_memrefs_data = type { %struct.rtx_def*, %struct.csa_memlist* }

@flag_non_call_exceptions = external global i32, align 4
@regno_src_regno = internal global i32* null, align 8
@regmove_bb_head = internal global i32* null, align 8
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@flag_regmove = external global i32, align 4
@flag_expensive_optimizations = external global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"Starting %s pass...\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"backward\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@rtx_class = external constant [153 x i8], align 16
@recog_data = external global %struct.recog_data, align 8
@mode_size = external constant [59 x i8], align 16
@reg_n_info = external global %struct.varray_head_tag*, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Starting backward pass...\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Could fix operand %d of insn %d matching operand %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Fixed operand %d of insn %d matching operand %d.\0A\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@flags_set_1_rtx = internal global %struct.rtx_def* null, align 8
@flags_set_1_set = internal global i32 0, align 4
@word_mode = external global i32, align 4
@mode_bitsize = external constant [59 x i16], align 16
@.str.6 = private unnamed_addr constant [27 x i8] c"Fixed operand of insn %d.\0A\00", align 1
@call_used_regs = external global [53 x i8], align 16
@cfun = external global %struct.function*, align 8
@which_alternative = external global i32, align 4
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16

; Function Attrs: nounwind uwtable
define void @regmove_optimize(%struct.rtx_def* %f, i32 %nregs, %struct._IO_FILE* %regmove_dump_file) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %nregs.addr = alloca i32, align 4
  %regmove_dump_file.addr = alloca %struct._IO_FILE*, align 8
  %old_max_uid = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %match = alloca %struct.match, align 4
  %pass = alloca i32, align 4
  %i = alloca i32, align 4
  %copy_src = alloca %struct.rtx_def*, align 8
  %copy_dst = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %op_no = alloca i32, align 4
  %match_no = alloca i32, align 4
  %srcregno = alloca i32, align 4
  %src = alloca %struct.rtx_def*, align 8
  %dst = alloca %struct.rtx_def*, align 8
  %src_subreg = alloca %struct.rtx_def*, align 8
  %src_class = alloca i32, align 4
  %dst_class = alloca i32, align 4
  %comm = alloca %struct.rtx_def*, align 8
  %op_no450 = alloca i32, align 4
  %match_no451 = alloca i32, align 4
  %success = alloca i32, align 4
  %set461 = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %src462 = alloca %struct.rtx_def*, align 8
  %dst463 = alloca %struct.rtx_def*, align 8
  %src_note = alloca %struct.rtx_def*, align 8
  %dst_note = alloca %struct.rtx_def*, align 8
  %num_calls = alloca i32, align 4
  %src_class464 = alloca i32, align 4
  %dst_class465 = alloca i32, align 4
  %length = alloca i32, align 4
  %comm521 = alloca %struct.rtx_def*, align 8
  %pset = alloca %struct.rtx_def*, align 8
  %dstno = alloca i32, align 4
  %srcno = alloca i32, align 4
  %end = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  store %struct._IO_FILE* %regmove_dump_file, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %call = call i32 @get_max_uid()
  store i32 %call, i32* %old_max_uid, align 4
  %0 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.rtx_def* @discover_flags_reg()
  call void @mark_flags_life_zones(%struct.rtx_def* %call1)
  %1 = load i32, i32* %nregs.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call2 = call noalias i8* @xmalloc(i64 %mul)
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** @regno_src_regno, align 8
  %3 = load i32, i32* %nregs.addr, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** @regno_src_regno, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %old_max_uid, align 4
  %add = add nsw i32 %7, 1
  %conv4 = sext i32 %add to i64
  %mul5 = mul i64 4, %conv4
  %call6 = call noalias i8* @xmalloc(i64 %mul5)
  %8 = bitcast i8* %call6 to i32*
  store i32* %8, i32** @regmove_bb_head, align 8
  %9 = load i32, i32* %old_max_uid, align 4
  store i32 %9, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %10, 0
  br i1 %cmp8, label %for.body.10, label %for.end.14

for.body.10:                                      ; preds = %for.cond.7
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load i32*, i32** @regmove_bb_head, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 %idxprom11
  store i32 -1, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %13 = load i32, i32* %i, align 4
  %dec13 = add nsw i32 %13, -1
  store i32 %dec13, i32* %i, align 4
  br label %for.cond.7

for.end.14:                                       ; preds = %for.cond.7
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.24, %for.end.14
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @n_basic_blocks, align 4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.15
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx20 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom19
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx20, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 0
  %20 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %21 = load i32, i32* %rtint, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i32*, i32** @regmove_bb_head, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %22, i64 %idxprom22
  store i32 %16, i32* %arrayidx23, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.18
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  store i32 0, i32* %pass, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.431, %for.end.25
  %24 = load i32, i32* %pass, align 4
  %cmp27 = icmp sle i32 %24, 2
  br i1 %cmp27, label %for.body.29, label %for.end.433

for.body.29:                                      ; preds = %for.cond.26
  %25 = load i32, i32* @flag_regmove, align 4
  %tobool30 = icmp ne i32 %25, 0
  br i1 %tobool30, label %if.end.34, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.29
  %26 = load i32, i32* %pass, align 4
  %27 = load i32, i32* @flag_expensive_optimizations, align 4
  %cmp31 = icmp sge i32 %26, %27
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true
  br label %done

if.end.34:                                        ; preds = %land.lhs.true, %for.body.29
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %tobool35 = icmp ne %struct._IO_FILE* %28, null
  br i1 %tobool35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %if.end.34
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %30 = load i32, i32* %pass, align 4
  %tobool37 = icmp ne i32 %30, 0
  %cond = select i1 %tobool37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* %cond)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %if.end.34
  %31 = load i32, i32* %pass, align 4
  %tobool40 = icmp ne i32 %31, 0
  br i1 %tobool40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  %call41 = call %struct.rtx_def* @get_last_insn()
  br label %cond.end

cond.false:                                       ; preds = %if.end.39
  %32 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond42 = phi %struct.rtx_def* [ %call41, %cond.true ], [ %32, %cond.false ]
  store %struct.rtx_def* %cond42, %struct.rtx_def** %insn, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %cond.end.428, %cond.end
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool44 = icmp ne %struct.rtx_def* %33, null
  br i1 %tobool44, label %for.body.45, label %for.end.430

for.body.45:                                      ; preds = %for.cond.43
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load = load i32, i32* %35, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom46 = sext i32 %bf.clear to i64
  %arrayidx47 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom46
  %36 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %36 to i32
  %cmp49 = icmp eq i32 %conv48, 105
  br i1 %cmp49, label %cond.true.51, label %cond.false.69

cond.true.51:                                     ; preds = %for.body.45
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load54 = load i32, i32* %39, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 47
  br i1 %cmp56, label %cond.true.58, label %cond.false.62

cond.true.58:                                     ; preds = %cond.true.51
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 3
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  br label %cond.end.67

cond.false.62:                                    ; preds = %cond.true.51
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 3
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %call66 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %42, %struct.rtx_def* %44)
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.62, %cond.true.58
  %cond68 = phi %struct.rtx_def* [ %41, %cond.true.58 ], [ %call66, %cond.false.62 ]
  br label %cond.end.70

cond.false.69:                                    ; preds = %for.body.45
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.69, %cond.end.67
  %cond71 = phi %struct.rtx_def* [ %cond68, %cond.end.67 ], [ null, %cond.false.69 ]
  store %struct.rtx_def* %cond71, %struct.rtx_def** %set, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool72 = icmp ne %struct.rtx_def* %45, null
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %cond.end.70
  br label %for.inc.418

if.end.74:                                        ; preds = %cond.end.70
  %46 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool75 = icmp ne i32 %46, 0
  br i1 %tobool75, label %land.lhs.true.76, label %if.end.119

land.lhs.true.76:                                 ; preds = %if.end.74
  %47 = load i32, i32* %pass, align 4
  %tobool77 = icmp ne i32 %47, 0
  br i1 %tobool77, label %if.end.119, label %land.lhs.true.78

land.lhs.true.78:                                 ; preds = %land.lhs.true.76
  %48 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 1
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load82 = load i32, i32* %50, align 8
  %bf.clear83 = and i32 %bf.load82, 65535
  %cmp84 = icmp eq i32 %bf.clear83, 120
  br i1 %cmp84, label %land.lhs.true.93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.78
  %51 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 1
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load89 = load i32, i32* %53, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp eq i32 %bf.clear90, 121
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.119

land.lhs.true.93:                                 ; preds = %lor.lhs.false, %land.lhs.true.78
  %54 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 1
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx96, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 0
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx99, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load100 = load i32, i32* %57, align 8
  %bf.clear101 = and i32 %bf.load100, 65535
  %cmp102 = icmp eq i32 %bf.clear101, 61
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.119

land.lhs.true.104:                                ; preds = %land.lhs.true.93
  %58 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx107, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load108 = load i32, i32* %60, align 8
  %bf.clear109 = and i32 %bf.load108, 65535
  %cmp110 = icmp eq i32 %bf.clear109, 61
  br i1 %cmp110, label %if.then.112, label %if.end.119

if.then.112:                                      ; preds = %land.lhs.true.104
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 1
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  call void @optimize_reg_copy_3(%struct.rtx_def* %61, %struct.rtx_def* %63, %struct.rtx_def* %65)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.112, %land.lhs.true.104, %land.lhs.true.93, %lor.lhs.false, %land.lhs.true.76, %if.end.74
  %66 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool120 = icmp ne i32 %66, 0
  br i1 %tobool120, label %land.lhs.true.121, label %if.end.223

land.lhs.true.121:                                ; preds = %if.end.119
  %67 = load i32, i32* %pass, align 4
  %tobool122 = icmp ne i32 %67, 0
  br i1 %tobool122, label %if.end.223, label %land.lhs.true.123

land.lhs.true.123:                                ; preds = %land.lhs.true.121
  %68 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 1
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load127 = load i32, i32* %70, align 8
  %bf.clear128 = and i32 %bf.load127, 65535
  %cmp129 = icmp eq i32 %bf.clear128, 61
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.223

land.lhs.true.131:                                ; preds = %land.lhs.true.123
  %71 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 0
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load135 = load i32, i32* %73, align 8
  %bf.clear136 = and i32 %bf.load135, 65535
  %cmp137 = icmp eq i32 %bf.clear136, 61
  br i1 %cmp137, label %if.then.139, label %if.end.223

if.then.139:                                      ; preds = %land.lhs.true.131
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 1
  %rtx142 = bitcast %union.rtunion_def* %arrayidx141 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx142, align 8
  %call143 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %74, i32 1, %struct.rtx_def* %76)
  %tobool144 = icmp ne %struct.rtx_def* %call143, null
  br i1 %tobool144, label %land.lhs.true.154, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %if.then.139
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 0
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx148, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 1
  %rtx151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx151, align 8
  %call152 = call i32 @optimize_reg_copy_1(%struct.rtx_def* %77, %struct.rtx_def* %79, %struct.rtx_def* %81)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %land.lhs.true.154, label %if.end.222

land.lhs.true.154:                                ; preds = %lor.lhs.false.145, %if.then.139
  %82 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 0
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx159 to i32*
  %84 = load i32, i32* %rtuint, align 4
  %cmp160 = icmp uge i32 %84, 53
  br i1 %cmp160, label %if.then.162, label %if.end.222

if.then.162:                                      ; preds = %land.lhs.true.154
  %85 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 1
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 0
  %rtuint168 = bitcast %union.rtunion_def* %arrayidx167 to i32*
  %87 = load i32, i32* %rtuint168, align 4
  %cmp169 = icmp uge i32 %87, 53
  br i1 %cmp169, label %if.then.171, label %if.end.178

if.then.171:                                      ; preds = %if.then.162
  %88 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx174, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 1
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  call void @optimize_reg_copy_2(%struct.rtx_def* %88, %struct.rtx_def* %90, %struct.rtx_def* %92)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.171, %if.then.162
  %93 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 0
  %rtx181 = bitcast %union.rtunion_def* %arrayidx180 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx181, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 0
  %rtuint184 = bitcast %union.rtunion_def* %arrayidx183 to i32*
  %95 = load i32, i32* %rtuint184, align 4
  %idxprom185 = zext i32 %95 to i64
  %96 = load i32*, i32** @regno_src_regno, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %96, i64 %idxprom185
  %97 = load i32, i32* %arrayidx186, align 4
  %cmp187 = icmp slt i32 %97, 0
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.221

land.lhs.true.189:                                ; preds = %if.end.178
  %98 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 1
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld193, i32 0, i64 0
  %rtx195 = bitcast %union.rtunion_def* %arrayidx194 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx195, align 8
  %cmp196 = icmp ne %struct.rtx_def* %99, %101
  br i1 %cmp196, label %if.then.198, label %if.end.221

if.then.198:                                      ; preds = %land.lhs.true.189
  %102 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld199, i32 0, i64 1
  %rtx201 = bitcast %union.rtunion_def* %arrayidx200 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx201, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 0
  %rtuint204 = bitcast %union.rtunion_def* %arrayidx203 to i32*
  %104 = load i32, i32* %rtuint204, align 4
  store i32 %104, i32* %srcregno, align 4
  %105 = load i32, i32* %srcregno, align 4
  %idxprom205 = sext i32 %105 to i64
  %106 = load i32*, i32** @regno_src_regno, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %106, i64 %idxprom205
  %107 = load i32, i32* %arrayidx206, align 4
  %cmp207 = icmp sge i32 %107, 0
  br i1 %cmp207, label %if.then.209, label %if.end.212

if.then.209:                                      ; preds = %if.then.198
  %108 = load i32, i32* %srcregno, align 4
  %idxprom210 = sext i32 %108 to i64
  %109 = load i32*, i32** @regno_src_regno, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %109, i64 %idxprom210
  %110 = load i32, i32* %arrayidx211, align 4
  store i32 %110, i32* %srcregno, align 4
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.209, %if.then.198
  %111 = load i32, i32* %srcregno, align 4
  %112 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 0
  %rtx215 = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx215, align 8
  %fld216 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld216, i32 0, i64 0
  %rtuint218 = bitcast %union.rtunion_def* %arrayidx217 to i32*
  %114 = load i32, i32* %rtuint218, align 4
  %idxprom219 = zext i32 %114 to i64
  %115 = load i32*, i32** @regno_src_regno, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %115, i64 %idxprom219
  store i32 %111, i32* %arrayidx220, align 4
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.212, %land.lhs.true.189, %if.end.178
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %land.lhs.true.154, %lor.lhs.false.145
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %land.lhs.true.131, %land.lhs.true.123, %land.lhs.true.121, %if.end.119
  %116 = load i32, i32* @flag_regmove, align 4
  %tobool224 = icmp ne i32 %116, 0
  br i1 %tobool224, label %if.end.226, label %if.then.225

if.then.225:                                      ; preds = %if.end.223
  br label %for.inc.418

if.end.226:                                       ; preds = %if.end.223
  %117 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call227 = call i32 @find_matches(%struct.rtx_def* %117, %struct.match* %match)
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.end.230, label %if.then.229

if.then.229:                                      ; preds = %if.end.226
  br label %for.inc.418

if.end.230:                                       ; preds = %if.end.226
  store i32 0, i32* %op_no, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.415, %if.end.230
  %118 = load i32, i32* %op_no, align 4
  %119 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv232 = sext i8 %119 to i32
  %cmp233 = icmp slt i32 %118, %conv232
  br i1 %cmp233, label %for.body.235, label %for.end.417

for.body.235:                                     ; preds = %for.cond.231
  %120 = load i32, i32* %op_no, align 4
  %idxprom236 = sext i32 %120 to i64
  %with = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [30 x i32], [30 x i32]* %with, i32 0, i64 %idxprom236
  %121 = load i32, i32* %arrayidx237, align 4
  store i32 %121, i32* %match_no, align 4
  %122 = load i32, i32* %match_no, align 4
  %cmp238 = icmp slt i32 %122, 0
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %for.body.235
  br label %for.inc.415

if.end.241:                                       ; preds = %for.body.235
  %123 = load i32, i32* %op_no, align 4
  %idxprom242 = sext i32 %123 to i64
  %arrayidx243 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom242
  %124 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx243, align 8
  store %struct.rtx_def* %124, %struct.rtx_def** %src, align 8
  %125 = load i32, i32* %match_no, align 4
  %idxprom244 = sext i32 %125 to i64
  %arrayidx245 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom244
  %126 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx245, align 8
  store %struct.rtx_def* %126, %struct.rtx_def** %dst, align 8
  %127 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load246 = load i32, i32* %128, align 8
  %bf.clear247 = and i32 %bf.load246, 65535
  %cmp248 = icmp ne i32 %bf.clear247, 61
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.end.241
  br label %for.inc.415

if.end.251:                                       ; preds = %if.end.241
  %129 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %src_subreg, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load252 = load i32, i32* %131, align 8
  %bf.clear253 = and i32 %bf.load252, 65535
  %cmp254 = icmp eq i32 %bf.clear253, 63
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.287

land.lhs.true.256:                                ; preds = %if.end.251
  %132 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load257 = load i32, i32* %133, align 8
  %bf.lshr = lshr i32 %bf.load257, 16
  %bf.clear258 = and i32 %bf.lshr, 255
  %idxprom259 = sext i32 %bf.clear258 to i64
  %arrayidx260 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom259
  %134 = load i8, i8* %arrayidx260, align 1
  %conv261 = zext i8 %134 to i32
  %135 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld262, i32 0, i64 0
  %rtx264 = bitcast %union.rtunion_def* %arrayidx263 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx264, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load265 = load i32, i32* %137, align 8
  %bf.lshr266 = lshr i32 %bf.load265, 16
  %bf.clear267 = and i32 %bf.lshr266, 255
  %idxprom268 = sext i32 %bf.clear267 to i64
  %arrayidx269 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom268
  %138 = load i8, i8* %arrayidx269, align 1
  %conv270 = zext i8 %138 to i32
  %cmp271 = icmp sge i32 %conv261, %conv270
  br i1 %cmp271, label %if.then.273, label %if.end.287

if.then.273:                                      ; preds = %land.lhs.true.256
  %139 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 0
  %rtx276 = bitcast %union.rtunion_def* %arrayidx275 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %rtx276, align 8
  %141 = bitcast %struct.rtx_def* %140 to i32*
  %bf.load277 = load i32, i32* %141, align 8
  %bf.lshr278 = lshr i32 %bf.load277, 16
  %bf.clear279 = and i32 %bf.lshr278, 255
  %142 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %143 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld280 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx281 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld280, i32 0, i64 1
  %rtuint282 = bitcast %union.rtunion_def* %arrayidx281 to i32*
  %144 = load i32, i32* %rtuint282, align 4
  %call283 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %bf.clear279, %struct.rtx_def* %142, i32 %144)
  store %struct.rtx_def* %call283, %struct.rtx_def** %src_subreg, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 0
  %rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx286, align 8
  store %struct.rtx_def* %146, %struct.rtx_def** %dst, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.273, %land.lhs.true.256, %if.end.251
  %147 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %148 = bitcast %struct.rtx_def* %147 to i32*
  %bf.load288 = load i32, i32* %148, align 8
  %bf.clear289 = and i32 %bf.load288, 65535
  %cmp290 = icmp ne i32 %bf.clear289, 61
  br i1 %cmp290, label %if.then.298, label %lor.lhs.false.292

lor.lhs.false.292:                                ; preds = %if.end.287
  %149 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 0
  %rtuint295 = bitcast %union.rtunion_def* %arrayidx294 to i32*
  %150 = load i32, i32* %rtuint295, align 4
  %cmp296 = icmp ult i32 %150, 53
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %lor.lhs.false.292, %if.end.287
  br label %for.inc.415

if.end.299:                                       ; preds = %lor.lhs.false.292
  %151 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 0
  %rtuint302 = bitcast %union.rtunion_def* %arrayidx301 to i32*
  %152 = load i32, i32* %rtuint302, align 4
  %cmp303 = icmp ult i32 %152, 53
  br i1 %cmp303, label %if.then.305, label %if.end.320

if.then.305:                                      ; preds = %if.end.299
  %153 = load i32, i32* %op_no, align 4
  %idxprom306 = sext i32 %153 to i64
  %commutative = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 2
  %arrayidx307 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative, i32 0, i64 %idxprom306
  %154 = load i32, i32* %arrayidx307, align 4
  %155 = load i32, i32* %op_no, align 4
  %cmp308 = icmp slt i32 %154, %155
  br i1 %cmp308, label %if.then.310, label %if.end.319

if.then.310:                                      ; preds = %if.then.305
  %156 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld311 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx312 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld311, i32 0, i64 0
  %rtuint313 = bitcast %union.rtunion_def* %arrayidx312 to i32*
  %157 = load i32, i32* %rtuint313, align 4
  %158 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld314 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx315 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld314, i32 0, i64 0
  %rtuint316 = bitcast %union.rtunion_def* %arrayidx315 to i32*
  %159 = load i32, i32* %rtuint316, align 4
  %idxprom317 = zext i32 %159 to i64
  %160 = load i32*, i32** @regno_src_regno, align 8
  %arrayidx318 = getelementptr inbounds i32, i32* %160, i64 %idxprom317
  store i32 %157, i32* %arrayidx318, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.310, %if.then.305
  br label %for.inc.415

if.end.320:                                       ; preds = %if.end.299
  %161 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld321, i32 0, i64 0
  %rtuint323 = bitcast %union.rtunion_def* %arrayidx322 to i32*
  %162 = load i32, i32* %rtuint323, align 4
  %idxprom324 = zext i32 %162 to i64
  %163 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data325 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %163, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data325 to [1 x %struct.reg_info_def*]*
  %arrayidx326 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom324
  %164 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx326, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %164, i32 0, i32 7
  %165 = load i32, i32* %live_length, align 4
  %cmp327 = icmp slt i32 %165, 0
  br i1 %cmp327, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %if.end.320
  br label %for.inc.415

if.end.330:                                       ; preds = %if.end.320
  %166 = load i32, i32* %op_no, align 4
  %idxprom331 = sext i32 %166 to i64
  %use = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 1
  %arrayidx332 = getelementptr inbounds [30 x i32], [30 x i32]* %use, i32 0, i64 %idxprom331
  %167 = load i32, i32* %arrayidx332, align 4
  %cmp333 = icmp ne i32 %167, 0
  br i1 %cmp333, label %if.then.341, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %if.end.330
  %168 = load i32, i32* %match_no, align 4
  %idxprom336 = sext i32 %168 to i64
  %use337 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [30 x i32], [30 x i32]* %use337, i32 0, i64 %idxprom336
  %169 = load i32, i32* %arrayidx338, align 4
  %cmp339 = icmp ne i32 %169, 1
  br i1 %cmp339, label %if.then.341, label %if.end.342

if.then.341:                                      ; preds = %lor.lhs.false.335, %if.end.330
  br label %for.inc.415

if.end.342:                                       ; preds = %lor.lhs.false.335
  %170 = load i32, i32* %match_no, align 4
  %idxprom343 = sext i32 %170 to i64
  %early_clobber = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 3
  %arrayidx344 = getelementptr inbounds [30 x i32], [30 x i32]* %early_clobber, i32 0, i64 %idxprom343
  %171 = load i32, i32* %arrayidx344, align 4
  %tobool345 = icmp ne i32 %171, 0
  br i1 %tobool345, label %land.lhs.true.346, label %if.end.354

land.lhs.true.346:                                ; preds = %if.end.342
  %172 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %172, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld347, i32 0, i64 3
  %rtx349 = bitcast %union.rtunion_def* %arrayidx348 to %struct.rtx_def**
  %173 = load %struct.rtx_def*, %struct.rtx_def** %rtx349, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call350 = call i32 @count_occurrences(%struct.rtx_def* %173, %struct.rtx_def* %174, i32 0)
  %cmp351 = icmp sgt i32 %call350, 1
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %land.lhs.true.346
  br label %for.inc.415

if.end.354:                                       ; preds = %land.lhs.true.346, %if.end.342
  %175 = load i32, i32* %match_no, align 4
  %idxprom355 = sext i32 %175 to i64
  %arrayidx356 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom355
  %176 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx356, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld357 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %arrayidx358 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld357, i32 0, i64 0
  %rtx359 = bitcast %union.rtunion_def* %arrayidx358 to %struct.rtx_def**
  %178 = load %struct.rtx_def*, %struct.rtx_def** %rtx359, align 8
  %cmp360 = icmp ne %struct.rtx_def* %176, %178
  br i1 %cmp360, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %if.end.354
  br label %for.inc.415

if.end.363:                                       ; preds = %if.end.354
  %179 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %180 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %call364 = call i32 @operands_match_p(%struct.rtx_def* %179, %struct.rtx_def* %180)
  %tobool365 = icmp ne i32 %call364, 0
  br i1 %tobool365, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.end.363
  br label %for.inc.415

if.end.367:                                       ; preds = %if.end.363
  %181 = load i32, i32* %op_no, align 4
  %idxprom368 = sext i32 %181 to i64
  %commutative369 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 2
  %arrayidx370 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative369, i32 0, i64 %idxprom368
  %182 = load i32, i32* %arrayidx370, align 4
  %cmp371 = icmp sge i32 %182, 0
  br i1 %cmp371, label %if.then.373, label %if.end.388

if.then.373:                                      ; preds = %if.end.367
  %183 = load i32, i32* %op_no, align 4
  %idxprom374 = sext i32 %183 to i64
  %commutative375 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 2
  %arrayidx376 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative375, i32 0, i64 %idxprom374
  %184 = load i32, i32* %arrayidx376, align 4
  %idxprom377 = sext i32 %184 to i64
  %arrayidx378 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom377
  %185 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx378, align 8
  store %struct.rtx_def* %185, %struct.rtx_def** %comm, align 8
  %186 = load %struct.rtx_def*, %struct.rtx_def** %comm, align 8
  %187 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %call379 = call i32 @operands_match_p(%struct.rtx_def* %186, %struct.rtx_def* %187)
  %tobool380 = icmp ne i32 %call379, 0
  br i1 %tobool380, label %land.lhs.true.381, label %if.end.387

land.lhs.true.381:                                ; preds = %if.then.373
  %188 = load %struct.rtx_def*, %struct.rtx_def** %comm, align 8
  %call382 = call i32 @replacement_quality(%struct.rtx_def* %188)
  %189 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call383 = call i32 @replacement_quality(%struct.rtx_def* %189)
  %cmp384 = icmp sge i32 %call382, %call383
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %land.lhs.true.381
  br label %for.inc.415

if.end.387:                                       ; preds = %land.lhs.true.381, %if.then.373
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.387, %if.end.367
  %190 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld389 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx390 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld389, i32 0, i64 0
  %rtuint391 = bitcast %union.rtunion_def* %arrayidx390 to i32*
  %191 = load i32, i32* %rtuint391, align 4
  %call392 = call i32 @reg_preferred_class(i32 %191)
  store i32 %call392, i32* %src_class, align 4
  %192 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %fld393 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx394 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld393, i32 0, i64 0
  %rtuint395 = bitcast %union.rtunion_def* %arrayidx394 to i32*
  %193 = load i32, i32* %rtuint395, align 4
  %call396 = call i32 @reg_preferred_class(i32 %193)
  store i32 %call396, i32* %dst_class, align 4
  %194 = load i32, i32* %src_class, align 4
  %195 = load i32, i32* %dst_class, align 4
  %call397 = call i32 @regclass_compatible_p(i32 %194, i32 %195)
  %tobool398 = icmp ne i32 %call397, 0
  br i1 %tobool398, label %if.end.400, label %if.then.399

if.then.399:                                      ; preds = %if.end.388
  br label %for.inc.415

if.end.400:                                       ; preds = %if.end.388
  %196 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %197 = bitcast %struct.rtx_def* %196 to i32*
  %bf.load401 = load i32, i32* %197, align 8
  %bf.lshr402 = lshr i32 %bf.load401, 16
  %bf.clear403 = and i32 %bf.lshr402, 255
  %198 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %199 = bitcast %struct.rtx_def* %198 to i32*
  %bf.load404 = load i32, i32* %199, align 8
  %bf.lshr405 = lshr i32 %bf.load404, 16
  %bf.clear406 = and i32 %bf.lshr405, 255
  %cmp407 = icmp ne i32 %bf.clear403, %bf.clear406
  br i1 %cmp407, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %if.end.400
  br label %for.inc.415

if.end.410:                                       ; preds = %if.end.400
  %200 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %203 = load %struct.rtx_def*, %struct.rtx_def** %src_subreg, align 8
  %204 = load %struct.rtx_def*, %struct.rtx_def** %dst, align 8
  %205 = load i32, i32* %pass, align 4
  %206 = load i32, i32* %op_no, align 4
  %207 = load i32, i32* %match_no, align 4
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %call411 = call i32 @fixup_match_1(%struct.rtx_def* %200, %struct.rtx_def* %201, %struct.rtx_def* %202, %struct.rtx_def* %203, %struct.rtx_def* %204, i32 %205, i32 %206, i32 %207, %struct._IO_FILE* %208)
  %tobool412 = icmp ne i32 %call411, 0
  br i1 %tobool412, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %if.end.410
  br label %for.end.417

if.end.414:                                       ; preds = %if.end.410
  br label %for.inc.415

for.inc.415:                                      ; preds = %if.end.414, %if.then.409, %if.then.399, %if.then.386, %if.then.366, %if.then.362, %if.then.353, %if.then.341, %if.then.329, %if.end.319, %if.then.298, %if.then.250, %if.then.240
  %209 = load i32, i32* %op_no, align 4
  %inc416 = add nsw i32 %209, 1
  store i32 %inc416, i32* %op_no, align 4
  br label %for.cond.231

for.end.417:                                      ; preds = %if.then.413, %for.cond.231
  br label %for.inc.418

for.inc.418:                                      ; preds = %for.end.417, %if.then.229, %if.then.225, %if.then.73
  %210 = load i32, i32* %pass, align 4
  %tobool419 = icmp ne i32 %210, 0
  br i1 %tobool419, label %cond.true.420, label %cond.false.424

cond.true.420:                                    ; preds = %for.inc.418
  %211 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld421 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx422 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld421, i32 0, i64 1
  %rtx423 = bitcast %union.rtunion_def* %arrayidx422 to %struct.rtx_def**
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtx423, align 8
  br label %cond.end.428

cond.false.424:                                   ; preds = %for.inc.418
  %213 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld425 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %213, i32 0, i32 1
  %arrayidx426 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld425, i32 0, i64 2
  %rtx427 = bitcast %union.rtunion_def* %arrayidx426 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %rtx427, align 8
  br label %cond.end.428

cond.end.428:                                     ; preds = %cond.false.424, %cond.true.420
  %cond429 = phi %struct.rtx_def* [ %212, %cond.true.420 ], [ %214, %cond.false.424 ]
  store %struct.rtx_def* %cond429, %struct.rtx_def** %insn, align 8
  br label %for.cond.43

for.end.430:                                      ; preds = %for.cond.43
  br label %for.inc.431

for.inc.431:                                      ; preds = %for.end.430
  %215 = load i32, i32* %pass, align 4
  %inc432 = add nsw i32 %215, 1
  store i32 %inc432, i32* %pass, align 4
  br label %for.cond.26

for.end.433:                                      ; preds = %for.cond.26
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %tobool434 = icmp ne %struct._IO_FILE* %216, null
  br i1 %tobool434, label %if.then.435, label %if.end.437

if.then.435:                                      ; preds = %for.end.433
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %call436 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.435, %for.end.433
  %call438 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call438, %struct.rtx_def** %insn, align 8
  br label %for.cond.439

for.cond.439:                                     ; preds = %for.inc.904, %if.end.437
  %218 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool440 = icmp ne %struct.rtx_def* %218, null
  br i1 %tobool440, label %for.body.441, label %for.end.908

for.body.441:                                     ; preds = %for.cond.439
  %219 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %220 = bitcast %struct.rtx_def* %219 to i32*
  %bf.load442 = load i32, i32* %220, align 8
  %bf.clear443 = and i32 %bf.load442, 65535
  %idxprom444 = sext i32 %bf.clear443 to i64
  %arrayidx445 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom444
  %221 = load i8, i8* %arrayidx445, align 1
  %conv446 = sext i8 %221 to i32
  %cmp447 = icmp eq i32 %conv446, 105
  br i1 %cmp447, label %if.then.449, label %if.end.903

if.then.449:                                      ; preds = %for.body.441
  store i32 0, i32* %success, align 4
  %222 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call452 = call i32 @find_matches(%struct.rtx_def* %222, %struct.match* %match)
  %tobool453 = icmp ne i32 %call452, 0
  br i1 %tobool453, label %if.end.455, label %if.then.454

if.then.454:                                      ; preds = %if.then.449
  br label %for.inc.904

if.end.455:                                       ; preds = %if.then.449
  store %struct.rtx_def* null, %struct.rtx_def** %copy_src, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %copy_dst, align 8
  store i32 0, i32* %op_no450, align 4
  br label %for.cond.456

for.cond.456:                                     ; preds = %for.inc.894, %if.end.455
  %223 = load i32, i32* %op_no450, align 4
  %224 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv457 = sext i8 %224 to i32
  %cmp458 = icmp slt i32 %223, %conv457
  br i1 %cmp458, label %for.body.460, label %for.end.896

for.body.460:                                     ; preds = %for.cond.456
  store i32 0, i32* %num_calls, align 4
  %225 = load i32, i32* %op_no450, align 4
  %idxprom466 = sext i32 %225 to i64
  %with467 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 0
  %arrayidx468 = getelementptr inbounds [30 x i32], [30 x i32]* %with467, i32 0, i64 %idxprom466
  %226 = load i32, i32* %arrayidx468, align 4
  store i32 %226, i32* %match_no451, align 4
  %227 = load i32, i32* %match_no451, align 4
  %cmp469 = icmp slt i32 %227, 0
  br i1 %cmp469, label %if.then.471, label %if.end.472

if.then.471:                                      ; preds = %for.body.460
  br label %for.inc.894

if.end.472:                                       ; preds = %for.body.460
  %228 = load i32, i32* %match_no451, align 4
  %idxprom473 = sext i32 %228 to i64
  %arrayidx474 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom473
  %229 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx474, align 8
  store %struct.rtx_def* %229, %struct.rtx_def** %dst463, align 8
  %230 = load i32, i32* %op_no450, align 4
  %idxprom475 = sext i32 %230 to i64
  %arrayidx476 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom475
  %231 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx476, align 8
  store %struct.rtx_def* %231, %struct.rtx_def** %src462, align 8
  %232 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %233 = bitcast %struct.rtx_def* %232 to i32*
  %bf.load477 = load i32, i32* %233, align 8
  %bf.clear478 = and i32 %bf.load477, 65535
  %cmp479 = icmp ne i32 %bf.clear478, 61
  br i1 %cmp479, label %if.then.481, label %if.end.482

if.then.481:                                      ; preds = %if.end.472
  br label %for.inc.894

if.end.482:                                       ; preds = %if.end.472
  %234 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %235 = bitcast %struct.rtx_def* %234 to i32*
  %bf.load483 = load i32, i32* %235, align 8
  %bf.clear484 = and i32 %bf.load483, 65535
  %cmp485 = icmp ne i32 %bf.clear484, 61
  br i1 %cmp485, label %if.then.509, label %lor.lhs.false.487

lor.lhs.false.487:                                ; preds = %if.end.482
  %236 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %fld488 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %arrayidx489 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld488, i32 0, i64 0
  %rtuint490 = bitcast %union.rtunion_def* %arrayidx489 to i32*
  %237 = load i32, i32* %rtuint490, align 4
  %cmp491 = icmp ult i32 %237, 53
  br i1 %cmp491, label %if.then.509, label %lor.lhs.false.493

lor.lhs.false.493:                                ; preds = %lor.lhs.false.487
  %238 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %fld494 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx495 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld494, i32 0, i64 0
  %rtuint496 = bitcast %union.rtunion_def* %arrayidx495 to i32*
  %239 = load i32, i32* %rtuint496, align 4
  %idxprom497 = zext i32 %239 to i64
  %240 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data498 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %240, i32 0, i32 4
  %reg499 = bitcast %union.varray_data_tag* %data498 to [1 x %struct.reg_info_def*]*
  %arrayidx500 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg499, i32 0, i64 %idxprom497
  %241 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx500, align 8
  %live_length501 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %241, i32 0, i32 7
  %242 = load i32, i32* %live_length501, align 4
  %cmp502 = icmp slt i32 %242, 0
  br i1 %cmp502, label %if.then.509, label %lor.lhs.false.504

lor.lhs.false.504:                                ; preds = %lor.lhs.false.493
  %243 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %244 = bitcast %struct.rtx_def* %243 to i32*
  %bf.load505 = load i32, i32* %244, align 8
  %bf.lshr506 = lshr i32 %bf.load505, 26
  %bf.clear507 = and i32 %bf.lshr506, 1
  %tobool508 = icmp ne i32 %bf.clear507, 0
  br i1 %tobool508, label %if.then.509, label %if.end.510

if.then.509:                                      ; preds = %lor.lhs.false.504, %lor.lhs.false.493, %lor.lhs.false.487, %if.end.482
  br label %for.inc.894

if.end.510:                                       ; preds = %lor.lhs.false.504
  %245 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %246 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %call511 = call i32 @operands_match_p(%struct.rtx_def* %245, %struct.rtx_def* %246)
  %tobool512 = icmp ne i32 %call511, 0
  br i1 %tobool512, label %if.then.513, label %if.end.514

if.then.513:                                      ; preds = %if.end.510
  br label %for.inc.894

if.end.514:                                       ; preds = %if.end.510
  %247 = load i32, i32* %op_no450, align 4
  %idxprom515 = sext i32 %247 to i64
  %commutative516 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 2
  %arrayidx517 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative516, i32 0, i64 %idxprom515
  %248 = load i32, i32* %arrayidx517, align 4
  %cmp518 = icmp sge i32 %248, 0
  br i1 %cmp518, label %if.then.520, label %if.end.531

if.then.520:                                      ; preds = %if.end.514
  %249 = load i32, i32* %op_no450, align 4
  %idxprom522 = sext i32 %249 to i64
  %commutative523 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 2
  %arrayidx524 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative523, i32 0, i64 %idxprom522
  %250 = load i32, i32* %arrayidx524, align 4
  %idxprom525 = sext i32 %250 to i64
  %arrayidx526 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom525
  %251 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx526, align 8
  store %struct.rtx_def* %251, %struct.rtx_def** %comm521, align 8
  %252 = load %struct.rtx_def*, %struct.rtx_def** %comm521, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %call527 = call i32 @operands_match_p(%struct.rtx_def* %252, %struct.rtx_def* %253)
  %tobool528 = icmp ne i32 %call527, 0
  br i1 %tobool528, label %if.then.529, label %if.end.530

if.then.529:                                      ; preds = %if.then.520
  br label %for.inc.894

if.end.530:                                       ; preds = %if.then.520
  br label %if.end.531

if.end.531:                                       ; preds = %if.end.530, %if.end.514
  %254 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %255 = bitcast %struct.rtx_def* %254 to i32*
  %bf.load532 = load i32, i32* %255, align 8
  %bf.clear533 = and i32 %bf.load532, 65535
  %idxprom534 = sext i32 %bf.clear533 to i64
  %arrayidx535 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom534
  %256 = load i8, i8* %arrayidx535, align 1
  %conv536 = sext i8 %256 to i32
  %cmp537 = icmp eq i32 %conv536, 105
  br i1 %cmp537, label %cond.true.539, label %cond.false.558

cond.true.539:                                    ; preds = %if.end.531
  %257 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld540 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx541 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld540, i32 0, i64 3
  %rtx542 = bitcast %union.rtunion_def* %arrayidx541 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %rtx542, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %bf.load543 = load i32, i32* %259, align 8
  %bf.clear544 = and i32 %bf.load543, 65535
  %cmp545 = icmp eq i32 %bf.clear544, 47
  br i1 %cmp545, label %cond.true.547, label %cond.false.551

cond.true.547:                                    ; preds = %cond.true.539
  %260 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld548 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %260, i32 0, i32 1
  %arrayidx549 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld548, i32 0, i64 3
  %rtx550 = bitcast %union.rtunion_def* %arrayidx549 to %struct.rtx_def**
  %261 = load %struct.rtx_def*, %struct.rtx_def** %rtx550, align 8
  br label %cond.end.556

cond.false.551:                                   ; preds = %cond.true.539
  %262 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %263 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld552 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %263, i32 0, i32 1
  %arrayidx553 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld552, i32 0, i64 3
  %rtx554 = bitcast %union.rtunion_def* %arrayidx553 to %struct.rtx_def**
  %264 = load %struct.rtx_def*, %struct.rtx_def** %rtx554, align 8
  %call555 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %262, %struct.rtx_def* %264)
  br label %cond.end.556

cond.end.556:                                     ; preds = %cond.false.551, %cond.true.547
  %cond557 = phi %struct.rtx_def* [ %261, %cond.true.547 ], [ %call555, %cond.false.551 ]
  br label %cond.end.559

cond.false.558:                                   ; preds = %if.end.531
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.false.558, %cond.end.556
  %cond560 = phi %struct.rtx_def* [ %cond557, %cond.end.556 ], [ null, %cond.false.558 ]
  store %struct.rtx_def* %cond560, %struct.rtx_def** %set461, align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %set461, align 8
  %tobool561 = icmp ne %struct.rtx_def* %265, null
  br i1 %tobool561, label %if.end.563, label %if.then.562

if.then.562:                                      ; preds = %cond.end.559
  br label %for.inc.894

if.end.563:                                       ; preds = %cond.end.559
  %266 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %267 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call564 = call i32 @reg_set_p(%struct.rtx_def* %266, %struct.rtx_def* %267)
  %tobool565 = icmp ne i32 %call564, 0
  br i1 %tobool565, label %if.then.566, label %if.end.567

if.then.566:                                      ; preds = %if.end.563
  br label %for.inc.894

if.end.567:                                       ; preds = %if.end.563
  %268 = load i32, i32* %op_no450, align 4
  %idxprom568 = sext i32 %268 to i64
  %use569 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 1
  %arrayidx570 = getelementptr inbounds [30 x i32], [30 x i32]* %use569, i32 0, i64 %idxprom568
  %269 = load i32, i32* %arrayidx570, align 4
  %cmp571 = icmp ne i32 %269, 0
  br i1 %cmp571, label %if.then.579, label %lor.lhs.false.573

lor.lhs.false.573:                                ; preds = %if.end.567
  %270 = load i32, i32* %match_no451, align 4
  %idxprom574 = sext i32 %270 to i64
  %use575 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 1
  %arrayidx576 = getelementptr inbounds [30 x i32], [30 x i32]* %use575, i32 0, i64 %idxprom574
  %271 = load i32, i32* %arrayidx576, align 4
  %cmp577 = icmp ne i32 %271, 1
  br i1 %cmp577, label %if.then.579, label %if.end.580

if.then.579:                                      ; preds = %lor.lhs.false.573, %if.end.567
  br label %for.inc.894

if.end.580:                                       ; preds = %lor.lhs.false.573
  %272 = load i32, i32* %match_no451, align 4
  %idxprom581 = sext i32 %272 to i64
  %early_clobber582 = getelementptr inbounds %struct.match, %struct.match* %match, i32 0, i32 3
  %arrayidx583 = getelementptr inbounds [30 x i32], [30 x i32]* %early_clobber582, i32 0, i64 %idxprom581
  %273 = load i32, i32* %arrayidx583, align 4
  %tobool584 = icmp ne i32 %273, 0
  br i1 %tobool584, label %land.lhs.true.585, label %if.end.593

land.lhs.true.585:                                ; preds = %if.end.580
  %274 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld586 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %274, i32 0, i32 1
  %arrayidx587 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld586, i32 0, i64 3
  %rtx588 = bitcast %union.rtunion_def* %arrayidx587 to %struct.rtx_def**
  %275 = load %struct.rtx_def*, %struct.rtx_def** %rtx588, align 8
  %276 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %call589 = call i32 @count_occurrences(%struct.rtx_def* %275, %struct.rtx_def* %276, i32 0)
  %cmp590 = icmp sgt i32 %call589, 1
  br i1 %cmp590, label %if.then.592, label %if.end.593

if.then.592:                                      ; preds = %land.lhs.true.585
  br label %for.inc.894

if.end.593:                                       ; preds = %land.lhs.true.585, %if.end.580
  %277 = load i32, i32* %match_no451, align 4
  %idxprom594 = sext i32 %277 to i64
  %arrayidx595 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom594
  %278 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx595, align 8
  %279 = load %struct.rtx_def*, %struct.rtx_def** %set461, align 8
  %fld596 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx597 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld596, i32 0, i64 0
  %rtx598 = bitcast %union.rtunion_def* %arrayidx597 to %struct.rtx_def**
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtx598, align 8
  %cmp599 = icmp ne %struct.rtx_def* %278, %280
  br i1 %cmp599, label %if.then.601, label %if.end.602

if.then.601:                                      ; preds = %if.end.593
  br label %for.inc.894

if.end.602:                                       ; preds = %if.end.593
  %281 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %fld603 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %281, i32 0, i32 1
  %arrayidx604 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld603, i32 0, i64 0
  %rtuint605 = bitcast %union.rtunion_def* %arrayidx604 to i32*
  %282 = load i32, i32* %rtuint605, align 4
  %cmp606 = icmp ult i32 %282, 53
  br i1 %cmp606, label %if.then.608, label %if.end.647

if.then.608:                                      ; preds = %if.end.602
  %283 = load %struct.rtx_def*, %struct.rtx_def** %set461, align 8
  %fld609 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %283, i32 0, i32 1
  %arrayidx610 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld609, i32 0, i64 1
  %rtx611 = bitcast %union.rtunion_def* %arrayidx610 to %struct.rtx_def**
  %284 = load %struct.rtx_def*, %struct.rtx_def** %rtx611, align 8
  %285 = bitcast %struct.rtx_def* %284 to i32*
  %bf.load612 = load i32, i32* %285, align 8
  %bf.clear613 = and i32 %bf.load612, 65535
  %cmp614 = icmp eq i32 %bf.clear613, 75
  br i1 %cmp614, label %land.lhs.true.616, label %if.end.646

land.lhs.true.616:                                ; preds = %if.then.608
  %286 = load %struct.rtx_def*, %struct.rtx_def** %set461, align 8
  %fld617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %286, i32 0, i32 1
  %arrayidx618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld617, i32 0, i64 1
  %rtx619 = bitcast %union.rtunion_def* %arrayidx618 to %struct.rtx_def**
  %287 = load %struct.rtx_def*, %struct.rtx_def** %rtx619, align 8
  %fld620 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %287, i32 0, i32 1
  %arrayidx621 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld620, i32 0, i64 1
  %rtx622 = bitcast %union.rtunion_def* %arrayidx621 to %struct.rtx_def**
  %288 = load %struct.rtx_def*, %struct.rtx_def** %rtx622, align 8
  %289 = bitcast %struct.rtx_def* %288 to i32*
  %bf.load623 = load i32, i32* %289, align 8
  %bf.clear624 = and i32 %bf.load623, 65535
  %cmp625 = icmp eq i32 %bf.clear624, 54
  br i1 %cmp625, label %land.lhs.true.627, label %if.end.646

land.lhs.true.627:                                ; preds = %land.lhs.true.616
  %290 = load %struct.rtx_def*, %struct.rtx_def** %set461, align 8
  %fld628 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %290, i32 0, i32 1
  %arrayidx629 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld628, i32 0, i64 1
  %rtx630 = bitcast %union.rtunion_def* %arrayidx629 to %struct.rtx_def**
  %291 = load %struct.rtx_def*, %struct.rtx_def** %rtx630, align 8
  %fld631 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx632 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld631, i32 0, i64 0
  %rtx633 = bitcast %union.rtunion_def* %arrayidx632 to %struct.rtx_def**
  %292 = load %struct.rtx_def*, %struct.rtx_def** %rtx633, align 8
  %293 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %cmp634 = icmp eq %struct.rtx_def* %292, %293
  br i1 %cmp634, label %land.lhs.true.636, label %if.end.646

land.lhs.true.636:                                ; preds = %land.lhs.true.627
  %294 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %295 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %296 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %297 = load %struct.rtx_def*, %struct.rtx_def** %set461, align 8
  %fld637 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %297, i32 0, i32 1
  %arrayidx638 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld637, i32 0, i64 1
  %rtx639 = bitcast %union.rtunion_def* %arrayidx638 to %struct.rtx_def**
  %298 = load %struct.rtx_def*, %struct.rtx_def** %rtx639, align 8
  %fld640 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %298, i32 0, i32 1
  %arrayidx641 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld640, i32 0, i64 1
  %rtx642 = bitcast %union.rtunion_def* %arrayidx641 to %struct.rtx_def**
  %299 = load %struct.rtx_def*, %struct.rtx_def** %rtx642, align 8
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %call643 = call i32 @fixup_match_2(%struct.rtx_def* %294, %struct.rtx_def* %295, %struct.rtx_def* %296, %struct.rtx_def* %299, %struct._IO_FILE* %300)
  %tobool644 = icmp ne i32 %call643, 0
  br i1 %tobool644, label %if.then.645, label %if.end.646

if.then.645:                                      ; preds = %land.lhs.true.636
  br label %for.end.896

if.end.646:                                       ; preds = %land.lhs.true.636, %land.lhs.true.627, %land.lhs.true.616, %if.then.608
  br label %for.inc.894

if.end.647:                                       ; preds = %if.end.602
  %301 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %fld648 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx649 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld648, i32 0, i64 0
  %rtuint650 = bitcast %union.rtunion_def* %arrayidx649 to i32*
  %302 = load i32, i32* %rtuint650, align 4
  %call651 = call i32 @reg_preferred_class(i32 %302)
  store i32 %call651, i32* %src_class464, align 4
  %303 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %fld652 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %303, i32 0, i32 1
  %arrayidx653 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld652, i32 0, i64 0
  %rtuint654 = bitcast %union.rtunion_def* %arrayidx653 to i32*
  %304 = load i32, i32* %rtuint654, align 4
  %call655 = call i32 @reg_preferred_class(i32 %304)
  store i32 %call655, i32* %dst_class465, align 4
  %305 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %306 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %call656 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %305, i32 1, %struct.rtx_def* %306)
  store %struct.rtx_def* %call656, %struct.rtx_def** %src_note, align 8
  %tobool657 = icmp ne %struct.rtx_def* %call656, null
  br i1 %tobool657, label %if.end.659, label %if.then.658

if.then.658:                                      ; preds = %if.end.647
  br label %for.inc.894

if.end.659:                                       ; preds = %if.end.647
  %307 = load i32, i32* %src_class464, align 4
  %308 = load i32, i32* %dst_class465, align 4
  %call660 = call i32 @regclass_compatible_p(i32 %307, i32 %308)
  %tobool661 = icmp ne i32 %call660, 0
  br i1 %tobool661, label %if.end.666, label %if.then.662

if.then.662:                                      ; preds = %if.end.659
  %309 = load %struct.rtx_def*, %struct.rtx_def** %copy_src, align 8
  %tobool663 = icmp ne %struct.rtx_def* %309, null
  br i1 %tobool663, label %if.end.665, label %if.then.664

if.then.664:                                      ; preds = %if.then.662
  %310 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  store %struct.rtx_def* %310, %struct.rtx_def** %copy_src, align 8
  %311 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  store %struct.rtx_def* %311, %struct.rtx_def** %copy_dst, align 8
  br label %if.end.665

if.end.665:                                       ; preds = %if.then.664, %if.then.662
  br label %for.inc.894

if.end.666:                                       ; preds = %if.end.659
  %312 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %313 = load %struct.rtx_def*, %struct.rtx_def** %set461, align 8
  %fld667 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %313, i32 0, i32 1
  %arrayidx668 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld667, i32 0, i64 1
  %rtx669 = bitcast %union.rtunion_def* %arrayidx668 to %struct.rtx_def**
  %314 = load %struct.rtx_def*, %struct.rtx_def** %rtx669, align 8
  %call670 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %312, %struct.rtx_def* %314)
  %tobool671 = icmp ne i32 %call670, 0
  br i1 %tobool671, label %if.then.672, label %if.end.676

if.then.672:                                      ; preds = %if.end.666
  %315 = load %struct.rtx_def*, %struct.rtx_def** %copy_src, align 8
  %tobool673 = icmp ne %struct.rtx_def* %315, null
  br i1 %tobool673, label %if.end.675, label %if.then.674

if.then.674:                                      ; preds = %if.then.672
  %316 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  store %struct.rtx_def* %316, %struct.rtx_def** %copy_src, align 8
  %317 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  store %struct.rtx_def* %317, %struct.rtx_def** %copy_dst, align 8
  br label %if.end.675

if.end.675:                                       ; preds = %if.then.674, %if.then.672
  br label %for.inc.894

if.end.676:                                       ; preds = %if.end.666
  %318 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %319 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %320 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  %call677 = call i32 @reg_is_remote_constant_p(%struct.rtx_def* %318, %struct.rtx_def* %319, %struct.rtx_def* %320)
  %tobool678 = icmp ne i32 %call677, 0
  br i1 %tobool678, label %if.then.679, label %if.end.683

if.then.679:                                      ; preds = %if.end.676
  %321 = load %struct.rtx_def*, %struct.rtx_def** %copy_src, align 8
  %tobool680 = icmp ne %struct.rtx_def* %321, null
  br i1 %tobool680, label %if.end.682, label %if.then.681

if.then.681:                                      ; preds = %if.then.679
  %322 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  store %struct.rtx_def* %322, %struct.rtx_def** %copy_src, align 8
  %323 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  store %struct.rtx_def* %323, %struct.rtx_def** %copy_dst, align 8
  br label %if.end.682

if.end.682:                                       ; preds = %if.then.681, %if.then.679
  br label %for.inc.894

if.end.683:                                       ; preds = %if.end.676
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %tobool684 = icmp ne %struct._IO_FILE* %324, null
  br i1 %tobool684, label %if.then.685, label %if.end.690

if.then.685:                                      ; preds = %if.end.683
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %326 = load i32, i32* %op_no450, align 4
  %327 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld686 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %327, i32 0, i32 1
  %arrayidx687 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld686, i32 0, i64 0
  %rtint688 = bitcast %union.rtunion_def* %arrayidx687 to i32*
  %328 = load i32, i32* %rtint688, align 4
  %329 = load i32, i32* %match_no451, align 4
  %call689 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %325, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 %326, i32 %328, i32 %329)
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.685, %if.end.683
  store i32 0, i32* %length, align 4
  %330 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld691 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %330, i32 0, i32 1
  %arrayidx692 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld691, i32 0, i64 1
  %rtx693 = bitcast %union.rtunion_def* %arrayidx692 to %struct.rtx_def**
  %331 = load %struct.rtx_def*, %struct.rtx_def** %rtx693, align 8
  store %struct.rtx_def* %331, %struct.rtx_def** %p, align 8
  br label %for.cond.694

for.cond.694:                                     ; preds = %for.inc.796, %if.end.690
  %332 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool695 = icmp ne %struct.rtx_def* %332, null
  br i1 %tobool695, label %for.body.696, label %for.end.800

for.body.696:                                     ; preds = %for.cond.694
  %333 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call697 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %333)
  %tobool698 = icmp ne i32 %call697, 0
  br i1 %tobool698, label %if.then.699, label %if.else

if.then.699:                                      ; preds = %for.body.696
  br label %for.end.800

if.else:                                          ; preds = %for.body.696
  %334 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %335 = bitcast %struct.rtx_def* %334 to i32*
  %bf.load700 = load i32, i32* %335, align 8
  %bf.clear701 = and i32 %bf.load700, 65535
  %idxprom702 = sext i32 %bf.clear701 to i64
  %arrayidx703 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom702
  %336 = load i8, i8* %arrayidx703, align 1
  %conv704 = sext i8 %336 to i32
  %cmp705 = icmp eq i32 %conv704, 105
  br i1 %cmp705, label %if.end.708, label %if.then.707

if.then.707:                                      ; preds = %if.else
  br label %for.inc.796

if.end.708:                                       ; preds = %if.else
  br label %if.end.709

if.end.709:                                       ; preds = %if.end.708
  %337 = load i32, i32* %length, align 4
  %inc710 = add nsw i32 %337, 1
  store i32 %inc710, i32* %length, align 4
  %338 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %339 = bitcast %struct.rtx_def* %338 to i32*
  %bf.load711 = load i32, i32* %339, align 8
  %bf.clear712 = and i32 %bf.load711, 65535
  %idxprom713 = sext i32 %bf.clear712 to i64
  %arrayidx714 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom713
  %340 = load i8, i8* %arrayidx714, align 1
  %conv715 = sext i8 %340 to i32
  %cmp716 = icmp eq i32 %conv715, 105
  br i1 %cmp716, label %cond.true.718, label %cond.false.737

cond.true.718:                                    ; preds = %if.end.709
  %341 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld719 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %341, i32 0, i32 1
  %arrayidx720 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld719, i32 0, i64 3
  %rtx721 = bitcast %union.rtunion_def* %arrayidx720 to %struct.rtx_def**
  %342 = load %struct.rtx_def*, %struct.rtx_def** %rtx721, align 8
  %343 = bitcast %struct.rtx_def* %342 to i32*
  %bf.load722 = load i32, i32* %343, align 8
  %bf.clear723 = and i32 %bf.load722, 65535
  %cmp724 = icmp eq i32 %bf.clear723, 47
  br i1 %cmp724, label %cond.true.726, label %cond.false.730

cond.true.726:                                    ; preds = %cond.true.718
  %344 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld727 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %344, i32 0, i32 1
  %arrayidx728 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld727, i32 0, i64 3
  %rtx729 = bitcast %union.rtunion_def* %arrayidx728 to %struct.rtx_def**
  %345 = load %struct.rtx_def*, %struct.rtx_def** %rtx729, align 8
  br label %cond.end.735

cond.false.730:                                   ; preds = %cond.true.718
  %346 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %347 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld731 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %arrayidx732 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld731, i32 0, i64 3
  %rtx733 = bitcast %union.rtunion_def* %arrayidx732 to %struct.rtx_def**
  %348 = load %struct.rtx_def*, %struct.rtx_def** %rtx733, align 8
  %call734 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %346, %struct.rtx_def* %348)
  br label %cond.end.735

cond.end.735:                                     ; preds = %cond.false.730, %cond.true.726
  %cond736 = phi %struct.rtx_def* [ %345, %cond.true.726 ], [ %call734, %cond.false.730 ]
  br label %cond.end.738

cond.false.737:                                   ; preds = %if.end.709
  br label %cond.end.738

cond.end.738:                                     ; preds = %cond.false.737, %cond.end.735
  %cond739 = phi %struct.rtx_def* [ %cond736, %cond.end.735 ], [ null, %cond.false.737 ]
  store %struct.rtx_def* %cond739, %struct.rtx_def** %pset, align 8
  %349 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %tobool740 = icmp ne %struct.rtx_def* %349, null
  br i1 %tobool740, label %land.lhs.true.741, label %if.end.764

land.lhs.true.741:                                ; preds = %cond.end.738
  %350 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %fld742 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %350, i32 0, i32 1
  %arrayidx743 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld742, i32 0, i64 0
  %rtx744 = bitcast %union.rtunion_def* %arrayidx743 to %struct.rtx_def**
  %351 = load %struct.rtx_def*, %struct.rtx_def** %rtx744, align 8
  %352 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %cmp745 = icmp eq %struct.rtx_def* %351, %352
  br i1 %cmp745, label %if.then.747, label %if.end.764

if.then.747:                                      ; preds = %land.lhs.true.741
  %353 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %354 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %355 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call748 = call i32 @validate_replace_rtx(%struct.rtx_def* %353, %struct.rtx_def* %354, %struct.rtx_def* %355)
  %tobool749 = icmp ne i32 %call748, 0
  br i1 %tobool749, label %if.then.750, label %if.end.763

if.then.750:                                      ; preds = %if.then.747
  %356 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %357 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %fld751 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %357, i32 0, i32 1
  %arrayidx752 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld751, i32 0, i64 0
  %rtx753 = bitcast %union.rtunion_def* %arrayidx752 to %struct.rtx_def**
  %358 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %call754 = call i32 @validate_change(%struct.rtx_def* %356, %struct.rtx_def** %rtx753, %struct.rtx_def* %358, i32 0)
  %tobool755 = icmp ne i32 %call754, 0
  br i1 %tobool755, label %if.then.756, label %if.else.757

if.then.756:                                      ; preds = %if.then.750
  store i32 1, i32* %success, align 4
  br label %if.end.762

if.else.757:                                      ; preds = %if.then.750
  %359 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %360 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %361 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call758 = call i32 @validate_replace_rtx(%struct.rtx_def* %359, %struct.rtx_def* %360, %struct.rtx_def* %361)
  %362 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %363 = load i32, i32* %match_no451, align 4
  %idxprom759 = sext i32 %363 to i64
  %arrayidx760 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom759
  %364 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx760, align 8
  %365 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %call761 = call i32 @validate_change(%struct.rtx_def* %362, %struct.rtx_def** %364, %struct.rtx_def* %365, i32 0)
  br label %if.end.762

if.end.762:                                       ; preds = %if.else.757, %if.then.756
  br label %if.end.763

if.end.763:                                       ; preds = %if.end.762, %if.then.747
  br label %for.end.800

if.end.764:                                       ; preds = %land.lhs.true.741, %cond.end.738
  %366 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %367 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld765 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %367, i32 0, i32 1
  %arrayidx766 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld765, i32 0, i64 3
  %rtx767 = bitcast %union.rtunion_def* %arrayidx766 to %struct.rtx_def**
  %368 = load %struct.rtx_def*, %struct.rtx_def** %rtx767, align 8
  %call768 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %366, %struct.rtx_def* %368)
  %tobool769 = icmp ne i32 %call768, 0
  br i1 %tobool769, label %if.then.776, label %lor.lhs.false.770

lor.lhs.false.770:                                ; preds = %if.end.764
  %369 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %370 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld771 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %370, i32 0, i32 1
  %arrayidx772 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld771, i32 0, i64 3
  %rtx773 = bitcast %union.rtunion_def* %arrayidx772 to %struct.rtx_def**
  %371 = load %struct.rtx_def*, %struct.rtx_def** %rtx773, align 8
  %call774 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %369, %struct.rtx_def* %371)
  %tobool775 = icmp ne i32 %call774, 0
  br i1 %tobool775, label %if.then.776, label %if.end.777

if.then.776:                                      ; preds = %lor.lhs.false.770, %if.end.764
  br label %for.end.800

if.end.777:                                       ; preds = %lor.lhs.false.770
  %372 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %373 = bitcast %struct.rtx_def* %372 to i32*
  %bf.load778 = load i32, i32* %373, align 8
  %bf.clear779 = and i32 %bf.load778, 65535
  %cmp780 = icmp eq i32 %bf.clear779, 34
  br i1 %cmp780, label %if.then.782, label %if.end.795

if.then.782:                                      ; preds = %if.end.777
  %374 = load i32, i32* %num_calls, align 4
  %inc783 = add nsw i32 %374, 1
  store i32 %inc783, i32* %num_calls, align 4
  %375 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %fld784 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %375, i32 0, i32 1
  %arrayidx785 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld784, i32 0, i64 0
  %rtuint786 = bitcast %union.rtunion_def* %arrayidx785 to i32*
  %376 = load i32, i32* %rtuint786, align 4
  %idxprom787 = zext i32 %376 to i64
  %377 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data788 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %377, i32 0, i32 4
  %reg789 = bitcast %union.varray_data_tag* %data788 to [1 x %struct.reg_info_def*]*
  %arrayidx790 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg789, i32 0, i64 %idxprom787
  %378 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx790, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %378, i32 0, i32 8
  %379 = load i32, i32* %calls_crossed, align 4
  %cmp791 = icmp eq i32 %379, 0
  br i1 %cmp791, label %if.then.793, label %if.end.794

if.then.793:                                      ; preds = %if.then.782
  br label %for.end.800

if.end.794:                                       ; preds = %if.then.782
  br label %if.end.795

if.end.795:                                       ; preds = %if.end.794, %if.end.777
  br label %for.inc.796

for.inc.796:                                      ; preds = %if.end.795, %if.then.707
  %380 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld797 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %380, i32 0, i32 1
  %arrayidx798 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld797, i32 0, i64 1
  %rtx799 = bitcast %union.rtunion_def* %arrayidx798 to %struct.rtx_def**
  %381 = load %struct.rtx_def*, %struct.rtx_def** %rtx799, align 8
  store %struct.rtx_def* %381, %struct.rtx_def** %p, align 8
  br label %for.cond.694

for.end.800:                                      ; preds = %if.then.793, %if.then.776, %if.end.763, %if.then.699, %for.cond.694
  %382 = load i32, i32* %success, align 4
  %tobool801 = icmp ne i32 %382, 0
  br i1 %tobool801, label %if.then.802, label %if.end.893

if.then.802:                                      ; preds = %for.end.800
  %383 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %384 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  call void @remove_note(%struct.rtx_def* %383, %struct.rtx_def* %384)
  %385 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %386 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld803 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %386, i32 0, i32 1
  %arrayidx804 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld803, i32 0, i64 3
  %rtx805 = bitcast %union.rtunion_def* %arrayidx804 to %struct.rtx_def**
  %387 = load %struct.rtx_def*, %struct.rtx_def** %rtx805, align 8
  %call806 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %385, %struct.rtx_def* %387)
  %tobool807 = icmp ne i32 %call806, 0
  br i1 %tobool807, label %if.then.808, label %if.end.818

if.then.808:                                      ; preds = %if.then.802
  %388 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld809 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %388, i32 0, i32 1
  %arrayidx810 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld809, i32 0, i64 6
  %rtx811 = bitcast %union.rtunion_def* %arrayidx810 to %struct.rtx_def**
  %389 = load %struct.rtx_def*, %struct.rtx_def** %rtx811, align 8
  %390 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %fld812 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %390, i32 0, i32 1
  %arrayidx813 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld812, i32 0, i64 1
  %rtx814 = bitcast %union.rtunion_def* %arrayidx813 to %struct.rtx_def**
  store %struct.rtx_def* %389, %struct.rtx_def** %rtx814, align 8
  %391 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %392 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld815 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %392, i32 0, i32 1
  %arrayidx816 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld815, i32 0, i64 6
  %rtx817 = bitcast %union.rtunion_def* %arrayidx816 to %struct.rtx_def**
  store %struct.rtx_def* %391, %struct.rtx_def** %rtx817, align 8
  br label %if.end.818

if.end.818:                                       ; preds = %if.then.808, %if.then.802
  %393 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %394 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %call819 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %393, i32 1, %struct.rtx_def* %394)
  store %struct.rtx_def* %call819, %struct.rtx_def** %dst_note, align 8
  %tobool820 = icmp ne %struct.rtx_def* %call819, null
  br i1 %tobool820, label %if.then.821, label %if.end.822

if.then.821:                                      ; preds = %if.end.818
  %395 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %396 = load %struct.rtx_def*, %struct.rtx_def** %dst_note, align 8
  call void @remove_note(%struct.rtx_def* %395, %struct.rtx_def* %396)
  br label %if.end.822

if.end.822:                                       ; preds = %if.then.821, %if.end.818
  %397 = load %struct.rtx_def*, %struct.rtx_def** %dst463, align 8
  %fld823 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %397, i32 0, i32 1
  %arrayidx824 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld823, i32 0, i64 0
  %rtuint825 = bitcast %union.rtunion_def* %arrayidx824 to i32*
  %398 = load i32, i32* %rtuint825, align 4
  store i32 %398, i32* %dstno, align 4
  %399 = load %struct.rtx_def*, %struct.rtx_def** %src462, align 8
  %fld826 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %399, i32 0, i32 1
  %arrayidx827 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld826, i32 0, i64 0
  %rtuint828 = bitcast %union.rtunion_def* %arrayidx827 to i32*
  %400 = load i32, i32* %rtuint828, align 4
  store i32 %400, i32* %srcno, align 4
  %401 = load i32, i32* %dstno, align 4
  %idxprom829 = sext i32 %401 to i64
  %402 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data830 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %402, i32 0, i32 4
  %reg831 = bitcast %union.varray_data_tag* %data830 to [1 x %struct.reg_info_def*]*
  %arrayidx832 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg831, i32 0, i64 %idxprom829
  %403 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx832, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %403, i32 0, i32 3
  %404 = load i32, i32* %sets, align 4
  %inc833 = add nsw i32 %404, 1
  store i32 %inc833, i32* %sets, align 4
  %405 = load i32, i32* %srcno, align 4
  %idxprom834 = sext i32 %405 to i64
  %406 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data835 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %406, i32 0, i32 4
  %reg836 = bitcast %union.varray_data_tag* %data835 to [1 x %struct.reg_info_def*]*
  %arrayidx837 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg836, i32 0, i64 %idxprom834
  %407 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx837, align 8
  %sets838 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %407, i32 0, i32 3
  %408 = load i32, i32* %sets838, align 4
  %dec839 = add nsw i32 %408, -1
  store i32 %dec839, i32* %sets838, align 4
  %409 = load i32, i32* %num_calls, align 4
  %410 = load i32, i32* %dstno, align 4
  %idxprom840 = sext i32 %410 to i64
  %411 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data841 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %411, i32 0, i32 4
  %reg842 = bitcast %union.varray_data_tag* %data841 to [1 x %struct.reg_info_def*]*
  %arrayidx843 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg842, i32 0, i64 %idxprom840
  %412 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx843, align 8
  %calls_crossed844 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %412, i32 0, i32 8
  %413 = load i32, i32* %calls_crossed844, align 4
  %add845 = add nsw i32 %413, %409
  store i32 %add845, i32* %calls_crossed844, align 4
  %414 = load i32, i32* %num_calls, align 4
  %415 = load i32, i32* %srcno, align 4
  %idxprom846 = sext i32 %415 to i64
  %416 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data847 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %416, i32 0, i32 4
  %reg848 = bitcast %union.varray_data_tag* %data847 to [1 x %struct.reg_info_def*]*
  %arrayidx849 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg848, i32 0, i64 %idxprom846
  %417 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx849, align 8
  %calls_crossed850 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %417, i32 0, i32 8
  %418 = load i32, i32* %calls_crossed850, align 4
  %sub = sub nsw i32 %418, %414
  store i32 %sub, i32* %calls_crossed850, align 4
  %419 = load i32, i32* %length, align 4
  %420 = load i32, i32* %dstno, align 4
  %idxprom851 = sext i32 %420 to i64
  %421 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data852 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %421, i32 0, i32 4
  %reg853 = bitcast %union.varray_data_tag* %data852 to [1 x %struct.reg_info_def*]*
  %arrayidx854 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg853, i32 0, i64 %idxprom851
  %422 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx854, align 8
  %live_length855 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %422, i32 0, i32 7
  %423 = load i32, i32* %live_length855, align 4
  %add856 = add nsw i32 %423, %419
  store i32 %add856, i32* %live_length855, align 4
  %424 = load i32, i32* %srcno, align 4
  %idxprom857 = sext i32 %424 to i64
  %425 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data858 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %425, i32 0, i32 4
  %reg859 = bitcast %union.varray_data_tag* %data858 to [1 x %struct.reg_info_def*]*
  %arrayidx860 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg859, i32 0, i64 %idxprom857
  %426 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx860, align 8
  %live_length861 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %426, i32 0, i32 7
  %427 = load i32, i32* %live_length861, align 4
  %cmp862 = icmp sge i32 %427, 0
  br i1 %cmp862, label %if.then.864, label %if.end.885

if.then.864:                                      ; preds = %if.end.822
  %428 = load i32, i32* %length, align 4
  %429 = load i32, i32* %srcno, align 4
  %idxprom865 = sext i32 %429 to i64
  %430 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data866 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %430, i32 0, i32 4
  %reg867 = bitcast %union.varray_data_tag* %data866 to [1 x %struct.reg_info_def*]*
  %arrayidx868 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg867, i32 0, i64 %idxprom865
  %431 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx868, align 8
  %live_length869 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %431, i32 0, i32 7
  %432 = load i32, i32* %live_length869, align 4
  %sub870 = sub nsw i32 %432, %428
  store i32 %sub870, i32* %live_length869, align 4
  %433 = load i32, i32* %srcno, align 4
  %idxprom871 = sext i32 %433 to i64
  %434 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data872 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %434, i32 0, i32 4
  %reg873 = bitcast %union.varray_data_tag* %data872 to [1 x %struct.reg_info_def*]*
  %arrayidx874 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg873, i32 0, i64 %idxprom871
  %435 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx874, align 8
  %live_length875 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %435, i32 0, i32 7
  %436 = load i32, i32* %live_length875, align 4
  %cmp876 = icmp slt i32 %436, 2
  br i1 %cmp876, label %if.then.878, label %if.end.884

if.then.878:                                      ; preds = %if.then.864
  %437 = load i32, i32* %srcno, align 4
  %idxprom879 = sext i32 %437 to i64
  %438 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data880 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %438, i32 0, i32 4
  %reg881 = bitcast %union.varray_data_tag* %data880 to [1 x %struct.reg_info_def*]*
  %arrayidx882 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg881, i32 0, i64 %idxprom879
  %439 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx882, align 8
  %live_length883 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %439, i32 0, i32 7
  store i32 2, i32* %live_length883, align 4
  br label %if.end.884

if.end.884:                                       ; preds = %if.then.878, %if.then.864
  br label %if.end.885

if.end.885:                                       ; preds = %if.end.884, %if.end.822
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %tobool886 = icmp ne %struct._IO_FILE* %440, null
  br i1 %tobool886, label %if.then.887, label %if.end.892

if.then.887:                                      ; preds = %if.end.885
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %442 = load i32, i32* %op_no450, align 4
  %443 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld888 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %443, i32 0, i32 1
  %arrayidx889 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld888, i32 0, i64 0
  %rtint890 = bitcast %union.rtunion_def* %arrayidx889 to i32*
  %444 = load i32, i32* %rtint890, align 4
  %445 = load i32, i32* %match_no451, align 4
  %call891 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %441, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 %442, i32 %444, i32 %445)
  br label %if.end.892

if.end.892:                                       ; preds = %if.then.887, %if.end.885
  br label %for.end.896

if.end.893:                                       ; preds = %for.end.800
  br label %for.inc.894

for.inc.894:                                      ; preds = %if.end.893, %if.end.682, %if.end.675, %if.end.665, %if.then.658, %if.end.646, %if.then.601, %if.then.592, %if.then.579, %if.then.566, %if.then.562, %if.then.529, %if.then.513, %if.then.509, %if.then.481, %if.then.471
  %446 = load i32, i32* %op_no450, align 4
  %inc895 = add nsw i32 %446, 1
  store i32 %inc895, i32* %op_no450, align 4
  br label %for.cond.456

for.end.896:                                      ; preds = %if.end.892, %if.then.645, %for.cond.456
  %447 = load i32, i32* %success, align 4
  %tobool897 = icmp ne i32 %447, 0
  br i1 %tobool897, label %if.end.902, label %land.lhs.true.898

land.lhs.true.898:                                ; preds = %for.end.896
  %448 = load %struct.rtx_def*, %struct.rtx_def** %copy_src, align 8
  %cmp899 = icmp ne %struct.rtx_def* %448, null
  br i1 %cmp899, label %if.then.901, label %if.end.902

if.then.901:                                      ; preds = %land.lhs.true.898
  %449 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %450 = load %struct.rtx_def*, %struct.rtx_def** %copy_src, align 8
  %451 = load %struct.rtx_def*, %struct.rtx_def** %copy_dst, align 8
  %452 = load i32, i32* %old_max_uid, align 4
  call void @copy_src_to_dest(%struct.rtx_def* %449, %struct.rtx_def* %450, %struct.rtx_def* %451, i32 %452)
  br label %if.end.902

if.end.902:                                       ; preds = %if.then.901, %land.lhs.true.898, %for.end.896
  br label %if.end.903

if.end.903:                                       ; preds = %if.end.902, %for.body.441
  br label %for.inc.904

for.inc.904:                                      ; preds = %if.end.903, %if.then.454
  %453 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld905 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %453, i32 0, i32 1
  %arrayidx906 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld905, i32 0, i64 1
  %rtx907 = bitcast %union.rtunion_def* %arrayidx906 to %struct.rtx_def**
  %454 = load %struct.rtx_def*, %struct.rtx_def** %rtx907, align 8
  store %struct.rtx_def* %454, %struct.rtx_def** %insn, align 8
  br label %for.cond.439

for.end.908:                                      ; preds = %for.cond.439
  store i32 0, i32* %i, align 4
  br label %for.cond.909

for.cond.909:                                     ; preds = %for.inc.948, %for.end.908
  %455 = load i32, i32* %i, align 4
  %456 = load i32, i32* @n_basic_blocks, align 4
  %cmp910 = icmp slt i32 %455, %456
  br i1 %cmp910, label %for.body.912, label %for.end.950

for.body.912:                                     ; preds = %for.cond.909
  %457 = load i32, i32* %i, align 4
  %idxprom913 = sext i32 %457 to i64
  %458 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data914 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %458, i32 0, i32 4
  %bb915 = bitcast %union.varray_data_tag* %data914 to [1 x %struct.basic_block_def*]*
  %arrayidx916 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb915, i32 0, i64 %idxprom913
  %459 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx916, align 8
  %end917 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %459, i32 0, i32 1
  %460 = load %struct.rtx_def*, %struct.rtx_def** %end917, align 8
  store %struct.rtx_def* %460, %struct.rtx_def** %end, align 8
  %461 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %461, %struct.rtx_def** %new, align 8
  %462 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld918 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %462, i32 0, i32 1
  %arrayidx919 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld918, i32 0, i64 2
  %rtx920 = bitcast %union.rtunion_def* %arrayidx919 to %struct.rtx_def**
  %463 = load %struct.rtx_def*, %struct.rtx_def** %rtx920, align 8
  store %struct.rtx_def* %463, %struct.rtx_def** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.912
  %464 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %cmp921 = icmp ne %struct.rtx_def* %464, null
  br i1 %cmp921, label %land.lhs.true.923, label %land.end

land.lhs.true.923:                                ; preds = %while.cond
  %465 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld924 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %465, i32 0, i32 1
  %arrayidx925 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld924, i32 0, i64 0
  %rtint926 = bitcast %union.rtunion_def* %arrayidx925 to i32*
  %466 = load i32, i32* %rtint926, align 4
  %467 = load i32, i32* %old_max_uid, align 4
  %cmp927 = icmp sge i32 %466, %467
  br i1 %cmp927, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.923
  %468 = load i32, i32* %i, align 4
  %469 = load i32, i32* @n_basic_blocks, align 4
  %sub929 = sub nsw i32 %469, 1
  %cmp930 = icmp eq i32 %468, %sub929
  br i1 %cmp930, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %470 = load i32, i32* %i, align 4
  %add932 = add nsw i32 %470, 1
  %idxprom933 = sext i32 %add932 to i64
  %471 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data934 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %471, i32 0, i32 4
  %bb935 = bitcast %union.varray_data_tag* %data934 to [1 x %struct.basic_block_def*]*
  %arrayidx936 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb935, i32 0, i64 %idxprom933
  %472 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx936, align 8
  %head937 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %472, i32 0, i32 0
  %473 = load %struct.rtx_def*, %struct.rtx_def** %head937, align 8
  %474 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %cmp938 = icmp ne %struct.rtx_def* %473, %474
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %475 = phi i1 [ true, %land.rhs ], [ %cmp938, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true.923, %while.cond
  %476 = phi i1 [ false, %land.lhs.true.923 ], [ false, %while.cond ], [ %475, %lor.end ]
  br i1 %476, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %477 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %477, %struct.rtx_def** %new, align 8
  %478 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld940 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %478, i32 0, i32 1
  %arrayidx941 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld940, i32 0, i64 2
  %rtx942 = bitcast %union.rtunion_def* %arrayidx941 to %struct.rtx_def**
  %479 = load %struct.rtx_def*, %struct.rtx_def** %rtx942, align 8
  store %struct.rtx_def* %479, %struct.rtx_def** %next, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %480 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %481 = load i32, i32* %i, align 4
  %idxprom943 = sext i32 %481 to i64
  %482 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data944 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %482, i32 0, i32 4
  %bb945 = bitcast %union.varray_data_tag* %data944 to [1 x %struct.basic_block_def*]*
  %arrayidx946 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb945, i32 0, i64 %idxprom943
  %483 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx946, align 8
  %end947 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %483, i32 0, i32 1
  store %struct.rtx_def* %480, %struct.rtx_def** %end947, align 8
  br label %for.inc.948

for.inc.948:                                      ; preds = %while.end
  %484 = load i32, i32* %i, align 4
  %inc949 = add nsw i32 %484, 1
  store i32 %inc949, i32* %i, align 4
  br label %for.cond.909

for.end.950:                                      ; preds = %for.cond.909
  br label %done

done:                                             ; preds = %for.end.950, %if.then.33
  %485 = load i32*, i32** @regno_src_regno, align 8
  %486 = bitcast i32* %485 to i8*
  call void @free(i8* %486) #3
  %487 = load i32*, i32** @regmove_bb_head, align 8
  %488 = bitcast i32* %487 to i8*
  call void @free(i8* %488) #3
  br label %return

return:                                           ; preds = %done, %if.then
  ret void
}

declare i32 @get_max_uid() #1

; Function Attrs: nounwind uwtable
define internal void @mark_flags_life_zones(%struct.rtx_def* %flags) #0 {
entry:
  %flags.addr = alloca %struct.rtx_def*, align 8
  %flags_regno = alloca i32, align 4
  %flags_nregs = alloca i32, align 4
  %block = alloca i32, align 4
  %mode = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %insn68 = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %live = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %flags, %struct.rtx_def** %flags.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp1 = icmp eq %struct.rtx_def* %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  %cond = select i1 %tobool, i32 3, i32 0
  store i32 %cond, i32* %mode, align 4
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool2 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %mode, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.value = and i32 %5, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear = and i32 %bf.load, -16711681
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.end.134

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %11 = load i32, i32* %rtuint, align 4
  store i32 %11, i32* %flags_regno, align 4
  %12 = load i32, i32* %flags_regno, align 4
  %cmp5 = icmp sge i32 %12, 8
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.7

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* %flags_regno, align 4
  %cmp6 = icmp sle i32 %13, 15
  br i1 %cmp6, label %cond.true, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true, %if.end
  %14 = load i32, i32* %flags_regno, align 4
  %cmp8 = icmp sge i32 %14, 21
  br i1 %cmp8, label %land.lhs.true.9, label %lor.lhs.false.11

land.lhs.true.9:                                  ; preds = %lor.lhs.false.7
  %15 = load i32, i32* %flags_regno, align 4
  %cmp10 = icmp sle i32 %15, 28
  br i1 %cmp10, label %cond.true, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.9, %lor.lhs.false.7
  %16 = load i32, i32* %flags_regno, align 4
  %cmp12 = icmp sge i32 %16, 45
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %lor.lhs.false.11
  %17 = load i32, i32* %flags_regno, align 4
  %cmp14 = icmp sle i32 %17, 52
  br i1 %cmp14, label %cond.true, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %lor.lhs.false.11
  %18 = load i32, i32* %flags_regno, align 4
  %cmp16 = icmp sge i32 %18, 29
  br i1 %cmp16, label %land.lhs.true.17, label %cond.false

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %19 = load i32, i32* %flags_regno, align 4
  %cmp18 = icmp sle i32 %19, 36
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load19 = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load19, 16
  %bf.clear20 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear20 to i64
  %arrayidx21 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %22, 5
  br i1 %cmp22, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %23 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load23 = load i32, i32* %24, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 16
  %bf.clear25 = and i32 %bf.lshr24, 255
  %idxprom26 = sext i32 %bf.clear25 to i64
  %arrayidx27 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom26
  %25 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp eq i32 %25, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %26 = phi i1 [ true, %cond.true ], [ %cmp28, %lor.rhs ]
  %cond29 = select i1 %26, i32 2, i32 1
  br label %cond.end.61

cond.false:                                       ; preds = %land.lhs.true.17, %lor.lhs.false.15
  %27 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load30 = load i32, i32* %28, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 16
  %bf.clear32 = and i32 %bf.lshr31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 18
  br i1 %cmp33, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %cond.false
  %29 = load i32, i32* @target_flags, align 4
  %and = and i32 %29, 33554432
  %tobool35 = icmp ne i32 %and, 0
  %cond36 = select i1 %tobool35, i32 2, i32 3
  br label %cond.end.59

cond.false.37:                                    ; preds = %cond.false
  %30 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load38 = load i32, i32* %31, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 16
  %bf.clear40 = and i32 %bf.lshr39, 255
  %cmp41 = icmp eq i32 %bf.clear40, 24
  br i1 %cmp41, label %cond.true.42, label %cond.false.46

cond.true.42:                                     ; preds = %cond.false.37
  %32 = load i32, i32* @target_flags, align 4
  %and43 = and i32 %32, 33554432
  %tobool44 = icmp ne i32 %and43, 0
  %cond45 = select i1 %tobool44, i32 4, i32 6
  br label %cond.end

cond.false.46:                                    ; preds = %cond.false.37
  %33 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load47 = load i32, i32* %34, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  %idxprom50 = sext i32 %bf.clear49 to i64
  %arrayidx51 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom50
  %35 = load i8, i8* %arrayidx51, align 1
  %conv = zext i8 %35 to i32
  %36 = load i32, i32* @target_flags, align 4
  %and52 = and i32 %36, 33554432
  %tobool53 = icmp ne i32 %and52, 0
  %cond54 = select i1 %tobool53, i32 8, i32 4
  %add = add nsw i32 %conv, %cond54
  %sub = sub nsw i32 %add, 1
  %37 = load i32, i32* @target_flags, align 4
  %and55 = and i32 %37, 33554432
  %tobool56 = icmp ne i32 %and55, 0
  %cond57 = select i1 %tobool56, i32 8, i32 4
  %div = sdiv i32 %sub, %cond57
  br label %cond.end

cond.end:                                         ; preds = %cond.false.46, %cond.true.42
  %cond58 = phi i32 [ %cond45, %cond.true.42 ], [ %div, %cond.false.46 ]
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.end, %cond.true.34
  %cond60 = phi i32 [ %cond36, %cond.true.34 ], [ %cond58, %cond.end ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %lor.end
  %cond62 = phi i32 [ %cond29, %lor.end ], [ %cond60, %cond.end.59 ]
  store i32 %cond62, i32* %flags_nregs, align 4
  %38 = load %struct.rtx_def*, %struct.rtx_def** %flags.addr, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** @flags_set_1_rtx, align 8
  %39 = load i32, i32* @n_basic_blocks, align 4
  %sub63 = sub nsw i32 %39, 1
  store i32 %sub63, i32* %block, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.133, %cond.end.61
  %40 = load i32, i32* %block, align 4
  %cmp65 = icmp sge i32 %40, 0
  br i1 %cmp65, label %for.body.67, label %for.end.134

for.body.67:                                      ; preds = %for.cond.64
  %41 = load i32, i32* %block, align 4
  %idxprom69 = sext i32 %41 to i64
  %42 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %42, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx70 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom69
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx70, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 0
  %44 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %insn68, align 8
  %45 = load i32, i32* %block, align 4
  %idxprom71 = sext i32 %45 to i64
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data72 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %46, i32 0, i32 4
  %bb73 = bitcast %union.varray_data_tag* %data72 to [1 x %struct.basic_block_def*]*
  %arrayidx74 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb73, i32 0, i64 %idxprom71
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx74, align 8
  %end75 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 1
  %48 = load %struct.rtx_def*, %struct.rtx_def** %end75, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %end, align 8
  store i32 0, i32* %live, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.86, %for.body.67
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %flags_nregs, align 4
  %cmp77 = icmp slt i32 %49, %50
  br i1 %cmp77, label %for.body.79, label %for.end.87

for.body.79:                                      ; preds = %for.cond.76
  %51 = load i32, i32* %block, align 4
  %idxprom80 = sext i32 %51 to i64
  %52 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data81 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %52, i32 0, i32 4
  %bb82 = bitcast %union.varray_data_tag* %data81 to [1 x %struct.basic_block_def*]*
  %arrayidx83 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb82, i32 0, i64 %idxprom80
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx83, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 8
  %54 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %55 = load i32, i32* %flags_regno, align 4
  %56 = load i32, i32* %i, align 4
  %add84 = add nsw i32 %55, %56
  %call85 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %54, i32 %add84)
  %57 = load i32, i32* %live, align 4
  %or = or i32 %57, %call85
  store i32 %or, i32* %live, align 4
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.79
  %58 = load i32, i32* %i, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.76

for.end.87:                                       ; preds = %for.cond.76
  br label %while.body

while.body:                                       ; preds = %for.end.87, %if.end.129
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load88 = load i32, i32* %60, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %idxprom90 = sext i32 %bf.clear89 to i64
  %arrayidx91 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom90
  %61 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %61 to i32
  %cmp93 = icmp eq i32 %conv92, 105
  br i1 %cmp93, label %if.then.95, label %if.else

if.then.95:                                       ; preds = %while.body
  %62 = load i32, i32* %live, align 4
  %tobool96 = icmp ne i32 %62, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.101

land.lhs.true.97:                                 ; preds = %if.then.95
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8
  %64 = load i32, i32* %flags_regno, align 4
  %call98 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %63, i32 1, i32 %64)
  %tobool99 = icmp ne %struct.rtx_def* %call98, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.lhs.true.97
  store i32 0, i32* %live, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %land.lhs.true.97, %if.then.95
  %65 = load i32, i32* %live, align 4
  %tobool102 = icmp ne i32 %65, 0
  %cond103 = select i1 %tobool102, i32 3, i32 0
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load104 = load i32, i32* %67, align 8
  %bf.value105 = and i32 %cond103, 255
  %bf.shl106 = shl i32 %bf.value105, 16
  %bf.clear107 = and i32 %bf.load104, -16711681
  %bf.set108 = or i32 %bf.clear107, %bf.shl106
  store i32 %bf.set108, i32* %67, align 8
  store i32 0, i32* @flags_set_1_set, align 4
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 3
  %rtx111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx111, align 8
  call void @note_stores(%struct.rtx_def* %69, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @flags_set_1, i8* null)
  %70 = load i32, i32* @flags_set_1_set, align 4
  %tobool112 = icmp ne i32 %70, 0
  br i1 %tobool112, label %if.then.113, label %if.end.117

if.then.113:                                      ; preds = %if.end.101
  store i32 1, i32* %live, align 4
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load114 = load i32, i32* %72, align 8
  %bf.clear115 = and i32 %bf.load114, -16711681
  %bf.set116 = or i32 %bf.clear115, 131072
  store i32 %bf.set116, i32* %72, align 8
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.113, %if.end.101
  br label %if.end.125

if.else:                                          ; preds = %while.body
  %73 = load i32, i32* %live, align 4
  %tobool118 = icmp ne i32 %73, 0
  %cond119 = select i1 %tobool118, i32 3, i32 0
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load120 = load i32, i32* %75, align 8
  %bf.value121 = and i32 %cond119, 255
  %bf.shl122 = shl i32 %bf.value121, 16
  %bf.clear123 = and i32 %bf.load120, -16711681
  %bf.set124 = or i32 %bf.clear123, %bf.shl122
  store i32 %bf.set124, i32* %75, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.else, %if.end.117
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp126 = icmp eq %struct.rtx_def* %76, %77
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.125
  br label %while.end

if.end.129:                                       ; preds = %if.end.125
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn68, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 2
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx132, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %insn68, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.128
  br label %for.inc.133

for.inc.133:                                      ; preds = %while.end
  %80 = load i32, i32* %block, align 4
  %dec = add nsw i32 %80, -1
  store i32 %dec, i32* %block, align 4
  br label %for.cond.64

for.end.134:                                      ; preds = %for.end, %for.cond.64
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @discover_flags_reg() #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %found = alloca i32, align 4
  %0 = load i32, i32* @word_mode, align 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %0, i32 10000)
  store %struct.rtx_def* %call, %struct.rtx_def** %tmp, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call1 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 2)
  %call2 = call %struct.rtx_def* @gen_add3_insn(%struct.rtx_def* %1, %struct.rtx_def* %2, %struct.rtx_def* %call1)
  store %struct.rtx_def* %call2, %struct.rtx_def** %tmp, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 39
  br i1 %cmp5, label %if.then.6, label %if.end.46

if.then.6:                                        ; preds = %if.else
  %7 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 0
  %9 = load i32, i32* %num_elem, align 4
  %cmp8 = icmp ne i32 %9, 2
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.6
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtvec12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtvec_def**
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec12, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx13, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %tmp, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load14 = load i32, i32* %15, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp ne i32 %bf.clear15, 49
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %retval
  br label %return

if.end.18:                                        ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %tmp, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load21 = load i32, i32* %20, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 63
  br i1 %cmp23, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end.18
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load27 = load i32, i32* %23, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 61
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.38

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %26 = load i32, i32* %rtuint, align 4
  %cmp36 = icmp ult i32 %26, 53
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.30
  %27 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %retval
  br label %return

if.end.38:                                        ; preds = %land.lhs.true.30, %land.lhs.true, %if.end.18
  %28 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load39 = load i32, i32* %29, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 61
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.38
  %30 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtuint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %31 = load i32, i32* %rtuint44, align 4
  %cmp45 = icmp ult i32 %31, 53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.38
  %32 = phi i1 [ false, %if.end.38 ], [ %cmp45, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  store i32 %land.ext, i32* %found, align 4
  %33 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.end
  %34 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %retval
  br label %return

if.end.46:                                        ; preds = %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46
  %35 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.47, %cond.end, %if.then.37, %if.then.17, %if.then.9, %if.then
  %36 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %36
}

declare noalias i8* @xmalloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @optimize_reg_copy_3(%struct.rtx_def* %insn, %struct.rtx_def* %dest, %struct.rtx_def* %src) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %dest.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %src_reg = alloca %struct.rtx_def*, align 8
  %src_no = alloca i32, align 4
  %dst_no = alloca i32, align 4
  %p = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %subreg = alloca %struct.rtx_def*, align 8
  %old_mode = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %src_reg, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %src_no, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %5 = load i32, i32* %rtuint5, align 4
  store i32 %5, i32* %dst_no, align 4
  %6 = load i32, i32* %src_no, align 4
  %cmp = icmp slt i32 %6, 53
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %dst_no, align 4
  %cmp6 = icmp slt i32 %7, 53
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %8, i32 1, %struct.rtx_def* %9)
  %tobool = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool, label %lor.lhs.false.8, label %if.then

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.7
  %10 = load i32, i32* %src_no, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %12 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx9, align 8
  %deaths = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %12, i32 0, i32 6
  %13 = load i32, i32* %deaths, align 4
  %cmp10 = icmp ne i32 %13, 1
  br i1 %cmp10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %14 = load i32, i32* %src_no, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data13 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %reg14 = bitcast %union.varray_data_tag* %data13 to [1 x %struct.reg_info_def*]*
  %arrayidx15 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg14, i32 0, i64 %idxprom12
  %16 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx15, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %16, i32 0, i32 3
  %17 = load i32, i32* %sets, align 4
  %cmp16 = icmp ne i32 %17, 1
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.7, %lor.lhs.false, %entry
  br label %if.end.147

if.end:                                           ; preds = %lor.lhs.false.11
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool20 = icmp ne %struct.rtx_def* %20, null
  br i1 %tobool20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %21 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call21 = call i32 @reg_set_p(%struct.rtx_def* %21, %struct.rtx_def* %22)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot = xor i1 %tobool22, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call23 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %24)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  br label %for.end

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %25 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %land.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool30 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %for.end
  br label %if.end.147

if.end.32:                                        ; preds = %for.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load = load i32, i32* %29, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom33 = sext i32 %bf.clear to i64
  %arrayidx34 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom33
  %30 = load i8, i8* %arrayidx34, align 1
  %conv = sext i8 %30 to i32
  %cmp35 = icmp eq i32 %conv, 105
  br i1 %cmp35, label %cond.true, label %cond.false.52

cond.true:                                        ; preds = %if.end.32
  %31 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 3
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load40 = load i32, i32* %33, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 47
  br i1 %cmp42, label %cond.true.44, label %cond.false

cond.true.44:                                     ; preds = %cond.true
  %34 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 3
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %36 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 3
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %call51 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %36, %struct.rtx_def* %38)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.44
  %cond = phi %struct.rtx_def* [ %35, %cond.true.44 ], [ %call51, %cond.false ]
  br label %cond.end.53

cond.false.52:                                    ; preds = %if.end.32
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.end
  %cond54 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.52 ]
  store %struct.rtx_def* %cond54, %struct.rtx_def** %set, align 8
  %tobool55 = icmp ne %struct.rtx_def* %cond54, null
  br i1 %tobool55, label %lor.lhs.false.56, label %if.then.73

lor.lhs.false.56:                                 ; preds = %cond.end.53
  %39 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 1
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load60 = load i32, i32* %41, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp ne i32 %bf.clear61, 66
  br i1 %cmp62, label %if.then.73, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.56
  %42 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call65 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %42, i32 3, %struct.rtx_def* null)
  %tobool66 = icmp ne %struct.rtx_def* %call65, null
  br i1 %tobool66, label %if.then.73, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.64
  %43 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %cmp71 = icmp ne %struct.rtx_def* %44, %45
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %lor.lhs.false.67, %lor.lhs.false.64, %lor.lhs.false.56, %cond.end.53
  br label %if.end.147

if.end.74:                                        ; preds = %lor.lhs.false.67
  %46 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 1
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load78 = load i32, i32* %48, align 8
  %bf.lshr = lshr i32 %bf.load78, 27
  %bf.clear79 = and i32 %bf.lshr, 1
  %tobool80 = icmp ne i32 %bf.clear79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.74
  br label %if.end.147

if.end.82:                                        ; preds = %if.end.74
  %49 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load83 = load i32, i32* %50, align 8
  %bf.lshr84 = lshr i32 %bf.load83, 16
  %bf.clear85 = and i32 %bf.lshr84, 255
  %idxprom86 = sext i32 %bf.clear85 to i64
  %arrayidx87 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom86
  %51 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %51 to i32
  %52 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load89 = load i32, i32* %53, align 8
  %bf.lshr90 = lshr i32 %bf.load89, 16
  %bf.clear91 = and i32 %bf.lshr90, 255
  %idxprom92 = sext i32 %bf.clear91 to i64
  %arrayidx93 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom92
  %54 = load i16, i16* %arrayidx93, align 2
  %conv94 = zext i16 %54 to i32
  %cmp95 = icmp sle i32 %conv88, %conv94
  br i1 %cmp95, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %if.end.82
  br i1 true, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %land.lhs.true
  br label %if.end.147

if.end.98:                                        ; preds = %land.lhs.true, %if.end.82
  %55 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load99 = load i32, i32* %56, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 16
  %bf.clear101 = and i32 %bf.lshr100, 255
  store i32 %bf.clear101, i32* %old_mode, align 4
  %57 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load102 = load i32, i32* %58, align 8
  %bf.lshr103 = lshr i32 %bf.load102, 16
  %bf.clear104 = and i32 %bf.lshr103, 255
  %59 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load105 = load i32, i32* %60, align 8
  %bf.value = and i32 %bf.clear104, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear106 = and i32 %bf.load105, -16711681
  %bf.set = or i32 %bf.clear106, %bf.shl
  store i32 %bf.set, i32* %60, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 1
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  store %struct.rtx_def* %62, %struct.rtx_def** %rtx112, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 1
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call116 = call i32 @validate_change(%struct.rtx_def* %64, %struct.rtx_def** %rtx115, %struct.rtx_def* %66, i32 1)
  %67 = load i32, i32* %old_mode, align 4
  %68 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %call117 = call %struct.rtx_def* @gen_lowpart_SUBREG(i32 %67, %struct.rtx_def* %68)
  store %struct.rtx_def* %call117, %struct.rtx_def** %subreg, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.131, %if.then.130, %if.end.98
  %69 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 2
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %p, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp121 = icmp ne %struct.rtx_def* %71, %72
  br i1 %cmp121, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %73 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load123 = load i32, i32* %74, align 8
  %bf.clear124 = and i32 %bf.load123, 65535
  %idxprom125 = sext i32 %bf.clear124 to i64
  %arrayidx126 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom125
  %75 = load i8, i8* %arrayidx126, align 1
  %conv127 = sext i8 %75 to i32
  %cmp128 = icmp eq i32 %conv127, 105
  br i1 %cmp128, label %if.end.131, label %if.then.130

if.then.130:                                      ; preds = %while.body
  br label %while.cond

if.end.131:                                       ; preds = %while.body
  %76 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  call void @validate_replace_rtx_group(%struct.rtx_def* %76, %struct.rtx_def* %77, %struct.rtx_def* %78)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %79 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @validate_replace_rtx_group(%struct.rtx_def* %79, %struct.rtx_def* %80, %struct.rtx_def* %81)
  %call132 = call i32 @apply_change_group()
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.else, label %if.then.134

if.then.134:                                      ; preds = %while.end
  %82 = load i32, i32* %old_mode, align 4
  %83 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load135 = load i32, i32* %84, align 8
  %bf.value136 = and i32 %82, 255
  %bf.shl137 = shl i32 %bf.value136, 16
  %bf.clear138 = and i32 %bf.load135, -16711681
  %bf.set139 = or i32 %bf.clear138, %bf.shl137
  store i32 %bf.set139, i32* %84, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 0
  %rtx142 = bitcast %union.rtunion_def* %arrayidx141 to %struct.rtx_def**
  store %struct.rtx_def* %85, %struct.rtx_def** %rtx142, align 8
  br label %if.end.147

if.else:                                          ; preds = %while.end
  %87 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call143 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %87, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call143, %struct.rtx_def** %note, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool144 = icmp ne %struct.rtx_def* %88, null
  br i1 %tobool144, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.else
  %89 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %89, %struct.rtx_def* %90)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.else
  br label %if.end.147

if.end.147:                                       ; preds = %if.then, %if.then.31, %if.then.73, %if.then.81, %if.then.97, %if.end.146, %if.then.134
  ret void
}

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @optimize_reg_copy_1(%struct.rtx_def* %insn, %struct.rtx_def* %dest, %struct.rtx_def* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %dest.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %q = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %dest_death = alloca %struct.rtx_def*, align 8
  %sregno = alloca i32, align 4
  %dregno = alloca i32, align 4
  %failed = alloca i32, align 4
  %d_length = alloca i32, align 4
  %s_length = alloca i32, align 4
  %d_n_calls = alloca i32, align 4
  %s_n_calls = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %dest_death, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %sregno, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtuint3, align 4
  store i32 %3, i32* %dregno, align 4
  %4 = load i32, i32* %sregno, align 4
  %5 = load i32, i32* %dregno, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, i32* %sregno, align 4
  %cmp4 = icmp slt i32 %6, 53
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %dregno, align 4
  %cmp6 = icmp slt i32 %7, 53
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.5
  %8 = load i32, i32* %sregno, align 4
  %cmp8 = icmp eq i32 %8, 7
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %9 = load i32, i32* %dregno, align 4
  %cmp10 = icmp eq i32 %9, 7
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.7, %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.9
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.239, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool, label %for.body, label %for.end.243

for.body:                                         ; preds = %for.cond
  %13 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %13)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  br label %for.end.243

if.else:                                          ; preds = %for.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx15 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx15, align 1
  %conv = sext i8 %16 to i32
  %cmp16 = icmp eq i32 %conv, 105
  br i1 %cmp16, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.else
  br label %for.inc.239

if.end.19:                                        ; preds = %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19
  %17 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call21 = call i32 @reg_set_p(%struct.rtx_def* %17, %struct.rtx_def* %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.42, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %if.end.20
  %19 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call24 = call i32 @reg_set_p(%struct.rtx_def* %19, %struct.rtx_def* %20)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.42, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.23
  %21 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load30 = load i32, i32* %23, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 48
  br i1 %cmp32, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %lor.lhs.false.26
  %24 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 3
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %call40 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %24, %struct.rtx_def* %27)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true, %lor.lhs.false.23, %if.end.20
  br label %for.end.243

if.end.43:                                        ; preds = %land.lhs.true, %lor.lhs.false.26
  %28 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %29 = load i32, i32* %sregno, align 4
  %call44 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %28, i32 1, i32 %29)
  store %struct.rtx_def* %call44, %struct.rtx_def** %note, align 8
  %cmp45 = icmp ne %struct.rtx_def* %call44, null
  br i1 %cmp45, label %land.lhs.true.47, label %if.else.230

land.lhs.true.47:                                 ; preds = %if.end.43
  %30 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load51 = load i32, i32* %32, align 8
  %bf.lshr = lshr i32 %bf.load51, 16
  %bf.clear52 = and i32 %bf.lshr, 255
  %33 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load53 = load i32, i32* %34, align 8
  %bf.lshr54 = lshr i32 %bf.load53, 16
  %bf.clear55 = and i32 %bf.lshr54, 255
  %cmp56 = icmp eq i32 %bf.clear52, %bf.clear55
  br i1 %cmp56, label %if.then.58, label %if.else.230

if.then.58:                                       ; preds = %land.lhs.true.47
  store i32 0, i32* %failed, align 4
  store i32 0, i32* %d_length, align 4
  store i32 0, i32* %s_length, align 4
  store i32 0, i32* %d_n_calls, align 4
  store i32 0, i32* %s_n_calls, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call59 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %35)
  store %struct.rtx_def* %call59, %struct.rtx_def** %q, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %if.then.58
  %36 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call61 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %37)
  %cmp62 = icmp ne %struct.rtx_def* %36, %call61
  br i1 %cmp62, label %for.body.64, label %for.end

for.body.64:                                      ; preds = %for.cond.60
  %38 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 3
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %call68 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %38, %struct.rtx_def* %40)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.97

if.then.70:                                       ; preds = %for.body.64
  %41 = load i32, i32* %sregno, align 4
  %cmp71 = icmp slt i32 %41, 53
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.80

land.lhs.true.73:                                 ; preds = %if.then.70
  %42 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 3
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %call77 = call i32 @reg_mentioned_p(%struct.rtx_def* %42, %struct.rtx_def* %44)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %land.lhs.true.73
  store i32 1, i32* %failed, align 4
  br label %if.end.96

if.else.80:                                       ; preds = %land.lhs.true.73, %if.then.70
  %45 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %call81 = call i32 @validate_replace_rtx(%struct.rtx_def* %45, %struct.rtx_def* %46, %struct.rtx_def* %47)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.else.93

land.lhs.true.83:                                 ; preds = %if.else.80
  %48 = load i32, i32* %sregno, align 4
  %cmp84 = icmp sge i32 %48, 53
  br i1 %cmp84, label %if.then.92, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %land.lhs.true.83
  %49 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 3
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %call90 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %49, %struct.rtx_def* %51)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.else.93, label %if.then.92

if.then.92:                                       ; preds = %lor.lhs.false.86, %land.lhs.true.83
  br label %if.end.95

if.else.93:                                       ; preds = %lor.lhs.false.86, %if.else.80
  %52 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %call94 = call i32 @validate_replace_rtx(%struct.rtx_def* %52, %struct.rtx_def* %53, %struct.rtx_def* %54)
  store i32 1, i32* %failed, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.92
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.79
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %for.body.64
  %55 = load i32, i32* %s_length, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %s_length, align 4
  %56 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %tobool98 = icmp ne %struct.rtx_def* %56, null
  br i1 %tobool98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %if.end.97
  %57 = load i32, i32* %d_length, align 4
  %inc100 = add nsw i32 %57, 1
  store i32 %inc100, i32* %d_length, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %if.end.97
  %58 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %cmp102 = icmp ne %struct.rtx_def* %58, %59
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.115

land.lhs.true.104:                                ; preds = %if.end.101
  %60 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load105 = load i32, i32* %61, align 8
  %bf.clear106 = and i32 %bf.load105, 65535
  %cmp107 = icmp eq i32 %bf.clear106, 34
  br i1 %cmp107, label %if.then.109, label %if.end.115

if.then.109:                                      ; preds = %land.lhs.true.104
  %62 = load i32, i32* %s_n_calls, align 4
  %inc110 = add nsw i32 %62, 1
  store i32 %inc110, i32* %s_n_calls, align 4
  %63 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %tobool111 = icmp ne %struct.rtx_def* %63, null
  br i1 %tobool111, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.then.109
  %64 = load i32, i32* %d_n_calls, align 4
  %inc113 = add nsw i32 %64, 1
  store i32 %inc113, i32* %d_n_calls, align 4
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.then.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %land.lhs.true.104, %if.end.101
  %65 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %cmp116 = icmp eq %struct.rtx_def* %65, null
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.137

land.lhs.true.118:                                ; preds = %if.end.115
  %66 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %67 = load i32, i32* %dregno, align 4
  %call119 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %66, i32 1, i32 %67)
  store %struct.rtx_def* %call119, %struct.rtx_def** %dest_death, align 8
  %cmp120 = icmp ne %struct.rtx_def* %call119, null
  br i1 %cmp120, label %if.then.122, label %if.end.137

if.then.122:                                      ; preds = %land.lhs.true.118
  %68 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 0
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load126 = load i32, i32* %70, align 8
  %bf.lshr127 = lshr i32 %bf.load126, 16
  %bf.clear128 = and i32 %bf.lshr127, 255
  %71 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load129 = load i32, i32* %72, align 8
  %bf.lshr130 = lshr i32 %bf.load129, 16
  %bf.clear131 = and i32 %bf.lshr130, 255
  %cmp132 = icmp ne i32 %bf.clear128, %bf.clear131
  br i1 %cmp132, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %if.then.122
  store i32 1, i32* %failed, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %dest_death, align 8
  br label %if.end.136

if.else.135:                                      ; preds = %if.then.122
  %73 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  call void @remove_note(%struct.rtx_def* %73, %struct.rtx_def* %74)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.135, %if.then.134
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %land.lhs.true.118, %if.end.115
  br label %for.inc

for.inc:                                          ; preds = %if.end.137
  %75 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %call138 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %75)
  store %struct.rtx_def* %call138, %struct.rtx_def** %q, align 8
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  %76 = load i32, i32* %failed, align 4
  %tobool139 = icmp ne i32 %76, 0
  br i1 %tobool139, label %if.end.184, label %if.then.140

if.then.140:                                      ; preds = %for.end
  %77 = load i32, i32* %sregno, align 4
  %cmp141 = icmp sge i32 %77, 53
  br i1 %cmp141, label %if.then.143, label %if.end.174

if.then.143:                                      ; preds = %if.then.140
  %78 = load i32, i32* %sregno, align 4
  %idxprom144 = sext i32 %78 to i64
  %79 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %79, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx145 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom144
  %80 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx145, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %80, i32 0, i32 7
  %81 = load i32, i32* %live_length, align 4
  %cmp146 = icmp sge i32 %81, 0
  br i1 %cmp146, label %if.then.148, label %if.end.168

if.then.148:                                      ; preds = %if.then.143
  %82 = load i32, i32* %s_length, align 4
  %83 = load i32, i32* %sregno, align 4
  %idxprom149 = sext i32 %83 to i64
  %84 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data150 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %84, i32 0, i32 4
  %reg151 = bitcast %union.varray_data_tag* %data150 to [1 x %struct.reg_info_def*]*
  %arrayidx152 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg151, i32 0, i64 %idxprom149
  %85 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx152, align 8
  %live_length153 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %85, i32 0, i32 7
  %86 = load i32, i32* %live_length153, align 4
  %sub = sub nsw i32 %86, %82
  store i32 %sub, i32* %live_length153, align 4
  %87 = load i32, i32* %sregno, align 4
  %idxprom154 = sext i32 %87 to i64
  %88 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data155 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %88, i32 0, i32 4
  %reg156 = bitcast %union.varray_data_tag* %data155 to [1 x %struct.reg_info_def*]*
  %arrayidx157 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg156, i32 0, i64 %idxprom154
  %89 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx157, align 8
  %live_length158 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %89, i32 0, i32 7
  %90 = load i32, i32* %live_length158, align 4
  %cmp159 = icmp slt i32 %90, 2
  br i1 %cmp159, label %if.then.161, label %if.end.167

if.then.161:                                      ; preds = %if.then.148
  %91 = load i32, i32* %sregno, align 4
  %idxprom162 = sext i32 %91 to i64
  %92 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data163 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %92, i32 0, i32 4
  %reg164 = bitcast %union.varray_data_tag* %data163 to [1 x %struct.reg_info_def*]*
  %arrayidx165 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg164, i32 0, i64 %idxprom162
  %93 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx165, align 8
  %live_length166 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %93, i32 0, i32 7
  store i32 2, i32* %live_length166, align 4
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.161, %if.then.148
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.143
  %94 = load i32, i32* %s_n_calls, align 4
  %95 = load i32, i32* %sregno, align 4
  %idxprom169 = sext i32 %95 to i64
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data170 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %96, i32 0, i32 4
  %reg171 = bitcast %union.varray_data_tag* %data170 to [1 x %struct.reg_info_def*]*
  %arrayidx172 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg171, i32 0, i64 %idxprom169
  %97 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx172, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %97, i32 0, i32 8
  %98 = load i32, i32* %calls_crossed, align 4
  %sub173 = sub nsw i32 %98, %94
  store i32 %sub173, i32* %calls_crossed, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.168, %if.then.140
  %99 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %99, %struct.rtx_def* %100)
  %101 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 6
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 1
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  store %struct.rtx_def* %102, %struct.rtx_def** %rtx180, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 6
  %rtx183 = bitcast %union.rtunion_def* %arrayidx182 to %struct.rtx_def**
  store %struct.rtx_def* %104, %struct.rtx_def** %rtx183, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.174, %for.end
  %106 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %tobool185 = icmp ne %struct.rtx_def* %106, null
  br i1 %tobool185, label %if.end.192, label %land.lhs.true.186

land.lhs.true.186:                                ; preds = %if.end.184
  %107 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %108 = load i32, i32* %dregno, align 4
  %call187 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %107, i32 10, i32 %108)
  store %struct.rtx_def* %call187, %struct.rtx_def** %dest_death, align 8
  %tobool188 = icmp ne %struct.rtx_def* %call187, null
  br i1 %tobool188, label %if.then.189, label %if.end.192

if.then.189:                                      ; preds = %land.lhs.true.186
  %109 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load190 = load i32, i32* %110, align 8
  %bf.clear191 = and i32 %bf.load190, -16711681
  %bf.set = or i32 %bf.clear191, 65536
  store i32 %bf.set, i32* %110, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  call void @remove_note(%struct.rtx_def* %111, %struct.rtx_def* %112)
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.189, %land.lhs.true.186, %if.end.184
  %113 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %tobool193 = icmp ne %struct.rtx_def* %113, null
  br i1 %tobool193, label %if.then.194, label %if.end.228

if.then.194:                                      ; preds = %if.end.192
  %114 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 6
  %rtx197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx197, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 1
  %rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**
  store %struct.rtx_def* %115, %struct.rtx_def** %rtx200, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %dest_death, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 6
  %rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**
  store %struct.rtx_def* %117, %struct.rtx_def** %rtx203, align 8
  %119 = load i32, i32* %dregno, align 4
  %cmp204 = icmp sge i32 %119, 53
  br i1 %cmp204, label %if.then.206, label %if.end.227

if.then.206:                                      ; preds = %if.then.194
  %120 = load i32, i32* %dregno, align 4
  %idxprom207 = sext i32 %120 to i64
  %121 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data208 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %121, i32 0, i32 4
  %reg209 = bitcast %union.varray_data_tag* %data208 to [1 x %struct.reg_info_def*]*
  %arrayidx210 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg209, i32 0, i64 %idxprom207
  %122 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx210, align 8
  %live_length211 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %122, i32 0, i32 7
  %123 = load i32, i32* %live_length211, align 4
  %cmp212 = icmp sge i32 %123, 0
  br i1 %cmp212, label %if.then.214, label %if.end.220

if.then.214:                                      ; preds = %if.then.206
  %124 = load i32, i32* %d_length, align 4
  %125 = load i32, i32* %dregno, align 4
  %idxprom215 = sext i32 %125 to i64
  %126 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data216 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %126, i32 0, i32 4
  %reg217 = bitcast %union.varray_data_tag* %data216 to [1 x %struct.reg_info_def*]*
  %arrayidx218 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg217, i32 0, i64 %idxprom215
  %127 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx218, align 8
  %live_length219 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %127, i32 0, i32 7
  %128 = load i32, i32* %live_length219, align 4
  %add = add nsw i32 %128, %124
  store i32 %add, i32* %live_length219, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.214, %if.then.206
  %129 = load i32, i32* %d_n_calls, align 4
  %130 = load i32, i32* %dregno, align 4
  %idxprom221 = sext i32 %130 to i64
  %131 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data222 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %131, i32 0, i32 4
  %reg223 = bitcast %union.varray_data_tag* %data222 to [1 x %struct.reg_info_def*]*
  %arrayidx224 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg223, i32 0, i64 %idxprom221
  %132 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx224, align 8
  %calls_crossed225 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %132, i32 0, i32 8
  %133 = load i32, i32* %calls_crossed225, align 4
  %add226 = add nsw i32 %133, %129
  store i32 %add226, i32* %calls_crossed225, align 4
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.220, %if.then.194
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.end.192
  %134 = load i32, i32* %failed, align 4
  %tobool229 = icmp ne i32 %134, 0
  %lnot = xor i1 %tobool229, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.else.230:                                      ; preds = %land.lhs.true.47, %if.end.43
  %135 = load i32, i32* %sregno, align 4
  %cmp231 = icmp slt i32 %135, 53
  br i1 %cmp231, label %land.lhs.true.233, label %if.end.237

land.lhs.true.233:                                ; preds = %if.else.230
  %136 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call234 = call i32 @dead_or_set_p(%struct.rtx_def* %136, %struct.rtx_def* %137)
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %land.lhs.true.233
  br label %for.end.243

if.end.237:                                       ; preds = %land.lhs.true.233, %if.else.230
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238, %if.then.18
  %138 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld240 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld240, i32 0, i64 2
  %rtx242 = bitcast %union.rtunion_def* %arrayidx241 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx242, align 8
  store %struct.rtx_def* %139, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end.243:                                      ; preds = %if.then.236, %if.then.42, %if.then.14, %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.243, %if.end.228, %if.then
  %140 = load i32, i32* %retval
  ret i32 %140
}

; Function Attrs: nounwind uwtable
define internal void @optimize_reg_copy_2(%struct.rtx_def* %insn, %struct.rtx_def* %dest, %struct.rtx_def* %src) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %dest.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %q = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %sregno = alloca i32, align 4
  %dregno = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %sregno, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtuint3, align 4
  store i32 %3, i32* %dregno, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.131, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %for.body, label %for.end.135

for.body:                                         ; preds = %for.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %7)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end.135

if.else:                                          ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.else
  br label %for.inc.131

if.end:                                           ; preds = %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %idxprom13 = sext i32 %bf.clear12 to i64
  %arrayidx14 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %13 to i32
  %cmp16 = icmp eq i32 %conv15, 105
  br i1 %cmp16, label %cond.true, label %cond.false.33

cond.true:                                        ; preds = %if.end.10
  %14 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 47
  br i1 %cmp23, label %cond.true.25, label %cond.false

cond.true.25:                                     ; preds = %cond.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 3
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %call32 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %19, %struct.rtx_def* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.25
  %cond = phi %struct.rtx_def* [ %18, %cond.true.25 ], [ %call32, %cond.false ]
  br label %cond.end.34

cond.false.33:                                    ; preds = %if.end.10
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.end
  %cond35 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.33 ]
  store %struct.rtx_def* %cond35, %struct.rtx_def** %set, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool36 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool36, label %land.lhs.true, label %if.end.111

land.lhs.true:                                    ; preds = %cond.end.34
  %23 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %cmp40 = icmp eq %struct.rtx_def* %24, %25
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.111

land.lhs.true.42:                                 ; preds = %land.lhs.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp46 = icmp eq %struct.rtx_def* %27, %28
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.111

land.lhs.true.48:                                 ; preds = %land.lhs.true.42
  %29 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %call49 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %29, i32 1, %struct.rtx_def* %30)
  %tobool50 = icmp ne %struct.rtx_def* %call49, null
  br i1 %tobool50, label %if.then.51, label %if.end.111

if.then.51:                                       ; preds = %land.lhs.true.48
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %q, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc, %if.then.51
  %32 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 2
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %cmp56 = icmp ne %struct.rtx_def* %32, %34
  br i1 %cmp56, label %for.body.58, label %for.end

for.body.58:                                      ; preds = %for.cond.52
  %35 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load59 = load i32, i32* %36, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %idxprom61 = sext i32 %bf.clear60 to i64
  %arrayidx62 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom61
  %37 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %37 to i32
  %cmp64 = icmp eq i32 %conv63, 105
  br i1 %cmp64, label %if.then.66, label %if.end.94

if.then.66:                                       ; preds = %for.body.58
  %38 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 3
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %call70 = call i32 @reg_mentioned_p(%struct.rtx_def* %38, %struct.rtx_def* %40)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %if.then.66
  %41 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 3
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call76 = call %struct.rtx_def* @replace_rtx(%struct.rtx_def* %42, %struct.rtx_def* %43, %struct.rtx_def* %44)
  %45 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 3
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  store %struct.rtx_def* %call76, %struct.rtx_def** %rtx79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.72, %if.then.66
  %46 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load81 = load i32, i32* %47, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 34
  br i1 %cmp83, label %if.then.85, label %if.end.93

if.then.85:                                       ; preds = %if.end.80
  %48 = load i32, i32* %dregno, align 4
  %idxprom86 = sext i32 %48 to i64
  %49 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %49, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx87 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom86
  %50 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx87, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %50, i32 0, i32 8
  %51 = load i32, i32* %calls_crossed, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %calls_crossed, align 4
  %52 = load i32, i32* %sregno, align 4
  %idxprom88 = sext i32 %52 to i64
  %53 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data89 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %53, i32 0, i32 4
  %reg90 = bitcast %union.varray_data_tag* %data89 to [1 x %struct.reg_info_def*]*
  %arrayidx91 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg90, i32 0, i64 %idxprom88
  %54 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx91, align 8
  %calls_crossed92 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %54, i32 0, i32 8
  %55 = load i32, i32* %calls_crossed92, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %calls_crossed92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.85, %if.end.80
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %for.body.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.94
  %56 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 2
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %q, align 8
  br label %for.cond.52

for.end:                                          ; preds = %for.cond.52
  %58 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %call98 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %59, i32 1, %struct.rtx_def* %60)
  call void @remove_note(%struct.rtx_def* %58, %struct.rtx_def* %call98)
  %61 = load i32, i32* %dregno, align 4
  %idxprom99 = sext i32 %61 to i64
  %62 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data100 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %62, i32 0, i32 4
  %reg101 = bitcast %union.varray_data_tag* %data100 to [1 x %struct.reg_info_def*]*
  %arrayidx102 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg101, i32 0, i64 %idxprom99
  %63 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx102, align 8
  %deaths = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %63, i32 0, i32 6
  %64 = load i32, i32* %deaths, align 4
  %dec103 = add nsw i32 %64, -1
  store i32 %dec103, i32* %deaths, align 4
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call104 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %66, i32 1, %struct.rtx_def* %67)
  call void @remove_note(%struct.rtx_def* %65, %struct.rtx_def* %call104)
  %68 = load i32, i32* %sregno, align 4
  %idxprom105 = sext i32 %68 to i64
  %69 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data106 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %69, i32 0, i32 4
  %reg107 = bitcast %union.varray_data_tag* %data106 to [1 x %struct.reg_info_def*]*
  %arrayidx108 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg107, i32 0, i64 %idxprom105
  %70 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx108, align 8
  %deaths109 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %70, i32 0, i32 6
  %71 = load i32, i32* %deaths109, align 4
  %dec110 = add nsw i32 %71, -1
  store i32 %dec110, i32* %deaths109, align 4
  br label %for.end.135

if.end.111:                                       ; preds = %land.lhs.true.48, %land.lhs.true.42, %land.lhs.true, %cond.end.34
  %72 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call112 = call i32 @reg_set_p(%struct.rtx_def* %72, %struct.rtx_def* %73)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.111
  %74 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %call114 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %74, i32 1, %struct.rtx_def* %75)
  %tobool115 = icmp ne %struct.rtx_def* %call114, null
  br i1 %tobool115, label %if.then.129, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %lor.lhs.false
  %76 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load117 = load i32, i32* %77, align 8
  %bf.clear118 = and i32 %bf.load117, 65535
  %cmp119 = icmp eq i32 %bf.clear118, 34
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.130

land.lhs.true.121:                                ; preds = %lor.lhs.false.116
  %78 = load i32, i32* %sregno, align 4
  %idxprom122 = sext i32 %78 to i64
  %79 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data123 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %79, i32 0, i32 4
  %reg124 = bitcast %union.varray_data_tag* %data123 to [1 x %struct.reg_info_def*]*
  %arrayidx125 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg124, i32 0, i64 %idxprom122
  %80 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx125, align 8
  %calls_crossed126 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %80, i32 0, i32 8
  %81 = load i32, i32* %calls_crossed126, align 4
  %cmp127 = icmp eq i32 %81, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %land.lhs.true.121, %lor.lhs.false, %if.end.111
  br label %for.end.135

if.end.130:                                       ; preds = %land.lhs.true.121, %lor.lhs.false.116
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130, %if.then.9
  %82 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 2
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end.135:                                      ; preds = %for.end, %if.then.129, %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_matches(%struct.rtx_def* %insn, %struct.match* %matchp) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %matchp.addr = alloca %struct.match*, align 8
  %likely_spilled = alloca [30 x i32], align 16
  %op_no = alloca i32, align 4
  %any_matches = alloca i32, align 4
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %end = alloca i8*, align 8
  %match_ul = alloca i64, align 8
  %match = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.match* %matchp, %struct.match** %matchp.addr, align 8
  store i32 0, i32* %any_matches, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @extract_insn(%struct.rtx_def* %0)
  %call = call i32 @constrain_operands(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %op_no, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %2 = load i32, i32* %op_no, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %op_no, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %op_no, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %commutative = getelementptr inbounds %struct.match, %struct.match* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [30 x i32], [30 x i32]* %commutative, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %5 = load i32, i32* %op_no, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %with = getelementptr inbounds %struct.match, %struct.match* %6, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [30 x i32], [30 x i32]* %with, i32 0, i64 %idxprom2
  store i32 -1, i32* %arrayidx3, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %op_no, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.1175, %for.end
  %7 = load i32, i32* %op_no, align 4
  %8 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp slt i32 %7, %conv5
  br i1 %cmp6, label %for.body.8, label %for.end.1177

for.body.8:                                       ; preds = %for.cond.4
  store i32 0, i32* %i, align 4
  %9 = load i32, i32* %op_no, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom9
  %10 = load i8*, i8** %arrayidx10, align 8
  store i8* %10, i8** %p, align 8
  %11 = load i32, i32* %op_no, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [30 x i32], [30 x i32]* %likely_spilled, i32 0, i64 %idxprom11
  store i32 0, i32* %arrayidx12, align 4
  %12 = load i32, i32* %op_no, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %use = getelementptr inbounds %struct.match, %struct.match* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [30 x i32], [30 x i32]* %use, i32 0, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4
  %14 = load i32, i32* %op_no, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %early_clobber = getelementptr inbounds %struct.match, %struct.match* %15, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [30 x i32], [30 x i32]* %early_clobber, i32 0, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 61
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.body.8
  %18 = load i32, i32* %op_no, align 4
  %idxprom21 = sext i32 %18 to i64
  %19 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %use22 = getelementptr inbounds %struct.match, %struct.match* %19, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [30 x i32], [30 x i32]* %use22, i32 0, i64 %idxprom21
  store i32 1, i32* %arrayidx23, align 4
  br label %if.end.32

if.else:                                          ; preds = %for.body.8
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv24 = sext i8 %21 to i32
  %cmp25 = icmp eq i32 %conv24, 43
  br i1 %cmp25, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.else
  %22 = load i32, i32* %op_no, align 4
  %idxprom28 = sext i32 %22 to i64
  %23 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %use29 = getelementptr inbounds %struct.match, %struct.match* %23, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [30 x i32], [30 x i32]* %use29, i32 0, i64 %idxprom28
  store i32 2, i32* %arrayidx30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.end.32
  %24 = load i8*, i8** %p, align 8
  %25 = load i8, i8* %24, align 1
  %conv34 = sext i8 %25 to i32
  %tobool35 = icmp ne i32 %conv34, 0
  br i1 %tobool35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.33
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* @which_alternative, align 4
  %cmp36 = icmp slt i32 %26, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.33
  %28 = phi i1 [ false, %for.cond.33 ], [ %cmp36, %land.rhs ]
  br i1 %28, label %for.body.38, label %for.end.44

for.body.38:                                      ; preds = %land.end
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv39 = sext i8 %30 to i32
  %cmp40 = icmp eq i32 %conv39, 44
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.38
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %for.body.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond.33

for.end.44:                                       ; preds = %land.end
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %for.end.44
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr45, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %c, align 1
  %conv46 = sext i8 %34 to i32
  %cmp47 = icmp ne i32 %conv46, 0
  br i1 %cmp47, label %land.rhs.49, label %land.end.53

land.rhs.49:                                      ; preds = %while.cond
  %35 = load i8, i8* %c, align 1
  %conv50 = sext i8 %35 to i32
  %cmp51 = icmp ne i32 %conv50, 44
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.49, %while.cond
  %36 = phi i1 [ false, %while.cond ], [ %cmp51, %land.rhs.49 ]
  br i1 %36, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.53
  %37 = load i8, i8* %c, align 1
  %conv54 = sext i8 %37 to i32
  switch i32 %conv54, label %sw.epilog [
    i32 61, label %sw.bb
    i32 43, label %sw.bb.55
    i32 38, label %sw.bb.56
    i32 37, label %sw.bb.60
    i32 48, label %sw.bb.68
    i32 49, label %sw.bb.68
    i32 50, label %sw.bb.68
    i32 51, label %sw.bb.68
    i32 52, label %sw.bb.68
    i32 53, label %sw.bb.68
    i32 54, label %sw.bb.68
    i32 55, label %sw.bb.68
    i32 56, label %sw.bb.68
    i32 57, label %sw.bb.68
    i32 97, label %sw.bb.94
    i32 98, label %sw.bb.94
    i32 99, label %sw.bb.94
    i32 100, label %sw.bb.94
    i32 101, label %sw.bb.94
    i32 102, label %sw.bb.94
    i32 104, label %sw.bb.94
    i32 106, label %sw.bb.94
    i32 107, label %sw.bb.94
    i32 108, label %sw.bb.94
    i32 112, label %sw.bb.94
    i32 113, label %sw.bb.94
    i32 116, label %sw.bb.94
    i32 117, label %sw.bb.94
    i32 118, label %sw.bb.94
    i32 119, label %sw.bb.94
    i32 120, label %sw.bb.94
    i32 121, label %sw.bb.94
    i32 122, label %sw.bb.94
    i32 65, label %sw.bb.94
    i32 66, label %sw.bb.94
    i32 67, label %sw.bb.94
    i32 68, label %sw.bb.94
    i32 87, label %sw.bb.94
    i32 89, label %sw.bb.94
    i32 90, label %sw.bb.94
  ]

sw.bb:                                            ; preds = %while.body
  br label %sw.epilog

sw.bb.55:                                         ; preds = %while.body
  br label %sw.epilog

sw.bb.56:                                         ; preds = %while.body
  %38 = load i32, i32* %op_no, align 4
  %idxprom57 = sext i32 %38 to i64
  %39 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %early_clobber58 = getelementptr inbounds %struct.match, %struct.match* %39, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [30 x i32], [30 x i32]* %early_clobber58, i32 0, i64 %idxprom57
  store i32 1, i32* %arrayidx59, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %while.body
  %40 = load i32, i32* %op_no, align 4
  %add = add nsw i32 %40, 1
  %41 = load i32, i32* %op_no, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %commutative62 = getelementptr inbounds %struct.match, %struct.match* %42, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative62, i32 0, i64 %idxprom61
  store i32 %add, i32* %arrayidx63, align 4
  %43 = load i32, i32* %op_no, align 4
  %44 = load i32, i32* %op_no, align 4
  %add64 = add nsw i32 %44, 1
  %idxprom65 = sext i32 %add64 to i64
  %45 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %commutative66 = getelementptr inbounds %struct.match, %struct.match* %45, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative66, i32 0, i64 %idxprom65
  store i32 %43, i32* %arrayidx67, align 4
  br label %sw.epilog

sw.bb.68:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %46 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 -1
  %call69 = call i64 @strtoul(i8* %add.ptr, i8** %end, i32 10) #3
  store i64 %call69, i64* %match_ul, align 8
  %47 = load i64, i64* %match_ul, align 8
  %conv70 = trunc i64 %47 to i32
  store i32 %conv70, i32* %match, align 4
  %48 = load i8*, i8** %end, align 8
  store i8* %48, i8** %p, align 8
  %49 = load i32, i32* %match, align 4
  %50 = load i32, i32* %op_no, align 4
  %cmp71 = icmp slt i32 %49, %50
  br i1 %cmp71, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %sw.bb.68
  %51 = load i32, i32* %match, align 4
  %idxprom73 = sext i32 %51 to i64
  %arrayidx74 = getelementptr inbounds [30 x i32], [30 x i32]* %likely_spilled, i32 0, i64 %idxprom73
  %52 = load i32, i32* %arrayidx74, align 4
  %tobool75 = icmp ne i32 %52, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true
  br label %sw.epilog

if.end.77:                                        ; preds = %land.lhs.true, %sw.bb.68
  %53 = load i32, i32* %match, align 4
  %54 = load i32, i32* %op_no, align 4
  %idxprom78 = sext i32 %54 to i64
  %55 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %with79 = getelementptr inbounds %struct.match, %struct.match* %55, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [30 x i32], [30 x i32]* %with79, i32 0, i64 %idxprom78
  store i32 %53, i32* %arrayidx80, align 4
  store i32 1, i32* %any_matches, align 4
  %56 = load i32, i32* %op_no, align 4
  %idxprom81 = sext i32 %56 to i64
  %57 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %commutative82 = getelementptr inbounds %struct.match, %struct.match* %57, i32 0, i32 2
  %arrayidx83 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative82, i32 0, i64 %idxprom81
  %58 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp sge i32 %58, 0
  br i1 %cmp84, label %if.then.86, label %if.end.93

if.then.86:                                       ; preds = %if.end.77
  %59 = load i32, i32* %match, align 4
  %60 = load i32, i32* %op_no, align 4
  %idxprom87 = sext i32 %60 to i64
  %61 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %commutative88 = getelementptr inbounds %struct.match, %struct.match* %61, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [30 x i32], [30 x i32]* %commutative88, i32 0, i64 %idxprom87
  %62 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %62 to i64
  %63 = load %struct.match*, %struct.match** %matchp.addr, align 8
  %with91 = getelementptr inbounds %struct.match, %struct.match* %63, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [30 x i32], [30 x i32]* %with91, i32 0, i64 %idxprom90
  store i32 %59, i32* %arrayidx92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.86, %if.end.77
  br label %sw.epilog

sw.bb.94:                                         ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %64 = load i8, i8* %c, align 1
  %conv95 = zext i8 %64 to i32
  %cmp96 = icmp eq i32 %conv95, 114
  br i1 %cmp96, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.94
  br label %cond.end.238

cond.false:                                       ; preds = %sw.bb.94
  %65 = load i8, i8* %c, align 1
  %conv98 = zext i8 %65 to i32
  %cmp99 = icmp eq i32 %conv98, 82
  br i1 %cmp99, label %cond.true.101, label %cond.false.102

cond.true.101:                                    ; preds = %cond.false
  br label %cond.end.236

cond.false.102:                                   ; preds = %cond.false
  %66 = load i8, i8* %c, align 1
  %conv103 = zext i8 %66 to i32
  %cmp104 = icmp eq i32 %conv103, 113
  br i1 %cmp104, label %cond.true.106, label %cond.false.108

cond.true.106:                                    ; preds = %cond.false.102
  %67 = load i32, i32* @target_flags, align 4
  %and = and i32 %67, 33554432
  %tobool107 = icmp ne i32 %and, 0
  %cond = select i1 %tobool107, i32 12, i32 8
  br label %cond.end.234

cond.false.108:                                   ; preds = %cond.false.102
  %68 = load i8, i8* %c, align 1
  %conv109 = zext i8 %68 to i32
  %cmp110 = icmp eq i32 %conv109, 81
  br i1 %cmp110, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %cond.false.108
  br label %cond.end.232

cond.false.113:                                   ; preds = %cond.false.108
  %69 = load i8, i8* %c, align 1
  %conv114 = zext i8 %69 to i32
  %cmp115 = icmp eq i32 %conv114, 102
  br i1 %cmp115, label %cond.true.117, label %cond.false.123

cond.true.117:                                    ; preds = %cond.false.113
  %70 = load i32, i32* @target_flags, align 4
  %and118 = and i32 %70, 1
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.117
  %71 = load i32, i32* @target_flags, align 4
  %and120 = and i32 %71, 32
  %tobool121 = icmp ne i32 %and120, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.117
  %72 = phi i1 [ true, %cond.true.117 ], [ %tobool121, %lor.rhs ]
  %cond122 = select i1 %72, i32 15, i32 0
  br label %cond.end.230

cond.false.123:                                   ; preds = %cond.false.113
  %73 = load i8, i8* %c, align 1
  %conv124 = zext i8 %73 to i32
  %cmp125 = icmp eq i32 %conv124, 116
  br i1 %cmp125, label %cond.true.127, label %cond.false.135

cond.true.127:                                    ; preds = %cond.false.123
  %74 = load i32, i32* @target_flags, align 4
  %and128 = and i32 %74, 1
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %lor.end.133, label %lor.rhs.130

lor.rhs.130:                                      ; preds = %cond.true.127
  %75 = load i32, i32* @target_flags, align 4
  %and131 = and i32 %75, 32
  %tobool132 = icmp ne i32 %and131, 0
  br label %lor.end.133

lor.end.133:                                      ; preds = %lor.rhs.130, %cond.true.127
  %76 = phi i1 [ true, %cond.true.127 ], [ %tobool132, %lor.rhs.130 ]
  %cond134 = select i1 %76, i32 13, i32 0
  br label %cond.end.228

cond.false.135:                                   ; preds = %cond.false.123
  %77 = load i8, i8* %c, align 1
  %conv136 = zext i8 %77 to i32
  %cmp137 = icmp eq i32 %conv136, 117
  br i1 %cmp137, label %cond.true.139, label %cond.false.147

cond.true.139:                                    ; preds = %cond.false.135
  %78 = load i32, i32* @target_flags, align 4
  %and140 = and i32 %78, 1
  %tobool141 = icmp ne i32 %and140, 0
  br i1 %tobool141, label %lor.end.145, label %lor.rhs.142

lor.rhs.142:                                      ; preds = %cond.true.139
  %79 = load i32, i32* @target_flags, align 4
  %and143 = and i32 %79, 32
  %tobool144 = icmp ne i32 %and143, 0
  br label %lor.end.145

lor.end.145:                                      ; preds = %lor.rhs.142, %cond.true.139
  %80 = phi i1 [ true, %cond.true.139 ], [ %tobool144, %lor.rhs.142 ]
  %cond146 = select i1 %80, i32 14, i32 0
  br label %cond.end.226

cond.false.147:                                   ; preds = %cond.false.135
  %81 = load i8, i8* %c, align 1
  %conv148 = zext i8 %81 to i32
  %cmp149 = icmp eq i32 %conv148, 97
  br i1 %cmp149, label %cond.true.151, label %cond.false.152

cond.true.151:                                    ; preds = %cond.false.147
  br label %cond.end.224

cond.false.152:                                   ; preds = %cond.false.147
  %82 = load i8, i8* %c, align 1
  %conv153 = zext i8 %82 to i32
  %cmp154 = icmp eq i32 %conv153, 98
  br i1 %cmp154, label %cond.true.156, label %cond.false.157

cond.true.156:                                    ; preds = %cond.false.152
  br label %cond.end.222

cond.false.157:                                   ; preds = %cond.false.152
  %83 = load i8, i8* %c, align 1
  %conv158 = zext i8 %83 to i32
  %cmp159 = icmp eq i32 %conv158, 99
  br i1 %cmp159, label %cond.true.161, label %cond.false.162

cond.true.161:                                    ; preds = %cond.false.157
  br label %cond.end.220

cond.false.162:                                   ; preds = %cond.false.157
  %84 = load i8, i8* %c, align 1
  %conv163 = zext i8 %84 to i32
  %cmp164 = icmp eq i32 %conv163, 100
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.false.162
  br label %cond.end.218

cond.false.167:                                   ; preds = %cond.false.162
  %85 = load i8, i8* %c, align 1
  %conv168 = zext i8 %85 to i32
  %cmp169 = icmp eq i32 %conv168, 120
  br i1 %cmp169, label %cond.true.171, label %cond.false.176

cond.true.171:                                    ; preds = %cond.false.167
  %86 = load i32, i32* @target_flags, align 4
  %and172 = and i32 %86, 327680
  %cmp173 = icmp ne i32 %and172, 0
  %cond175 = select i1 %cmp173, i32 16, i32 0
  br label %cond.end.216

cond.false.176:                                   ; preds = %cond.false.167
  %87 = load i8, i8* %c, align 1
  %conv177 = zext i8 %87 to i32
  %cmp178 = icmp eq i32 %conv177, 89
  br i1 %cmp178, label %cond.true.180, label %cond.false.185

cond.true.180:                                    ; preds = %cond.false.176
  %88 = load i32, i32* @target_flags, align 4
  %and181 = and i32 %88, 262144
  %cmp182 = icmp ne i32 %and181, 0
  %cond184 = select i1 %cmp182, i32 16, i32 0
  br label %cond.end.214

cond.false.185:                                   ; preds = %cond.false.176
  %89 = load i8, i8* %c, align 1
  %conv186 = zext i8 %89 to i32
  %cmp187 = icmp eq i32 %conv186, 121
  br i1 %cmp187, label %cond.true.189, label %cond.false.194

cond.true.189:                                    ; preds = %cond.false.185
  %90 = load i32, i32* @target_flags, align 4
  %and190 = and i32 %90, 16384
  %cmp191 = icmp ne i32 %and190, 0
  %cond193 = select i1 %cmp191, i32 17, i32 0
  br label %cond.end.212

cond.false.194:                                   ; preds = %cond.false.185
  %91 = load i8, i8* %c, align 1
  %conv195 = zext i8 %91 to i32
  %cmp196 = icmp eq i32 %conv195, 65
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %cond.false.194
  br label %cond.end.210

cond.false.199:                                   ; preds = %cond.false.194
  %92 = load i8, i8* %c, align 1
  %conv200 = zext i8 %92 to i32
  %cmp201 = icmp eq i32 %conv200, 68
  br i1 %cmp201, label %cond.true.203, label %cond.false.204

cond.true.203:                                    ; preds = %cond.false.199
  br label %cond.end

cond.false.204:                                   ; preds = %cond.false.199
  %93 = load i8, i8* %c, align 1
  %conv205 = zext i8 %93 to i32
  %cmp206 = icmp eq i32 %conv205, 83
  %cond208 = select i1 %cmp206, i32 5, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.204, %cond.true.203
  %cond209 = phi i32 [ 6, %cond.true.203 ], [ %cond208, %cond.false.204 ]
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.end, %cond.true.198
  %cond211 = phi i32 [ 7, %cond.true.198 ], [ %cond209, %cond.end ]
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.end.210, %cond.true.189
  %cond213 = phi i32 [ %cond193, %cond.true.189 ], [ %cond211, %cond.end.210 ]
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.end.212, %cond.true.180
  %cond215 = phi i32 [ %cond184, %cond.true.180 ], [ %cond213, %cond.end.212 ]
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.end.214, %cond.true.171
  %cond217 = phi i32 [ %cond175, %cond.true.171 ], [ %cond215, %cond.end.214 ]
  br label %cond.end.218

cond.end.218:                                     ; preds = %cond.end.216, %cond.true.166
  %cond219 = phi i32 [ 2, %cond.true.166 ], [ %cond217, %cond.end.216 ]
  br label %cond.end.220

cond.end.220:                                     ; preds = %cond.end.218, %cond.true.161
  %cond221 = phi i32 [ 3, %cond.true.161 ], [ %cond219, %cond.end.218 ]
  br label %cond.end.222

cond.end.222:                                     ; preds = %cond.end.220, %cond.true.156
  %cond223 = phi i32 [ 4, %cond.true.156 ], [ %cond221, %cond.end.220 ]
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.end.222, %cond.true.151
  %cond225 = phi i32 [ 1, %cond.true.151 ], [ %cond223, %cond.end.222 ]
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.end.224, %lor.end.145
  %cond227 = phi i32 [ %cond146, %lor.end.145 ], [ %cond225, %cond.end.224 ]
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.end.226, %lor.end.133
  %cond229 = phi i32 [ %cond134, %lor.end.133 ], [ %cond227, %cond.end.226 ]
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.end.228, %lor.end
  %cond231 = phi i32 [ %cond122, %lor.end ], [ %cond229, %cond.end.228 ]
  br label %cond.end.232

cond.end.232:                                     ; preds = %cond.end.230, %cond.true.112
  %cond233 = phi i32 [ 8, %cond.true.112 ], [ %cond231, %cond.end.230 ]
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.end.232, %cond.true.106
  %cond235 = phi i32 [ %cond, %cond.true.106 ], [ %cond233, %cond.end.232 ]
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.end.234, %cond.true.101
  %cond237 = phi i32 [ 11, %cond.true.101 ], [ %cond235, %cond.end.234 ]
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.end.236, %cond.true
  %cond239 = phi i32 [ 12, %cond.true ], [ %cond237, %cond.end.236 ]
  %cmp240 = icmp eq i32 %cond239, 1
  br i1 %cmp240, label %if.then.1171, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.238
  %94 = load i8, i8* %c, align 1
  %conv242 = zext i8 %94 to i32
  %cmp243 = icmp eq i32 %conv242, 114
  br i1 %cmp243, label %cond.true.245, label %cond.false.246

cond.true.245:                                    ; preds = %lor.lhs.false
  br label %cond.end.392

cond.false.246:                                   ; preds = %lor.lhs.false
  %95 = load i8, i8* %c, align 1
  %conv247 = zext i8 %95 to i32
  %cmp248 = icmp eq i32 %conv247, 82
  br i1 %cmp248, label %cond.true.250, label %cond.false.251

cond.true.250:                                    ; preds = %cond.false.246
  br label %cond.end.390

cond.false.251:                                   ; preds = %cond.false.246
  %96 = load i8, i8* %c, align 1
  %conv252 = zext i8 %96 to i32
  %cmp253 = icmp eq i32 %conv252, 113
  br i1 %cmp253, label %cond.true.255, label %cond.false.259

cond.true.255:                                    ; preds = %cond.false.251
  %97 = load i32, i32* @target_flags, align 4
  %and256 = and i32 %97, 33554432
  %tobool257 = icmp ne i32 %and256, 0
  %cond258 = select i1 %tobool257, i32 12, i32 8
  br label %cond.end.388

cond.false.259:                                   ; preds = %cond.false.251
  %98 = load i8, i8* %c, align 1
  %conv260 = zext i8 %98 to i32
  %cmp261 = icmp eq i32 %conv260, 81
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %cond.false.259
  br label %cond.end.386

cond.false.264:                                   ; preds = %cond.false.259
  %99 = load i8, i8* %c, align 1
  %conv265 = zext i8 %99 to i32
  %cmp266 = icmp eq i32 %conv265, 102
  br i1 %cmp266, label %cond.true.268, label %cond.false.276

cond.true.268:                                    ; preds = %cond.false.264
  %100 = load i32, i32* @target_flags, align 4
  %and269 = and i32 %100, 1
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %lor.end.274, label %lor.rhs.271

lor.rhs.271:                                      ; preds = %cond.true.268
  %101 = load i32, i32* @target_flags, align 4
  %and272 = and i32 %101, 32
  %tobool273 = icmp ne i32 %and272, 0
  br label %lor.end.274

lor.end.274:                                      ; preds = %lor.rhs.271, %cond.true.268
  %102 = phi i1 [ true, %cond.true.268 ], [ %tobool273, %lor.rhs.271 ]
  %cond275 = select i1 %102, i32 15, i32 0
  br label %cond.end.384

cond.false.276:                                   ; preds = %cond.false.264
  %103 = load i8, i8* %c, align 1
  %conv277 = zext i8 %103 to i32
  %cmp278 = icmp eq i32 %conv277, 116
  br i1 %cmp278, label %cond.true.280, label %cond.false.288

cond.true.280:                                    ; preds = %cond.false.276
  %104 = load i32, i32* @target_flags, align 4
  %and281 = and i32 %104, 1
  %tobool282 = icmp ne i32 %and281, 0
  br i1 %tobool282, label %lor.end.286, label %lor.rhs.283

lor.rhs.283:                                      ; preds = %cond.true.280
  %105 = load i32, i32* @target_flags, align 4
  %and284 = and i32 %105, 32
  %tobool285 = icmp ne i32 %and284, 0
  br label %lor.end.286

lor.end.286:                                      ; preds = %lor.rhs.283, %cond.true.280
  %106 = phi i1 [ true, %cond.true.280 ], [ %tobool285, %lor.rhs.283 ]
  %cond287 = select i1 %106, i32 13, i32 0
  br label %cond.end.382

cond.false.288:                                   ; preds = %cond.false.276
  %107 = load i8, i8* %c, align 1
  %conv289 = zext i8 %107 to i32
  %cmp290 = icmp eq i32 %conv289, 117
  br i1 %cmp290, label %cond.true.292, label %cond.false.300

cond.true.292:                                    ; preds = %cond.false.288
  %108 = load i32, i32* @target_flags, align 4
  %and293 = and i32 %108, 1
  %tobool294 = icmp ne i32 %and293, 0
  br i1 %tobool294, label %lor.end.298, label %lor.rhs.295

lor.rhs.295:                                      ; preds = %cond.true.292
  %109 = load i32, i32* @target_flags, align 4
  %and296 = and i32 %109, 32
  %tobool297 = icmp ne i32 %and296, 0
  br label %lor.end.298

lor.end.298:                                      ; preds = %lor.rhs.295, %cond.true.292
  %110 = phi i1 [ true, %cond.true.292 ], [ %tobool297, %lor.rhs.295 ]
  %cond299 = select i1 %110, i32 14, i32 0
  br label %cond.end.380

cond.false.300:                                   ; preds = %cond.false.288
  %111 = load i8, i8* %c, align 1
  %conv301 = zext i8 %111 to i32
  %cmp302 = icmp eq i32 %conv301, 97
  br i1 %cmp302, label %cond.true.304, label %cond.false.305

cond.true.304:                                    ; preds = %cond.false.300
  br label %cond.end.378

cond.false.305:                                   ; preds = %cond.false.300
  %112 = load i8, i8* %c, align 1
  %conv306 = zext i8 %112 to i32
  %cmp307 = icmp eq i32 %conv306, 98
  br i1 %cmp307, label %cond.true.309, label %cond.false.310

cond.true.309:                                    ; preds = %cond.false.305
  br label %cond.end.376

cond.false.310:                                   ; preds = %cond.false.305
  %113 = load i8, i8* %c, align 1
  %conv311 = zext i8 %113 to i32
  %cmp312 = icmp eq i32 %conv311, 99
  br i1 %cmp312, label %cond.true.314, label %cond.false.315

cond.true.314:                                    ; preds = %cond.false.310
  br label %cond.end.374

cond.false.315:                                   ; preds = %cond.false.310
  %114 = load i8, i8* %c, align 1
  %conv316 = zext i8 %114 to i32
  %cmp317 = icmp eq i32 %conv316, 100
  br i1 %cmp317, label %cond.true.319, label %cond.false.320

cond.true.319:                                    ; preds = %cond.false.315
  br label %cond.end.372

cond.false.320:                                   ; preds = %cond.false.315
  %115 = load i8, i8* %c, align 1
  %conv321 = zext i8 %115 to i32
  %cmp322 = icmp eq i32 %conv321, 120
  br i1 %cmp322, label %cond.true.324, label %cond.false.329

cond.true.324:                                    ; preds = %cond.false.320
  %116 = load i32, i32* @target_flags, align 4
  %and325 = and i32 %116, 327680
  %cmp326 = icmp ne i32 %and325, 0
  %cond328 = select i1 %cmp326, i32 16, i32 0
  br label %cond.end.370

cond.false.329:                                   ; preds = %cond.false.320
  %117 = load i8, i8* %c, align 1
  %conv330 = zext i8 %117 to i32
  %cmp331 = icmp eq i32 %conv330, 89
  br i1 %cmp331, label %cond.true.333, label %cond.false.338

cond.true.333:                                    ; preds = %cond.false.329
  %118 = load i32, i32* @target_flags, align 4
  %and334 = and i32 %118, 262144
  %cmp335 = icmp ne i32 %and334, 0
  %cond337 = select i1 %cmp335, i32 16, i32 0
  br label %cond.end.368

cond.false.338:                                   ; preds = %cond.false.329
  %119 = load i8, i8* %c, align 1
  %conv339 = zext i8 %119 to i32
  %cmp340 = icmp eq i32 %conv339, 121
  br i1 %cmp340, label %cond.true.342, label %cond.false.347

cond.true.342:                                    ; preds = %cond.false.338
  %120 = load i32, i32* @target_flags, align 4
  %and343 = and i32 %120, 16384
  %cmp344 = icmp ne i32 %and343, 0
  %cond346 = select i1 %cmp344, i32 17, i32 0
  br label %cond.end.366

cond.false.347:                                   ; preds = %cond.false.338
  %121 = load i8, i8* %c, align 1
  %conv348 = zext i8 %121 to i32
  %cmp349 = icmp eq i32 %conv348, 65
  br i1 %cmp349, label %cond.true.351, label %cond.false.352

cond.true.351:                                    ; preds = %cond.false.347
  br label %cond.end.364

cond.false.352:                                   ; preds = %cond.false.347
  %122 = load i8, i8* %c, align 1
  %conv353 = zext i8 %122 to i32
  %cmp354 = icmp eq i32 %conv353, 68
  br i1 %cmp354, label %cond.true.356, label %cond.false.357

cond.true.356:                                    ; preds = %cond.false.352
  br label %cond.end.362

cond.false.357:                                   ; preds = %cond.false.352
  %123 = load i8, i8* %c, align 1
  %conv358 = zext i8 %123 to i32
  %cmp359 = icmp eq i32 %conv358, 83
  %cond361 = select i1 %cmp359, i32 5, i32 0
  br label %cond.end.362

cond.end.362:                                     ; preds = %cond.false.357, %cond.true.356
  %cond363 = phi i32 [ 6, %cond.true.356 ], [ %cond361, %cond.false.357 ]
  br label %cond.end.364

cond.end.364:                                     ; preds = %cond.end.362, %cond.true.351
  %cond365 = phi i32 [ 7, %cond.true.351 ], [ %cond363, %cond.end.362 ]
  br label %cond.end.366

cond.end.366:                                     ; preds = %cond.end.364, %cond.true.342
  %cond367 = phi i32 [ %cond346, %cond.true.342 ], [ %cond365, %cond.end.364 ]
  br label %cond.end.368

cond.end.368:                                     ; preds = %cond.end.366, %cond.true.333
  %cond369 = phi i32 [ %cond337, %cond.true.333 ], [ %cond367, %cond.end.366 ]
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.end.368, %cond.true.324
  %cond371 = phi i32 [ %cond328, %cond.true.324 ], [ %cond369, %cond.end.368 ]
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.end.370, %cond.true.319
  %cond373 = phi i32 [ 2, %cond.true.319 ], [ %cond371, %cond.end.370 ]
  br label %cond.end.374

cond.end.374:                                     ; preds = %cond.end.372, %cond.true.314
  %cond375 = phi i32 [ 3, %cond.true.314 ], [ %cond373, %cond.end.372 ]
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.end.374, %cond.true.309
  %cond377 = phi i32 [ 4, %cond.true.309 ], [ %cond375, %cond.end.374 ]
  br label %cond.end.378

cond.end.378:                                     ; preds = %cond.end.376, %cond.true.304
  %cond379 = phi i32 [ 1, %cond.true.304 ], [ %cond377, %cond.end.376 ]
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.end.378, %lor.end.298
  %cond381 = phi i32 [ %cond299, %lor.end.298 ], [ %cond379, %cond.end.378 ]
  br label %cond.end.382

cond.end.382:                                     ; preds = %cond.end.380, %lor.end.286
  %cond383 = phi i32 [ %cond287, %lor.end.286 ], [ %cond381, %cond.end.380 ]
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.end.382, %lor.end.274
  %cond385 = phi i32 [ %cond275, %lor.end.274 ], [ %cond383, %cond.end.382 ]
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.end.384, %cond.true.263
  %cond387 = phi i32 [ 8, %cond.true.263 ], [ %cond385, %cond.end.384 ]
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.end.386, %cond.true.255
  %cond389 = phi i32 [ %cond258, %cond.true.255 ], [ %cond387, %cond.end.386 ]
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.end.388, %cond.true.250
  %cond391 = phi i32 [ 11, %cond.true.250 ], [ %cond389, %cond.end.388 ]
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.end.390, %cond.true.245
  %cond393 = phi i32 [ 12, %cond.true.245 ], [ %cond391, %cond.end.390 ]
  %cmp394 = icmp eq i32 %cond393, 2
  br i1 %cmp394, label %if.then.1171, label %lor.lhs.false.396

lor.lhs.false.396:                                ; preds = %cond.end.392
  %124 = load i8, i8* %c, align 1
  %conv397 = zext i8 %124 to i32
  %cmp398 = icmp eq i32 %conv397, 114
  br i1 %cmp398, label %cond.true.400, label %cond.false.401

cond.true.400:                                    ; preds = %lor.lhs.false.396
  br label %cond.end.547

cond.false.401:                                   ; preds = %lor.lhs.false.396
  %125 = load i8, i8* %c, align 1
  %conv402 = zext i8 %125 to i32
  %cmp403 = icmp eq i32 %conv402, 82
  br i1 %cmp403, label %cond.true.405, label %cond.false.406

cond.true.405:                                    ; preds = %cond.false.401
  br label %cond.end.545

cond.false.406:                                   ; preds = %cond.false.401
  %126 = load i8, i8* %c, align 1
  %conv407 = zext i8 %126 to i32
  %cmp408 = icmp eq i32 %conv407, 113
  br i1 %cmp408, label %cond.true.410, label %cond.false.414

cond.true.410:                                    ; preds = %cond.false.406
  %127 = load i32, i32* @target_flags, align 4
  %and411 = and i32 %127, 33554432
  %tobool412 = icmp ne i32 %and411, 0
  %cond413 = select i1 %tobool412, i32 12, i32 8
  br label %cond.end.543

cond.false.414:                                   ; preds = %cond.false.406
  %128 = load i8, i8* %c, align 1
  %conv415 = zext i8 %128 to i32
  %cmp416 = icmp eq i32 %conv415, 81
  br i1 %cmp416, label %cond.true.418, label %cond.false.419

cond.true.418:                                    ; preds = %cond.false.414
  br label %cond.end.541

cond.false.419:                                   ; preds = %cond.false.414
  %129 = load i8, i8* %c, align 1
  %conv420 = zext i8 %129 to i32
  %cmp421 = icmp eq i32 %conv420, 102
  br i1 %cmp421, label %cond.true.423, label %cond.false.431

cond.true.423:                                    ; preds = %cond.false.419
  %130 = load i32, i32* @target_flags, align 4
  %and424 = and i32 %130, 1
  %tobool425 = icmp ne i32 %and424, 0
  br i1 %tobool425, label %lor.end.429, label %lor.rhs.426

lor.rhs.426:                                      ; preds = %cond.true.423
  %131 = load i32, i32* @target_flags, align 4
  %and427 = and i32 %131, 32
  %tobool428 = icmp ne i32 %and427, 0
  br label %lor.end.429

lor.end.429:                                      ; preds = %lor.rhs.426, %cond.true.423
  %132 = phi i1 [ true, %cond.true.423 ], [ %tobool428, %lor.rhs.426 ]
  %cond430 = select i1 %132, i32 15, i32 0
  br label %cond.end.539

cond.false.431:                                   ; preds = %cond.false.419
  %133 = load i8, i8* %c, align 1
  %conv432 = zext i8 %133 to i32
  %cmp433 = icmp eq i32 %conv432, 116
  br i1 %cmp433, label %cond.true.435, label %cond.false.443

cond.true.435:                                    ; preds = %cond.false.431
  %134 = load i32, i32* @target_flags, align 4
  %and436 = and i32 %134, 1
  %tobool437 = icmp ne i32 %and436, 0
  br i1 %tobool437, label %lor.end.441, label %lor.rhs.438

lor.rhs.438:                                      ; preds = %cond.true.435
  %135 = load i32, i32* @target_flags, align 4
  %and439 = and i32 %135, 32
  %tobool440 = icmp ne i32 %and439, 0
  br label %lor.end.441

lor.end.441:                                      ; preds = %lor.rhs.438, %cond.true.435
  %136 = phi i1 [ true, %cond.true.435 ], [ %tobool440, %lor.rhs.438 ]
  %cond442 = select i1 %136, i32 13, i32 0
  br label %cond.end.537

cond.false.443:                                   ; preds = %cond.false.431
  %137 = load i8, i8* %c, align 1
  %conv444 = zext i8 %137 to i32
  %cmp445 = icmp eq i32 %conv444, 117
  br i1 %cmp445, label %cond.true.447, label %cond.false.455

cond.true.447:                                    ; preds = %cond.false.443
  %138 = load i32, i32* @target_flags, align 4
  %and448 = and i32 %138, 1
  %tobool449 = icmp ne i32 %and448, 0
  br i1 %tobool449, label %lor.end.453, label %lor.rhs.450

lor.rhs.450:                                      ; preds = %cond.true.447
  %139 = load i32, i32* @target_flags, align 4
  %and451 = and i32 %139, 32
  %tobool452 = icmp ne i32 %and451, 0
  br label %lor.end.453

lor.end.453:                                      ; preds = %lor.rhs.450, %cond.true.447
  %140 = phi i1 [ true, %cond.true.447 ], [ %tobool452, %lor.rhs.450 ]
  %cond454 = select i1 %140, i32 14, i32 0
  br label %cond.end.535

cond.false.455:                                   ; preds = %cond.false.443
  %141 = load i8, i8* %c, align 1
  %conv456 = zext i8 %141 to i32
  %cmp457 = icmp eq i32 %conv456, 97
  br i1 %cmp457, label %cond.true.459, label %cond.false.460

cond.true.459:                                    ; preds = %cond.false.455
  br label %cond.end.533

cond.false.460:                                   ; preds = %cond.false.455
  %142 = load i8, i8* %c, align 1
  %conv461 = zext i8 %142 to i32
  %cmp462 = icmp eq i32 %conv461, 98
  br i1 %cmp462, label %cond.true.464, label %cond.false.465

cond.true.464:                                    ; preds = %cond.false.460
  br label %cond.end.531

cond.false.465:                                   ; preds = %cond.false.460
  %143 = load i8, i8* %c, align 1
  %conv466 = zext i8 %143 to i32
  %cmp467 = icmp eq i32 %conv466, 99
  br i1 %cmp467, label %cond.true.469, label %cond.false.470

cond.true.469:                                    ; preds = %cond.false.465
  br label %cond.end.529

cond.false.470:                                   ; preds = %cond.false.465
  %144 = load i8, i8* %c, align 1
  %conv471 = zext i8 %144 to i32
  %cmp472 = icmp eq i32 %conv471, 100
  br i1 %cmp472, label %cond.true.474, label %cond.false.475

cond.true.474:                                    ; preds = %cond.false.470
  br label %cond.end.527

cond.false.475:                                   ; preds = %cond.false.470
  %145 = load i8, i8* %c, align 1
  %conv476 = zext i8 %145 to i32
  %cmp477 = icmp eq i32 %conv476, 120
  br i1 %cmp477, label %cond.true.479, label %cond.false.484

cond.true.479:                                    ; preds = %cond.false.475
  %146 = load i32, i32* @target_flags, align 4
  %and480 = and i32 %146, 327680
  %cmp481 = icmp ne i32 %and480, 0
  %cond483 = select i1 %cmp481, i32 16, i32 0
  br label %cond.end.525

cond.false.484:                                   ; preds = %cond.false.475
  %147 = load i8, i8* %c, align 1
  %conv485 = zext i8 %147 to i32
  %cmp486 = icmp eq i32 %conv485, 89
  br i1 %cmp486, label %cond.true.488, label %cond.false.493

cond.true.488:                                    ; preds = %cond.false.484
  %148 = load i32, i32* @target_flags, align 4
  %and489 = and i32 %148, 262144
  %cmp490 = icmp ne i32 %and489, 0
  %cond492 = select i1 %cmp490, i32 16, i32 0
  br label %cond.end.523

cond.false.493:                                   ; preds = %cond.false.484
  %149 = load i8, i8* %c, align 1
  %conv494 = zext i8 %149 to i32
  %cmp495 = icmp eq i32 %conv494, 121
  br i1 %cmp495, label %cond.true.497, label %cond.false.502

cond.true.497:                                    ; preds = %cond.false.493
  %150 = load i32, i32* @target_flags, align 4
  %and498 = and i32 %150, 16384
  %cmp499 = icmp ne i32 %and498, 0
  %cond501 = select i1 %cmp499, i32 17, i32 0
  br label %cond.end.521

cond.false.502:                                   ; preds = %cond.false.493
  %151 = load i8, i8* %c, align 1
  %conv503 = zext i8 %151 to i32
  %cmp504 = icmp eq i32 %conv503, 65
  br i1 %cmp504, label %cond.true.506, label %cond.false.507

cond.true.506:                                    ; preds = %cond.false.502
  br label %cond.end.519

cond.false.507:                                   ; preds = %cond.false.502
  %152 = load i8, i8* %c, align 1
  %conv508 = zext i8 %152 to i32
  %cmp509 = icmp eq i32 %conv508, 68
  br i1 %cmp509, label %cond.true.511, label %cond.false.512

cond.true.511:                                    ; preds = %cond.false.507
  br label %cond.end.517

cond.false.512:                                   ; preds = %cond.false.507
  %153 = load i8, i8* %c, align 1
  %conv513 = zext i8 %153 to i32
  %cmp514 = icmp eq i32 %conv513, 83
  %cond516 = select i1 %cmp514, i32 5, i32 0
  br label %cond.end.517

cond.end.517:                                     ; preds = %cond.false.512, %cond.true.511
  %cond518 = phi i32 [ 6, %cond.true.511 ], [ %cond516, %cond.false.512 ]
  br label %cond.end.519

cond.end.519:                                     ; preds = %cond.end.517, %cond.true.506
  %cond520 = phi i32 [ 7, %cond.true.506 ], [ %cond518, %cond.end.517 ]
  br label %cond.end.521

cond.end.521:                                     ; preds = %cond.end.519, %cond.true.497
  %cond522 = phi i32 [ %cond501, %cond.true.497 ], [ %cond520, %cond.end.519 ]
  br label %cond.end.523

cond.end.523:                                     ; preds = %cond.end.521, %cond.true.488
  %cond524 = phi i32 [ %cond492, %cond.true.488 ], [ %cond522, %cond.end.521 ]
  br label %cond.end.525

cond.end.525:                                     ; preds = %cond.end.523, %cond.true.479
  %cond526 = phi i32 [ %cond483, %cond.true.479 ], [ %cond524, %cond.end.523 ]
  br label %cond.end.527

cond.end.527:                                     ; preds = %cond.end.525, %cond.true.474
  %cond528 = phi i32 [ 2, %cond.true.474 ], [ %cond526, %cond.end.525 ]
  br label %cond.end.529

cond.end.529:                                     ; preds = %cond.end.527, %cond.true.469
  %cond530 = phi i32 [ 3, %cond.true.469 ], [ %cond528, %cond.end.527 ]
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.end.529, %cond.true.464
  %cond532 = phi i32 [ 4, %cond.true.464 ], [ %cond530, %cond.end.529 ]
  br label %cond.end.533

cond.end.533:                                     ; preds = %cond.end.531, %cond.true.459
  %cond534 = phi i32 [ 1, %cond.true.459 ], [ %cond532, %cond.end.531 ]
  br label %cond.end.535

cond.end.535:                                     ; preds = %cond.end.533, %lor.end.453
  %cond536 = phi i32 [ %cond454, %lor.end.453 ], [ %cond534, %cond.end.533 ]
  br label %cond.end.537

cond.end.537:                                     ; preds = %cond.end.535, %lor.end.441
  %cond538 = phi i32 [ %cond442, %lor.end.441 ], [ %cond536, %cond.end.535 ]
  br label %cond.end.539

cond.end.539:                                     ; preds = %cond.end.537, %lor.end.429
  %cond540 = phi i32 [ %cond430, %lor.end.429 ], [ %cond538, %cond.end.537 ]
  br label %cond.end.541

cond.end.541:                                     ; preds = %cond.end.539, %cond.true.418
  %cond542 = phi i32 [ 8, %cond.true.418 ], [ %cond540, %cond.end.539 ]
  br label %cond.end.543

cond.end.543:                                     ; preds = %cond.end.541, %cond.true.410
  %cond544 = phi i32 [ %cond413, %cond.true.410 ], [ %cond542, %cond.end.541 ]
  br label %cond.end.545

cond.end.545:                                     ; preds = %cond.end.543, %cond.true.405
  %cond546 = phi i32 [ 11, %cond.true.405 ], [ %cond544, %cond.end.543 ]
  br label %cond.end.547

cond.end.547:                                     ; preds = %cond.end.545, %cond.true.400
  %cond548 = phi i32 [ 12, %cond.true.400 ], [ %cond546, %cond.end.545 ]
  %cmp549 = icmp eq i32 %cond548, 3
  br i1 %cmp549, label %if.then.1171, label %lor.lhs.false.551

lor.lhs.false.551:                                ; preds = %cond.end.547
  %154 = load i8, i8* %c, align 1
  %conv552 = zext i8 %154 to i32
  %cmp553 = icmp eq i32 %conv552, 114
  br i1 %cmp553, label %cond.true.555, label %cond.false.556

cond.true.555:                                    ; preds = %lor.lhs.false.551
  br label %cond.end.702

cond.false.556:                                   ; preds = %lor.lhs.false.551
  %155 = load i8, i8* %c, align 1
  %conv557 = zext i8 %155 to i32
  %cmp558 = icmp eq i32 %conv557, 82
  br i1 %cmp558, label %cond.true.560, label %cond.false.561

cond.true.560:                                    ; preds = %cond.false.556
  br label %cond.end.700

cond.false.561:                                   ; preds = %cond.false.556
  %156 = load i8, i8* %c, align 1
  %conv562 = zext i8 %156 to i32
  %cmp563 = icmp eq i32 %conv562, 113
  br i1 %cmp563, label %cond.true.565, label %cond.false.569

cond.true.565:                                    ; preds = %cond.false.561
  %157 = load i32, i32* @target_flags, align 4
  %and566 = and i32 %157, 33554432
  %tobool567 = icmp ne i32 %and566, 0
  %cond568 = select i1 %tobool567, i32 12, i32 8
  br label %cond.end.698

cond.false.569:                                   ; preds = %cond.false.561
  %158 = load i8, i8* %c, align 1
  %conv570 = zext i8 %158 to i32
  %cmp571 = icmp eq i32 %conv570, 81
  br i1 %cmp571, label %cond.true.573, label %cond.false.574

cond.true.573:                                    ; preds = %cond.false.569
  br label %cond.end.696

cond.false.574:                                   ; preds = %cond.false.569
  %159 = load i8, i8* %c, align 1
  %conv575 = zext i8 %159 to i32
  %cmp576 = icmp eq i32 %conv575, 102
  br i1 %cmp576, label %cond.true.578, label %cond.false.586

cond.true.578:                                    ; preds = %cond.false.574
  %160 = load i32, i32* @target_flags, align 4
  %and579 = and i32 %160, 1
  %tobool580 = icmp ne i32 %and579, 0
  br i1 %tobool580, label %lor.end.584, label %lor.rhs.581

lor.rhs.581:                                      ; preds = %cond.true.578
  %161 = load i32, i32* @target_flags, align 4
  %and582 = and i32 %161, 32
  %tobool583 = icmp ne i32 %and582, 0
  br label %lor.end.584

lor.end.584:                                      ; preds = %lor.rhs.581, %cond.true.578
  %162 = phi i1 [ true, %cond.true.578 ], [ %tobool583, %lor.rhs.581 ]
  %cond585 = select i1 %162, i32 15, i32 0
  br label %cond.end.694

cond.false.586:                                   ; preds = %cond.false.574
  %163 = load i8, i8* %c, align 1
  %conv587 = zext i8 %163 to i32
  %cmp588 = icmp eq i32 %conv587, 116
  br i1 %cmp588, label %cond.true.590, label %cond.false.598

cond.true.590:                                    ; preds = %cond.false.586
  %164 = load i32, i32* @target_flags, align 4
  %and591 = and i32 %164, 1
  %tobool592 = icmp ne i32 %and591, 0
  br i1 %tobool592, label %lor.end.596, label %lor.rhs.593

lor.rhs.593:                                      ; preds = %cond.true.590
  %165 = load i32, i32* @target_flags, align 4
  %and594 = and i32 %165, 32
  %tobool595 = icmp ne i32 %and594, 0
  br label %lor.end.596

lor.end.596:                                      ; preds = %lor.rhs.593, %cond.true.590
  %166 = phi i1 [ true, %cond.true.590 ], [ %tobool595, %lor.rhs.593 ]
  %cond597 = select i1 %166, i32 13, i32 0
  br label %cond.end.692

cond.false.598:                                   ; preds = %cond.false.586
  %167 = load i8, i8* %c, align 1
  %conv599 = zext i8 %167 to i32
  %cmp600 = icmp eq i32 %conv599, 117
  br i1 %cmp600, label %cond.true.602, label %cond.false.610

cond.true.602:                                    ; preds = %cond.false.598
  %168 = load i32, i32* @target_flags, align 4
  %and603 = and i32 %168, 1
  %tobool604 = icmp ne i32 %and603, 0
  br i1 %tobool604, label %lor.end.608, label %lor.rhs.605

lor.rhs.605:                                      ; preds = %cond.true.602
  %169 = load i32, i32* @target_flags, align 4
  %and606 = and i32 %169, 32
  %tobool607 = icmp ne i32 %and606, 0
  br label %lor.end.608

lor.end.608:                                      ; preds = %lor.rhs.605, %cond.true.602
  %170 = phi i1 [ true, %cond.true.602 ], [ %tobool607, %lor.rhs.605 ]
  %cond609 = select i1 %170, i32 14, i32 0
  br label %cond.end.690

cond.false.610:                                   ; preds = %cond.false.598
  %171 = load i8, i8* %c, align 1
  %conv611 = zext i8 %171 to i32
  %cmp612 = icmp eq i32 %conv611, 97
  br i1 %cmp612, label %cond.true.614, label %cond.false.615

cond.true.614:                                    ; preds = %cond.false.610
  br label %cond.end.688

cond.false.615:                                   ; preds = %cond.false.610
  %172 = load i8, i8* %c, align 1
  %conv616 = zext i8 %172 to i32
  %cmp617 = icmp eq i32 %conv616, 98
  br i1 %cmp617, label %cond.true.619, label %cond.false.620

cond.true.619:                                    ; preds = %cond.false.615
  br label %cond.end.686

cond.false.620:                                   ; preds = %cond.false.615
  %173 = load i8, i8* %c, align 1
  %conv621 = zext i8 %173 to i32
  %cmp622 = icmp eq i32 %conv621, 99
  br i1 %cmp622, label %cond.true.624, label %cond.false.625

cond.true.624:                                    ; preds = %cond.false.620
  br label %cond.end.684

cond.false.625:                                   ; preds = %cond.false.620
  %174 = load i8, i8* %c, align 1
  %conv626 = zext i8 %174 to i32
  %cmp627 = icmp eq i32 %conv626, 100
  br i1 %cmp627, label %cond.true.629, label %cond.false.630

cond.true.629:                                    ; preds = %cond.false.625
  br label %cond.end.682

cond.false.630:                                   ; preds = %cond.false.625
  %175 = load i8, i8* %c, align 1
  %conv631 = zext i8 %175 to i32
  %cmp632 = icmp eq i32 %conv631, 120
  br i1 %cmp632, label %cond.true.634, label %cond.false.639

cond.true.634:                                    ; preds = %cond.false.630
  %176 = load i32, i32* @target_flags, align 4
  %and635 = and i32 %176, 327680
  %cmp636 = icmp ne i32 %and635, 0
  %cond638 = select i1 %cmp636, i32 16, i32 0
  br label %cond.end.680

cond.false.639:                                   ; preds = %cond.false.630
  %177 = load i8, i8* %c, align 1
  %conv640 = zext i8 %177 to i32
  %cmp641 = icmp eq i32 %conv640, 89
  br i1 %cmp641, label %cond.true.643, label %cond.false.648

cond.true.643:                                    ; preds = %cond.false.639
  %178 = load i32, i32* @target_flags, align 4
  %and644 = and i32 %178, 262144
  %cmp645 = icmp ne i32 %and644, 0
  %cond647 = select i1 %cmp645, i32 16, i32 0
  br label %cond.end.678

cond.false.648:                                   ; preds = %cond.false.639
  %179 = load i8, i8* %c, align 1
  %conv649 = zext i8 %179 to i32
  %cmp650 = icmp eq i32 %conv649, 121
  br i1 %cmp650, label %cond.true.652, label %cond.false.657

cond.true.652:                                    ; preds = %cond.false.648
  %180 = load i32, i32* @target_flags, align 4
  %and653 = and i32 %180, 16384
  %cmp654 = icmp ne i32 %and653, 0
  %cond656 = select i1 %cmp654, i32 17, i32 0
  br label %cond.end.676

cond.false.657:                                   ; preds = %cond.false.648
  %181 = load i8, i8* %c, align 1
  %conv658 = zext i8 %181 to i32
  %cmp659 = icmp eq i32 %conv658, 65
  br i1 %cmp659, label %cond.true.661, label %cond.false.662

cond.true.661:                                    ; preds = %cond.false.657
  br label %cond.end.674

cond.false.662:                                   ; preds = %cond.false.657
  %182 = load i8, i8* %c, align 1
  %conv663 = zext i8 %182 to i32
  %cmp664 = icmp eq i32 %conv663, 68
  br i1 %cmp664, label %cond.true.666, label %cond.false.667

cond.true.666:                                    ; preds = %cond.false.662
  br label %cond.end.672

cond.false.667:                                   ; preds = %cond.false.662
  %183 = load i8, i8* %c, align 1
  %conv668 = zext i8 %183 to i32
  %cmp669 = icmp eq i32 %conv668, 83
  %cond671 = select i1 %cmp669, i32 5, i32 0
  br label %cond.end.672

cond.end.672:                                     ; preds = %cond.false.667, %cond.true.666
  %cond673 = phi i32 [ 6, %cond.true.666 ], [ %cond671, %cond.false.667 ]
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.end.672, %cond.true.661
  %cond675 = phi i32 [ 7, %cond.true.661 ], [ %cond673, %cond.end.672 ]
  br label %cond.end.676

cond.end.676:                                     ; preds = %cond.end.674, %cond.true.652
  %cond677 = phi i32 [ %cond656, %cond.true.652 ], [ %cond675, %cond.end.674 ]
  br label %cond.end.678

cond.end.678:                                     ; preds = %cond.end.676, %cond.true.643
  %cond679 = phi i32 [ %cond647, %cond.true.643 ], [ %cond677, %cond.end.676 ]
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.end.678, %cond.true.634
  %cond681 = phi i32 [ %cond638, %cond.true.634 ], [ %cond679, %cond.end.678 ]
  br label %cond.end.682

cond.end.682:                                     ; preds = %cond.end.680, %cond.true.629
  %cond683 = phi i32 [ 2, %cond.true.629 ], [ %cond681, %cond.end.680 ]
  br label %cond.end.684

cond.end.684:                                     ; preds = %cond.end.682, %cond.true.624
  %cond685 = phi i32 [ 3, %cond.true.624 ], [ %cond683, %cond.end.682 ]
  br label %cond.end.686

cond.end.686:                                     ; preds = %cond.end.684, %cond.true.619
  %cond687 = phi i32 [ 4, %cond.true.619 ], [ %cond685, %cond.end.684 ]
  br label %cond.end.688

cond.end.688:                                     ; preds = %cond.end.686, %cond.true.614
  %cond689 = phi i32 [ 1, %cond.true.614 ], [ %cond687, %cond.end.686 ]
  br label %cond.end.690

cond.end.690:                                     ; preds = %cond.end.688, %lor.end.608
  %cond691 = phi i32 [ %cond609, %lor.end.608 ], [ %cond689, %cond.end.688 ]
  br label %cond.end.692

cond.end.692:                                     ; preds = %cond.end.690, %lor.end.596
  %cond693 = phi i32 [ %cond597, %lor.end.596 ], [ %cond691, %cond.end.690 ]
  br label %cond.end.694

cond.end.694:                                     ; preds = %cond.end.692, %lor.end.584
  %cond695 = phi i32 [ %cond585, %lor.end.584 ], [ %cond693, %cond.end.692 ]
  br label %cond.end.696

cond.end.696:                                     ; preds = %cond.end.694, %cond.true.573
  %cond697 = phi i32 [ 8, %cond.true.573 ], [ %cond695, %cond.end.694 ]
  br label %cond.end.698

cond.end.698:                                     ; preds = %cond.end.696, %cond.true.565
  %cond699 = phi i32 [ %cond568, %cond.true.565 ], [ %cond697, %cond.end.696 ]
  br label %cond.end.700

cond.end.700:                                     ; preds = %cond.end.698, %cond.true.560
  %cond701 = phi i32 [ 11, %cond.true.560 ], [ %cond699, %cond.end.698 ]
  br label %cond.end.702

cond.end.702:                                     ; preds = %cond.end.700, %cond.true.555
  %cond703 = phi i32 [ 12, %cond.true.555 ], [ %cond701, %cond.end.700 ]
  %cmp704 = icmp eq i32 %cond703, 4
  br i1 %cmp704, label %if.then.1171, label %lor.lhs.false.706

lor.lhs.false.706:                                ; preds = %cond.end.702
  %184 = load i8, i8* %c, align 1
  %conv707 = zext i8 %184 to i32
  %cmp708 = icmp eq i32 %conv707, 114
  br i1 %cmp708, label %cond.true.710, label %cond.false.711

cond.true.710:                                    ; preds = %lor.lhs.false.706
  br label %cond.end.857

cond.false.711:                                   ; preds = %lor.lhs.false.706
  %185 = load i8, i8* %c, align 1
  %conv712 = zext i8 %185 to i32
  %cmp713 = icmp eq i32 %conv712, 82
  br i1 %cmp713, label %cond.true.715, label %cond.false.716

cond.true.715:                                    ; preds = %cond.false.711
  br label %cond.end.855

cond.false.716:                                   ; preds = %cond.false.711
  %186 = load i8, i8* %c, align 1
  %conv717 = zext i8 %186 to i32
  %cmp718 = icmp eq i32 %conv717, 113
  br i1 %cmp718, label %cond.true.720, label %cond.false.724

cond.true.720:                                    ; preds = %cond.false.716
  %187 = load i32, i32* @target_flags, align 4
  %and721 = and i32 %187, 33554432
  %tobool722 = icmp ne i32 %and721, 0
  %cond723 = select i1 %tobool722, i32 12, i32 8
  br label %cond.end.853

cond.false.724:                                   ; preds = %cond.false.716
  %188 = load i8, i8* %c, align 1
  %conv725 = zext i8 %188 to i32
  %cmp726 = icmp eq i32 %conv725, 81
  br i1 %cmp726, label %cond.true.728, label %cond.false.729

cond.true.728:                                    ; preds = %cond.false.724
  br label %cond.end.851

cond.false.729:                                   ; preds = %cond.false.724
  %189 = load i8, i8* %c, align 1
  %conv730 = zext i8 %189 to i32
  %cmp731 = icmp eq i32 %conv730, 102
  br i1 %cmp731, label %cond.true.733, label %cond.false.741

cond.true.733:                                    ; preds = %cond.false.729
  %190 = load i32, i32* @target_flags, align 4
  %and734 = and i32 %190, 1
  %tobool735 = icmp ne i32 %and734, 0
  br i1 %tobool735, label %lor.end.739, label %lor.rhs.736

lor.rhs.736:                                      ; preds = %cond.true.733
  %191 = load i32, i32* @target_flags, align 4
  %and737 = and i32 %191, 32
  %tobool738 = icmp ne i32 %and737, 0
  br label %lor.end.739

lor.end.739:                                      ; preds = %lor.rhs.736, %cond.true.733
  %192 = phi i1 [ true, %cond.true.733 ], [ %tobool738, %lor.rhs.736 ]
  %cond740 = select i1 %192, i32 15, i32 0
  br label %cond.end.849

cond.false.741:                                   ; preds = %cond.false.729
  %193 = load i8, i8* %c, align 1
  %conv742 = zext i8 %193 to i32
  %cmp743 = icmp eq i32 %conv742, 116
  br i1 %cmp743, label %cond.true.745, label %cond.false.753

cond.true.745:                                    ; preds = %cond.false.741
  %194 = load i32, i32* @target_flags, align 4
  %and746 = and i32 %194, 1
  %tobool747 = icmp ne i32 %and746, 0
  br i1 %tobool747, label %lor.end.751, label %lor.rhs.748

lor.rhs.748:                                      ; preds = %cond.true.745
  %195 = load i32, i32* @target_flags, align 4
  %and749 = and i32 %195, 32
  %tobool750 = icmp ne i32 %and749, 0
  br label %lor.end.751

lor.end.751:                                      ; preds = %lor.rhs.748, %cond.true.745
  %196 = phi i1 [ true, %cond.true.745 ], [ %tobool750, %lor.rhs.748 ]
  %cond752 = select i1 %196, i32 13, i32 0
  br label %cond.end.847

cond.false.753:                                   ; preds = %cond.false.741
  %197 = load i8, i8* %c, align 1
  %conv754 = zext i8 %197 to i32
  %cmp755 = icmp eq i32 %conv754, 117
  br i1 %cmp755, label %cond.true.757, label %cond.false.765

cond.true.757:                                    ; preds = %cond.false.753
  %198 = load i32, i32* @target_flags, align 4
  %and758 = and i32 %198, 1
  %tobool759 = icmp ne i32 %and758, 0
  br i1 %tobool759, label %lor.end.763, label %lor.rhs.760

lor.rhs.760:                                      ; preds = %cond.true.757
  %199 = load i32, i32* @target_flags, align 4
  %and761 = and i32 %199, 32
  %tobool762 = icmp ne i32 %and761, 0
  br label %lor.end.763

lor.end.763:                                      ; preds = %lor.rhs.760, %cond.true.757
  %200 = phi i1 [ true, %cond.true.757 ], [ %tobool762, %lor.rhs.760 ]
  %cond764 = select i1 %200, i32 14, i32 0
  br label %cond.end.845

cond.false.765:                                   ; preds = %cond.false.753
  %201 = load i8, i8* %c, align 1
  %conv766 = zext i8 %201 to i32
  %cmp767 = icmp eq i32 %conv766, 97
  br i1 %cmp767, label %cond.true.769, label %cond.false.770

cond.true.769:                                    ; preds = %cond.false.765
  br label %cond.end.843

cond.false.770:                                   ; preds = %cond.false.765
  %202 = load i8, i8* %c, align 1
  %conv771 = zext i8 %202 to i32
  %cmp772 = icmp eq i32 %conv771, 98
  br i1 %cmp772, label %cond.true.774, label %cond.false.775

cond.true.774:                                    ; preds = %cond.false.770
  br label %cond.end.841

cond.false.775:                                   ; preds = %cond.false.770
  %203 = load i8, i8* %c, align 1
  %conv776 = zext i8 %203 to i32
  %cmp777 = icmp eq i32 %conv776, 99
  br i1 %cmp777, label %cond.true.779, label %cond.false.780

cond.true.779:                                    ; preds = %cond.false.775
  br label %cond.end.839

cond.false.780:                                   ; preds = %cond.false.775
  %204 = load i8, i8* %c, align 1
  %conv781 = zext i8 %204 to i32
  %cmp782 = icmp eq i32 %conv781, 100
  br i1 %cmp782, label %cond.true.784, label %cond.false.785

cond.true.784:                                    ; preds = %cond.false.780
  br label %cond.end.837

cond.false.785:                                   ; preds = %cond.false.780
  %205 = load i8, i8* %c, align 1
  %conv786 = zext i8 %205 to i32
  %cmp787 = icmp eq i32 %conv786, 120
  br i1 %cmp787, label %cond.true.789, label %cond.false.794

cond.true.789:                                    ; preds = %cond.false.785
  %206 = load i32, i32* @target_flags, align 4
  %and790 = and i32 %206, 327680
  %cmp791 = icmp ne i32 %and790, 0
  %cond793 = select i1 %cmp791, i32 16, i32 0
  br label %cond.end.835

cond.false.794:                                   ; preds = %cond.false.785
  %207 = load i8, i8* %c, align 1
  %conv795 = zext i8 %207 to i32
  %cmp796 = icmp eq i32 %conv795, 89
  br i1 %cmp796, label %cond.true.798, label %cond.false.803

cond.true.798:                                    ; preds = %cond.false.794
  %208 = load i32, i32* @target_flags, align 4
  %and799 = and i32 %208, 262144
  %cmp800 = icmp ne i32 %and799, 0
  %cond802 = select i1 %cmp800, i32 16, i32 0
  br label %cond.end.833

cond.false.803:                                   ; preds = %cond.false.794
  %209 = load i8, i8* %c, align 1
  %conv804 = zext i8 %209 to i32
  %cmp805 = icmp eq i32 %conv804, 121
  br i1 %cmp805, label %cond.true.807, label %cond.false.812

cond.true.807:                                    ; preds = %cond.false.803
  %210 = load i32, i32* @target_flags, align 4
  %and808 = and i32 %210, 16384
  %cmp809 = icmp ne i32 %and808, 0
  %cond811 = select i1 %cmp809, i32 17, i32 0
  br label %cond.end.831

cond.false.812:                                   ; preds = %cond.false.803
  %211 = load i8, i8* %c, align 1
  %conv813 = zext i8 %211 to i32
  %cmp814 = icmp eq i32 %conv813, 65
  br i1 %cmp814, label %cond.true.816, label %cond.false.817

cond.true.816:                                    ; preds = %cond.false.812
  br label %cond.end.829

cond.false.817:                                   ; preds = %cond.false.812
  %212 = load i8, i8* %c, align 1
  %conv818 = zext i8 %212 to i32
  %cmp819 = icmp eq i32 %conv818, 68
  br i1 %cmp819, label %cond.true.821, label %cond.false.822

cond.true.821:                                    ; preds = %cond.false.817
  br label %cond.end.827

cond.false.822:                                   ; preds = %cond.false.817
  %213 = load i8, i8* %c, align 1
  %conv823 = zext i8 %213 to i32
  %cmp824 = icmp eq i32 %conv823, 83
  %cond826 = select i1 %cmp824, i32 5, i32 0
  br label %cond.end.827

cond.end.827:                                     ; preds = %cond.false.822, %cond.true.821
  %cond828 = phi i32 [ 6, %cond.true.821 ], [ %cond826, %cond.false.822 ]
  br label %cond.end.829

cond.end.829:                                     ; preds = %cond.end.827, %cond.true.816
  %cond830 = phi i32 [ 7, %cond.true.816 ], [ %cond828, %cond.end.827 ]
  br label %cond.end.831

cond.end.831:                                     ; preds = %cond.end.829, %cond.true.807
  %cond832 = phi i32 [ %cond811, %cond.true.807 ], [ %cond830, %cond.end.829 ]
  br label %cond.end.833

cond.end.833:                                     ; preds = %cond.end.831, %cond.true.798
  %cond834 = phi i32 [ %cond802, %cond.true.798 ], [ %cond832, %cond.end.831 ]
  br label %cond.end.835

cond.end.835:                                     ; preds = %cond.end.833, %cond.true.789
  %cond836 = phi i32 [ %cond793, %cond.true.789 ], [ %cond834, %cond.end.833 ]
  br label %cond.end.837

cond.end.837:                                     ; preds = %cond.end.835, %cond.true.784
  %cond838 = phi i32 [ 2, %cond.true.784 ], [ %cond836, %cond.end.835 ]
  br label %cond.end.839

cond.end.839:                                     ; preds = %cond.end.837, %cond.true.779
  %cond840 = phi i32 [ 3, %cond.true.779 ], [ %cond838, %cond.end.837 ]
  br label %cond.end.841

cond.end.841:                                     ; preds = %cond.end.839, %cond.true.774
  %cond842 = phi i32 [ 4, %cond.true.774 ], [ %cond840, %cond.end.839 ]
  br label %cond.end.843

cond.end.843:                                     ; preds = %cond.end.841, %cond.true.769
  %cond844 = phi i32 [ 1, %cond.true.769 ], [ %cond842, %cond.end.841 ]
  br label %cond.end.845

cond.end.845:                                     ; preds = %cond.end.843, %lor.end.763
  %cond846 = phi i32 [ %cond764, %lor.end.763 ], [ %cond844, %cond.end.843 ]
  br label %cond.end.847

cond.end.847:                                     ; preds = %cond.end.845, %lor.end.751
  %cond848 = phi i32 [ %cond752, %lor.end.751 ], [ %cond846, %cond.end.845 ]
  br label %cond.end.849

cond.end.849:                                     ; preds = %cond.end.847, %lor.end.739
  %cond850 = phi i32 [ %cond740, %lor.end.739 ], [ %cond848, %cond.end.847 ]
  br label %cond.end.851

cond.end.851:                                     ; preds = %cond.end.849, %cond.true.728
  %cond852 = phi i32 [ 8, %cond.true.728 ], [ %cond850, %cond.end.849 ]
  br label %cond.end.853

cond.end.853:                                     ; preds = %cond.end.851, %cond.true.720
  %cond854 = phi i32 [ %cond723, %cond.true.720 ], [ %cond852, %cond.end.851 ]
  br label %cond.end.855

cond.end.855:                                     ; preds = %cond.end.853, %cond.true.715
  %cond856 = phi i32 [ 11, %cond.true.715 ], [ %cond854, %cond.end.853 ]
  br label %cond.end.857

cond.end.857:                                     ; preds = %cond.end.855, %cond.true.710
  %cond858 = phi i32 [ 12, %cond.true.710 ], [ %cond856, %cond.end.855 ]
  %cmp859 = icmp eq i32 %cond858, 7
  br i1 %cmp859, label %if.then.1171, label %lor.lhs.false.861

lor.lhs.false.861:                                ; preds = %cond.end.857
  %214 = load i8, i8* %c, align 1
  %conv862 = zext i8 %214 to i32
  %cmp863 = icmp eq i32 %conv862, 114
  br i1 %cmp863, label %cond.true.865, label %cond.false.866

cond.true.865:                                    ; preds = %lor.lhs.false.861
  br label %cond.end.1012

cond.false.866:                                   ; preds = %lor.lhs.false.861
  %215 = load i8, i8* %c, align 1
  %conv867 = zext i8 %215 to i32
  %cmp868 = icmp eq i32 %conv867, 82
  br i1 %cmp868, label %cond.true.870, label %cond.false.871

cond.true.870:                                    ; preds = %cond.false.866
  br label %cond.end.1010

cond.false.871:                                   ; preds = %cond.false.866
  %216 = load i8, i8* %c, align 1
  %conv872 = zext i8 %216 to i32
  %cmp873 = icmp eq i32 %conv872, 113
  br i1 %cmp873, label %cond.true.875, label %cond.false.879

cond.true.875:                                    ; preds = %cond.false.871
  %217 = load i32, i32* @target_flags, align 4
  %and876 = and i32 %217, 33554432
  %tobool877 = icmp ne i32 %and876, 0
  %cond878 = select i1 %tobool877, i32 12, i32 8
  br label %cond.end.1008

cond.false.879:                                   ; preds = %cond.false.871
  %218 = load i8, i8* %c, align 1
  %conv880 = zext i8 %218 to i32
  %cmp881 = icmp eq i32 %conv880, 81
  br i1 %cmp881, label %cond.true.883, label %cond.false.884

cond.true.883:                                    ; preds = %cond.false.879
  br label %cond.end.1006

cond.false.884:                                   ; preds = %cond.false.879
  %219 = load i8, i8* %c, align 1
  %conv885 = zext i8 %219 to i32
  %cmp886 = icmp eq i32 %conv885, 102
  br i1 %cmp886, label %cond.true.888, label %cond.false.896

cond.true.888:                                    ; preds = %cond.false.884
  %220 = load i32, i32* @target_flags, align 4
  %and889 = and i32 %220, 1
  %tobool890 = icmp ne i32 %and889, 0
  br i1 %tobool890, label %lor.end.894, label %lor.rhs.891

lor.rhs.891:                                      ; preds = %cond.true.888
  %221 = load i32, i32* @target_flags, align 4
  %and892 = and i32 %221, 32
  %tobool893 = icmp ne i32 %and892, 0
  br label %lor.end.894

lor.end.894:                                      ; preds = %lor.rhs.891, %cond.true.888
  %222 = phi i1 [ true, %cond.true.888 ], [ %tobool893, %lor.rhs.891 ]
  %cond895 = select i1 %222, i32 15, i32 0
  br label %cond.end.1004

cond.false.896:                                   ; preds = %cond.false.884
  %223 = load i8, i8* %c, align 1
  %conv897 = zext i8 %223 to i32
  %cmp898 = icmp eq i32 %conv897, 116
  br i1 %cmp898, label %cond.true.900, label %cond.false.908

cond.true.900:                                    ; preds = %cond.false.896
  %224 = load i32, i32* @target_flags, align 4
  %and901 = and i32 %224, 1
  %tobool902 = icmp ne i32 %and901, 0
  br i1 %tobool902, label %lor.end.906, label %lor.rhs.903

lor.rhs.903:                                      ; preds = %cond.true.900
  %225 = load i32, i32* @target_flags, align 4
  %and904 = and i32 %225, 32
  %tobool905 = icmp ne i32 %and904, 0
  br label %lor.end.906

lor.end.906:                                      ; preds = %lor.rhs.903, %cond.true.900
  %226 = phi i1 [ true, %cond.true.900 ], [ %tobool905, %lor.rhs.903 ]
  %cond907 = select i1 %226, i32 13, i32 0
  br label %cond.end.1002

cond.false.908:                                   ; preds = %cond.false.896
  %227 = load i8, i8* %c, align 1
  %conv909 = zext i8 %227 to i32
  %cmp910 = icmp eq i32 %conv909, 117
  br i1 %cmp910, label %cond.true.912, label %cond.false.920

cond.true.912:                                    ; preds = %cond.false.908
  %228 = load i32, i32* @target_flags, align 4
  %and913 = and i32 %228, 1
  %tobool914 = icmp ne i32 %and913, 0
  br i1 %tobool914, label %lor.end.918, label %lor.rhs.915

lor.rhs.915:                                      ; preds = %cond.true.912
  %229 = load i32, i32* @target_flags, align 4
  %and916 = and i32 %229, 32
  %tobool917 = icmp ne i32 %and916, 0
  br label %lor.end.918

lor.end.918:                                      ; preds = %lor.rhs.915, %cond.true.912
  %230 = phi i1 [ true, %cond.true.912 ], [ %tobool917, %lor.rhs.915 ]
  %cond919 = select i1 %230, i32 14, i32 0
  br label %cond.end.1000

cond.false.920:                                   ; preds = %cond.false.908
  %231 = load i8, i8* %c, align 1
  %conv921 = zext i8 %231 to i32
  %cmp922 = icmp eq i32 %conv921, 97
  br i1 %cmp922, label %cond.true.924, label %cond.false.925

cond.true.924:                                    ; preds = %cond.false.920
  br label %cond.end.998

cond.false.925:                                   ; preds = %cond.false.920
  %232 = load i8, i8* %c, align 1
  %conv926 = zext i8 %232 to i32
  %cmp927 = icmp eq i32 %conv926, 98
  br i1 %cmp927, label %cond.true.929, label %cond.false.930

cond.true.929:                                    ; preds = %cond.false.925
  br label %cond.end.996

cond.false.930:                                   ; preds = %cond.false.925
  %233 = load i8, i8* %c, align 1
  %conv931 = zext i8 %233 to i32
  %cmp932 = icmp eq i32 %conv931, 99
  br i1 %cmp932, label %cond.true.934, label %cond.false.935

cond.true.934:                                    ; preds = %cond.false.930
  br label %cond.end.994

cond.false.935:                                   ; preds = %cond.false.930
  %234 = load i8, i8* %c, align 1
  %conv936 = zext i8 %234 to i32
  %cmp937 = icmp eq i32 %conv936, 100
  br i1 %cmp937, label %cond.true.939, label %cond.false.940

cond.true.939:                                    ; preds = %cond.false.935
  br label %cond.end.992

cond.false.940:                                   ; preds = %cond.false.935
  %235 = load i8, i8* %c, align 1
  %conv941 = zext i8 %235 to i32
  %cmp942 = icmp eq i32 %conv941, 120
  br i1 %cmp942, label %cond.true.944, label %cond.false.949

cond.true.944:                                    ; preds = %cond.false.940
  %236 = load i32, i32* @target_flags, align 4
  %and945 = and i32 %236, 327680
  %cmp946 = icmp ne i32 %and945, 0
  %cond948 = select i1 %cmp946, i32 16, i32 0
  br label %cond.end.990

cond.false.949:                                   ; preds = %cond.false.940
  %237 = load i8, i8* %c, align 1
  %conv950 = zext i8 %237 to i32
  %cmp951 = icmp eq i32 %conv950, 89
  br i1 %cmp951, label %cond.true.953, label %cond.false.958

cond.true.953:                                    ; preds = %cond.false.949
  %238 = load i32, i32* @target_flags, align 4
  %and954 = and i32 %238, 262144
  %cmp955 = icmp ne i32 %and954, 0
  %cond957 = select i1 %cmp955, i32 16, i32 0
  br label %cond.end.988

cond.false.958:                                   ; preds = %cond.false.949
  %239 = load i8, i8* %c, align 1
  %conv959 = zext i8 %239 to i32
  %cmp960 = icmp eq i32 %conv959, 121
  br i1 %cmp960, label %cond.true.962, label %cond.false.967

cond.true.962:                                    ; preds = %cond.false.958
  %240 = load i32, i32* @target_flags, align 4
  %and963 = and i32 %240, 16384
  %cmp964 = icmp ne i32 %and963, 0
  %cond966 = select i1 %cmp964, i32 17, i32 0
  br label %cond.end.986

cond.false.967:                                   ; preds = %cond.false.958
  %241 = load i8, i8* %c, align 1
  %conv968 = zext i8 %241 to i32
  %cmp969 = icmp eq i32 %conv968, 65
  br i1 %cmp969, label %cond.true.971, label %cond.false.972

cond.true.971:                                    ; preds = %cond.false.967
  br label %cond.end.984

cond.false.972:                                   ; preds = %cond.false.967
  %242 = load i8, i8* %c, align 1
  %conv973 = zext i8 %242 to i32
  %cmp974 = icmp eq i32 %conv973, 68
  br i1 %cmp974, label %cond.true.976, label %cond.false.977

cond.true.976:                                    ; preds = %cond.false.972
  br label %cond.end.982

cond.false.977:                                   ; preds = %cond.false.972
  %243 = load i8, i8* %c, align 1
  %conv978 = zext i8 %243 to i32
  %cmp979 = icmp eq i32 %conv978, 83
  %cond981 = select i1 %cmp979, i32 5, i32 0
  br label %cond.end.982

cond.end.982:                                     ; preds = %cond.false.977, %cond.true.976
  %cond983 = phi i32 [ 6, %cond.true.976 ], [ %cond981, %cond.false.977 ]
  br label %cond.end.984

cond.end.984:                                     ; preds = %cond.end.982, %cond.true.971
  %cond985 = phi i32 [ 7, %cond.true.971 ], [ %cond983, %cond.end.982 ]
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.end.984, %cond.true.962
  %cond987 = phi i32 [ %cond966, %cond.true.962 ], [ %cond985, %cond.end.984 ]
  br label %cond.end.988

cond.end.988:                                     ; preds = %cond.end.986, %cond.true.953
  %cond989 = phi i32 [ %cond957, %cond.true.953 ], [ %cond987, %cond.end.986 ]
  br label %cond.end.990

cond.end.990:                                     ; preds = %cond.end.988, %cond.true.944
  %cond991 = phi i32 [ %cond948, %cond.true.944 ], [ %cond989, %cond.end.988 ]
  br label %cond.end.992

cond.end.992:                                     ; preds = %cond.end.990, %cond.true.939
  %cond993 = phi i32 [ 2, %cond.true.939 ], [ %cond991, %cond.end.990 ]
  br label %cond.end.994

cond.end.994:                                     ; preds = %cond.end.992, %cond.true.934
  %cond995 = phi i32 [ 3, %cond.true.934 ], [ %cond993, %cond.end.992 ]
  br label %cond.end.996

cond.end.996:                                     ; preds = %cond.end.994, %cond.true.929
  %cond997 = phi i32 [ 4, %cond.true.929 ], [ %cond995, %cond.end.994 ]
  br label %cond.end.998

cond.end.998:                                     ; preds = %cond.end.996, %cond.true.924
  %cond999 = phi i32 [ 1, %cond.true.924 ], [ %cond997, %cond.end.996 ]
  br label %cond.end.1000

cond.end.1000:                                    ; preds = %cond.end.998, %lor.end.918
  %cond1001 = phi i32 [ %cond919, %lor.end.918 ], [ %cond999, %cond.end.998 ]
  br label %cond.end.1002

cond.end.1002:                                    ; preds = %cond.end.1000, %lor.end.906
  %cond1003 = phi i32 [ %cond907, %lor.end.906 ], [ %cond1001, %cond.end.1000 ]
  br label %cond.end.1004

cond.end.1004:                                    ; preds = %cond.end.1002, %lor.end.894
  %cond1005 = phi i32 [ %cond895, %lor.end.894 ], [ %cond1003, %cond.end.1002 ]
  br label %cond.end.1006

cond.end.1006:                                    ; preds = %cond.end.1004, %cond.true.883
  %cond1007 = phi i32 [ 8, %cond.true.883 ], [ %cond1005, %cond.end.1004 ]
  br label %cond.end.1008

cond.end.1008:                                    ; preds = %cond.end.1006, %cond.true.875
  %cond1009 = phi i32 [ %cond878, %cond.true.875 ], [ %cond1007, %cond.end.1006 ]
  br label %cond.end.1010

cond.end.1010:                                    ; preds = %cond.end.1008, %cond.true.870
  %cond1011 = phi i32 [ 11, %cond.true.870 ], [ %cond1009, %cond.end.1008 ]
  br label %cond.end.1012

cond.end.1012:                                    ; preds = %cond.end.1010, %cond.true.865
  %cond1013 = phi i32 [ 12, %cond.true.865 ], [ %cond1011, %cond.end.1010 ]
  %cmp1014 = icmp eq i32 %cond1013, 5
  br i1 %cmp1014, label %if.then.1171, label %lor.lhs.false.1016

lor.lhs.false.1016:                               ; preds = %cond.end.1012
  %244 = load i8, i8* %c, align 1
  %conv1017 = zext i8 %244 to i32
  %cmp1018 = icmp eq i32 %conv1017, 114
  br i1 %cmp1018, label %cond.true.1020, label %cond.false.1021

cond.true.1020:                                   ; preds = %lor.lhs.false.1016
  br label %cond.end.1167

cond.false.1021:                                  ; preds = %lor.lhs.false.1016
  %245 = load i8, i8* %c, align 1
  %conv1022 = zext i8 %245 to i32
  %cmp1023 = icmp eq i32 %conv1022, 82
  br i1 %cmp1023, label %cond.true.1025, label %cond.false.1026

cond.true.1025:                                   ; preds = %cond.false.1021
  br label %cond.end.1165

cond.false.1026:                                  ; preds = %cond.false.1021
  %246 = load i8, i8* %c, align 1
  %conv1027 = zext i8 %246 to i32
  %cmp1028 = icmp eq i32 %conv1027, 113
  br i1 %cmp1028, label %cond.true.1030, label %cond.false.1034

cond.true.1030:                                   ; preds = %cond.false.1026
  %247 = load i32, i32* @target_flags, align 4
  %and1031 = and i32 %247, 33554432
  %tobool1032 = icmp ne i32 %and1031, 0
  %cond1033 = select i1 %tobool1032, i32 12, i32 8
  br label %cond.end.1163

cond.false.1034:                                  ; preds = %cond.false.1026
  %248 = load i8, i8* %c, align 1
  %conv1035 = zext i8 %248 to i32
  %cmp1036 = icmp eq i32 %conv1035, 81
  br i1 %cmp1036, label %cond.true.1038, label %cond.false.1039

cond.true.1038:                                   ; preds = %cond.false.1034
  br label %cond.end.1161

cond.false.1039:                                  ; preds = %cond.false.1034
  %249 = load i8, i8* %c, align 1
  %conv1040 = zext i8 %249 to i32
  %cmp1041 = icmp eq i32 %conv1040, 102
  br i1 %cmp1041, label %cond.true.1043, label %cond.false.1051

cond.true.1043:                                   ; preds = %cond.false.1039
  %250 = load i32, i32* @target_flags, align 4
  %and1044 = and i32 %250, 1
  %tobool1045 = icmp ne i32 %and1044, 0
  br i1 %tobool1045, label %lor.end.1049, label %lor.rhs.1046

lor.rhs.1046:                                     ; preds = %cond.true.1043
  %251 = load i32, i32* @target_flags, align 4
  %and1047 = and i32 %251, 32
  %tobool1048 = icmp ne i32 %and1047, 0
  br label %lor.end.1049

lor.end.1049:                                     ; preds = %lor.rhs.1046, %cond.true.1043
  %252 = phi i1 [ true, %cond.true.1043 ], [ %tobool1048, %lor.rhs.1046 ]
  %cond1050 = select i1 %252, i32 15, i32 0
  br label %cond.end.1159

cond.false.1051:                                  ; preds = %cond.false.1039
  %253 = load i8, i8* %c, align 1
  %conv1052 = zext i8 %253 to i32
  %cmp1053 = icmp eq i32 %conv1052, 116
  br i1 %cmp1053, label %cond.true.1055, label %cond.false.1063

cond.true.1055:                                   ; preds = %cond.false.1051
  %254 = load i32, i32* @target_flags, align 4
  %and1056 = and i32 %254, 1
  %tobool1057 = icmp ne i32 %and1056, 0
  br i1 %tobool1057, label %lor.end.1061, label %lor.rhs.1058

lor.rhs.1058:                                     ; preds = %cond.true.1055
  %255 = load i32, i32* @target_flags, align 4
  %and1059 = and i32 %255, 32
  %tobool1060 = icmp ne i32 %and1059, 0
  br label %lor.end.1061

lor.end.1061:                                     ; preds = %lor.rhs.1058, %cond.true.1055
  %256 = phi i1 [ true, %cond.true.1055 ], [ %tobool1060, %lor.rhs.1058 ]
  %cond1062 = select i1 %256, i32 13, i32 0
  br label %cond.end.1157

cond.false.1063:                                  ; preds = %cond.false.1051
  %257 = load i8, i8* %c, align 1
  %conv1064 = zext i8 %257 to i32
  %cmp1065 = icmp eq i32 %conv1064, 117
  br i1 %cmp1065, label %cond.true.1067, label %cond.false.1075

cond.true.1067:                                   ; preds = %cond.false.1063
  %258 = load i32, i32* @target_flags, align 4
  %and1068 = and i32 %258, 1
  %tobool1069 = icmp ne i32 %and1068, 0
  br i1 %tobool1069, label %lor.end.1073, label %lor.rhs.1070

lor.rhs.1070:                                     ; preds = %cond.true.1067
  %259 = load i32, i32* @target_flags, align 4
  %and1071 = and i32 %259, 32
  %tobool1072 = icmp ne i32 %and1071, 0
  br label %lor.end.1073

lor.end.1073:                                     ; preds = %lor.rhs.1070, %cond.true.1067
  %260 = phi i1 [ true, %cond.true.1067 ], [ %tobool1072, %lor.rhs.1070 ]
  %cond1074 = select i1 %260, i32 14, i32 0
  br label %cond.end.1155

cond.false.1075:                                  ; preds = %cond.false.1063
  %261 = load i8, i8* %c, align 1
  %conv1076 = zext i8 %261 to i32
  %cmp1077 = icmp eq i32 %conv1076, 97
  br i1 %cmp1077, label %cond.true.1079, label %cond.false.1080

cond.true.1079:                                   ; preds = %cond.false.1075
  br label %cond.end.1153

cond.false.1080:                                  ; preds = %cond.false.1075
  %262 = load i8, i8* %c, align 1
  %conv1081 = zext i8 %262 to i32
  %cmp1082 = icmp eq i32 %conv1081, 98
  br i1 %cmp1082, label %cond.true.1084, label %cond.false.1085

cond.true.1084:                                   ; preds = %cond.false.1080
  br label %cond.end.1151

cond.false.1085:                                  ; preds = %cond.false.1080
  %263 = load i8, i8* %c, align 1
  %conv1086 = zext i8 %263 to i32
  %cmp1087 = icmp eq i32 %conv1086, 99
  br i1 %cmp1087, label %cond.true.1089, label %cond.false.1090

cond.true.1089:                                   ; preds = %cond.false.1085
  br label %cond.end.1149

cond.false.1090:                                  ; preds = %cond.false.1085
  %264 = load i8, i8* %c, align 1
  %conv1091 = zext i8 %264 to i32
  %cmp1092 = icmp eq i32 %conv1091, 100
  br i1 %cmp1092, label %cond.true.1094, label %cond.false.1095

cond.true.1094:                                   ; preds = %cond.false.1090
  br label %cond.end.1147

cond.false.1095:                                  ; preds = %cond.false.1090
  %265 = load i8, i8* %c, align 1
  %conv1096 = zext i8 %265 to i32
  %cmp1097 = icmp eq i32 %conv1096, 120
  br i1 %cmp1097, label %cond.true.1099, label %cond.false.1104

cond.true.1099:                                   ; preds = %cond.false.1095
  %266 = load i32, i32* @target_flags, align 4
  %and1100 = and i32 %266, 327680
  %cmp1101 = icmp ne i32 %and1100, 0
  %cond1103 = select i1 %cmp1101, i32 16, i32 0
  br label %cond.end.1145

cond.false.1104:                                  ; preds = %cond.false.1095
  %267 = load i8, i8* %c, align 1
  %conv1105 = zext i8 %267 to i32
  %cmp1106 = icmp eq i32 %conv1105, 89
  br i1 %cmp1106, label %cond.true.1108, label %cond.false.1113

cond.true.1108:                                   ; preds = %cond.false.1104
  %268 = load i32, i32* @target_flags, align 4
  %and1109 = and i32 %268, 262144
  %cmp1110 = icmp ne i32 %and1109, 0
  %cond1112 = select i1 %cmp1110, i32 16, i32 0
  br label %cond.end.1143

cond.false.1113:                                  ; preds = %cond.false.1104
  %269 = load i8, i8* %c, align 1
  %conv1114 = zext i8 %269 to i32
  %cmp1115 = icmp eq i32 %conv1114, 121
  br i1 %cmp1115, label %cond.true.1117, label %cond.false.1122

cond.true.1117:                                   ; preds = %cond.false.1113
  %270 = load i32, i32* @target_flags, align 4
  %and1118 = and i32 %270, 16384
  %cmp1119 = icmp ne i32 %and1118, 0
  %cond1121 = select i1 %cmp1119, i32 17, i32 0
  br label %cond.end.1141

cond.false.1122:                                  ; preds = %cond.false.1113
  %271 = load i8, i8* %c, align 1
  %conv1123 = zext i8 %271 to i32
  %cmp1124 = icmp eq i32 %conv1123, 65
  br i1 %cmp1124, label %cond.true.1126, label %cond.false.1127

cond.true.1126:                                   ; preds = %cond.false.1122
  br label %cond.end.1139

cond.false.1127:                                  ; preds = %cond.false.1122
  %272 = load i8, i8* %c, align 1
  %conv1128 = zext i8 %272 to i32
  %cmp1129 = icmp eq i32 %conv1128, 68
  br i1 %cmp1129, label %cond.true.1131, label %cond.false.1132

cond.true.1131:                                   ; preds = %cond.false.1127
  br label %cond.end.1137

cond.false.1132:                                  ; preds = %cond.false.1127
  %273 = load i8, i8* %c, align 1
  %conv1133 = zext i8 %273 to i32
  %cmp1134 = icmp eq i32 %conv1133, 83
  %cond1136 = select i1 %cmp1134, i32 5, i32 0
  br label %cond.end.1137

cond.end.1137:                                    ; preds = %cond.false.1132, %cond.true.1131
  %cond1138 = phi i32 [ 6, %cond.true.1131 ], [ %cond1136, %cond.false.1132 ]
  br label %cond.end.1139

cond.end.1139:                                    ; preds = %cond.end.1137, %cond.true.1126
  %cond1140 = phi i32 [ 7, %cond.true.1126 ], [ %cond1138, %cond.end.1137 ]
  br label %cond.end.1141

cond.end.1141:                                    ; preds = %cond.end.1139, %cond.true.1117
  %cond1142 = phi i32 [ %cond1121, %cond.true.1117 ], [ %cond1140, %cond.end.1139 ]
  br label %cond.end.1143

cond.end.1143:                                    ; preds = %cond.end.1141, %cond.true.1108
  %cond1144 = phi i32 [ %cond1112, %cond.true.1108 ], [ %cond1142, %cond.end.1141 ]
  br label %cond.end.1145

cond.end.1145:                                    ; preds = %cond.end.1143, %cond.true.1099
  %cond1146 = phi i32 [ %cond1103, %cond.true.1099 ], [ %cond1144, %cond.end.1143 ]
  br label %cond.end.1147

cond.end.1147:                                    ; preds = %cond.end.1145, %cond.true.1094
  %cond1148 = phi i32 [ 2, %cond.true.1094 ], [ %cond1146, %cond.end.1145 ]
  br label %cond.end.1149

cond.end.1149:                                    ; preds = %cond.end.1147, %cond.true.1089
  %cond1150 = phi i32 [ 3, %cond.true.1089 ], [ %cond1148, %cond.end.1147 ]
  br label %cond.end.1151

cond.end.1151:                                    ; preds = %cond.end.1149, %cond.true.1084
  %cond1152 = phi i32 [ 4, %cond.true.1084 ], [ %cond1150, %cond.end.1149 ]
  br label %cond.end.1153

cond.end.1153:                                    ; preds = %cond.end.1151, %cond.true.1079
  %cond1154 = phi i32 [ 1, %cond.true.1079 ], [ %cond1152, %cond.end.1151 ]
  br label %cond.end.1155

cond.end.1155:                                    ; preds = %cond.end.1153, %lor.end.1073
  %cond1156 = phi i32 [ %cond1074, %lor.end.1073 ], [ %cond1154, %cond.end.1153 ]
  br label %cond.end.1157

cond.end.1157:                                    ; preds = %cond.end.1155, %lor.end.1061
  %cond1158 = phi i32 [ %cond1062, %lor.end.1061 ], [ %cond1156, %cond.end.1155 ]
  br label %cond.end.1159

cond.end.1159:                                    ; preds = %cond.end.1157, %lor.end.1049
  %cond1160 = phi i32 [ %cond1050, %lor.end.1049 ], [ %cond1158, %cond.end.1157 ]
  br label %cond.end.1161

cond.end.1161:                                    ; preds = %cond.end.1159, %cond.true.1038
  %cond1162 = phi i32 [ 8, %cond.true.1038 ], [ %cond1160, %cond.end.1159 ]
  br label %cond.end.1163

cond.end.1163:                                    ; preds = %cond.end.1161, %cond.true.1030
  %cond1164 = phi i32 [ %cond1033, %cond.true.1030 ], [ %cond1162, %cond.end.1161 ]
  br label %cond.end.1165

cond.end.1165:                                    ; preds = %cond.end.1163, %cond.true.1025
  %cond1166 = phi i32 [ 11, %cond.true.1025 ], [ %cond1164, %cond.end.1163 ]
  br label %cond.end.1167

cond.end.1167:                                    ; preds = %cond.end.1165, %cond.true.1020
  %cond1168 = phi i32 [ 12, %cond.true.1020 ], [ %cond1166, %cond.end.1165 ]
  %cmp1169 = icmp eq i32 %cond1168, 6
  br i1 %cmp1169, label %if.then.1171, label %if.end.1174

if.then.1171:                                     ; preds = %cond.end.1167, %cond.end.1012, %cond.end.857, %cond.end.702, %cond.end.547, %cond.end.392, %cond.end.238
  %274 = load i32, i32* %op_no, align 4
  %idxprom1172 = sext i32 %274 to i64
  %arrayidx1173 = getelementptr inbounds [30 x i32], [30 x i32]* %likely_spilled, i32 0, i64 %idxprom1172
  store i32 1, i32* %arrayidx1173, align 4
  br label %if.end.1174

if.end.1174:                                      ; preds = %if.then.1171, %cond.end.1167
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %if.end.1174, %if.end.93, %if.then.76, %sw.bb.60, %sw.bb.56, %sw.bb.55, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %land.end.53
  br label %for.inc.1175

for.inc.1175:                                     ; preds = %while.end
  %275 = load i32, i32* %op_no, align 4
  %inc1176 = add nsw i32 %275, 1
  store i32 %inc1176, i32* %op_no, align 4
  br label %for.cond.4

for.end.1177:                                     ; preds = %for.cond.4
  %276 = load i32, i32* %any_matches, align 4
  store i32 %276, i32* %retval
  br label %return

return:                                           ; preds = %for.end.1177, %if.then
  %277 = load i32, i32* %retval
  ret i32 %277
}

declare %struct.rtx_def* @gen_rtx_SUBREG(i32, %struct.rtx_def*, i32) #1

declare i32 @count_occurrences(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare i32 @operands_match_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @replacement_quality(%struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %src_regno = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %reg1 = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx2 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg1, i32 0, i64 %idxprom
  %5 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx2, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %5, i32 0, i32 7
  %6 = load i32, i32* %live_length, align 4
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %8 = load i32, i32* %rtuint8, align 4
  %idxprom9 = zext i32 %8 to i64
  %9 = load i32*, i32** @regno_src_regno, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %9, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  store i32 %10, i32* %src_regno, align 4
  %11 = load i32, i32* %src_regno, align 4
  %cmp11 = icmp slt i32 %11, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.5
  store i32 3, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.5
  %12 = load i32, i32* %src_regno, align 4
  %cmp14 = icmp slt i32 %12, 53
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.12, %if.then.4, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @reg_preferred_class(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @regclass_compatible_p(i32 %class0, i32 %class1) #0 {
entry:
  %class0.addr = alloca i32, align 4
  %class1.addr = alloca i32, align 4
  store i32 %class0, i32* %class0.addr, align 4
  store i32 %class1, i32* %class1.addr, align 4
  %0 = load i32, i32* %class0.addr, align 4
  %1 = load i32, i32* %class1.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %lor.end.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %class0.addr, align 4
  %3 = load i32, i32* %class1.addr, align 4
  %call = call i32 @reg_class_subset_p(i32 %2, i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32, i32* %class0.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %lor.rhs, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %land.lhs.true
  %5 = load i32, i32* %class0.addr, align 4
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %lor.rhs, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %class0.addr, align 4
  %cmp5 = icmp eq i32 %6, 3
  br i1 %cmp5, label %lor.rhs, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %7 = load i32, i32* %class0.addr, align 4
  %cmp7 = icmp eq i32 %7, 4
  br i1 %cmp7, label %lor.rhs, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %8 = load i32, i32* %class0.addr, align 4
  %cmp9 = icmp eq i32 %8, 7
  br i1 %cmp9, label %lor.rhs, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %9 = load i32, i32* %class0.addr, align 4
  %cmp11 = icmp eq i32 %9, 5
  br i1 %cmp11, label %lor.rhs, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %10 = load i32, i32* %class0.addr, align 4
  %cmp13 = icmp eq i32 %10, 6
  br i1 %cmp13, label %lor.rhs, label %lor.end.29

lor.rhs:                                          ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %land.lhs.true, %lor.lhs.false
  %11 = load i32, i32* %class1.addr, align 4
  %12 = load i32, i32* %class0.addr, align 4
  %call14 = call i32 @reg_class_subset_p(i32 %11, i32 %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %13 = load i32, i32* %class1.addr, align 4
  %cmp16 = icmp eq i32 %13, 1
  br i1 %cmp16, label %lor.end, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.rhs
  %14 = load i32, i32* %class1.addr, align 4
  %cmp18 = icmp eq i32 %14, 2
  br i1 %cmp18, label %lor.end, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.17
  %15 = load i32, i32* %class1.addr, align 4
  %cmp20 = icmp eq i32 %15, 3
  br i1 %cmp20, label %lor.end, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.19
  %16 = load i32, i32* %class1.addr, align 4
  %cmp22 = icmp eq i32 %16, 4
  br i1 %cmp22, label %lor.end, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.21
  %17 = load i32, i32* %class1.addr, align 4
  %cmp24 = icmp eq i32 %17, 7
  br i1 %cmp24, label %lor.end, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.23
  %18 = load i32, i32* %class1.addr, align 4
  %cmp26 = icmp eq i32 %18, 5
  br i1 %cmp26, label %lor.end, label %lor.rhs.27

lor.rhs.27:                                       ; preds = %lor.lhs.false.25
  %19 = load i32, i32* %class1.addr, align 4
  %cmp28 = icmp eq i32 %19, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs.27, %lor.lhs.false.25, %lor.lhs.false.23, %lor.lhs.false.21, %lor.lhs.false.19, %lor.lhs.false.17, %land.rhs
  %20 = phi i1 [ true, %lor.lhs.false.25 ], [ true, %lor.lhs.false.23 ], [ true, %lor.lhs.false.21 ], [ true, %lor.lhs.false.19 ], [ true, %lor.lhs.false.17 ], [ true, %land.rhs ], [ %cmp28, %lor.rhs.27 ]
  %lnot = xor i1 %20, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.rhs
  %21 = phi i1 [ false, %lor.rhs ], [ %lnot, %lor.end ]
  br label %lor.end.29

lor.end.29:                                       ; preds = %land.end, %lor.lhs.false.12, %entry
  %22 = phi i1 [ true, %lor.lhs.false.12 ], [ true, %entry ], [ %21, %land.end ]
  %lor.ext = zext i1 %22 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @fixup_match_1(%struct.rtx_def* %insn, %struct.rtx_def* %set, %struct.rtx_def* %src, %struct.rtx_def* %src_subreg, %struct.rtx_def* %dst, i32 %backward, i32 %operand_number, i32 %match_number, %struct._IO_FILE* %regmove_dump_file) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %src_subreg.addr = alloca %struct.rtx_def*, align 8
  %dst.addr = alloca %struct.rtx_def*, align 8
  %backward.addr = alloca i32, align 4
  %operand_number.addr = alloca i32, align 4
  %match_number.addr = alloca i32, align 4
  %regmove_dump_file.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %post_inc = alloca %struct.rtx_def*, align 8
  %post_inc_set = alloca %struct.rtx_def*, align 8
  %search_end = alloca %struct.rtx_def*, align 8
  %success = alloca i32, align 4
  %num_calls = alloca i32, align 4
  %s_num_calls = alloca i32, align 4
  %code = alloca i32, align 4
  %insn_const = alloca i64, align 8
  %newconst = alloca i64, align 8
  %overlap = alloca %struct.rtx_def*, align 8
  %src_note = alloca %struct.rtx_def*, align 8
  %dst_note = alloca %struct.rtx_def*, align 8
  %length = alloca i32, align 4
  %s_length = alloca i32, align 4
  %q = alloca %struct.rtx_def*, align 8
  %set2 = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %notes = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %q558 = alloca %struct.rtx_def*, align 8
  %set2559 = alloca %struct.rtx_def*, align 8
  %num_calls2 = alloca i32, align 4
  %s_length2 = alloca i32, align 4
  %q827 = alloca %struct.rtx_def*, align 8
  %inc_dest = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  store %struct.rtx_def* %src_subreg, %struct.rtx_def** %src_subreg.addr, align 8
  store %struct.rtx_def* %dst, %struct.rtx_def** %dst.addr, align 8
  store i32 %backward, i32* %backward.addr, align 4
  store i32 %operand_number, i32* %operand_number.addr, align 4
  store i32 %match_number, i32* %match_number.addr, align 4
  store %struct._IO_FILE* %regmove_dump_file, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %post_inc, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %post_inc_set, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %search_end, align 8
  store i32 0, i32* %success, align 4
  store i32 0, i32* %num_calls, align 4
  store i32 0, i32* %s_num_calls, align 4
  store i32 37, i32* %code, align 4
  store i64 0, i64* %insn_const, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %overlap, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %0, i32 1, %struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %src_note, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %dst_note, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %tobool1 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool1, label %if.end.45, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  store i32 %bf.clear4, i32* %code, align 4
  %8 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %8, 75
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %9 = load i32, i32* %code, align 4
  %cmp5 = icmp eq i32 %9, 90
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %code, align 4
  %cmp7 = icmp eq i32 %10, 87
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %11 = load i32, i32* %code, align 4
  %cmp9 = icmp eq i32 %11, 89
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false, %if.then.2
  %12 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp16 = icmp eq %struct.rtx_def* %14, %15
  br i1 %cmp16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 1
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load24 = load i32, i32* %19, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 54
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true.17
  %20 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 1
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx35 to i64*
  %23 = load i64, i64* %rtwint, align 8
  store i64 %23, i64* %insn_const, align 8
  br label %if.end.44

if.else:                                          ; preds = %land.lhs.true.17, %land.lhs.true, %lor.lhs.false.8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 1
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %call39 = call i32 @stable_and_no_regs_but_for_p(%struct.rtx_def* %25, %struct.rtx_def* %26, %struct.rtx_def* %27)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.else.42, label %if.then.41

if.then.41:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.42:                                       ; preds = %if.else
  store i32 37, i32* %code, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.27
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %tobool46 = icmp ne %struct._IO_FILE* %28, null
  br i1 %tobool46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.45
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %30 = load i32, i32* %operand_number.addr, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %32 = load i32, i32* %rtint, align 4
  %33 = load i32, i32* %match_number.addr, align 4
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i32 %30, i32 %32, i32 %33)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.end.45
  %34 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call52 = call %struct.rtx_def* @get_insns()
  %call53 = call i32 @reg_is_remote_constant_p(%struct.rtx_def* %34, %struct.rtx_def* %35, %struct.rtx_def* %call52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.51
  store i32 0, i32* %s_length, align 4
  store i32 0, i32* %length, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 2
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.474, %if.end.56
  %38 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool60 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool60, label %for.body, label %for.end.478

for.body:                                         ; preds = %for.cond
  %39 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load61 = load i32, i32* %40, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 34
  br i1 %cmp63, label %if.then.64, label %if.end.70

if.then.64:                                       ; preds = %for.body
  %41 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 7
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx69 to i32*
  %43 = load i32, i32* %rtuint, align 4
  %44 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  call void @replace_in_call_usage(%struct.rtx_def** %rtx67, i32 %43, %struct.rtx_def* %44, %struct.rtx_def* %45)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.64, %for.body
  %46 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call71 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %46)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.70
  br label %for.end.478

if.else.74:                                       ; preds = %if.end.70
  %47 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load75 = load i32, i32* %48, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %idxprom = sext i32 %bf.clear76 to i64
  %arrayidx77 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %49 = load i8, i8* %arrayidx77, align 1
  %conv = sext i8 %49 to i32
  %cmp78 = icmp eq i32 %conv, 105
  br i1 %cmp78, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.else.74
  br label %for.inc.474

if.end.81:                                        ; preds = %if.else.74
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81
  %50 = load i32, i32* %length, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %length, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %tobool83 = icmp ne %struct.rtx_def* %51, null
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.end.82
  %52 = load i32, i32* %s_length, align 4
  %inc85 = add nsw i32 %52, 1
  store i32 %inc85, i32* %s_length, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.84, %if.end.82
  %53 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call87 = call i32 @reg_set_p(%struct.rtx_def* %53, %struct.rtx_def* %54)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.109, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %if.end.86
  %55 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call90 = call i32 @reg_set_p(%struct.rtx_def* %55, %struct.rtx_def* %56)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.109, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.89
  %57 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 3
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load96 = load i32, i32* %59, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 48
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.110

land.lhs.true.100:                                ; preds = %lor.lhs.false.92
  %60 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 3
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %call107 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %60, %struct.rtx_def* %63)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true.100, %lor.lhs.false.89, %if.end.86
  br label %for.end.478

if.end.110:                                       ; preds = %land.lhs.true.100, %lor.lhs.false.92
  %64 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtuint113 = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %66 = load i32, i32* %rtuint113, align 4
  %call114 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %64, i32 1, i32 %66)
  store %struct.rtx_def* %call114, %struct.rtx_def** %dst_note, align 8
  %tobool115 = icmp ne %struct.rtx_def* %call114, null
  br i1 %tobool115, label %land.lhs.true.116, label %if.end.433

land.lhs.true.116:                                ; preds = %if.end.110
  %67 = load %struct.rtx_def*, %struct.rtx_def** %dst_note, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load120 = load i32, i32* %69, align 8
  %bf.lshr121 = lshr i32 %bf.load120, 16
  %bf.clear122 = and i32 %bf.lshr121, 255
  %70 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load123 = load i32, i32* %71, align 8
  %bf.lshr124 = lshr i32 %bf.load123, 16
  %bf.clear125 = and i32 %bf.lshr124, 255
  %cmp126 = icmp eq i32 %bf.clear122, %bf.clear125
  br i1 %cmp126, label %if.then.128, label %if.end.433

if.then.128:                                      ; preds = %land.lhs.true.116
  %72 = load %struct.rtx_def*, %struct.rtx_def** %overlap, align 8
  %tobool129 = icmp ne %struct.rtx_def* %72, null
  br i1 %tobool129, label %land.lhs.true.130, label %if.end.140

land.lhs.true.130:                                ; preds = %if.then.128
  %73 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 1
  %rtx133 = bitcast %union.rtunion_def* %arrayidx132 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx133, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load134 = load i32, i32* %75, align 8
  %bf.lshr135 = lshr i32 %bf.load134, 16
  %bf.clear136 = and i32 %bf.lshr135, 255
  %cmp137 = icmp ne i32 %bf.clear136, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %land.lhs.true.130
  br label %for.end.478

if.end.140:                                       ; preds = %land.lhs.true.130, %if.then.128
  %76 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %tobool141 = icmp ne %struct.rtx_def* %76, null
  br i1 %tobool141, label %if.end.425, label %if.then.142

if.then.142:                                      ; preds = %if.end.140
  store %struct.rtx_def* null, %struct.rtx_def** %set2, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 3
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %call146 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %77, %struct.rtx_def* %79)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.142
  br label %for.end.478

if.end.149:                                       ; preds = %if.then.142
  %80 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  store %struct.rtx_def* %80, %struct.rtx_def** %q, align 8
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc, %if.end.149
  %81 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %tobool151 = icmp ne %struct.rtx_def* %81, null
  br i1 %tobool151, label %for.body.152, label %for.end

for.body.152:                                     ; preds = %for.cond.150
  %82 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %call153 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %82)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %for.body.152
  store %struct.rtx_def* null, %struct.rtx_def** %q, align 8
  br label %for.end

if.else.156:                                      ; preds = %for.body.152
  %83 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load157 = load i32, i32* %84, align 8
  %bf.clear158 = and i32 %bf.load157, 65535
  %idxprom159 = sext i32 %bf.clear158 to i64
  %arrayidx160 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom159
  %85 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %85 to i32
  %cmp162 = icmp eq i32 %conv161, 105
  br i1 %cmp162, label %if.else.165, label %if.then.164

if.then.164:                                      ; preds = %if.else.156
  br label %for.inc

if.else.165:                                      ; preds = %if.else.156
  %86 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 3
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  %call169 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %86, %struct.rtx_def* %88)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.174, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %if.else.165
  %89 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %call172 = call i32 @reg_set_p(%struct.rtx_def* %89, %struct.rtx_def* %90)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %lor.lhs.false.171, %if.else.165
  br label %for.end

if.end.175:                                       ; preds = %lor.lhs.false.171
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176
  br label %for.inc

for.inc:                                          ; preds = %if.end.177, %if.then.164
  %91 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 2
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx180, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %q, align 8
  br label %for.cond.150

for.end:                                          ; preds = %if.then.174, %if.then.155, %for.cond.150
  %93 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %tobool181 = icmp ne %struct.rtx_def* %93, null
  br i1 %tobool181, label %if.then.182, label %if.end.208

if.then.182:                                      ; preds = %for.end
  %94 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load183 = load i32, i32* %95, align 8
  %bf.clear184 = and i32 %bf.load183, 65535
  %idxprom185 = sext i32 %bf.clear184 to i64
  %arrayidx186 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom185
  %96 = load i8, i8* %arrayidx186, align 1
  %conv187 = sext i8 %96 to i32
  %cmp188 = icmp eq i32 %conv187, 105
  br i1 %cmp188, label %cond.true, label %cond.false.205

cond.true:                                        ; preds = %if.then.182
  %97 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 3
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load193 = load i32, i32* %99, align 8
  %bf.clear194 = and i32 %bf.load193, 65535
  %cmp195 = icmp eq i32 %bf.clear194, 47
  br i1 %cmp195, label %cond.true.197, label %cond.false

cond.true.197:                                    ; preds = %cond.true
  %100 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 3
  %rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx200, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %102 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 3
  %rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx203, align 8
  %call204 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %102, %struct.rtx_def* %104)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.197
  %cond = phi %struct.rtx_def* [ %101, %cond.true.197 ], [ %call204, %cond.false ]
  br label %cond.end.206

cond.false.205:                                   ; preds = %if.then.182
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.205, %cond.end
  %cond207 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.205 ]
  store %struct.rtx_def* %cond207, %struct.rtx_def** %set2, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %cond.end.206, %for.end
  %105 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %tobool209 = icmp ne %struct.rtx_def* %105, null
  br i1 %tobool209, label %lor.lhs.false.210, label %if.then.249

lor.lhs.false.210:                                ; preds = %if.end.208
  %106 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %tobool211 = icmp ne %struct.rtx_def* %106, null
  br i1 %tobool211, label %lor.lhs.false.212, label %if.then.249

lor.lhs.false.212:                                ; preds = %lor.lhs.false.210
  %107 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 1
  %rtx215 = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtx_def**
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rtx215, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load216 = load i32, i32* %109, align 8
  %bf.clear217 = and i32 %bf.load216, 65535
  %110 = load i32, i32* %code, align 4
  %cmp218 = icmp ne i32 %bf.clear217, %110
  br i1 %cmp218, label %if.then.249, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %lor.lhs.false.212
  %111 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld221, i32 0, i64 1
  %rtx223 = bitcast %union.rtunion_def* %arrayidx222 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx223, align 8
  %fld224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld224, i32 0, i64 0
  %rtx226 = bitcast %union.rtunion_def* %arrayidx225 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx226, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp227 = icmp ne %struct.rtx_def* %113, %114
  br i1 %cmp227, label %if.then.249, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %lor.lhs.false.220
  %115 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld230, i32 0, i64 1
  %rtx232 = bitcast %union.rtunion_def* %arrayidx231 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtx232, align 8
  %fld233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld233, i32 0, i64 1
  %rtx235 = bitcast %union.rtunion_def* %arrayidx234 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx235, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load236 = load i32, i32* %118, align 8
  %bf.clear237 = and i32 %bf.load236, 65535
  %cmp238 = icmp ne i32 %bf.clear237, 54
  br i1 %cmp238, label %if.then.249, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %lor.lhs.false.229
  %119 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld241, i32 0, i64 0
  %rtx243 = bitcast %union.rtunion_def* %arrayidx242 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx243, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp244 = icmp ne %struct.rtx_def* %120, %121
  br i1 %cmp244, label %land.lhs.true.246, label %if.else.375

land.lhs.true.246:                                ; preds = %lor.lhs.false.240
  %122 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call247 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %122, i32 1, %struct.rtx_def* %123)
  %tobool248 = icmp ne %struct.rtx_def* %call247, null
  br i1 %tobool248, label %if.else.375, label %if.then.249

if.then.249:                                      ; preds = %land.lhs.true.246, %lor.lhs.false.229, %lor.lhs.false.220, %lor.lhs.false.212, %lor.lhs.false.210, %if.end.208
  %124 = load i32, i32* %code, align 4
  %cmp250 = icmp eq i32 %124, 75
  br i1 %cmp250, label %land.lhs.true.252, label %if.else.373

land.lhs.true.252:                                ; preds = %if.then.249
  %125 = load i32, i32* %backward.addr, align 4
  %tobool253 = icmp ne i32 %125, 0
  br i1 %tobool253, label %land.lhs.true.254, label %if.else.373

land.lhs.true.254:                                ; preds = %land.lhs.true.252
  %126 = load %struct.rtx_def*, %struct.rtx_def** %dst_note, align 8
  %tobool255 = icmp ne %struct.rtx_def* %126, null
  br i1 %tobool255, label %land.lhs.true.256, label %land.lhs.true.366

land.lhs.true.256:                                ; preds = %land.lhs.true.254
  %127 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtuint259 = bitcast %union.rtunion_def* %arrayidx258 to i32*
  %128 = load i32, i32* %rtuint259, align 4
  %idxprom260 = zext i32 %128 to i64
  %129 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %129, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx261 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom260
  %130 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx261, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %130, i32 0, i32 8
  %131 = load i32, i32* %calls_crossed, align 4
  %tobool262 = icmp ne i32 %131, 0
  br i1 %tobool262, label %land.lhs.true.366, label %land.lhs.true.263

land.lhs.true.263:                                ; preds = %land.lhs.true.256
  %132 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load264 = load i32, i32* %133, align 8
  %bf.clear265 = and i32 %bf.load264, 65535
  %idxprom266 = sext i32 %bf.clear265 to i64
  %arrayidx267 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom266
  %134 = load i8, i8* %arrayidx267, align 1
  %conv268 = sext i8 %134 to i32
  %cmp269 = icmp eq i32 %conv268, 105
  br i1 %cmp269, label %cond.true.271, label %cond.false.290

cond.true.271:                                    ; preds = %land.lhs.true.263
  %135 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld272 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx273 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld272, i32 0, i64 3
  %rtx274 = bitcast %union.rtunion_def* %arrayidx273 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx274, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load275 = load i32, i32* %137, align 8
  %bf.clear276 = and i32 %bf.load275, 65535
  %cmp277 = icmp eq i32 %bf.clear276, 47
  br i1 %cmp277, label %cond.true.279, label %cond.false.284

cond.true.279:                                    ; preds = %cond.true.271
  %138 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld280 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx281 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld280, i32 0, i64 3
  %rtx282 = bitcast %union.rtunion_def* %arrayidx281 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx282, align 8
  %tobool283 = icmp ne %struct.rtx_def* %139, null
  br i1 %tobool283, label %land.lhs.true.291, label %land.lhs.true.366

cond.false.284:                                   ; preds = %cond.true.271
  %140 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld285, i32 0, i64 3
  %rtx287 = bitcast %union.rtunion_def* %arrayidx286 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx287, align 8
  %call288 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %140, %struct.rtx_def* %142)
  %tobool289 = icmp ne %struct.rtx_def* %call288, null
  br i1 %tobool289, label %land.lhs.true.291, label %land.lhs.true.366

cond.false.290:                                   ; preds = %land.lhs.true.263
  br i1 false, label %land.lhs.true.291, label %land.lhs.true.366

land.lhs.true.291:                                ; preds = %cond.false.290, %cond.false.284, %cond.true.279
  %143 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %144 = bitcast %struct.rtx_def* %143 to i32*
  %bf.load292 = load i32, i32* %144, align 8
  %bf.clear293 = and i32 %bf.load292, 65535
  %idxprom294 = sext i32 %bf.clear293 to i64
  %arrayidx295 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom294
  %145 = load i8, i8* %arrayidx295, align 1
  %conv296 = sext i8 %145 to i32
  %cmp297 = icmp eq i32 %conv296, 105
  br i1 %cmp297, label %cond.true.299, label %cond.false.318

cond.true.299:                                    ; preds = %land.lhs.true.291
  %146 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 3
  %rtx302 = bitcast %union.rtunion_def* %arrayidx301 to %struct.rtx_def**
  %147 = load %struct.rtx_def*, %struct.rtx_def** %rtx302, align 8
  %148 = bitcast %struct.rtx_def* %147 to i32*
  %bf.load303 = load i32, i32* %148, align 8
  %bf.clear304 = and i32 %bf.load303, 65535
  %cmp305 = icmp eq i32 %bf.clear304, 47
  br i1 %cmp305, label %cond.true.307, label %cond.false.311

cond.true.307:                                    ; preds = %cond.true.299
  %149 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld308, i32 0, i64 3
  %rtx310 = bitcast %union.rtunion_def* %arrayidx309 to %struct.rtx_def**
  %150 = load %struct.rtx_def*, %struct.rtx_def** %rtx310, align 8
  br label %cond.end.316

cond.false.311:                                   ; preds = %cond.true.299
  %151 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %152 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %arrayidx313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld312, i32 0, i64 3
  %rtx314 = bitcast %union.rtunion_def* %arrayidx313 to %struct.rtx_def**
  %153 = load %struct.rtx_def*, %struct.rtx_def** %rtx314, align 8
  %call315 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %151, %struct.rtx_def* %153)
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.311, %cond.true.307
  %cond317 = phi %struct.rtx_def* [ %150, %cond.true.307 ], [ %call315, %cond.false.311 ]
  br label %cond.end.319

cond.false.318:                                   ; preds = %land.lhs.true.291
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.false.318, %cond.end.316
  %cond320 = phi %struct.rtx_def* [ %cond317, %cond.end.316 ], [ null, %cond.false.318 ]
  %fld321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond320, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld321, i32 0, i64 0
  %rtx323 = bitcast %union.rtunion_def* %arrayidx322 to %struct.rtx_def**
  %154 = load %struct.rtx_def*, %struct.rtx_def** %rtx323, align 8
  %155 = bitcast %struct.rtx_def* %154 to i32*
  %bf.load324 = load i32, i32* %155, align 8
  %bf.clear325 = and i32 %bf.load324, 65535
  %cmp326 = icmp eq i32 %bf.clear325, 61
  br i1 %cmp326, label %land.lhs.true.328, label %land.lhs.true.366

land.lhs.true.328:                                ; preds = %cond.end.319
  %156 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %157 = bitcast %struct.rtx_def* %156 to i32*
  %bf.load329 = load i32, i32* %157, align 8
  %bf.clear330 = and i32 %bf.load329, 65535
  %idxprom331 = sext i32 %bf.clear330 to i64
  %arrayidx332 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom331
  %158 = load i8, i8* %arrayidx332, align 1
  %conv333 = sext i8 %158 to i32
  %cmp334 = icmp eq i32 %conv333, 105
  br i1 %cmp334, label %cond.true.336, label %cond.false.355

cond.true.336:                                    ; preds = %land.lhs.true.328
  %159 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld337, i32 0, i64 3
  %rtx339 = bitcast %union.rtunion_def* %arrayidx338 to %struct.rtx_def**
  %160 = load %struct.rtx_def*, %struct.rtx_def** %rtx339, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load340 = load i32, i32* %161, align 8
  %bf.clear341 = and i32 %bf.load340, 65535
  %cmp342 = icmp eq i32 %bf.clear341, 47
  br i1 %cmp342, label %cond.true.344, label %cond.false.348

cond.true.344:                                    ; preds = %cond.true.336
  %162 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld345 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx346 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld345, i32 0, i64 3
  %rtx347 = bitcast %union.rtunion_def* %arrayidx346 to %struct.rtx_def**
  %163 = load %struct.rtx_def*, %struct.rtx_def** %rtx347, align 8
  br label %cond.end.353

cond.false.348:                                   ; preds = %cond.true.336
  %164 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld349, i32 0, i64 3
  %rtx351 = bitcast %union.rtunion_def* %arrayidx350 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %rtx351, align 8
  %call352 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %164, %struct.rtx_def* %166)
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.348, %cond.true.344
  %cond354 = phi %struct.rtx_def* [ %163, %cond.true.344 ], [ %call352, %cond.false.348 ]
  br label %cond.end.356

cond.false.355:                                   ; preds = %land.lhs.true.328
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.355, %cond.end.353
  %cond357 = phi %struct.rtx_def* [ %cond354, %cond.end.353 ], [ null, %cond.false.355 ]
  %fld358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond357, i32 0, i32 1
  %arrayidx359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld358, i32 0, i64 0
  %rtx360 = bitcast %union.rtunion_def* %arrayidx359 to %struct.rtx_def**
  %167 = load %struct.rtx_def*, %struct.rtx_def** %rtx360, align 8
  %fld361 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx362 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld361, i32 0, i64 0
  %rtuint363 = bitcast %union.rtunion_def* %arrayidx362 to i32*
  %168 = load i32, i32* %rtuint363, align 4
  %cmp364 = icmp ult i32 %168, 53
  br i1 %cmp364, label %if.else.373, label %land.lhs.true.366

land.lhs.true.366:                                ; preds = %cond.end.356, %cond.end.319, %cond.false.290, %cond.false.284, %cond.true.279, %land.lhs.true.256, %land.lhs.true.254
  %169 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load367 = load i32, i32* %170, align 8
  %bf.lshr368 = lshr i32 %bf.load367, 16
  %bf.clear369 = and i32 %bf.lshr368, 255
  %cmp370 = icmp eq i32 %bf.clear369, 0
  br i1 %cmp370, label %if.then.372, label %if.else.373

if.then.372:                                      ; preds = %land.lhs.true.366
  %171 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  store %struct.rtx_def* %171, %struct.rtx_def** %search_end, align 8
  %172 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %172, %struct.rtx_def** %q, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  store %struct.rtx_def* %173, %struct.rtx_def** %set2, align 8
  %174 = load i64, i64* %insn_const, align 8
  %sub = sub nsw i64 0, %174
  store i64 %sub, i64* %newconst, align 8
  store i32 76, i32* %code, align 4
  br label %if.end.374

if.else.373:                                      ; preds = %land.lhs.true.366, %cond.end.356, %land.lhs.true.252, %if.then.249
  br label %for.end.478

if.end.374:                                       ; preds = %if.then.372
  br label %if.end.416

if.else.375:                                      ; preds = %land.lhs.true.246, %lor.lhs.false.240
  %175 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld376, i32 0, i64 1
  %rtx378 = bitcast %union.rtunion_def* %arrayidx377 to %struct.rtx_def**
  %176 = load %struct.rtx_def*, %struct.rtx_def** %rtx378, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 1
  %rtx381 = bitcast %union.rtunion_def* %arrayidx380 to %struct.rtx_def**
  %177 = load %struct.rtx_def*, %struct.rtx_def** %rtx381, align 8
  %fld382 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %arrayidx383 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld382, i32 0, i64 0
  %rtwint384 = bitcast %union.rtunion_def* %arrayidx383 to i64*
  %178 = load i64, i64* %rtwint384, align 8
  %179 = load i64, i64* %insn_const, align 8
  %sub385 = sub nsw i64 %178, %179
  store i64 %sub385, i64* %newconst, align 8
  %180 = load i32, i32* %code, align 4
  %cmp386 = icmp ne i32 %180, 75
  br i1 %cmp386, label %land.lhs.true.388, label %if.end.404

land.lhs.true.388:                                ; preds = %if.else.375
  %181 = load i64, i64* %newconst, align 8
  %cmp389 = icmp slt i64 %181, 0
  br i1 %cmp389, label %if.then.403, label %lor.lhs.false.391

lor.lhs.false.391:                                ; preds = %land.lhs.true.388
  %182 = load i64, i64* %newconst, align 8
  %183 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld392 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx393 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld392, i32 0, i64 1
  %rtx394 = bitcast %union.rtunion_def* %arrayidx393 to %struct.rtx_def**
  %184 = load %struct.rtx_def*, %struct.rtx_def** %rtx394, align 8
  %185 = bitcast %struct.rtx_def* %184 to i32*
  %bf.load395 = load i32, i32* %185, align 8
  %bf.lshr396 = lshr i32 %bf.load395, 16
  %bf.clear397 = and i32 %bf.lshr396, 255
  %idxprom398 = sext i32 %bf.clear397 to i64
  %arrayidx399 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom398
  %186 = load i16, i16* %arrayidx399, align 2
  %conv400 = zext i16 %186 to i64
  %cmp401 = icmp uge i64 %182, %conv400
  br i1 %cmp401, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %lor.lhs.false.391, %land.lhs.true.388
  br label %for.end.478

if.end.404:                                       ; preds = %lor.lhs.false.391, %if.else.375
  %187 = load i32, i32* %code, align 4
  %cmp405 = icmp eq i32 %187, 75
  br i1 %cmp405, label %if.then.407, label %if.end.415

if.then.407:                                      ; preds = %if.end.404
  %188 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  store %struct.rtx_def* %188, %struct.rtx_def** %post_inc, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld408 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %189, i32 0, i32 1
  %arrayidx409 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld408, i32 0, i64 0
  %rtx410 = bitcast %union.rtunion_def* %arrayidx409 to %struct.rtx_def**
  %190 = load %struct.rtx_def*, %struct.rtx_def** %rtx410, align 8
  %191 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp411 = icmp ne %struct.rtx_def* %190, %191
  br i1 %cmp411, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %if.then.407
  %192 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  store %struct.rtx_def* %192, %struct.rtx_def** %post_inc_set, align 8
  br label %if.end.414

if.end.414:                                       ; preds = %if.then.413, %if.then.407
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.414, %if.end.404
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %if.end.374
  %193 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld417 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx418 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld417, i32 0, i64 1
  %rtx419 = bitcast %union.rtunion_def* %arrayidx418 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx419, align 8
  %fld420 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx421 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld420, i32 0, i64 1
  %rtx422 = bitcast %union.rtunion_def* %arrayidx421 to %struct.rtx_def**
  %196 = load i64, i64* %newconst, align 8
  %call423 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %196)
  %call424 = call i32 @validate_change(%struct.rtx_def* %193, %struct.rtx_def** %rtx422, %struct.rtx_def* %call423, i32 1)
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.416, %if.end.140
  %197 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %198 = load i32, i32* %match_number.addr, align 4
  %idxprom426 = sext i32 %198 to i64
  %arrayidx427 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom426
  %199 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx427, align 8
  %200 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call428 = call i32 @validate_change(%struct.rtx_def* %197, %struct.rtx_def** %199, %struct.rtx_def* %200, i32 1)
  %201 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %src_subreg.addr, align 8
  %203 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call429 = call i32 @validate_replace_rtx(%struct.rtx_def* %201, %struct.rtx_def* %202, %struct.rtx_def* %203)
  %tobool430 = icmp ne i32 %call429, 0
  br i1 %tobool430, label %if.then.431, label %if.end.432

if.then.431:                                      ; preds = %if.end.425
  store i32 1, i32* %success, align 4
  br label %if.end.432

if.end.432:                                       ; preds = %if.then.431, %if.end.425
  br label %for.end.478

if.end.433:                                       ; preds = %land.lhs.true.116, %if.end.110
  %204 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %205, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld434, i32 0, i64 3
  %rtx436 = bitcast %union.rtunion_def* %arrayidx435 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %rtx436, align 8
  %call437 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %204, %struct.rtx_def* %206)
  %tobool438 = icmp ne i32 %call437, 0
  br i1 %tobool438, label %if.then.439, label %if.end.440

if.then.439:                                      ; preds = %if.end.433
  br label %for.end.478

if.end.440:                                       ; preds = %if.end.433
  %207 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %tobool441 = icmp ne %struct.rtx_def* %207, null
  br i1 %tobool441, label %if.end.450, label %land.lhs.true.442

land.lhs.true.442:                                ; preds = %if.end.440
  %208 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld443 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %209, i32 0, i32 1
  %arrayidx444 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld443, i32 0, i64 3
  %rtx445 = bitcast %union.rtunion_def* %arrayidx444 to %struct.rtx_def**
  %210 = load %struct.rtx_def*, %struct.rtx_def** %rtx445, align 8
  %call446 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %208, %struct.rtx_def* %210)
  %tobool447 = icmp ne i32 %call446, 0
  br i1 %tobool447, label %if.then.448, label %if.end.450

if.then.448:                                      ; preds = %land.lhs.true.442
  %211 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  store %struct.rtx_def* %211, %struct.rtx_def** %overlap, align 8
  %212 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %213 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call449 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %212, i32 1, %struct.rtx_def* %213)
  store %struct.rtx_def* %call449, %struct.rtx_def** %src_note, align 8
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.448, %land.lhs.true.442, %if.end.440
  %214 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %215 = bitcast %struct.rtx_def* %214 to i32*
  %bf.load451 = load i32, i32* %215, align 8
  %bf.clear452 = and i32 %bf.load451, 65535
  %cmp453 = icmp eq i32 %bf.clear452, 34
  br i1 %cmp453, label %if.then.455, label %if.end.473

if.then.455:                                      ; preds = %if.end.450
  %216 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld456 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx457 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld456, i32 0, i64 0
  %rtuint458 = bitcast %union.rtunion_def* %arrayidx457 to i32*
  %217 = load i32, i32* %rtuint458, align 4
  %idxprom459 = zext i32 %217 to i64
  %218 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data460 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %218, i32 0, i32 4
  %reg461 = bitcast %union.varray_data_tag* %data460 to [1 x %struct.reg_info_def*]*
  %arrayidx462 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg461, i32 0, i64 %idxprom459
  %219 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx462, align 8
  %calls_crossed463 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %219, i32 0, i32 8
  %220 = load i32, i32* %calls_crossed463, align 4
  %cmp464 = icmp eq i32 %220, 0
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.then.455
  br label %for.end.478

if.end.467:                                       ; preds = %if.then.455
  %221 = load i32, i32* %num_calls, align 4
  %inc468 = add nsw i32 %221, 1
  store i32 %inc468, i32* %num_calls, align 4
  %222 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %tobool469 = icmp ne %struct.rtx_def* %222, null
  br i1 %tobool469, label %if.then.470, label %if.end.472

if.then.470:                                      ; preds = %if.end.467
  %223 = load i32, i32* %s_num_calls, align 4
  %inc471 = add nsw i32 %223, 1
  store i32 %inc471, i32* %s_num_calls, align 4
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.470, %if.end.467
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %if.end.450
  br label %for.inc.474

for.inc.474:                                      ; preds = %if.end.473, %if.then.80
  %224 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 2
  %rtx477 = bitcast %union.rtunion_def* %arrayidx476 to %struct.rtx_def**
  %225 = load %struct.rtx_def*, %struct.rtx_def** %rtx477, align 8
  store %struct.rtx_def* %225, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end.478:                                      ; preds = %if.then.466, %if.then.439, %if.end.432, %if.then.403, %if.else.373, %if.then.148, %if.then.139, %if.then.109, %if.then.73, %for.cond
  %226 = load i32, i32* %success, align 4
  %tobool479 = icmp ne i32 %226, 0
  br i1 %tobool479, label %if.end.481, label %if.then.480

if.then.480:                                      ; preds = %for.end.478
  store i32 0, i32* %retval
  br label %return

if.end.481:                                       ; preds = %for.end.478
  %227 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %228 = load %struct.rtx_def*, %struct.rtx_def** %dst_note, align 8
  call void @remove_note(%struct.rtx_def* %227, %struct.rtx_def* %228)
  %229 = load i32, i32* %code, align 4
  %cmp482 = icmp eq i32 %229, 76
  br i1 %cmp482, label %if.then.484, label %if.end.514

if.then.484:                                      ; preds = %if.end.481
  %230 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld485 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld485, i32 0, i64 3
  %rtx487 = bitcast %union.rtunion_def* %arrayidx486 to %struct.rtx_def**
  %231 = load %struct.rtx_def*, %struct.rtx_def** %rtx487, align 8
  %call488 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %231)
  %232 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call489 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call488, %struct.rtx_def* %232)
  store %struct.rtx_def* %call489, %struct.rtx_def** %post_inc, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %234 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld490 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %234, i32 0, i32 1
  %arrayidx491 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld490, i32 0, i64 1
  %rtx492 = bitcast %union.rtunion_def* %arrayidx491 to %struct.rtx_def**
  %235 = load %struct.rtx_def*, %struct.rtx_def** %rtx492, align 8
  %fld493 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %235, i32 0, i32 1
  %arrayidx494 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld493, i32 0, i64 1
  %rtx495 = bitcast %union.rtunion_def* %arrayidx494 to %struct.rtx_def**
  %236 = load i64, i64* %insn_const, align 8
  %call496 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %236)
  %call497 = call i32 @validate_change(%struct.rtx_def* %233, %struct.rtx_def** %rtx495, %struct.rtx_def* %call496, i32 0)
  %237 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %237, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 0
  %rtuint500 = bitcast %union.rtunion_def* %arrayidx499 to i32*
  %238 = load i32, i32* %rtuint500, align 4
  %idxprom501 = zext i32 %238 to i64
  %239 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data502 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %239, i32 0, i32 4
  %reg503 = bitcast %union.varray_data_tag* %data502 to [1 x %struct.reg_info_def*]*
  %arrayidx504 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg503, i32 0, i64 %idxprom501
  %240 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx504, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %240, i32 0, i32 3
  %241 = load i32, i32* %sets, align 4
  %inc505 = add nsw i32 %241, 1
  store i32 %inc505, i32* %sets, align 4
  %242 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld506, i32 0, i64 0
  %rtuint508 = bitcast %union.rtunion_def* %arrayidx507 to i32*
  %243 = load i32, i32* %rtuint508, align 4
  %idxprom509 = zext i32 %243 to i64
  %244 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data510 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %244, i32 0, i32 4
  %reg511 = bitcast %union.varray_data_tag* %data510 to [1 x %struct.reg_info_def*]*
  %arrayidx512 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg511, i32 0, i64 %idxprom509
  %245 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx512, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %245, i32 0, i32 7
  %246 = load i32, i32* %live_length, align 4
  %inc513 = add nsw i32 %246, 1
  store i32 %inc513, i32* %live_length, align 4
  br label %if.end.514

if.end.514:                                       ; preds = %if.then.484, %if.end.481
  %247 = load %struct.rtx_def*, %struct.rtx_def** %overlap, align 8
  %tobool515 = icmp ne %struct.rtx_def* %247, null
  br i1 %tobool515, label %if.then.516, label %if.end.548

if.then.516:                                      ; preds = %if.end.514
  %248 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld517 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx518 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld517, i32 0, i64 3
  %rtx519 = bitcast %union.rtunion_def* %arrayidx518 to %struct.rtx_def**
  %249 = load %struct.rtx_def*, %struct.rtx_def** %rtx519, align 8
  store %struct.rtx_def* %249, %struct.rtx_def** %pat, align 8
  %250 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %tobool520 = icmp ne %struct.rtx_def* %250, null
  br i1 %tobool520, label %if.then.521, label %if.end.522

if.then.521:                                      ; preds = %if.then.516
  %251 = load %struct.rtx_def*, %struct.rtx_def** %overlap, align 8
  %252 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  call void @remove_note(%struct.rtx_def* %251, %struct.rtx_def* %252)
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.521, %if.then.516
  %253 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld523 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %arrayidx524 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld523, i32 0, i64 6
  %rtx525 = bitcast %union.rtunion_def* %arrayidx524 to %struct.rtx_def**
  %254 = load %struct.rtx_def*, %struct.rtx_def** %rtx525, align 8
  store %struct.rtx_def* %254, %struct.rtx_def** %notes, align 8
  %255 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %256 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld526 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %256, i32 0, i32 1
  %arrayidx527 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld526, i32 0, i64 1
  %rtx528 = bitcast %union.rtunion_def* %arrayidx527 to %struct.rtx_def**
  %257 = load %struct.rtx_def*, %struct.rtx_def** %rtx528, align 8
  %258 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @emit_insn_after_with_line_notes(%struct.rtx_def* %255, %struct.rtx_def* %257, %struct.rtx_def* %258)
  %259 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call529 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %259)
  %260 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  store %struct.rtx_def* %260, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.522
  %261 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %262 = bitcast %struct.rtx_def* %261 to i32*
  %bf.load530 = load i32, i32* %262, align 8
  %bf.clear531 = and i32 %bf.load530, 65535
  %idxprom532 = sext i32 %bf.clear531 to i64
  %arrayidx533 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom532
  %263 = load i8, i8* %arrayidx533, align 1
  %conv534 = sext i8 %263 to i32
  %cmp535 = icmp eq i32 %conv534, 105
  br i1 %cmp535, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %while.cond
  %264 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld537 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %264, i32 0, i32 1
  %arrayidx538 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld537, i32 0, i64 3
  %rtx539 = bitcast %union.rtunion_def* %arrayidx538 to %struct.rtx_def**
  %265 = load %struct.rtx_def*, %struct.rtx_def** %rtx539, align 8
  %266 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %cmp540 = icmp ne %struct.rtx_def* %265, %266
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %267 = phi i1 [ true, %while.cond ], [ %cmp540, %lor.rhs ]
  br i1 %267, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %268 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld542 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %arrayidx543 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld542, i32 0, i64 1
  %rtx544 = bitcast %union.rtunion_def* %arrayidx543 to %struct.rtx_def**
  %269 = load %struct.rtx_def*, %struct.rtx_def** %rtx544, align 8
  store %struct.rtx_def* %269, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %270 = load %struct.rtx_def*, %struct.rtx_def** %notes, align 8
  %271 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld545 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %271, i32 0, i32 1
  %arrayidx546 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld545, i32 0, i64 6
  %rtx547 = bitcast %union.rtunion_def* %arrayidx546 to %struct.rtx_def**
  store %struct.rtx_def* %270, %struct.rtx_def** %rtx547, align 8
  br label %if.end.548

if.end.548:                                       ; preds = %while.end, %if.end.514
  %272 = load %struct.rtx_def*, %struct.rtx_def** %overlap, align 8
  %tobool549 = icmp ne %struct.rtx_def* %272, null
  br i1 %tobool549, label %if.end.811, label %land.lhs.true.550

land.lhs.true.550:                                ; preds = %if.end.548
  %273 = load i32, i32* %code, align 4
  %cmp551 = icmp eq i32 %273, 75
  br i1 %cmp551, label %if.then.556, label %lor.lhs.false.553

lor.lhs.false.553:                                ; preds = %land.lhs.true.550
  %274 = load i32, i32* %code, align 4
  %cmp554 = icmp eq i32 %274, 76
  br i1 %cmp554, label %if.then.556, label %if.end.811

if.then.556:                                      ; preds = %lor.lhs.false.553, %land.lhs.true.550
  %275 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call557 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %275, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call557, %struct.rtx_def** %note, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %set2559, align 8
  store i32 0, i32* %num_calls2, align 4
  store i32 0, i32* %s_length2, align 4
  %276 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool560 = icmp ne %struct.rtx_def* %276, null
  br i1 %tobool560, label %land.lhs.true.561, label %if.end.810

land.lhs.true.561:                                ; preds = %if.then.556
  %277 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld562 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %277, i32 0, i32 1
  %arrayidx563 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld562, i32 0, i64 0
  %rtx564 = bitcast %union.rtunion_def* %arrayidx563 to %struct.rtx_def**
  %278 = load %struct.rtx_def*, %struct.rtx_def** %rtx564, align 8
  %279 = bitcast %struct.rtx_def* %278 to i32*
  %bf.load565 = load i32, i32* %279, align 8
  %bf.clear566 = and i32 %bf.load565, 65535
  %cmp567 = icmp eq i32 %bf.clear566, 67
  br i1 %cmp567, label %if.then.625, label %lor.lhs.false.569

lor.lhs.false.569:                                ; preds = %land.lhs.true.561
  %280 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld570 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %280, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld570, i32 0, i64 0
  %rtx572 = bitcast %union.rtunion_def* %arrayidx571 to %struct.rtx_def**
  %281 = load %struct.rtx_def*, %struct.rtx_def** %rtx572, align 8
  %282 = bitcast %struct.rtx_def* %281 to i32*
  %bf.load573 = load i32, i32* %282, align 8
  %bf.clear574 = and i32 %bf.load573, 65535
  %cmp575 = icmp eq i32 %bf.clear574, 68
  br i1 %cmp575, label %if.then.625, label %lor.lhs.false.577

lor.lhs.false.577:                                ; preds = %lor.lhs.false.569
  %283 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld578 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %283, i32 0, i32 1
  %arrayidx579 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld578, i32 0, i64 0
  %rtx580 = bitcast %union.rtunion_def* %arrayidx579 to %struct.rtx_def**
  %284 = load %struct.rtx_def*, %struct.rtx_def** %rtx580, align 8
  %285 = bitcast %struct.rtx_def* %284 to i32*
  %bf.load581 = load i32, i32* %285, align 8
  %bf.clear582 = and i32 %bf.load581, 65535
  %cmp583 = icmp eq i32 %bf.clear582, 54
  br i1 %cmp583, label %if.then.625, label %lor.lhs.false.585

lor.lhs.false.585:                                ; preds = %lor.lhs.false.577
  %286 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld586 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %286, i32 0, i32 1
  %arrayidx587 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld586, i32 0, i64 0
  %rtx588 = bitcast %union.rtunion_def* %arrayidx587 to %struct.rtx_def**
  %287 = load %struct.rtx_def*, %struct.rtx_def** %rtx588, align 8
  %288 = bitcast %struct.rtx_def* %287 to i32*
  %bf.load589 = load i32, i32* %288, align 8
  %bf.clear590 = and i32 %bf.load589, 65535
  %cmp591 = icmp eq i32 %bf.clear590, 55
  br i1 %cmp591, label %if.then.625, label %lor.lhs.false.593

lor.lhs.false.593:                                ; preds = %lor.lhs.false.585
  %289 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld594 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %289, i32 0, i32 1
  %arrayidx595 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld594, i32 0, i64 0
  %rtx596 = bitcast %union.rtunion_def* %arrayidx595 to %struct.rtx_def**
  %290 = load %struct.rtx_def*, %struct.rtx_def** %rtx596, align 8
  %291 = bitcast %struct.rtx_def* %290 to i32*
  %bf.load597 = load i32, i32* %291, align 8
  %bf.clear598 = and i32 %bf.load597, 65535
  %cmp599 = icmp eq i32 %bf.clear598, 58
  br i1 %cmp599, label %if.then.625, label %lor.lhs.false.601

lor.lhs.false.601:                                ; preds = %lor.lhs.false.593
  %292 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld602 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx603 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld602, i32 0, i64 0
  %rtx604 = bitcast %union.rtunion_def* %arrayidx603 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rtx604, align 8
  %294 = bitcast %struct.rtx_def* %293 to i32*
  %bf.load605 = load i32, i32* %294, align 8
  %bf.clear606 = and i32 %bf.load605, 65535
  %cmp607 = icmp eq i32 %bf.clear606, 134
  br i1 %cmp607, label %if.then.625, label %lor.lhs.false.609

lor.lhs.false.609:                                ; preds = %lor.lhs.false.601
  %295 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld610 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %295, i32 0, i32 1
  %arrayidx611 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld610, i32 0, i64 0
  %rtx612 = bitcast %union.rtunion_def* %arrayidx611 to %struct.rtx_def**
  %296 = load %struct.rtx_def*, %struct.rtx_def** %rtx612, align 8
  %297 = bitcast %struct.rtx_def* %296 to i32*
  %bf.load613 = load i32, i32* %297, align 8
  %bf.clear614 = and i32 %bf.load613, 65535
  %cmp615 = icmp eq i32 %bf.clear614, 56
  br i1 %cmp615, label %if.then.625, label %lor.lhs.false.617

lor.lhs.false.617:                                ; preds = %lor.lhs.false.609
  %298 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld618 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %298, i32 0, i32 1
  %arrayidx619 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld618, i32 0, i64 0
  %rtx620 = bitcast %union.rtunion_def* %arrayidx619 to %struct.rtx_def**
  %299 = load %struct.rtx_def*, %struct.rtx_def** %rtx620, align 8
  %300 = bitcast %struct.rtx_def* %299 to i32*
  %bf.load621 = load i32, i32* %300, align 8
  %bf.clear622 = and i32 %bf.load621, 65535
  %cmp623 = icmp eq i32 %bf.clear622, 140
  br i1 %cmp623, label %if.then.625, label %if.end.810

if.then.625:                                      ; preds = %lor.lhs.false.617, %lor.lhs.false.609, %lor.lhs.false.601, %lor.lhs.false.593, %lor.lhs.false.585, %lor.lhs.false.577, %lor.lhs.false.569, %land.lhs.true.561
  %301 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld626 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx627 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld626, i32 0, i64 1
  %rtx628 = bitcast %union.rtunion_def* %arrayidx627 to %struct.rtx_def**
  %302 = load %struct.rtx_def*, %struct.rtx_def** %rtx628, align 8
  store %struct.rtx_def* %302, %struct.rtx_def** %q558, align 8
  br label %for.cond.629

for.cond.629:                                     ; preds = %for.inc.694, %if.then.625
  %303 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %tobool630 = icmp ne %struct.rtx_def* %303, null
  br i1 %tobool630, label %for.body.631, label %for.end.698

for.body.631:                                     ; preds = %for.cond.629
  %304 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %call632 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %304)
  %tobool633 = icmp ne i32 %call632, 0
  br i1 %tobool633, label %if.then.634, label %if.else.635

if.then.634:                                      ; preds = %for.body.631
  store %struct.rtx_def* null, %struct.rtx_def** %q558, align 8
  br label %for.end.698

if.else.635:                                      ; preds = %for.body.631
  %305 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %306 = bitcast %struct.rtx_def* %305 to i32*
  %bf.load636 = load i32, i32* %306, align 8
  %bf.clear637 = and i32 %bf.load636, 65535
  %idxprom638 = sext i32 %bf.clear637 to i64
  %arrayidx639 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom638
  %307 = load i8, i8* %arrayidx639, align 1
  %conv640 = sext i8 %307 to i32
  %cmp641 = icmp eq i32 %conv640, 105
  br i1 %cmp641, label %if.end.644, label %if.then.643

if.then.643:                                      ; preds = %if.else.635
  br label %for.inc.694

if.end.644:                                       ; preds = %if.else.635
  br label %if.end.645

if.end.645:                                       ; preds = %if.end.644
  %308 = load i32, i32* %s_length2, align 4
  %inc646 = add nsw i32 %308, 1
  store i32 %inc646, i32* %s_length2, align 4
  %309 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %310 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %call647 = call i32 @reg_set_p(%struct.rtx_def* %309, %struct.rtx_def* %310)
  %tobool648 = icmp ne i32 %call647, 0
  br i1 %tobool648, label %if.then.649, label %if.end.679

if.then.649:                                      ; preds = %if.end.645
  %311 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %312 = bitcast %struct.rtx_def* %311 to i32*
  %bf.load650 = load i32, i32* %312, align 8
  %bf.clear651 = and i32 %bf.load650, 65535
  %idxprom652 = sext i32 %bf.clear651 to i64
  %arrayidx653 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom652
  %313 = load i8, i8* %arrayidx653, align 1
  %conv654 = sext i8 %313 to i32
  %cmp655 = icmp eq i32 %conv654, 105
  br i1 %cmp655, label %cond.true.657, label %cond.false.676

cond.true.657:                                    ; preds = %if.then.649
  %314 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %fld658 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %314, i32 0, i32 1
  %arrayidx659 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld658, i32 0, i64 3
  %rtx660 = bitcast %union.rtunion_def* %arrayidx659 to %struct.rtx_def**
  %315 = load %struct.rtx_def*, %struct.rtx_def** %rtx660, align 8
  %316 = bitcast %struct.rtx_def* %315 to i32*
  %bf.load661 = load i32, i32* %316, align 8
  %bf.clear662 = and i32 %bf.load661, 65535
  %cmp663 = icmp eq i32 %bf.clear662, 47
  br i1 %cmp663, label %cond.true.665, label %cond.false.669

cond.true.665:                                    ; preds = %cond.true.657
  %317 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %fld666 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %317, i32 0, i32 1
  %arrayidx667 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld666, i32 0, i64 3
  %rtx668 = bitcast %union.rtunion_def* %arrayidx667 to %struct.rtx_def**
  %318 = load %struct.rtx_def*, %struct.rtx_def** %rtx668, align 8
  br label %cond.end.674

cond.false.669:                                   ; preds = %cond.true.657
  %319 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %320 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %fld670 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %320, i32 0, i32 1
  %arrayidx671 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld670, i32 0, i64 3
  %rtx672 = bitcast %union.rtunion_def* %arrayidx671 to %struct.rtx_def**
  %321 = load %struct.rtx_def*, %struct.rtx_def** %rtx672, align 8
  %call673 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %319, %struct.rtx_def* %321)
  br label %cond.end.674

cond.end.674:                                     ; preds = %cond.false.669, %cond.true.665
  %cond675 = phi %struct.rtx_def* [ %318, %cond.true.665 ], [ %call673, %cond.false.669 ]
  br label %cond.end.677

cond.false.676:                                   ; preds = %if.then.649
  br label %cond.end.677

cond.end.677:                                     ; preds = %cond.false.676, %cond.end.674
  %cond678 = phi %struct.rtx_def* [ %cond675, %cond.end.674 ], [ null, %cond.false.676 ]
  store %struct.rtx_def* %cond678, %struct.rtx_def** %set2559, align 8
  br label %for.end.698

if.end.679:                                       ; preds = %if.end.645
  %322 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %323 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %fld680 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %323, i32 0, i32 1
  %arrayidx681 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld680, i32 0, i64 3
  %rtx682 = bitcast %union.rtunion_def* %arrayidx681 to %struct.rtx_def**
  %324 = load %struct.rtx_def*, %struct.rtx_def** %rtx682, align 8
  %call683 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %322, %struct.rtx_def* %324)
  %tobool684 = icmp ne i32 %call683, 0
  br i1 %tobool684, label %if.then.685, label %if.end.686

if.then.685:                                      ; preds = %if.end.679
  store %struct.rtx_def* null, %struct.rtx_def** %q558, align 8
  br label %for.end.698

if.end.686:                                       ; preds = %if.end.679
  %325 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %326 = bitcast %struct.rtx_def* %325 to i32*
  %bf.load687 = load i32, i32* %326, align 8
  %bf.clear688 = and i32 %bf.load687, 65535
  %cmp689 = icmp eq i32 %bf.clear688, 34
  br i1 %cmp689, label %if.then.691, label %if.end.693

if.then.691:                                      ; preds = %if.end.686
  %327 = load i32, i32* %num_calls2, align 4
  %inc692 = add nsw i32 %327, 1
  store i32 %inc692, i32* %num_calls2, align 4
  br label %if.end.693

if.end.693:                                       ; preds = %if.then.691, %if.end.686
  br label %for.inc.694

for.inc.694:                                      ; preds = %if.end.693, %if.then.643
  %328 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %fld695 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %328, i32 0, i32 1
  %arrayidx696 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld695, i32 0, i64 1
  %rtx697 = bitcast %union.rtunion_def* %arrayidx696 to %struct.rtx_def**
  %329 = load %struct.rtx_def*, %struct.rtx_def** %rtx697, align 8
  store %struct.rtx_def* %329, %struct.rtx_def** %q558, align 8
  br label %for.cond.629

for.end.698:                                      ; preds = %if.then.685, %cond.end.677, %if.then.634, %for.cond.629
  %330 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %tobool699 = icmp ne %struct.rtx_def* %330, null
  br i1 %tobool699, label %land.lhs.true.700, label %if.end.809

land.lhs.true.700:                                ; preds = %for.end.698
  %331 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %tobool701 = icmp ne %struct.rtx_def* %331, null
  br i1 %tobool701, label %land.lhs.true.702, label %if.end.809

land.lhs.true.702:                                ; preds = %land.lhs.true.700
  %332 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld703 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %332, i32 0, i32 1
  %arrayidx704 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld703, i32 0, i64 0
  %rtx705 = bitcast %union.rtunion_def* %arrayidx704 to %struct.rtx_def**
  %333 = load %struct.rtx_def*, %struct.rtx_def** %rtx705, align 8
  %334 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp706 = icmp eq %struct.rtx_def* %333, %334
  br i1 %cmp706, label %land.lhs.true.708, label %if.end.809

land.lhs.true.708:                                ; preds = %land.lhs.true.702
  %335 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld709 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %335, i32 0, i32 1
  %arrayidx710 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld709, i32 0, i64 1
  %rtx711 = bitcast %union.rtunion_def* %arrayidx710 to %struct.rtx_def**
  %336 = load %struct.rtx_def*, %struct.rtx_def** %rtx711, align 8
  %337 = bitcast %struct.rtx_def* %336 to i32*
  %bf.load712 = load i32, i32* %337, align 8
  %bf.clear713 = and i32 %bf.load712, 65535
  %cmp714 = icmp eq i32 %bf.clear713, 67
  br i1 %cmp714, label %land.lhs.true.772, label %lor.lhs.false.716

lor.lhs.false.716:                                ; preds = %land.lhs.true.708
  %338 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld717 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %338, i32 0, i32 1
  %arrayidx718 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld717, i32 0, i64 1
  %rtx719 = bitcast %union.rtunion_def* %arrayidx718 to %struct.rtx_def**
  %339 = load %struct.rtx_def*, %struct.rtx_def** %rtx719, align 8
  %340 = bitcast %struct.rtx_def* %339 to i32*
  %bf.load720 = load i32, i32* %340, align 8
  %bf.clear721 = and i32 %bf.load720, 65535
  %cmp722 = icmp eq i32 %bf.clear721, 68
  br i1 %cmp722, label %land.lhs.true.772, label %lor.lhs.false.724

lor.lhs.false.724:                                ; preds = %lor.lhs.false.716
  %341 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld725 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %341, i32 0, i32 1
  %arrayidx726 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld725, i32 0, i64 1
  %rtx727 = bitcast %union.rtunion_def* %arrayidx726 to %struct.rtx_def**
  %342 = load %struct.rtx_def*, %struct.rtx_def** %rtx727, align 8
  %343 = bitcast %struct.rtx_def* %342 to i32*
  %bf.load728 = load i32, i32* %343, align 8
  %bf.clear729 = and i32 %bf.load728, 65535
  %cmp730 = icmp eq i32 %bf.clear729, 54
  br i1 %cmp730, label %land.lhs.true.772, label %lor.lhs.false.732

lor.lhs.false.732:                                ; preds = %lor.lhs.false.724
  %344 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld733 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %344, i32 0, i32 1
  %arrayidx734 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld733, i32 0, i64 1
  %rtx735 = bitcast %union.rtunion_def* %arrayidx734 to %struct.rtx_def**
  %345 = load %struct.rtx_def*, %struct.rtx_def** %rtx735, align 8
  %346 = bitcast %struct.rtx_def* %345 to i32*
  %bf.load736 = load i32, i32* %346, align 8
  %bf.clear737 = and i32 %bf.load736, 65535
  %cmp738 = icmp eq i32 %bf.clear737, 55
  br i1 %cmp738, label %land.lhs.true.772, label %lor.lhs.false.740

lor.lhs.false.740:                                ; preds = %lor.lhs.false.732
  %347 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld741 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %arrayidx742 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld741, i32 0, i64 1
  %rtx743 = bitcast %union.rtunion_def* %arrayidx742 to %struct.rtx_def**
  %348 = load %struct.rtx_def*, %struct.rtx_def** %rtx743, align 8
  %349 = bitcast %struct.rtx_def* %348 to i32*
  %bf.load744 = load i32, i32* %349, align 8
  %bf.clear745 = and i32 %bf.load744, 65535
  %cmp746 = icmp eq i32 %bf.clear745, 58
  br i1 %cmp746, label %land.lhs.true.772, label %lor.lhs.false.748

lor.lhs.false.748:                                ; preds = %lor.lhs.false.740
  %350 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld749 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %350, i32 0, i32 1
  %arrayidx750 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld749, i32 0, i64 1
  %rtx751 = bitcast %union.rtunion_def* %arrayidx750 to %struct.rtx_def**
  %351 = load %struct.rtx_def*, %struct.rtx_def** %rtx751, align 8
  %352 = bitcast %struct.rtx_def* %351 to i32*
  %bf.load752 = load i32, i32* %352, align 8
  %bf.clear753 = and i32 %bf.load752, 65535
  %cmp754 = icmp eq i32 %bf.clear753, 134
  br i1 %cmp754, label %land.lhs.true.772, label %lor.lhs.false.756

lor.lhs.false.756:                                ; preds = %lor.lhs.false.748
  %353 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld757 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %353, i32 0, i32 1
  %arrayidx758 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld757, i32 0, i64 1
  %rtx759 = bitcast %union.rtunion_def* %arrayidx758 to %struct.rtx_def**
  %354 = load %struct.rtx_def*, %struct.rtx_def** %rtx759, align 8
  %355 = bitcast %struct.rtx_def* %354 to i32*
  %bf.load760 = load i32, i32* %355, align 8
  %bf.clear761 = and i32 %bf.load760, 65535
  %cmp762 = icmp eq i32 %bf.clear761, 56
  br i1 %cmp762, label %land.lhs.true.772, label %lor.lhs.false.764

lor.lhs.false.764:                                ; preds = %lor.lhs.false.756
  %356 = load %struct.rtx_def*, %struct.rtx_def** %set2559, align 8
  %fld765 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %356, i32 0, i32 1
  %arrayidx766 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld765, i32 0, i64 1
  %rtx767 = bitcast %union.rtunion_def* %arrayidx766 to %struct.rtx_def**
  %357 = load %struct.rtx_def*, %struct.rtx_def** %rtx767, align 8
  %358 = bitcast %struct.rtx_def* %357 to i32*
  %bf.load768 = load i32, i32* %358, align 8
  %bf.clear769 = and i32 %bf.load768, 65535
  %cmp770 = icmp eq i32 %bf.clear769, 140
  br i1 %cmp770, label %land.lhs.true.772, label %if.end.809

land.lhs.true.772:                                ; preds = %lor.lhs.false.764, %lor.lhs.false.756, %lor.lhs.false.748, %lor.lhs.false.740, %lor.lhs.false.732, %lor.lhs.false.724, %lor.lhs.false.716, %land.lhs.true.708
  %359 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %360 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld773 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %360, i32 0, i32 1
  %arrayidx774 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld773, i32 0, i64 1
  %rtx775 = bitcast %union.rtunion_def* %arrayidx774 to %struct.rtx_def**
  %361 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld776 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %361, i32 0, i32 1
  %arrayidx777 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld776, i32 0, i64 0
  %rtx778 = bitcast %union.rtunion_def* %arrayidx777 to %struct.rtx_def**
  %362 = load %struct.rtx_def*, %struct.rtx_def** %rtx778, align 8
  %call779 = call i32 @validate_change(%struct.rtx_def* %359, %struct.rtx_def** %rtx775, %struct.rtx_def* %362, i32 0)
  %tobool780 = icmp ne i32 %call779, 0
  br i1 %tobool780, label %if.then.781, label %if.end.809

if.then.781:                                      ; preds = %land.lhs.true.772
  %363 = load %struct.rtx_def*, %struct.rtx_def** %q558, align 8
  %call782 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %363)
  %364 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld783 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %364, i32 0, i32 1
  %arrayidx784 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld783, i32 0, i64 0
  %rtuint785 = bitcast %union.rtunion_def* %arrayidx784 to i32*
  %365 = load i32, i32* %rtuint785, align 4
  %idxprom786 = zext i32 %365 to i64
  %366 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data787 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %366, i32 0, i32 4
  %reg788 = bitcast %union.varray_data_tag* %data787 to [1 x %struct.reg_info_def*]*
  %arrayidx789 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg788, i32 0, i64 %idxprom786
  %367 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx789, align 8
  %sets790 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %367, i32 0, i32 3
  %368 = load i32, i32* %sets790, align 4
  %dec = add nsw i32 %368, -1
  store i32 %dec, i32* %sets790, align 4
  %369 = load i32, i32* %num_calls2, align 4
  %370 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld791 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %370, i32 0, i32 1
  %arrayidx792 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld791, i32 0, i64 0
  %rtuint793 = bitcast %union.rtunion_def* %arrayidx792 to i32*
  %371 = load i32, i32* %rtuint793, align 4
  %idxprom794 = zext i32 %371 to i64
  %372 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data795 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %372, i32 0, i32 4
  %reg796 = bitcast %union.varray_data_tag* %data795 to [1 x %struct.reg_info_def*]*
  %arrayidx797 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg796, i32 0, i64 %idxprom794
  %373 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx797, align 8
  %calls_crossed798 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %373, i32 0, i32 8
  %374 = load i32, i32* %calls_crossed798, align 4
  %sub799 = sub nsw i32 %374, %369
  store i32 %sub799, i32* %calls_crossed798, align 4
  %375 = load i32, i32* %s_length2, align 4
  %376 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld800 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %376, i32 0, i32 1
  %arrayidx801 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld800, i32 0, i64 0
  %rtuint802 = bitcast %union.rtunion_def* %arrayidx801 to i32*
  %377 = load i32, i32* %rtuint802, align 4
  %idxprom803 = zext i32 %377 to i64
  %378 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data804 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %378, i32 0, i32 4
  %reg805 = bitcast %union.varray_data_tag* %data804 to [1 x %struct.reg_info_def*]*
  %arrayidx806 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg805, i32 0, i64 %idxprom803
  %379 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx806, align 8
  %live_length807 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %379, i32 0, i32 7
  %380 = load i32, i32* %live_length807, align 4
  %sub808 = sub nsw i32 %380, %375
  store i32 %sub808, i32* %live_length807, align 4
  store i64 0, i64* %insn_const, align 8
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.781, %land.lhs.true.772, %lor.lhs.false.764, %land.lhs.true.702, %land.lhs.true.700, %for.end.698
  br label %if.end.810

if.end.810:                                       ; preds = %if.end.809, %lor.lhs.false.617, %if.then.556
  br label %if.end.811

if.end.811:                                       ; preds = %if.end.810, %lor.lhs.false.553, %if.end.548
  %381 = load %struct.rtx_def*, %struct.rtx_def** %post_inc, align 8
  %tobool812 = icmp ne %struct.rtx_def* %381, null
  br i1 %tobool812, label %land.lhs.true.813, label %if.end.885

land.lhs.true.813:                                ; preds = %if.end.811
  %382 = load i32, i32* %code, align 4
  %cmp814 = icmp eq i32 %382, 75
  br i1 %cmp814, label %land.lhs.true.816, label %if.end.885

land.lhs.true.816:                                ; preds = %land.lhs.true.813
  br i1 false, label %land.lhs.true.817, label %if.end.885

land.lhs.true.817:                                ; preds = %land.lhs.true.816
  %383 = load i64, i64* %newconst, align 8
  %cmp818 = icmp slt i64 %383, 0
  br i1 %cmp818, label %land.lhs.true.820, label %if.end.885

land.lhs.true.820:                                ; preds = %land.lhs.true.817
  %384 = load i64, i64* %newconst, align 8
  %cmp821 = icmp sge i64 %384, -16
  br i1 %cmp821, label %land.lhs.true.823, label %if.end.885

land.lhs.true.823:                                ; preds = %land.lhs.true.820
  %385 = load i64, i64* %newconst, align 8
  %call824 = call i32 @exact_log2_wide(i64 %385)
  %tobool825 = icmp ne i32 %call824, 0
  br i1 %tobool825, label %if.then.826, label %if.end.885

if.then.826:                                      ; preds = %land.lhs.true.823
  %386 = load %struct.rtx_def*, %struct.rtx_def** %post_inc_set, align 8
  %tobool828 = icmp ne %struct.rtx_def* %386, null
  br i1 %tobool828, label %cond.true.829, label %cond.false.833

cond.true.829:                                    ; preds = %if.then.826
  %387 = load %struct.rtx_def*, %struct.rtx_def** %post_inc_set, align 8
  %fld830 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %387, i32 0, i32 1
  %arrayidx831 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld830, i32 0, i64 0
  %rtx832 = bitcast %union.rtunion_def* %arrayidx831 to %struct.rtx_def**
  %388 = load %struct.rtx_def*, %struct.rtx_def** %rtx832, align 8
  br label %cond.end.834

cond.false.833:                                   ; preds = %if.then.826
  %389 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  br label %cond.end.834

cond.end.834:                                     ; preds = %cond.false.833, %cond.true.829
  %cond835 = phi %struct.rtx_def* [ %388, %cond.true.829 ], [ %389, %cond.false.833 ]
  store %struct.rtx_def* %cond835, %struct.rtx_def** %inc_dest, align 8
  %390 = load %struct.rtx_def*, %struct.rtx_def** %post_inc, align 8
  store %struct.rtx_def* %390, %struct.rtx_def** %q827, align 8
  br label %for.cond.836

for.cond.836:                                     ; preds = %if.end.883, %if.then.853, %cond.end.834
  %391 = load %struct.rtx_def*, %struct.rtx_def** %q827, align 8
  %fld837 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %391, i32 0, i32 1
  %arrayidx838 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld837, i32 0, i64 2
  %rtx839 = bitcast %union.rtunion_def* %arrayidx838 to %struct.rtx_def**
  %392 = load %struct.rtx_def*, %struct.rtx_def** %rtx839, align 8
  store %struct.rtx_def* %392, %struct.rtx_def** %q827, align 8
  %tobool840 = icmp ne %struct.rtx_def* %392, null
  br i1 %tobool840, label %for.body.841, label %for.end.884

for.body.841:                                     ; preds = %for.cond.836
  %393 = load %struct.rtx_def*, %struct.rtx_def** %q827, align 8
  %call842 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %393)
  %tobool843 = icmp ne i32 %call842, 0
  br i1 %tobool843, label %if.then.844, label %if.else.845

if.then.844:                                      ; preds = %for.body.841
  br label %for.end.884

if.else.845:                                      ; preds = %for.body.841
  %394 = load %struct.rtx_def*, %struct.rtx_def** %q827, align 8
  %395 = bitcast %struct.rtx_def* %394 to i32*
  %bf.load846 = load i32, i32* %395, align 8
  %bf.clear847 = and i32 %bf.load846, 65535
  %idxprom848 = sext i32 %bf.clear847 to i64
  %arrayidx849 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom848
  %396 = load i8, i8* %arrayidx849, align 1
  %conv850 = sext i8 %396 to i32
  %cmp851 = icmp eq i32 %conv850, 105
  br i1 %cmp851, label %if.else.854, label %if.then.853

if.then.853:                                      ; preds = %if.else.845
  br label %for.cond.836

if.else.854:                                      ; preds = %if.else.845
  %397 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %398 = load %struct.rtx_def*, %struct.rtx_def** %inc_dest, align 8
  %cmp855 = icmp ne %struct.rtx_def* %397, %398
  br i1 %cmp855, label %land.lhs.true.857, label %if.else.867

land.lhs.true.857:                                ; preds = %if.else.854
  %399 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %400 = load %struct.rtx_def*, %struct.rtx_def** %q827, align 8
  %fld858 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %400, i32 0, i32 1
  %arrayidx859 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld858, i32 0, i64 3
  %rtx860 = bitcast %union.rtunion_def* %arrayidx859 to %struct.rtx_def**
  %401 = load %struct.rtx_def*, %struct.rtx_def** %rtx860, align 8
  %call861 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %399, %struct.rtx_def* %401)
  %tobool862 = icmp ne i32 %call861, 0
  br i1 %tobool862, label %if.then.866, label %lor.lhs.false.863

lor.lhs.false.863:                                ; preds = %land.lhs.true.857
  %402 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %403 = load %struct.rtx_def*, %struct.rtx_def** %q827, align 8
  %call864 = call i32 @reg_set_p(%struct.rtx_def* %402, %struct.rtx_def* %403)
  %tobool865 = icmp ne i32 %call864, 0
  br i1 %tobool865, label %if.then.866, label %if.else.867

if.then.866:                                      ; preds = %lor.lhs.false.863, %land.lhs.true.857
  br label %for.end.884

if.else.867:                                      ; preds = %lor.lhs.false.863, %if.else.854
  %404 = load %struct.rtx_def*, %struct.rtx_def** %inc_dest, align 8
  %405 = load %struct.rtx_def*, %struct.rtx_def** %q827, align 8
  %call868 = call i32 @reg_set_p(%struct.rtx_def* %404, %struct.rtx_def* %405)
  %tobool869 = icmp ne i32 %call868, 0
  br i1 %tobool869, label %if.then.870, label %if.else.871

if.then.870:                                      ; preds = %if.else.867
  br label %for.end.884

if.else.871:                                      ; preds = %if.else.867
  %406 = load %struct.rtx_def*, %struct.rtx_def** %inc_dest, align 8
  %407 = load %struct.rtx_def*, %struct.rtx_def** %q827, align 8
  %fld872 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %407, i32 0, i32 1
  %arrayidx873 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld872, i32 0, i64 3
  %rtx874 = bitcast %union.rtunion_def* %arrayidx873 to %struct.rtx_def**
  %408 = load %struct.rtx_def*, %struct.rtx_def** %rtx874, align 8
  %call875 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %406, %struct.rtx_def* %408)
  %tobool876 = icmp ne i32 %call875, 0
  br i1 %tobool876, label %if.then.877, label %if.end.879

if.then.877:                                      ; preds = %if.else.871
  %409 = load %struct.rtx_def*, %struct.rtx_def** %q827, align 8
  %410 = load %struct.rtx_def*, %struct.rtx_def** %post_inc, align 8
  %411 = load %struct.rtx_def*, %struct.rtx_def** %post_inc_set, align 8
  %412 = load %struct.rtx_def*, %struct.rtx_def** %inc_dest, align 8
  %413 = load i64, i64* %newconst, align 8
  %call878 = call i32 @try_auto_increment(%struct.rtx_def* %409, %struct.rtx_def* %410, %struct.rtx_def* %411, %struct.rtx_def* %412, i64 %413, i32 1)
  br label %for.end.884

if.end.879:                                       ; preds = %if.else.871
  br label %if.end.880

if.end.880:                                       ; preds = %if.end.879
  br label %if.end.881

if.end.881:                                       ; preds = %if.end.880
  br label %if.end.882

if.end.882:                                       ; preds = %if.end.881
  br label %if.end.883

if.end.883:                                       ; preds = %if.end.882
  br label %for.cond.836

for.end.884:                                      ; preds = %if.then.877, %if.then.870, %if.then.866, %if.then.844, %for.cond.836
  br label %if.end.885

if.end.885:                                       ; preds = %for.end.884, %land.lhs.true.823, %land.lhs.true.820, %land.lhs.true.817, %land.lhs.true.816, %land.lhs.true.813, %if.end.811
  %414 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %415 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld886 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %415, i32 0, i32 1
  %arrayidx887 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld886, i32 0, i64 3
  %rtx888 = bitcast %union.rtunion_def* %arrayidx887 to %struct.rtx_def**
  %416 = load %struct.rtx_def*, %struct.rtx_def** %rtx888, align 8
  %call889 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %414, %struct.rtx_def* %416)
  %tobool890 = icmp ne i32 %call889, 0
  br i1 %tobool890, label %if.then.891, label %if.end.901

if.then.891:                                      ; preds = %if.end.885
  %417 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld892 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %417, i32 0, i32 1
  %arrayidx893 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld892, i32 0, i64 6
  %rtx894 = bitcast %union.rtunion_def* %arrayidx893 to %struct.rtx_def**
  %418 = load %struct.rtx_def*, %struct.rtx_def** %rtx894, align 8
  %419 = load %struct.rtx_def*, %struct.rtx_def** %dst_note, align 8
  %fld895 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %419, i32 0, i32 1
  %arrayidx896 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld895, i32 0, i64 1
  %rtx897 = bitcast %union.rtunion_def* %arrayidx896 to %struct.rtx_def**
  store %struct.rtx_def* %418, %struct.rtx_def** %rtx897, align 8
  %420 = load %struct.rtx_def*, %struct.rtx_def** %dst_note, align 8
  %421 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld898 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %421, i32 0, i32 1
  %arrayidx899 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld898, i32 0, i64 6
  %rtx900 = bitcast %union.rtunion_def* %arrayidx899 to %struct.rtx_def**
  store %struct.rtx_def* %420, %struct.rtx_def** %rtx900, align 8
  br label %if.end.901

if.end.901:                                       ; preds = %if.then.891, %if.end.885
  %422 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %tobool902 = icmp ne %struct.rtx_def* %422, null
  br i1 %tobool902, label %if.then.903, label %if.end.924

if.then.903:                                      ; preds = %if.end.901
  %423 = load %struct.rtx_def*, %struct.rtx_def** %overlap, align 8
  %tobool904 = icmp ne %struct.rtx_def* %423, null
  br i1 %tobool904, label %if.end.906, label %if.then.905

if.then.905:                                      ; preds = %if.then.903
  %424 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %425 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  call void @remove_note(%struct.rtx_def* %424, %struct.rtx_def* %425)
  br label %if.end.906

if.end.906:                                       ; preds = %if.then.905, %if.then.903
  %426 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld907 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %426, i32 0, i32 1
  %arrayidx908 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld907, i32 0, i64 6
  %rtx909 = bitcast %union.rtunion_def* %arrayidx908 to %struct.rtx_def**
  %427 = load %struct.rtx_def*, %struct.rtx_def** %rtx909, align 8
  %428 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %fld910 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %428, i32 0, i32 1
  %arrayidx911 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld910, i32 0, i64 1
  %rtx912 = bitcast %union.rtunion_def* %arrayidx911 to %struct.rtx_def**
  store %struct.rtx_def* %427, %struct.rtx_def** %rtx912, align 8
  %429 = load %struct.rtx_def*, %struct.rtx_def** %src_note, align 8
  %430 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld913 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %430, i32 0, i32 1
  %arrayidx914 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld913, i32 0, i64 6
  %rtx915 = bitcast %union.rtunion_def* %arrayidx914 to %struct.rtx_def**
  store %struct.rtx_def* %429, %struct.rtx_def** %rtx915, align 8
  %431 = load i32, i32* %s_num_calls, align 4
  %432 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld916 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %432, i32 0, i32 1
  %arrayidx917 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld916, i32 0, i64 0
  %rtuint918 = bitcast %union.rtunion_def* %arrayidx917 to i32*
  %433 = load i32, i32* %rtuint918, align 4
  %idxprom919 = zext i32 %433 to i64
  %434 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data920 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %434, i32 0, i32 4
  %reg921 = bitcast %union.varray_data_tag* %data920 to [1 x %struct.reg_info_def*]*
  %arrayidx922 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg921, i32 0, i64 %idxprom919
  %435 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx922, align 8
  %calls_crossed923 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %435, i32 0, i32 8
  %436 = load i32, i32* %calls_crossed923, align 4
  %add = add nsw i32 %436, %431
  store i32 %add, i32* %calls_crossed923, align 4
  br label %if.end.924

if.end.924:                                       ; preds = %if.end.906, %if.end.901
  %437 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld925 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %437, i32 0, i32 1
  %arrayidx926 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld925, i32 0, i64 0
  %rtuint927 = bitcast %union.rtunion_def* %arrayidx926 to i32*
  %438 = load i32, i32* %rtuint927, align 4
  %idxprom928 = zext i32 %438 to i64
  %439 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data929 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %439, i32 0, i32 4
  %reg930 = bitcast %union.varray_data_tag* %data929 to [1 x %struct.reg_info_def*]*
  %arrayidx931 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg930, i32 0, i64 %idxprom928
  %440 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx931, align 8
  %sets932 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %440, i32 0, i32 3
  %441 = load i32, i32* %sets932, align 4
  %inc933 = add nsw i32 %441, 1
  store i32 %inc933, i32* %sets932, align 4
  %442 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld934 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %442, i32 0, i32 1
  %arrayidx935 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld934, i32 0, i64 0
  %rtuint936 = bitcast %union.rtunion_def* %arrayidx935 to i32*
  %443 = load i32, i32* %rtuint936, align 4
  %idxprom937 = zext i32 %443 to i64
  %444 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data938 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %444, i32 0, i32 4
  %reg939 = bitcast %union.varray_data_tag* %data938 to [1 x %struct.reg_info_def*]*
  %arrayidx940 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg939, i32 0, i64 %idxprom937
  %445 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx940, align 8
  %sets941 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %445, i32 0, i32 3
  %446 = load i32, i32* %sets941, align 4
  %dec942 = add nsw i32 %446, -1
  store i32 %dec942, i32* %sets941, align 4
  %447 = load i32, i32* %num_calls, align 4
  %448 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld943 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %448, i32 0, i32 1
  %arrayidx944 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld943, i32 0, i64 0
  %rtuint945 = bitcast %union.rtunion_def* %arrayidx944 to i32*
  %449 = load i32, i32* %rtuint945, align 4
  %idxprom946 = zext i32 %449 to i64
  %450 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data947 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %450, i32 0, i32 4
  %reg948 = bitcast %union.varray_data_tag* %data947 to [1 x %struct.reg_info_def*]*
  %arrayidx949 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg948, i32 0, i64 %idxprom946
  %451 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx949, align 8
  %calls_crossed950 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %451, i32 0, i32 8
  %452 = load i32, i32* %calls_crossed950, align 4
  %sub951 = sub nsw i32 %452, %447
  store i32 %sub951, i32* %calls_crossed950, align 4
  %453 = load i32, i32* %s_length, align 4
  %454 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld952 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %454, i32 0, i32 1
  %arrayidx953 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld952, i32 0, i64 0
  %rtuint954 = bitcast %union.rtunion_def* %arrayidx953 to i32*
  %455 = load i32, i32* %rtuint954, align 4
  %idxprom955 = zext i32 %455 to i64
  %456 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data956 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %456, i32 0, i32 4
  %reg957 = bitcast %union.varray_data_tag* %data956 to [1 x %struct.reg_info_def*]*
  %arrayidx958 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg957, i32 0, i64 %idxprom955
  %457 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx958, align 8
  %live_length959 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %457, i32 0, i32 7
  %458 = load i32, i32* %live_length959, align 4
  %add960 = add nsw i32 %458, %453
  store i32 %add960, i32* %live_length959, align 4
  %459 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld961 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %459, i32 0, i32 1
  %arrayidx962 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld961, i32 0, i64 0
  %rtuint963 = bitcast %union.rtunion_def* %arrayidx962 to i32*
  %460 = load i32, i32* %rtuint963, align 4
  %idxprom964 = zext i32 %460 to i64
  %461 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data965 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %461, i32 0, i32 4
  %reg966 = bitcast %union.varray_data_tag* %data965 to [1 x %struct.reg_info_def*]*
  %arrayidx967 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg966, i32 0, i64 %idxprom964
  %462 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx967, align 8
  %live_length968 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %462, i32 0, i32 7
  %463 = load i32, i32* %live_length968, align 4
  %cmp969 = icmp sge i32 %463, 0
  br i1 %cmp969, label %if.then.971, label %if.end.1001

if.then.971:                                      ; preds = %if.end.924
  %464 = load i32, i32* %length, align 4
  %465 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld972 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %465, i32 0, i32 1
  %arrayidx973 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld972, i32 0, i64 0
  %rtuint974 = bitcast %union.rtunion_def* %arrayidx973 to i32*
  %466 = load i32, i32* %rtuint974, align 4
  %idxprom975 = zext i32 %466 to i64
  %467 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data976 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %467, i32 0, i32 4
  %reg977 = bitcast %union.varray_data_tag* %data976 to [1 x %struct.reg_info_def*]*
  %arrayidx978 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg977, i32 0, i64 %idxprom975
  %468 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx978, align 8
  %live_length979 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %468, i32 0, i32 7
  %469 = load i32, i32* %live_length979, align 4
  %sub980 = sub nsw i32 %469, %464
  store i32 %sub980, i32* %live_length979, align 4
  %470 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld981 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %470, i32 0, i32 1
  %arrayidx982 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld981, i32 0, i64 0
  %rtuint983 = bitcast %union.rtunion_def* %arrayidx982 to i32*
  %471 = load i32, i32* %rtuint983, align 4
  %idxprom984 = zext i32 %471 to i64
  %472 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data985 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %472, i32 0, i32 4
  %reg986 = bitcast %union.varray_data_tag* %data985 to [1 x %struct.reg_info_def*]*
  %arrayidx987 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg986, i32 0, i64 %idxprom984
  %473 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx987, align 8
  %live_length988 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %473, i32 0, i32 7
  %474 = load i32, i32* %live_length988, align 4
  %cmp989 = icmp slt i32 %474, 2
  br i1 %cmp989, label %if.then.991, label %if.end.1000

if.then.991:                                      ; preds = %if.then.971
  %475 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld992 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %475, i32 0, i32 1
  %arrayidx993 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld992, i32 0, i64 0
  %rtuint994 = bitcast %union.rtunion_def* %arrayidx993 to i32*
  %476 = load i32, i32* %rtuint994, align 4
  %idxprom995 = zext i32 %476 to i64
  %477 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data996 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %477, i32 0, i32 4
  %reg997 = bitcast %union.varray_data_tag* %data996 to [1 x %struct.reg_info_def*]*
  %arrayidx998 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg997, i32 0, i64 %idxprom995
  %478 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx998, align 8
  %live_length999 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %478, i32 0, i32 7
  store i32 2, i32* %live_length999, align 4
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.then.991, %if.then.971
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.end.1000, %if.end.924
  %479 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %tobool1002 = icmp ne %struct._IO_FILE* %479, null
  br i1 %tobool1002, label %if.then.1003, label %if.end.1008

if.then.1003:                                     ; preds = %if.end.1001
  %480 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %481 = load i32, i32* %operand_number.addr, align 4
  %482 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1004 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %482, i32 0, i32 1
  %arrayidx1005 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1004, i32 0, i64 0
  %rtint1006 = bitcast %union.rtunion_def* %arrayidx1005 to i32*
  %483 = load i32, i32* %rtint1006, align 4
  %484 = load i32, i32* %match_number.addr, align 4
  %call1007 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %480, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 %481, i32 %483, i32 %484)
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.then.1003, %if.end.1001
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1008, %if.then.480, %if.then.55, %if.then.41, %if.then
  %485 = load i32, i32* %retval
  ret i32 %485
}

declare i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fixup_match_2(%struct.rtx_def* %insn, %struct.rtx_def* %dst, %struct.rtx_def* %src, %struct.rtx_def* %offset, %struct._IO_FILE* %regmove_dump_file) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %dst.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca %struct.rtx_def*, align 8
  %regmove_dump_file.addr = alloca %struct._IO_FILE*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %dst_death = alloca %struct.rtx_def*, align 8
  %length = alloca i32, align 4
  %num_calls = alloca i32, align 4
  %pset = alloca %struct.rtx_def*, align 8
  %newconst = alloca i64, align 8
  %add = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %dst, %struct.rtx_def** %dst.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  store %struct.rtx_def* %offset, %struct.rtx_def** %offset.addr, align 8
  store %struct._IO_FILE* %regmove_dump_file, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %dst_death, align 8
  store i32 0, i32* %num_calls, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %2 = load i32, i32* %rtuint, align 4
  %call = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %0, i32 1, i32 %2)
  %tobool = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %length, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool3 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call4 = call i32 @perhaps_ends_bb_p(%struct.rtx_def* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.else
  br label %for.inc

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10
  %10 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtuint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %12 = load i32, i32* %rtuint14, align 4
  %call15 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %10, i32 1, i32 %12)
  %tobool16 = icmp ne %struct.rtx_def* %call15, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %dst_death, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.11
  %14 = load %struct.rtx_def*, %struct.rtx_def** %dst_death, align 8
  %tobool19 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  %15 = load i32, i32* %length, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %length, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.18
  %16 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load22 = load i32, i32* %17, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %idxprom24 = sext i32 %bf.clear23 to i64
  %arrayidx25 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom24
  %18 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %18 to i32
  %cmp27 = icmp eq i32 %conv26, 105
  br i1 %cmp27, label %cond.true, label %cond.false.44

cond.true:                                        ; preds = %if.end.21
  %19 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load32 = load i32, i32* %21, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 47
  br i1 %cmp34, label %cond.true.36, label %cond.false

cond.true.36:                                     ; preds = %cond.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 3
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 3
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %call43 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %24, %struct.rtx_def* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.36
  %cond = phi %struct.rtx_def* [ %23, %cond.true.36 ], [ %call43, %cond.false ]
  br label %cond.end.45

cond.false.44:                                    ; preds = %if.end.21
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.end
  %cond46 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.44 ]
  store %struct.rtx_def* %cond46, %struct.rtx_def** %pset, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %tobool47 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool47, label %land.lhs.true, label %if.end.131

land.lhs.true:                                    ; preds = %cond.end.45
  %28 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %cmp51 = icmp eq %struct.rtx_def* %29, %30
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.131

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %31 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load57 = load i32, i32* %33, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 75
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.131

land.lhs.true.61:                                 ; preds = %land.lhs.true.53
  %34 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 1
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp68 = icmp eq %struct.rtx_def* %36, %37
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.131

land.lhs.true.70:                                 ; preds = %land.lhs.true.61
  %38 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 1
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 1
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load77 = load i32, i32* %41, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 54
  br i1 %cmp79, label %if.then.81, label %if.end.131

if.then.81:                                       ; preds = %land.lhs.true.70
  %42 = load %struct.rtx_def*, %struct.rtx_def** %offset.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx83 to i64*
  %43 = load i64, i64* %rtwint, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 1
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 1
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtwint92 = bitcast %union.rtunion_def* %arrayidx91 to i64*
  %47 = load i64, i64* %rtwint92, align 8
  %sub = sub nsw i64 %43, %47
  store i64 %sub, i64* %newconst, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %50 = load i64, i64* %newconst, align 8
  %call93 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %50)
  %call94 = call %struct.rtx_def* @gen_add3_insn(%struct.rtx_def* %48, %struct.rtx_def* %49, %struct.rtx_def* %call93)
  store %struct.rtx_def* %call94, %struct.rtx_def** %add, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %add, align 8
  %tobool95 = icmp ne %struct.rtx_def* %51, null
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.130

land.lhs.true.96:                                 ; preds = %if.then.81
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 3
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %add, align 8
  %call100 = call i32 @validate_change(%struct.rtx_def* %52, %struct.rtx_def** %rtx99, %struct.rtx_def* %54, i32 0)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.130

if.then.102:                                      ; preds = %land.lhs.true.96
  %55 = load %struct.rtx_def*, %struct.rtx_def** %dst_death, align 8
  %tobool103 = icmp ne %struct.rtx_def* %55, null
  br i1 %tobool103, label %if.then.104, label %if.end.123

if.then.104:                                      ; preds = %if.then.102
  %56 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtuint107 = bitcast %union.rtunion_def* %arrayidx106 to i32*
  %57 = load i32, i32* %rtuint107, align 4
  %58 = load %struct.rtx_def*, %struct.rtx_def** %dst_death, align 8
  %call108 = call %struct.rtx_def* @remove_death(i32 %57, %struct.rtx_def* %58)
  %59 = load i32, i32* %length, align 4
  %60 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtuint111 = bitcast %union.rtunion_def* %arrayidx110 to i32*
  %61 = load i32, i32* %rtuint111, align 4
  %idxprom112 = zext i32 %61 to i64
  %62 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %62, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx113 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom112
  %63 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx113, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %63, i32 0, i32 7
  %64 = load i32, i32* %live_length, align 4
  %add114 = add nsw i32 %64, %59
  store i32 %add114, i32* %live_length, align 4
  %65 = load i32, i32* %num_calls, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 0
  %rtuint117 = bitcast %union.rtunion_def* %arrayidx116 to i32*
  %67 = load i32, i32* %rtuint117, align 4
  %idxprom118 = zext i32 %67 to i64
  %68 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data119 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %68, i32 0, i32 4
  %reg120 = bitcast %union.varray_data_tag* %data119 to [1 x %struct.reg_info_def*]*
  %arrayidx121 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg120, i32 0, i64 %idxprom118
  %69 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx121, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %69, i32 0, i32 8
  %70 = load i32, i32* %calls_crossed, align 4
  %add122 = add nsw i32 %70, %65
  store i32 %add122, i32* %calls_crossed, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.104, %if.then.102
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %tobool124 = icmp ne %struct._IO_FILE* %71, null
  br i1 %tobool124, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %if.end.123
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %regmove_dump_file.addr, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx127 to i32*
  %74 = load i32, i32* %rtint, align 4
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %74)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %if.end.123
  store i32 1, i32* %retval
  br label %return

if.end.130:                                       ; preds = %land.lhs.true.96, %if.then.81
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %land.lhs.true.70, %land.lhs.true.61, %land.lhs.true.53, %land.lhs.true, %cond.end.45
  %75 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 3
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  %call135 = call i32 @reg_set_p(%struct.rtx_def* %75, %struct.rtx_def* %77)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.131
  br label %for.end

if.end.138:                                       ; preds = %if.end.131
  %78 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load139 = load i32, i32* %79, align 8
  %bf.clear140 = and i32 %bf.load139, 65535
  %cmp141 = icmp eq i32 %bf.clear140, 34
  br i1 %cmp141, label %if.then.143, label %if.else.171

if.then.143:                                      ; preds = %if.end.138
  %80 = load %struct.rtx_def*, %struct.rtx_def** %dst_death, align 8
  %tobool144 = icmp ne %struct.rtx_def* %80, null
  br i1 %tobool144, label %if.end.147, label %if.then.145

if.then.145:                                      ; preds = %if.then.143
  %81 = load i32, i32* %num_calls, align 4
  %inc146 = add nsw i32 %81, 1
  store i32 %inc146, i32* %num_calls, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %if.then.143
  %82 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 0
  %rtuint150 = bitcast %union.rtunion_def* %arrayidx149 to i32*
  %83 = load i32, i32* %rtuint150, align 4
  %idxprom151 = zext i32 %83 to i64
  %84 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data152 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %84, i32 0, i32 4
  %reg153 = bitcast %union.varray_data_tag* %data152 to [1 x %struct.reg_info_def*]*
  %arrayidx154 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg153, i32 0, i64 %idxprom151
  %85 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx154, align 8
  %calls_crossed155 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %85, i32 0, i32 8
  %86 = load i32, i32* %calls_crossed155, align 4
  %cmp156 = icmp eq i32 %86, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.147
  br label %for.end

if.end.159:                                       ; preds = %if.end.147
  %87 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 0
  %rtuint162 = bitcast %union.rtunion_def* %arrayidx161 to i32*
  %88 = load i32, i32* %rtuint162, align 4
  %idxprom163 = zext i32 %88 to i64
  %arrayidx164 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom163
  %89 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %89 to i32
  %tobool166 = icmp ne i32 %conv165, 0
  br i1 %tobool166, label %if.then.169, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.159
  %90 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %call167 = call i32 @find_reg_fusage(%struct.rtx_def* %90, i32 49, %struct.rtx_def* %91)
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %lor.lhs.false, %if.end.159
  br label %for.end

if.end.170:                                       ; preds = %lor.lhs.false
  br label %if.end.179

if.else.171:                                      ; preds = %if.end.138
  %92 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 3
  %rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx174, align 8
  %call175 = call i32 @reg_set_p(%struct.rtx_def* %92, %struct.rtx_def* %94)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.else.171
  br label %for.end

if.end.178:                                       ; preds = %if.else.171
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.170
  br label %for.inc

for.inc:                                          ; preds = %if.end.179, %if.then.9
  %95 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld180, i32 0, i64 1
  %rtx182 = bitcast %union.rtunion_def* %arrayidx181 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx182, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.177, %if.then.169, %if.then.158, %if.then.137, %if.then.6, %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.129, %if.then
  %97 = load i32, i32* %retval
  ret i32 %97
}

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @reg_is_remote_constant_p(%struct.rtx_def* %reg, %struct.rtx_def* %insn, %struct.rtx_def* %first) #0 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %first.addr = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %s = alloca %struct.rtx_def*, align 8
  %s77 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 4
  %reg1 = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx2 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg1, i32 0, i64 %idxprom
  %3 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx2, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %3, i32 0, i32 3
  %4 = load i32, i32* %sets, align 4
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp5 = icmp ne i32 %bf.clear, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  br label %for.inc

if.end.7:                                         ; preds = %for.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %idxprom13 = sext i32 %bf.clear12 to i64
  %arrayidx14 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom13
  %13 = load i8, i8* %arrayidx14, align 1
  %conv = sext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv, 105
  br i1 %cmp15, label %cond.true, label %cond.false.43

cond.true:                                        ; preds = %if.end.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load23 = load i32, i32* %17, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 47
  br i1 %cmp25, label %cond.true.27, label %cond.false

cond.true.27:                                     ; preds = %cond.true
  %18 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 3
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 3
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %22, %struct.rtx_def* %25)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.27
  %cond = phi %struct.rtx_def* [ %20, %cond.true.27 ], [ %call, %cond.false ]
  br label %cond.end.44

cond.false.43:                                    ; preds = %if.end.7
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.end
  %cond45 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.43 ]
  store %struct.rtx_def* %cond45, %struct.rtx_def** %s, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %s, align 8
  %cmp46 = icmp ne %struct.rtx_def* %26, null
  br i1 %cmp46, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %cond.end.44
  %27 = load %struct.rtx_def*, %struct.rtx_def** %s, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load51 = load i32, i32* %29, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 61
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.68

land.lhs.true.55:                                 ; preds = %land.lhs.true
  %30 = load %struct.rtx_def*, %struct.rtx_def** %s, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtuint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %32 = load i32, i32* %rtuint61, align 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtuint64 = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %34 = load i32, i32* %rtuint64, align 4
  %cmp65 = icmp eq i32 %32, %34
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.55
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true.55, %land.lhs.true, %cond.end.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.68, %if.then.6
  %35 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 1
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %p, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.144, %for.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool73 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool73, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.72
  %39 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp74 = icmp ne %struct.rtx_def* %39, %40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.72
  %41 = phi i1 [ false, %for.cond.72 ], [ %cmp74, %land.rhs ]
  br i1 %41, label %for.body.76, label %for.end.148

for.body.76:                                      ; preds = %land.end
  %42 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load78 = load i32, i32* %43, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %idxprom80 = sext i32 %bf.clear79 to i64
  %arrayidx81 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom80
  %44 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %44 to i32
  %cmp83 = icmp eq i32 %conv82, 105
  br i1 %cmp83, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %for.body.76
  br label %for.inc.144

if.end.86:                                        ; preds = %for.body.76
  %45 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load87 = load i32, i32* %46, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %idxprom89 = sext i32 %bf.clear88 to i64
  %arrayidx90 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom89
  %47 = load i8, i8* %arrayidx90, align 1
  %conv91 = sext i8 %47 to i32
  %cmp92 = icmp eq i32 %conv91, 105
  br i1 %cmp92, label %cond.true.94, label %cond.false.113

cond.true.94:                                     ; preds = %if.end.86
  %48 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 3
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load98 = load i32, i32* %50, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 47
  br i1 %cmp100, label %cond.true.102, label %cond.false.106

cond.true.102:                                    ; preds = %cond.true.94
  %51 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 3
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  br label %cond.end.111

cond.false.106:                                   ; preds = %cond.true.94
  %53 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 3
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %call110 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %53, %struct.rtx_def* %55)
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.106, %cond.true.102
  %cond112 = phi %struct.rtx_def* [ %52, %cond.true.102 ], [ %call110, %cond.false.106 ]
  br label %cond.end.114

cond.false.113:                                   ; preds = %if.end.86
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.end.111
  %cond115 = phi %struct.rtx_def* [ %cond112, %cond.end.111 ], [ null, %cond.false.113 ]
  store %struct.rtx_def* %cond115, %struct.rtx_def** %s77, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %s77, align 8
  %cmp116 = icmp ne %struct.rtx_def* %56, null
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.143

land.lhs.true.118:                                ; preds = %cond.end.114
  %57 = load %struct.rtx_def*, %struct.rtx_def** %s77, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load122 = load i32, i32* %59, align 8
  %bf.clear123 = and i32 %bf.load122, 65535
  %cmp124 = icmp eq i32 %bf.clear123, 61
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.143

land.lhs.true.126:                                ; preds = %land.lhs.true.118
  %60 = load %struct.rtx_def*, %struct.rtx_def** %s77, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 0
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtuint132 = bitcast %union.rtunion_def* %arrayidx131 to i32*
  %62 = load i32, i32* %rtuint132, align 4
  %63 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtuint135 = bitcast %union.rtunion_def* %arrayidx134 to i32*
  %64 = load i32, i32* %rtuint135, align 4
  %cmp136 = icmp eq i32 %62, %64
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %land.lhs.true.126
  %65 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call139 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %65, i32 4, %struct.rtx_def* null)
  %tobool140 = icmp ne %struct.rtx_def* %call139, null
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.then.138
  store i32 1, i32* %retval
  br label %return

if.end.142:                                       ; preds = %if.then.138
  store i32 0, i32* %retval
  br label %return

if.end.143:                                       ; preds = %land.lhs.true.126, %land.lhs.true.118, %cond.end.114
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143, %if.then.85
  %66 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 2
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %p, align 8
  br label %for.cond.72

for.end.148:                                      ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.148, %if.end.142, %if.then.141, %if.then.67, %if.then
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @perhaps_ends_bb_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 36, label %sw.bb
    i32 33, label %sw.bb
    i32 34, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_labels = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 21
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x_nonlocal_goto_handler_labels, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb.1
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call zeroext i1 @can_throw_internal(%struct.rtx_def* %4)
  %conv = zext i1 %call to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.then, %sw.bb
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i32 @validate_replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @copy_src_to_dest(%struct.rtx_def* %insn, %struct.rtx_def* %src, %struct.rtx_def* %dest, i32 %old_max_uid) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %dest.addr = alloca %struct.rtx_def*, align 8
  %old_max_uid.addr = alloca i32, align 4
  %seq = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %move_insn = alloca %struct.rtx_def*, align 8
  %p_insn_notes = alloca %struct.rtx_def**, align 8
  %p_move_notes = alloca %struct.rtx_def**, align 8
  %src_regno = alloca i32, align 4
  %dest_regno = alloca i32, align 4
  %bb = alloca i32, align 4
  %insn_uid = alloca i32, align 4
  %move_uid = alloca i32, align 4
  %old_num_regs = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store i32 %old_max_uid, i32* %old_max_uid.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end.202

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx1 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %5 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx1, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %5, i32 0, i32 7
  %6 = load i32, i32* %live_length, align 4
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.202

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 61
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.202

land.lhs.true.7:                                  ; preds = %land.lhs.true.3
  %9 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load8 = load i32, i32* %10, align 8
  %bf.lshr = lshr i32 %bf.load8, 26
  %bf.clear9 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear9, 0
  br i1 %tobool, label %if.end.202, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtuint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %12 = load i32, i32* %rtuint13, align 4
  %idxprom14 = zext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data15 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %reg16 = bitcast %union.varray_data_tag* %data15 to [1 x %struct.reg_info_def*]*
  %arrayidx17 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg16, i32 0, i64 %idxprom14
  %14 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx17, align 8
  %live_length18 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %14, i32 0, i32 7
  %15 = load i32, i32* %live_length18, align 4
  %cmp19 = icmp sgt i32 %15, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.202

land.lhs.true.20:                                 ; preds = %land.lhs.true.10
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load21 = load i32, i32* %17, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %idxprom23 = sext i32 %bf.clear22 to i64
  %arrayidx24 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom23
  %18 = load i8, i8* %arrayidx24, align 1
  %conv = sext i8 %18 to i32
  %cmp25 = icmp eq i32 %conv, 105
  br i1 %cmp25, label %cond.true, label %cond.false.40

cond.true:                                        ; preds = %land.lhs.true.20
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load29 = load i32, i32* %21, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 47
  br i1 %cmp31, label %cond.true.33, label %cond.false

cond.true.33:                                     ; preds = %cond.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 3
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 3
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %24, %struct.rtx_def* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.33
  %cond = phi %struct.rtx_def* [ %23, %cond.true.33 ], [ %call, %cond.false ]
  br label %cond.end.41

cond.false.40:                                    ; preds = %land.lhs.true.20
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.end
  %cond42 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.40 ]
  store %struct.rtx_def* %cond42, %struct.rtx_def** %set, align 8
  %cmp43 = icmp ne %struct.rtx_def* %cond42, null
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.202

land.lhs.true.45:                                 ; preds = %cond.end.41
  %27 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 1
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %call49 = call i32 @reg_mentioned_p(%struct.rtx_def* %27, %struct.rtx_def* %29)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.202, label %land.lhs.true.51

land.lhs.true.51:                                 ; preds = %land.lhs.true.45
  %30 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load52 = load i32, i32* %31, align 8
  %bf.lshr53 = lshr i32 %bf.load52, 16
  %bf.clear54 = and i32 %bf.lshr53, 255
  %32 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load55 = load i32, i32* %33, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 16
  %bf.clear57 = and i32 %bf.lshr56, 255
  %cmp58 = icmp eq i32 %bf.clear54, %bf.clear57
  br i1 %cmp58, label %if.then, label %if.end.202

if.then:                                          ; preds = %land.lhs.true.51
  %34 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %34, i32 0, i32 3
  %35 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_reg_rtx_no = getelementptr inbounds %struct.emit_status, %struct.emit_status* %35, i32 0, i32 0
  %36 = load i32, i32* %x_reg_rtx_no, align 4
  store i32 %36, i32* %old_num_regs, align 4
  call void @start_sequence()
  %37 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call60 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %37, %struct.rtx_def* %38)
  %call61 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call61, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %39 = load i32, i32* %old_num_regs, align 4
  %40 = load %struct.function*, %struct.function** @cfun, align 8
  %emit62 = getelementptr inbounds %struct.function, %struct.function* %40, i32 0, i32 3
  %41 = load %struct.emit_status*, %struct.emit_status** %emit62, align 8
  %x_reg_rtx_no63 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %41, i32 0, i32 0
  %42 = load i32, i32* %x_reg_rtx_no63, align 4
  %cmp64 = icmp ne i32 %39, %42
  br i1 %cmp64, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %43 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call66 = call i32 @validate_replace_rtx(%struct.rtx_def* %43, %struct.rtx_def* %44, %struct.rtx_def* %45)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end, label %if.then.68

if.then.68:                                       ; preds = %lor.lhs.false, %if.then
  %46 = load i32, i32* %old_num_regs, align 4
  %47 = load %struct.function*, %struct.function** @cfun, align 8
  %emit69 = getelementptr inbounds %struct.function, %struct.function* %47, i32 0, i32 3
  %48 = load %struct.emit_status*, %struct.emit_status** %emit69, align 8
  %x_reg_rtx_no70 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %48, i32 0, i32 0
  store i32 %46, i32* %x_reg_rtx_no70, align 4
  br label %if.end.202

if.end:                                           ; preds = %lor.lhs.false
  %49 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call71 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %49, %struct.rtx_def* %50)
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 1
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %move_insn, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %move_insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 6
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  store %struct.rtx_def** %rtx77, %struct.rtx_def*** %p_move_notes, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 6
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  store %struct.rtx_def** %rtx80, %struct.rtx_def*** %p_insn_notes, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 6
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  store %struct.rtx_def* %56, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %57 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %cmp84 = icmp ne %struct.rtx_def* %57, null
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 1
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %next, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp92 = icmp eq %struct.rtx_def* %61, %62
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %for.body
  %63 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %64 = load %struct.rtx_def**, %struct.rtx_def*** %p_move_notes, align 8
  store %struct.rtx_def* %63, %struct.rtx_def** %64, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 1
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  store %struct.rtx_def** %rtx97, %struct.rtx_def*** %p_move_notes, align 8
  br label %if.end.101

if.else:                                          ; preds = %for.body
  %66 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %67 = load %struct.rtx_def**, %struct.rtx_def*** %p_insn_notes, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %67, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 1
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  store %struct.rtx_def** %rtx100, %struct.rtx_def*** %p_insn_notes, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.else, %if.then.94
  br label %for.inc

for.inc:                                          ; preds = %if.end.101
  %69 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load %struct.rtx_def**, %struct.rtx_def*** %p_move_notes, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %70, align 8
  %71 = load %struct.rtx_def**, %struct.rtx_def*** %p_insn_notes, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %71, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx103 to i32*
  %73 = load i32, i32* %rtint, align 4
  store i32 %73, i32* %insn_uid, align 4
  %74 = load %struct.rtx_def*, %struct.rtx_def** %move_insn, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtint106 = bitcast %union.rtunion_def* %arrayidx105 to i32*
  %75 = load i32, i32* %rtint106, align 4
  store i32 %75, i32* %move_uid, align 4
  %76 = load i32, i32* %insn_uid, align 4
  %77 = load i32, i32* %old_max_uid.addr, align 4
  %cmp107 = icmp slt i32 %76, %77
  br i1 %cmp107, label %if.then.109, label %if.end.122

if.then.109:                                      ; preds = %for.end
  %78 = load i32, i32* %insn_uid, align 4
  %idxprom110 = sext i32 %78 to i64
  %79 = load i32*, i32** @regmove_bb_head, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %79, i64 %idxprom110
  %80 = load i32, i32* %arrayidx111, align 4
  store i32 %80, i32* %bb, align 4
  %81 = load i32, i32* %bb, align 4
  %cmp112 = icmp sge i32 %81, 0
  br i1 %cmp112, label %if.then.114, label %if.end.121

if.then.114:                                      ; preds = %if.then.109
  %82 = load %struct.rtx_def*, %struct.rtx_def** %move_insn, align 8
  %83 = load i32, i32* %bb, align 4
  %idxprom115 = sext i32 %83 to i64
  %84 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data116 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %84, i32 0, i32 4
  %bb117 = bitcast %union.varray_data_tag* %data116 to [1 x %struct.basic_block_def*]*
  %arrayidx118 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb117, i32 0, i64 %idxprom115
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx118, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %85, i32 0, i32 0
  store %struct.rtx_def* %82, %struct.rtx_def** %head, align 8
  %86 = load i32, i32* %insn_uid, align 4
  %idxprom119 = sext i32 %86 to i64
  %87 = load i32*, i32** @regmove_bb_head, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %87, i64 %idxprom119
  store i32 -1, i32* %arrayidx120, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.114, %if.then.109
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %for.end
  %88 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 0
  %rtuint125 = bitcast %union.rtunion_def* %arrayidx124 to i32*
  %89 = load i32, i32* %rtuint125, align 4
  store i32 %89, i32* %dest_regno, align 4
  %90 = load i32, i32* %dest_regno, align 4
  %idxprom126 = sext i32 %90 to i64
  %91 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data127 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %91, i32 0, i32 4
  %reg128 = bitcast %union.varray_data_tag* %data127 to [1 x %struct.reg_info_def*]*
  %arrayidx129 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg128, i32 0, i64 %idxprom126
  %92 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx129, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %92, i32 0, i32 3
  %93 = load i32, i32* %sets, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %sets, align 4
  %94 = load i32, i32* %dest_regno, align 4
  %idxprom130 = sext i32 %94 to i64
  %95 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data131 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %95, i32 0, i32 4
  %reg132 = bitcast %union.varray_data_tag* %data131 to [1 x %struct.reg_info_def*]*
  %arrayidx133 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg132, i32 0, i64 %idxprom130
  %96 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx133, align 8
  %live_length134 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %96, i32 0, i32 7
  %97 = load i32, i32* %live_length134, align 4
  %inc135 = add nsw i32 %97, 1
  store i32 %inc135, i32* %live_length134, align 4
  %98 = load i32, i32* %dest_regno, align 4
  %idxprom136 = sext i32 %98 to i64
  %99 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data137 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %99, i32 0, i32 4
  %reg138 = bitcast %union.varray_data_tag* %data137 to [1 x %struct.reg_info_def*]*
  %arrayidx139 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg138, i32 0, i64 %idxprom136
  %100 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx139, align 8
  %first_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %100, i32 0, i32 0
  %101 = load i32, i32* %first_uid, align 4
  %102 = load i32, i32* %insn_uid, align 4
  %cmp140 = icmp eq i32 %101, %102
  br i1 %cmp140, label %if.then.142, label %if.end.148

if.then.142:                                      ; preds = %if.end.122
  %103 = load i32, i32* %move_uid, align 4
  %104 = load i32, i32* %dest_regno, align 4
  %idxprom143 = sext i32 %104 to i64
  %105 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data144 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %105, i32 0, i32 4
  %reg145 = bitcast %union.varray_data_tag* %data144 to [1 x %struct.reg_info_def*]*
  %arrayidx146 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg145, i32 0, i64 %idxprom143
  %106 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx146, align 8
  %first_uid147 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %106, i32 0, i32 0
  store i32 %103, i32* %first_uid147, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.142, %if.end.122
  %107 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtuint151 = bitcast %union.rtunion_def* %arrayidx150 to i32*
  %108 = load i32, i32* %rtuint151, align 4
  store i32 %108, i32* %src_regno, align 4
  %109 = load %struct.rtx_def*, %struct.rtx_def** %move_insn, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call152 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %109, i32 1, %struct.rtx_def* %110)
  %tobool153 = icmp ne %struct.rtx_def* %call152, null
  br i1 %tobool153, label %if.end.161, label %if.then.154

if.then.154:                                      ; preds = %if.end.148
  %111 = load i32, i32* %src_regno, align 4
  %idxprom155 = sext i32 %111 to i64
  %112 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data156 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %112, i32 0, i32 4
  %reg157 = bitcast %union.varray_data_tag* %data156 to [1 x %struct.reg_info_def*]*
  %arrayidx158 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg157, i32 0, i64 %idxprom155
  %113 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx158, align 8
  %live_length159 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %113, i32 0, i32 7
  %114 = load i32, i32* %live_length159, align 4
  %inc160 = add nsw i32 %114, 1
  store i32 %inc160, i32* %live_length159, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.154, %if.end.148
  %115 = load i32, i32* %src_regno, align 4
  %idxprom162 = sext i32 %115 to i64
  %116 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data163 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %116, i32 0, i32 4
  %reg164 = bitcast %union.varray_data_tag* %data163 to [1 x %struct.reg_info_def*]*
  %arrayidx165 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg164, i32 0, i64 %idxprom162
  %117 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx165, align 8
  %first_uid166 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %117, i32 0, i32 0
  %118 = load i32, i32* %first_uid166, align 4
  %119 = load i32, i32* %insn_uid, align 4
  %cmp167 = icmp eq i32 %118, %119
  br i1 %cmp167, label %if.then.169, label %if.end.175

if.then.169:                                      ; preds = %if.end.161
  %120 = load i32, i32* %move_uid, align 4
  %121 = load i32, i32* %src_regno, align 4
  %idxprom170 = sext i32 %121 to i64
  %122 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data171 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %122, i32 0, i32 4
  %reg172 = bitcast %union.varray_data_tag* %data171 to [1 x %struct.reg_info_def*]*
  %arrayidx173 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg172, i32 0, i64 %idxprom170
  %123 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx173, align 8
  %first_uid174 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %123, i32 0, i32 0
  store i32 %120, i32* %first_uid174, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.169, %if.end.161
  %124 = load i32, i32* %src_regno, align 4
  %idxprom176 = sext i32 %124 to i64
  %125 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data177 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %125, i32 0, i32 4
  %reg178 = bitcast %union.varray_data_tag* %data177 to [1 x %struct.reg_info_def*]*
  %arrayidx179 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg178, i32 0, i64 %idxprom176
  %126 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx179, align 8
  %last_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %126, i32 0, i32 1
  %127 = load i32, i32* %last_uid, align 4
  %128 = load i32, i32* %insn_uid, align 4
  %cmp180 = icmp eq i32 %127, %128
  br i1 %cmp180, label %if.then.182, label %if.end.188

if.then.182:                                      ; preds = %if.end.175
  %129 = load i32, i32* %move_uid, align 4
  %130 = load i32, i32* %src_regno, align 4
  %idxprom183 = sext i32 %130 to i64
  %131 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data184 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %131, i32 0, i32 4
  %reg185 = bitcast %union.varray_data_tag* %data184 to [1 x %struct.reg_info_def*]*
  %arrayidx186 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg185, i32 0, i64 %idxprom183
  %132 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx186, align 8
  %last_uid187 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %132, i32 0, i32 1
  store i32 %129, i32* %last_uid187, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.182, %if.end.175
  %133 = load i32, i32* %src_regno, align 4
  %idxprom189 = sext i32 %133 to i64
  %134 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data190 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %134, i32 0, i32 4
  %reg191 = bitcast %union.varray_data_tag* %data190 to [1 x %struct.reg_info_def*]*
  %arrayidx192 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg191, i32 0, i64 %idxprom189
  %135 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx192, align 8
  %last_note_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %135, i32 0, i32 2
  %136 = load i32, i32* %last_note_uid, align 4
  %137 = load i32, i32* %insn_uid, align 4
  %cmp193 = icmp eq i32 %136, %137
  br i1 %cmp193, label %if.then.195, label %if.end.201

if.then.195:                                      ; preds = %if.end.188
  %138 = load i32, i32* %move_uid, align 4
  %139 = load i32, i32* %src_regno, align 4
  %idxprom196 = sext i32 %139 to i64
  %140 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data197 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %140, i32 0, i32 4
  %reg198 = bitcast %union.varray_data_tag* %data197 to [1 x %struct.reg_info_def*]*
  %arrayidx199 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg198, i32 0, i64 %idxprom196
  %141 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx199, align 8
  %last_note_uid200 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %141, i32 0, i32 2
  store i32 %138, i32* %last_note_uid200, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.195, %if.end.188
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.68, %if.end.201, %land.lhs.true.51, %land.lhs.true.45, %cond.end.41, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @combine_stack_adjustments() #0 {
entry:
  %i = alloca i32, align 4
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
  call void @combine_stack_adjustments_for_block(%struct.basic_block_def* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @combine_stack_adjustments_for_block(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %last_sp_adjust = alloca i64, align 8
  %last_sp_set = alloca %struct.rtx_def*, align 8
  %memlist = alloca %struct.csa_memlist*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %data = alloca %struct.record_stack_memrefs_data, align 8
  %end_of_block = alloca i8, align 1
  %dest = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %this_adjust = alloca i64, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i64 0, i64* %last_sp_adjust, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last_sp_set, align 8
  store %struct.csa_memlist* null, %struct.csa_memlist** %memlist, align 8
  store i8 0, i8* %end_of_block, align 1
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8, i8* %end_of_block, align 1
  %tobool = trunc i8 %2 to i1
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp = icmp eq %struct.rtx_def* %3, %5
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %end_of_block, align 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %next, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx1 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %10 to i32
  %cmp2 = icmp eq i32 %conv, 105
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %11)
  store %struct.rtx_def* %call, %struct.rtx_def** %set, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool4 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end.187

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %dest, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %src, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp12 = icmp eq %struct.rtx_def* %17, %18
  br i1 %cmp12, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.then.5
  %19 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load14 = load i32, i32* %20, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 75
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.75

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %21 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp22 = icmp eq %struct.rtx_def* %22, %23
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.75

land.lhs.true.24:                                 ; preds = %land.lhs.true.18
  %24 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load28 = load i32, i32* %26, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 54
  br i1 %cmp30, label %if.then.32, label %if.end.75

if.then.32:                                       ; preds = %land.lhs.true.24
  %27 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx37 to i64*
  %29 = load i64, i64* %rtwint, align 8
  store i64 %29, i64* %this_adjust, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %tobool38 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.32
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %last_sp_set, align 8
  %32 = load i64, i64* %this_adjust, align 8
  store i64 %32, i64* %last_sp_adjust, align 8
  br label %for.inc

if.end.40:                                        ; preds = %if.then.32
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.40
  %33 = load i64, i64* %this_adjust, align 8
  %cmp41 = icmp sle i64 %33, 0
  br i1 %cmp41, label %if.then.45, label %if.else

cond.false:                                       ; preds = %if.end.40
  %34 = load i64, i64* %this_adjust, align 8
  %cmp43 = icmp sge i64 %34, 0
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %cond.false, %cond.true
  %35 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %36 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  %37 = load i64, i64* %last_sp_adjust, align 8
  %38 = load i64, i64* %this_adjust, align 8
  %add = add nsw i64 %37, %38
  %39 = load i64, i64* %this_adjust, align 8
  %call46 = call i32 @try_apply_stack_adjustment(%struct.rtx_def* %35, %struct.csa_memlist* %36, i64 %add, i64 %39)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.then.45
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call49 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %40)
  %41 = load i64, i64* %this_adjust, align 8
  %42 = load i64, i64* %last_sp_adjust, align 8
  %add50 = add nsw i64 %42, %41
  store i64 %add50, i64* %last_sp_adjust, align 8
  br label %for.inc

if.end.51:                                        ; preds = %if.then.45
  br label %if.end.67

if.else:                                          ; preds = %cond.false, %cond.true
  br i1 true, label %cond.true.52, label %cond.false.55

cond.true.52:                                     ; preds = %if.else
  %43 = load i64, i64* %last_sp_adjust, align 8
  %cmp53 = icmp sge i64 %43, 0
  br i1 %cmp53, label %if.then.58, label %if.end.66

cond.false.55:                                    ; preds = %if.else
  %44 = load i64, i64* %last_sp_adjust, align 8
  %cmp56 = icmp sle i64 %44, 0
  br i1 %cmp56, label %if.then.58, label %if.end.66

if.then.58:                                       ; preds = %cond.false.55, %cond.true.52
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %46 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  %47 = load i64, i64* %last_sp_adjust, align 8
  %48 = load i64, i64* %this_adjust, align 8
  %add59 = add nsw i64 %47, %48
  %49 = load i64, i64* %last_sp_adjust, align 8
  %sub = sub nsw i64 0, %49
  %call60 = call i32 @try_apply_stack_adjustment(%struct.rtx_def* %45, %struct.csa_memlist* %46, i64 %add59, i64 %sub)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.then.58
  %50 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %call63 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %50)
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %last_sp_set, align 8
  %52 = load i64, i64* %this_adjust, align 8
  %53 = load i64, i64* %last_sp_adjust, align 8
  %add64 = add nsw i64 %53, %52
  store i64 %add64, i64* %last_sp_adjust, align 8
  %54 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  call void @free_csa_memlist(%struct.csa_memlist* %54)
  store %struct.csa_memlist* null, %struct.csa_memlist** %memlist, align 8
  br label %for.inc

if.end.65:                                        ; preds = %if.then.58
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %cond.false.55, %cond.true.52
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.51
  %55 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %tobool68 = icmp ne %struct.rtx_def* %55, null
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.74

land.lhs.true.69:                                 ; preds = %if.end.67
  %56 = load i64, i64* %last_sp_adjust, align 8
  %cmp70 = icmp eq i64 %56, 0
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %land.lhs.true.69
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call73 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %57)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %land.lhs.true.69, %if.end.67
  %58 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  call void @free_csa_memlist(%struct.csa_memlist* %58)
  store %struct.csa_memlist* null, %struct.csa_memlist** %memlist, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %last_sp_set, align 8
  %60 = load i64, i64* %this_adjust, align 8
  store i64 %60, i64* %last_sp_adjust, align 8
  br label %for.inc

if.end.75:                                        ; preds = %land.lhs.true.24, %land.lhs.true.18, %land.lhs.true, %if.then.5
  %61 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  %cmp76 = icmp eq %struct.csa_memlist* %61, null
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.186

land.lhs.true.78:                                 ; preds = %if.end.75
  %62 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load79 = load i32, i32* %63, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 66
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.186

land.lhs.true.83:                                 ; preds = %land.lhs.true.78
  %64 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load87 = load i32, i32* %66, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %cmp89 = icmp eq i32 %bf.clear88, 96
  br i1 %cmp89, label %land.lhs.true.91, label %lor.lhs.false

land.lhs.true.91:                                 ; preds = %land.lhs.true.83
  %67 = load i64, i64* %last_sp_adjust, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load92 = load i32, i32* %69, align 8
  %bf.lshr = lshr i32 %bf.load92, 16
  %bf.clear93 = and i32 %bf.lshr, 255
  %idxprom94 = sext i32 %bf.clear93 to i64
  %arrayidx95 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom94
  %70 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %70 to i64
  %cmp97 = icmp eq i64 %67, %conv96
  br i1 %cmp97, label %land.lhs.true.159, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.91, %land.lhs.true.83
  %71 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load102 = load i32, i32* %73, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp eq i32 %bf.clear103, 100
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.186

land.lhs.true.106:                                ; preds = %lor.lhs.false
  %74 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 1
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load113 = load i32, i32* %77, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %cmp115 = icmp eq i32 %bf.clear114, 75
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.186

land.lhs.true.117:                                ; preds = %land.lhs.true.106
  %78 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 0
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 1
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp127 = icmp eq %struct.rtx_def* %81, %82
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.186

land.lhs.true.129:                                ; preds = %land.lhs.true.117
  %83 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx132, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 1
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 1
  %rtx138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx138, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load139 = load i32, i32* %87, align 8
  %bf.clear140 = and i32 %bf.load139, 65535
  %cmp141 = icmp eq i32 %bf.clear140, 54
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.186

land.lhs.true.143:                                ; preds = %land.lhs.true.129
  %88 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 0
  %rtx146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx146, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 1
  %rtx149 = bitcast %union.rtunion_def* %arrayidx148 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx149, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 1
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx152, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 0
  %rtwint155 = bitcast %union.rtunion_def* %arrayidx154 to i64*
  %92 = load i64, i64* %rtwint155, align 8
  %93 = load i64, i64* %last_sp_adjust, align 8
  %sub156 = sub nsw i64 0, %93
  %cmp157 = icmp eq i64 %92, %sub156
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.186

land.lhs.true.159:                                ; preds = %land.lhs.true.143, %land.lhs.true.91
  %94 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 0
  %rtx162 = bitcast %union.rtunion_def* %arrayidx161 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx162, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp166 = icmp eq %struct.rtx_def* %96, %97
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.186

land.lhs.true.168:                                ; preds = %land.lhs.true.159
  %98 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call169 = call i32 @reg_mentioned_p(%struct.rtx_def* %98, %struct.rtx_def* %99)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.end.186, label %land.lhs.true.171

land.lhs.true.171:                                ; preds = %land.lhs.true.168
  %100 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load172 = load i32, i32* %101, align 8
  %bf.lshr173 = lshr i32 %bf.load172, 16
  %bf.clear174 = and i32 %bf.lshr173, 255
  %102 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call175 = call i32 @memory_address_p(i32 %bf.clear174, %struct.rtx_def* %102)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %land.lhs.true.177, label %if.end.186

land.lhs.true.177:                                ; preds = %land.lhs.true.171
  %103 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 0
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call181 = call %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %105, %struct.rtx_def* %106)
  %call182 = call i32 @validate_change(%struct.rtx_def* %103, %struct.rtx_def** %rtx180, %struct.rtx_def* %call181, i32 0)
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %land.lhs.true.177
  %107 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %call185 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %107)
  %108 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  call void @free_csa_memlist(%struct.csa_memlist* %108)
  store %struct.csa_memlist* null, %struct.csa_memlist** %memlist, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last_sp_set, align 8
  store i64 0, i64* %last_sp_adjust, align 8
  br label %for.inc

if.end.186:                                       ; preds = %land.lhs.true.177, %land.lhs.true.171, %land.lhs.true.168, %land.lhs.true.159, %land.lhs.true.143, %land.lhs.true.129, %land.lhs.true.117, %land.lhs.true.106, %lor.lhs.false, %land.lhs.true.78, %if.end.75
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.end
  %109 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %insn188 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %data, i32 0, i32 0
  store %struct.rtx_def* %109, %struct.rtx_def** %insn188, align 8
  %110 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  %memlist189 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %data, i32 0, i32 1
  store %struct.csa_memlist* %110, %struct.csa_memlist** %memlist189, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load190 = load i32, i32* %112, align 8
  %bf.clear191 = and i32 %bf.load190, 65535
  %cmp192 = icmp ne i32 %bf.clear191, 34
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.204

land.lhs.true.194:                                ; preds = %if.end.187
  %113 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %tobool195 = icmp ne %struct.rtx_def* %113, null
  br i1 %tobool195, label %land.lhs.true.196, label %if.end.204

land.lhs.true.196:                                ; preds = %land.lhs.true.194
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld197, i32 0, i64 3
  %rtx199 = bitcast %union.rtunion_def* %arrayidx198 to %struct.rtx_def**
  %115 = bitcast %struct.record_stack_memrefs_data* %data to i8*
  %call200 = call i32 @for_each_rtx(%struct.rtx_def** %rtx199, i32 (%struct.rtx_def**, i8*)* @record_stack_memrefs, i8* %115)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.end.204, label %if.then.202

if.then.202:                                      ; preds = %land.lhs.true.196
  %memlist203 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %data, i32 0, i32 1
  %116 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist203, align 8
  store %struct.csa_memlist* %116, %struct.csa_memlist** %memlist, align 8
  br label %for.inc

if.end.204:                                       ; preds = %land.lhs.true.196, %land.lhs.true.194, %if.end.187
  %memlist205 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %data, i32 0, i32 1
  %117 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist205, align 8
  store %struct.csa_memlist* %117, %struct.csa_memlist** %memlist, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %tobool206 = icmp ne %struct.rtx_def* %118, null
  br i1 %tobool206, label %land.lhs.true.207, label %if.end.226

land.lhs.true.207:                                ; preds = %if.end.204
  %119 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load208 = load i32, i32* %120, align 8
  %bf.clear209 = and i32 %bf.load208, 65535
  %cmp210 = icmp eq i32 %bf.clear209, 34
  br i1 %cmp210, label %if.then.218, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %land.lhs.true.207
  %121 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 3
  %rtx215 = bitcast %union.rtunion_def* %arrayidx214 to %struct.rtx_def**
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtx215, align 8
  %call216 = call i32 @reg_mentioned_p(%struct.rtx_def* %121, %struct.rtx_def* %123)
  %tobool217 = icmp ne i32 %call216, 0
  br i1 %tobool217, label %if.then.218, label %if.end.226

if.then.218:                                      ; preds = %lor.lhs.false.212, %land.lhs.true.207
  %124 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %tobool219 = icmp ne %struct.rtx_def* %124, null
  br i1 %tobool219, label %land.lhs.true.220, label %if.end.225

land.lhs.true.220:                                ; preds = %if.then.218
  %125 = load i64, i64* %last_sp_adjust, align 8
  %cmp221 = icmp eq i64 %125, 0
  br i1 %cmp221, label %if.then.223, label %if.end.225

if.then.223:                                      ; preds = %land.lhs.true.220
  %126 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %call224 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %126)
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.223, %land.lhs.true.220, %if.then.218
  %127 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  call void @free_csa_memlist(%struct.csa_memlist* %127)
  store %struct.csa_memlist* null, %struct.csa_memlist** %memlist, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last_sp_set, align 8
  store i64 0, i64* %last_sp_adjust, align 8
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %lor.lhs.false.212, %if.end.204
  br label %for.inc

for.inc:                                          ; preds = %if.end.226, %if.then.202, %if.then.184, %if.end.74, %if.then.62, %if.then.48, %if.then.39, %if.then
  %128 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %128, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %129 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %tobool227 = icmp ne %struct.rtx_def* %129, null
  br i1 %tobool227, label %land.lhs.true.228, label %if.end.233

land.lhs.true.228:                                ; preds = %for.end
  %130 = load i64, i64* %last_sp_adjust, align 8
  %cmp229 = icmp eq i64 %130, 0
  br i1 %cmp229, label %if.then.231, label %if.end.233

if.then.231:                                      ; preds = %land.lhs.true.228
  %131 = load %struct.rtx_def*, %struct.rtx_def** %last_sp_set, align 8
  %call232 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %131)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %land.lhs.true.228, %for.end
  ret void
}

declare %struct.rtx_def* @get_insns() #1

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @flags_set_1(%struct.rtx_def* %x, %struct.rtx_def* %pat, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** @flags_set_1_rtx, align 8
  %call = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %2, %struct.rtx_def* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @flags_set_1_set, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare %struct.rtx_def* @gen_add3_insn(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %struct.rtx_def* @gen_lowpart_SUBREG(i32, %struct.rtx_def*) #1

declare void @validate_replace_rtx_group(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @apply_change_group() #1

declare %struct.rtx_def* @next_real_insn(%struct.rtx_def*) #1

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @dead_or_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_class_subset_p(i32, i32) #1

declare %struct.rtx_def* @remove_death(i32, %struct.rtx_def*) #1

declare i32 @find_reg_fusage(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

declare void @start_sequence() #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @extract_insn(%struct.rtx_def*) #1

declare i32 @constrain_operands(i32) #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @stable_and_no_regs_but_for_p(%struct.rtx_def* %x, %struct.rtx_def* %src, %struct.rtx_def* %dst) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %dst.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  store %struct.rtx_def* %dst, %struct.rtx_def** %dst.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 60, label %sw.bb
    i32 49, label %sw.bb
    i32 99, label %sw.bb
    i32 50, label %sw.bb
    i32 98, label %sw.bb
    i32 51, label %sw.bb
    i32 111, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %4 = load i32, i32* %code, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  store i8* %5, i8** %fmt, align 8
  %6 = load i32, i32* %code, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv5, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %8 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i8*, i8** %fmt, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %idxprom7
  %11 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 101
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom12
  %rtx = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %call = call i32 @stable_and_no_regs_but_for_p(%struct.rtx_def* %14, %struct.rtx_def* %15, %struct.rtx_def* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  %18 = load i32, i32* %code, align 4
  %cmp15 = icmp eq i32 %18, 61
  br i1 %cmp15, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %sw.bb.14
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %cmp18 = icmp eq %struct.rtx_def* %19, %20
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %cmp20 = icmp eq %struct.rtx_def* %21, %22
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.17
  %23 = phi i1 [ true, %if.then.17 ], [ %cmp20, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.22:                                        ; preds = %sw.bb.14
  %24 = load i32, i32* %code, align 4
  %cmp23 = icmp eq i32 %24, 66
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.32

land.lhs.true.25:                                 ; preds = %if.end.22
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %dst.addr, align 8
  %call29 = call i32 @stable_and_no_regs_but_for_p(%struct.rtx_def* %26, %struct.rtx_def* %27, %struct.rtx_def* %28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.25
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true.25, %if.end.22
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.32
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call33 = call i32 @rtx_unstable_p(%struct.rtx_def* %29)
  %tobool34 = icmp ne i32 %call33, 0
  %lnot = xor i1 %tobool34, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.then.31, %lor.end, %for.end, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal void @replace_in_call_usage(%struct.rtx_def** %loc, i32 %dst_reg, %struct.rtx_def* %src, %struct.rtx_def* %insn) #0 {
entry:
  %loc.addr = alloca %struct.rtx_def**, align 8
  %dst_reg.addr = alloca i32, align 4
  %src.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store i32 %dst_reg, i32* %dst_reg.addr, align 4
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.39

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %5, 61
  br i1 %cmp, label %if.then.1, label %if.end.5

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtuint, align 4
  %8 = load i32, i32* %dst_reg.addr, align 4
  %cmp2 = icmp ne i32 %7, %8
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.then.1
  br label %for.end.39

if.end.4:                                         ; preds = %if.then.1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call = call i32 @validate_change(%struct.rtx_def* %9, %struct.rtx_def** %10, %struct.rtx_def* %11, i32 1)
  br label %for.end.39

if.end.5:                                         ; preds = %if.end
  %12 = load i32, i32* %code, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %13 = load i8*, i8** %arrayidx6, align 8
  store i8* %13, i8** %fmt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.end.5
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %code, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom7
  %16 = load i8, i8* %arrayidx8, align 1
  %conv = zext i8 %16 to i32
  %cmp9 = icmp slt i32 %14, %conv
  br i1 %cmp9, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %fmt, align 8
  %18 = load i8, i8* %17, align 1
  %conv11 = sext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 101
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 %idxprom15
  %rtx = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %21 = load i32, i32* %dst_reg.addr, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @replace_in_call_usage(%struct.rtx_def** %rtx, i32 %21, %struct.rtx_def* %22, %struct.rtx_def* %23)
  br label %if.end.36

if.else:                                          ; preds = %for.body
  %24 = load i8*, i8** %fmt, align 8
  %25 = load i8, i8* %24, align 1
  %conv18 = sext i8 %25 to i32
  %cmp19 = icmp eq i32 %conv18, 69
  br i1 %cmp19, label %if.then.21, label %if.end.35

if.then.21:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.21
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 %idxprom23
  %rtvec = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 0
  %30 = load i32, i32* %num_elem, align 4
  %cmp26 = icmp slt i32 %26, %30
  br i1 %cmp26, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %for.cond.22
  %31 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 %idxprom30
  %rtvec33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtvec_def**
  %34 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec33, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %34, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom29
  %35 = load i32, i32* %dst_reg.addr, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @replace_in_call_usage(%struct.rtx_def** %arrayidx34, i32 %35, %struct.rtx_def* %36, %struct.rtx_def* %37)
  br label %for.inc

for.inc:                                          ; preds = %for.body.28
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %if.end.35

if.end.35:                                        ; preds = %for.end, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.14
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %39 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %39, 1
  store i32 %inc38, i32* %i, align 4
  %40 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  br label %for.cond

for.end.39:                                       ; preds = %if.then, %if.then.3, %if.end.4, %for.cond
  ret void
}

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare void @emit_insn_after_with_line_notes(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare i32 @exact_log2_wide(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @try_auto_increment(%struct.rtx_def* %insn, %struct.rtx_def* %inc_insn, %struct.rtx_def* %inc_insn_set, %struct.rtx_def* %reg, i64 %increment, i32 %pre) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %inc_insn.addr = alloca %struct.rtx_def*, align 8
  %inc_insn_set.addr = alloca %struct.rtx_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %increment.addr = alloca i64, align 8
  %pre.addr = alloca i32, align 4
  %inc_code = alloca i32, align 4
  %pset = alloca %struct.rtx_def*, align 8
  %use = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %inc_insn, %struct.rtx_def** %inc_insn.addr, align 8
  store %struct.rtx_def* %inc_insn_set, %struct.rtx_def** %inc_insn_set.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i64 %increment, i64* %increment.addr, align 8
  store i32 %pre, i32* %pre.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.14

cond.true:                                        ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 47
  br i1 %cmp5, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %8, %struct.rtx_def* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi %struct.rtx_def* [ %7, %cond.true.7 ], [ %call, %cond.false ]
  br label %cond.end.15

cond.false.14:                                    ; preds = %entry
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.end
  %cond16 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.14 ]
  store %struct.rtx_def* %cond16, %struct.rtx_def** %pset, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %tobool = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %cond.end.15
  %12 = load %struct.rtx_def*, %struct.rtx_def** %pset, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call17 = call %struct.rtx_def* @find_use_as_address(%struct.rtx_def* %12, %struct.rtx_def* %13, i64 0)
  store %struct.rtx_def* %call17, %struct.rtx_def** %use, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8
  %cmp18 = icmp ne %struct.rtx_def* %14, null
  br i1 %cmp18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8
  %cmp20 = icmp ne %struct.rtx_def* %15, inttoptr (i64 1 to %struct.rtx_def*)
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %land.lhs.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %use, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load23 = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load23, 16
  %bf.clear24 = and i32 %bf.lshr, 255
  %idxprom25 = sext i32 %bf.clear24 to i64
  %arrayidx26 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom25
  %18 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %18 to i32
  store i32 %conv27, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %land.lhs.true, %if.then
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %cond.end.15
  ret i32 0
}

declare i32 @rtx_unstable_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_use_as_address(%struct.rtx_def*, %struct.rtx_def*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct.rtx_def*, align 8
  %this = alloca %struct.rtx_def*, align 8
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
  br i1 %cmp, label %cond.true, label %cond.false.14

cond.true:                                        ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 47
  br i1 %cmp5, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %8, %struct.rtx_def* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi %struct.rtx_def* [ %7, %cond.true.7 ], [ %call, %cond.false ]
  br label %cond.end.15

cond.false.14:                                    ; preds = %entry
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.end
  %cond16 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.14 ]
  store %struct.rtx_def* %cond16, %struct.rtx_def** %tmp, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %tobool = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.15
  %12 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %cond.end.15
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load17 = load i32, i32* %14, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp ne i32 %bf.clear18, 32
  br i1 %cmp19, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 3
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load24 = load i32, i32* %17, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp ne i32 %bf.clear25, 39
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %lor.lhs.false
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 3
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %tmp, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx35, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load36 = load i32, i32* %23, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp ne i32 %bf.clear37, 47
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.29
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.29
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtvec44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec44, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 0
  %27 = load i32, i32* %num_elem, align 4
  %cmp45 = icmp slt i32 %24, %27
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %28 to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtvec51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec51, align 8
  %elem52 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem52, i32 0, i64 %idxprom48
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx53, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %this, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load54 = load i32, i32* %33, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 47
  br i1 %cmp56, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %34 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 1
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %cmp64 = icmp eq %struct.rtx_def* %35, %37
  br i1 %cmp64, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %land.lhs.true
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true, %for.body
  %38 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load67 = load i32, i32* %39, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp ne i32 %bf.clear68, 49
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.77

land.lhs.true.71:                                 ; preds = %if.else
  %40 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load72 = load i32, i32* %41, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp ne i32 %bf.clear73, 48
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.71
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.77:                                        ; preds = %land.lhs.true.71, %if.else
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.66
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtvec81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtvec_def**
  %44 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec81, align 8
  %elem82 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %44, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem82, i32 0, i64 0
  %45 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx83, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.76, %if.then.40, %if.then.28, %if.then
  %46 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %46
}

; Function Attrs: nounwind uwtable
define internal i32 @try_apply_stack_adjustment(%struct.rtx_def* %insn, %struct.csa_memlist* %memlist, i64 %new_adjust, i64 %delta) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %memlist.addr = alloca %struct.csa_memlist*, align 8
  %new_adjust.addr = alloca i64, align 8
  %delta.addr = alloca i64, align 8
  %ml = alloca %struct.csa_memlist*, align 8
  %set = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.csa_memlist* %memlist, %struct.csa_memlist** %memlist.addr, align 8
  store i64 %new_adjust, i64* %new_adjust.addr, align 8
  store i64 %delta, i64* %delta.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %set, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load i64, i64* %new_adjust.addr, align 8
  %call4 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %4)
  %call5 = call i32 @validate_change(%struct.rtx_def* %1, %struct.rtx_def** %rtx3, %struct.rtx_def* %call4, i32 1)
  %5 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist.addr, align 8
  store %struct.csa_memlist* %5, %struct.csa_memlist** %ml, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %tobool = icmp ne %struct.csa_memlist* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %insn6 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn6, align 8
  %9 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %mem = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %9, i32 0, i32 2
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %mem, align 8
  %11 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %mem7 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %11, i32 0, i32 2
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %mem7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %15 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %sp_offset = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %15, i32 0, i32 0
  %16 = load i64, i64* %sp_offset, align 8
  %17 = load i64, i64* %delta.addr, align 8
  %sub = sub nsw i64 %16, %17
  %call8 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %14, i64 %sub)
  %call9 = call %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %13, %struct.rtx_def* %call8)
  %call10 = call i32 @validate_change(%struct.rtx_def* %8, %struct.rtx_def** %10, %struct.rtx_def* %call9, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %next = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %18, i32 0, i32 3
  %19 = load %struct.csa_memlist*, %struct.csa_memlist** %next, align 8
  store %struct.csa_memlist* %19, %struct.csa_memlist** %ml, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call11 = call i32 @apply_change_group()
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %20 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist.addr, align 8
  store %struct.csa_memlist* %20, %struct.csa_memlist** %ml, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.18, %if.then
  %21 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %tobool14 = icmp ne %struct.csa_memlist* %21, null
  br i1 %tobool14, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.13
  %22 = load i64, i64* %delta.addr, align 8
  %23 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %sp_offset16 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %23, i32 0, i32 0
  %24 = load i64, i64* %sp_offset16, align 8
  %sub17 = sub nsw i64 %24, %22
  store i64 %sub17, i64* %sp_offset16, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %25 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %next19 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %25, i32 0, i32 3
  %26 = load %struct.csa_memlist*, %struct.csa_memlist** %next19, align 8
  store %struct.csa_memlist* %26, %struct.csa_memlist** %ml, align 8
  br label %for.cond.13

for.end.20:                                       ; preds = %for.cond.13
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %for.end.20
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal void @free_csa_memlist(%struct.csa_memlist* %memlist) #0 {
entry:
  %memlist.addr = alloca %struct.csa_memlist*, align 8
  %next = alloca %struct.csa_memlist*, align 8
  store %struct.csa_memlist* %memlist, %struct.csa_memlist** %memlist.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist.addr, align 8
  %tobool = icmp ne %struct.csa_memlist* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist.addr, align 8
  %next1 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %1, i32 0, i32 3
  %2 = load %struct.csa_memlist*, %struct.csa_memlist** %next1, align 8
  store %struct.csa_memlist* %2, %struct.csa_memlist** %next, align 8
  %3 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist.addr, align 8
  %4 = bitcast %struct.csa_memlist* %3 to i8*
  call void @free(i8* %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.csa_memlist*, %struct.csa_memlist** %next, align 8
  store %struct.csa_memlist* %5, %struct.csa_memlist** %memlist.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @memory_address_p(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @replace_equiv_address(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @record_stack_memrefs(%struct.rtx_def** %xp, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %xp.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %d = alloca %struct.record_stack_memrefs_data*, align 8
  store %struct.rtx_def** %xp, %struct.rtx_def*** %xp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.record_stack_memrefs_data*
  store %struct.record_stack_memrefs_data* %3, %struct.record_stack_memrefs_data** %d, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 66, label %sw.bb
    i32 61, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call = call i32 @reg_mentioned_p(%struct.rtx_def* %7, %struct.rtx_def* %8)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %sw.bb
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %sw.bb
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call4 = call i32 @stack_memref_p(%struct.rtx_def* %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.3
  %10 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %d, align 8
  %insn = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %10, i32 0, i32 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  %13 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %d, align 8
  %memlist = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %13, i32 0, i32 1
  %14 = load %struct.csa_memlist*, %struct.csa_memlist** %memlist, align 8
  %call7 = call %struct.csa_memlist* @record_one_stack_memref(%struct.rtx_def* %11, %struct.rtx_def** %12, %struct.csa_memlist* %14)
  %15 = load %struct.record_stack_memrefs_data*, %struct.record_stack_memrefs_data** %d, align 8
  %memlist8 = getelementptr inbounds %struct.record_stack_memrefs_data, %struct.record_stack_memrefs_data* %15, i32 0, i32 1
  store %struct.csa_memlist* %call7, %struct.csa_memlist** %memlist8, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.3
  store i32 1, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %17 = load i32, i32* %rtuint, align 4
  %cmp = icmp eq i32 %17, 7
  br i1 %cmp, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %sw.bb.10
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %sw.bb.10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.12
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.11, %if.end.9, %if.then.6, %if.then.2, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @stack_memref_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp1 = icmp eq %struct.rtx_def* %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 75
  br i1 %cmp6, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.3
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp10 = icmp eq %struct.rtx_def* %9, %10
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.19

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load15 = load i32, i32* %13, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 54
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18, %if.then.2, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal %struct.csa_memlist* @record_one_stack_memref(%struct.rtx_def* %insn, %struct.rtx_def** %mem, %struct.csa_memlist* %next_memlist) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %mem.addr = alloca %struct.rtx_def**, align 8
  %next_memlist.addr = alloca %struct.csa_memlist*, align 8
  %ml = alloca %struct.csa_memlist*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** %mem, %struct.rtx_def*** %mem.addr, align 8
  store %struct.csa_memlist* %next_memlist, %struct.csa_memlist** %next_memlist.addr, align 8
  %call = call noalias i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.csa_memlist*
  store %struct.csa_memlist* %0, %struct.csa_memlist** %ml, align 8
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %mem.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp = icmp eq %struct.rtx_def* %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %sp_offset = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %5, i32 0, i32 0
  store i64 0, i64* %sp_offset, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def**, %struct.rtx_def*** %mem.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx8 to i64*
  %10 = load i64, i64* %rtwint, align 8
  %11 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %sp_offset9 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %11, i32 0, i32 0
  store i64 %10, i64* %sp_offset9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %insn10 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %13, i32 0, i32 1
  store %struct.rtx_def* %12, %struct.rtx_def** %insn10, align 8
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %mem.addr, align 8
  %15 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %mem11 = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %15, i32 0, i32 2
  store %struct.rtx_def** %14, %struct.rtx_def*** %mem11, align 8
  %16 = load %struct.csa_memlist*, %struct.csa_memlist** %next_memlist.addr, align 8
  %17 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  %next = getelementptr inbounds %struct.csa_memlist, %struct.csa_memlist* %17, i32 0, i32 3
  store %struct.csa_memlist* %16, %struct.csa_memlist** %next, align 8
  %18 = load %struct.csa_memlist*, %struct.csa_memlist** %ml, align 8
  ret %struct.csa_memlist* %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
