; ModuleID = 'cfgrtl.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }

@cfun = external global %struct.function*, align 8
@.str = private unnamed_addr constant [9 x i8] c"cfgrtl.c\00", align 1
@__FUNCTION__.delete_insn = private unnamed_addr constant [12 x i8] c"delete_insn\00", align 1
@basic_block_info = external global %struct.varray_head_tag*, align 8
@basic_block_for_insn = common global %struct.varray_head_tag* null, align 8
@n_basic_blocks = external global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"basic_block_for_insn\00", align 1
@flow_obstack = external global %struct.obstack, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@target_flags = external global i32, align 4
@rtx_class = external constant [153 x i8], align 16
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@__FUNCTION__.redirect_edge_and_branch = private unnamed_addr constant [25 x i8] c"redirect_edge_and_branch\00", align 1
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Edge %i->%i redirected to %i\0A\00", align 1
@__FUNCTION__.split_edge = private unnamed_addr constant [11 x i8] c"split_edge\00", align 1
@__FUNCTION__.insert_insn_on_edge = private unnamed_addr constant [20 x i8] c"insert_insn_on_edge\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c";; Basic block %d, loop depth %d, count \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c";; Predecessors: \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c";; Registers live at start:\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c";; Registers live at end:\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c";; Successors: \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c";; Start of basic block %d, registers live:\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c";; Insn is not within a basic block\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c";; Insn is in multiple basic blocks\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c";; End of basic block %d, registers live:\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"\0A;; Insns in epilogue delay list:\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"end insn %d for block %d not found in the insn stream\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"insn %d is in multiple basic blocks (%d and %d)\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"head insn %d for block %d not found in the insn stream\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"verify_flow_info: Duplicate edge %i->%i\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"verify_flow_info: Incorrect blocks for fallthru %i->%i\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"verify_flow_info: Incorrect fallthru %i->%i\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"wrong insn in the fallthru edge\00", align 1
@__FUNCTION__.verify_flow_info = private unnamed_addr constant [17 x i8] c"verify_flow_info\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"verify_flow_info: Basic block %d succ edge is corrupted\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Predecessor: \00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"\0ASuccessor: \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"missing barrier after block %i\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"basic block %d pred edge is corrupted\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"insn %d inside basic block %d but block_for_insn is NULL\00", align 1
@.str.29 = private unnamed_addr constant [55 x i8] c"insn %d inside basic block %d but block_for_insn is %i\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"NOTE_INSN_BASIC_BLOCK is missing for block %d\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"NOTE_INSN_BASIC_BLOCK %d in middle of basic block %d\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"in basic block %d:\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"flow control insn inside a basic block\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"basic block %i edge lists are corrupted\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"basic blocks not numbered consecutively\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"insn outside basic block\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"return not followed by barrier\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"number of bb notes in insn chain (%d) != n_basic_blocks (%d)\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"verify_flow_info failed\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"Purged edges from bb %i\0A\00", align 1
@optimize = external global i32, align 4
@__FUNCTION__.purge_dead_edges = private unnamed_addr constant [17 x i8] c"purge_dead_edges\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Purged non-fallthru edges from bb %i\0A\00", align 1
@label_value_list = common global %struct.rtx_def* null, align 8
@tail_recursion_label_list = common global %struct.rtx_def* null, align 8
@.str.42 = private unnamed_addr constant [19 x i8] c"Removing jump %i.\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"Redirecting jump %i from %i to %i.\0A\00", align 1
@__FUNCTION__.try_redirect_by_replacing_jump = private unnamed_addr constant [31 x i8] c"try_redirect_by_replacing_jump\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"Replacing insn %i by jump %i\0A\00", align 1
@__FUNCTION__.force_nonfallthru_and_redirect = private unnamed_addr constant [31 x i8] c"force_nonfallthru_and_redirect\00", align 1
@__FUNCTION__.commit_one_edge_insertion = private unnamed_addr constant [26 x i8] c"commit_one_edge_insertion\00", align 1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @delete_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %really_delete = alloca i8, align 1
  %name = alloca i8*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %diff_vec_p = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %label = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %next, align 8
  store i8 1, i8* %really_delete, align 1
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @can_delete_label_p(%struct.rtx_def* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 6
  %rtstr = bitcast %union.rtunion_def* %arrayidx3 to i8**
  %6 = load i8*, i8** %rtstr, align 8
  store i8* %6, i8** %name, align 8
  store i8 0, i8* %really_delete, align 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, -65536
  %bf.set = or i32 %bf.clear5, 37
  store i32 %bf.set, i32* %8, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  store i32 -88, i32* %rtint, align 4
  %10 = load i8*, i8** %name, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtstr10 = bitcast %union.rtunion_def* %arrayidx9 to i8**
  store i8* %10, i8** %rtstr10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_labels = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 21
  call void @remove_node_from_expr_list(%struct.rtx_def* %12, %struct.rtx_def** %x_nonlocal_goto_handler_labels)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %14 = load i8, i8* %really_delete, align 1
  %tobool12 = trunc i8 %14 to i1
  br i1 %tobool12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %if.end.11
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load14 = load i32, i32* %16, align 8
  %bf.lshr = lshr i32 %bf.load14, 27
  %bf.clear15 = and i32 %bf.lshr, 1
  %tobool16 = icmp ne i32 %bf.clear15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.delete_insn, i32 0, i32 0)) #4
  unreachable

if.end.18:                                        ; preds = %if.then.13
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @remove_insn(%struct.rtx_def* %17)
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load19 = load i32, i32* %19, align 8
  %bf.clear20 = and i32 %bf.load19, -134217729
  %bf.set21 = or i32 %bf.clear20, 134217728
  store i32 %bf.set21, i32* %19, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.18, %if.end.11
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load23 = load i32, i32* %21, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 33
  br i1 %cmp25, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.22
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 7
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %tobool29 = icmp ne %struct.rtx_def* %23, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 7
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load34 = load i32, i32* %26, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 36
  br i1 %cmp36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true.30
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 7
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtint43 = bitcast %union.rtunion_def* %arrayidx42 to i32*
  %29 = load i32, i32* %rtint43, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %rtint43, align 4
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true.30, %land.lhs.true, %if.end.22
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call44 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %30, i32 13, %struct.rtx_def* null)
  store %struct.rtx_def* %call44, %struct.rtx_def** %note, align 8
  %cmp45 = icmp ne %struct.rtx_def* %call44, null
  br i1 %cmp45, label %land.lhs.true.46, label %if.end.61

land.lhs.true.46:                                 ; preds = %if.else
  %31 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load50 = load i32, i32* %33, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 36
  br i1 %cmp52, label %if.then.53, label %if.end.61

if.then.53:                                       ; preds = %land.lhs.true.46
  %34 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 3
  %rtint59 = bitcast %union.rtunion_def* %arrayidx58 to i32*
  %36 = load i32, i32* %rtint59, align 4
  %dec60 = add nsw i32 %36, -1
  store i32 %dec60, i32* %rtint59, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.53, %land.lhs.true.46, %if.else
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.37
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load63 = load i32, i32* %38, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 33
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.112

land.lhs.true.66:                                 ; preds = %if.end.62
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 3
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load70 = load i32, i32* %41, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp eq i32 %bf.clear71, 44
  br i1 %cmp72, label %if.then.79, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.66
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 3
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load76 = load i32, i32* %44, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 45
  br i1 %cmp78, label %if.then.79, label %if.end.112

if.then.79:                                       ; preds = %lor.lhs.false, %land.lhs.true.66
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 3
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %pat, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 3
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load86 = load i32, i32* %49, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp eq i32 %bf.clear87, 45
  %conv = zext i1 %cmp88 to i32
  store i32 %conv, i32* %diff_vec_p, align 4
  %50 = load i32, i32* %diff_vec_p, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 %idxprom
  %rtvec = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtvec_def**
  %52 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %52, i32 0, i32 0
  %53 = load i32, i32* %num_elem, align 4
  store i32 %53, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.79
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %len, align 4
  %cmp91 = icmp slt i32 %54, %55
  br i1 %cmp91, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %56 to i64
  %57 = load i32, i32* %diff_vec_p, align 4
  %idxprom94 = sext i32 %57 to i64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 %idxprom94
  %rtvec97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtvec_def**
  %59 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec97, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %59, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom93
  %60 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx98, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  store %struct.rtx_def* %61, %struct.rtx_def** %label, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load102 = load i32, i32* %63, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp ne i32 %bf.clear103, 37
  br i1 %cmp104, label %if.then.106, label %if.end.111

if.then.106:                                      ; preds = %for.body
  %64 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 3
  %rtint109 = bitcast %union.rtunion_def* %arrayidx108 to i32*
  %65 = load i32, i32* %rtint109, align 4
  %dec110 = add nsw i32 %65, -1
  store i32 %dec110, i32* %rtint109, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.106, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.111
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.112

if.end.112:                                       ; preds = %for.end, %lor.lhs.false, %if.end.62
  %67 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  ret %struct.rtx_def* %67
}

; Function Attrs: nounwind uwtable
define internal i32 @can_delete_label_p(%struct.rtx_def* %label) #0 {
entry:
  %label.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 28
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %3 = load i8*, i8** %rtstr, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 2
  %5 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_forced_labels = getelementptr inbounds %struct.expr_status, %struct.expr_status* %5, i32 0, i32 5
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x_forced_labels, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %call = call i32 @in_expr_list_p(%struct.rtx_def* %6, %struct.rtx_def* %7)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.1
  %8 = load %struct.rtx_def*, %struct.rtx_def** @label_value_list, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %call3 = call i32 @in_expr_list_p(%struct.rtx_def* %8, %struct.rtx_def* %9)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.1, %land.lhs.true, %entry
  %10 = phi i1 [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
}

declare void @remove_node_from_expr_list(%struct.rtx_def*, %struct.rtx_def**) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare void @remove_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @delete_insn_chain(%struct.rtx_def* %start, %struct.rtx_def* %finish) #0 {
entry:
  %start.addr = alloca %struct.rtx_def*, align 8
  %finish.addr = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %start, %struct.rtx_def** %start.addr, align 8
  store %struct.rtx_def* %finish, %struct.rtx_def** %finish.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %next, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %call = call i32 @can_delete_note_p(%struct.rtx_def* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %call1 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %5)
  store %struct.rtx_def* %call1, %struct.rtx_def** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %finish.addr, align 8
  %cmp2 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %while.end

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %start.addr, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @can_delete_note_p(%struct.rtx_def* %note) #0 {
entry:
  %note.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %note, %struct.rtx_def** %note.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %cmp = icmp eq i32 %1, -99
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 4
  %rtint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtint3, align 4
  %cmp4 = icmp eq i32 %3, -80
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define %struct.basic_block_def* @create_basic_block_structure(i32 %index, %struct.rtx_def* %head, %struct.rtx_def* %end, %struct.rtx_def* %bb_note) #0 {
entry:
  %index.addr = alloca i32, align 4
  %head.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %bb_note.addr = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %after = alloca %struct.rtx_def*, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  store %struct.rtx_def* %bb_note, %struct.rtx_def** %bb_note.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else.20

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 30
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %if.else.20, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %bb3 = bitcast %union.rtunion_def* %arrayidx to %struct.basic_block_def**
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb3, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %bb, align 8
  %cmp = icmp ne %struct.basic_block_def* %4, null
  br i1 %cmp, label %land.lhs.true.4, label %if.else.20

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 10
  %6 = load i8*, i8** %aux, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then, label %if.else.20

if.then:                                          ; preds = %land.lhs.true.4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 36
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %after, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %after, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %head.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  %13 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %cmp12 = icmp ne %struct.rtx_def* %13, %14
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.19

land.lhs.true.13:                                 ; preds = %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 2
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %cmp17 = icmp ne %struct.rtx_def* %16, %17
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true.13
  %18 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  call void @reorder_insns(%struct.rtx_def* %18, %struct.rtx_def* %19, %struct.rtx_def* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true.13, %if.end
  br label %if.end.48

if.else.20:                                       ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %call = call %struct.basic_block_def* @alloc_block()
  store %struct.basic_block_def* %call, %struct.basic_block_def** %bb, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %tobool21 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool21, label %if.else.27, label %land.lhs.true.22

land.lhs.true.22:                                 ; preds = %if.else.20
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %tobool23 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool23, label %if.else.27, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  %call25 = call %struct.rtx_def* @get_last_insn()
  %call26 = call %struct.rtx_def* @emit_note_after(i32 -80, %struct.rtx_def* %call25)
  store %struct.rtx_def* %call26, %struct.rtx_def** %bb_note.addr, align 8
  store %struct.rtx_def* %call26, %struct.rtx_def** %end.addr, align 8
  store %struct.rtx_def* %call26, %struct.rtx_def** %head.addr, align 8
  br label %if.end.44

if.else.27:                                       ; preds = %land.lhs.true.22, %if.else.20
  %23 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load28 = load i32, i32* %24, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 36
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.38

land.lhs.true.31:                                 ; preds = %if.else.27
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %tobool32 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool32, label %if.then.33, label %if.else.38

if.then.33:                                       ; preds = %land.lhs.true.31
  %26 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %call34 = call %struct.rtx_def* @emit_note_after(i32 -80, %struct.rtx_def* %26)
  store %struct.rtx_def* %call34, %struct.rtx_def** %bb_note.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp35 = icmp eq %struct.rtx_def* %27, %28
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  %29 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %end.addr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  br label %if.end.43

if.else.38:                                       ; preds = %land.lhs.true.31, %if.else.27
  %30 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %call39 = call %struct.rtx_def* @emit_note_before(i32 -80, %struct.rtx_def* %30)
  store %struct.rtx_def* %call39, %struct.rtx_def** %bb_note.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %head.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %tobool40 = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %if.else.38
  %33 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %end.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.else.38
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.24
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 3
  %bb47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.basic_block_def**
  store %struct.basic_block_def* %34, %struct.basic_block_def** %bb47, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.44, %if.end.19
  %36 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 2
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  %cmp52 = icmp eq %struct.rtx_def* %37, %38
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.48
  %39 = load %struct.rtx_def*, %struct.rtx_def** %bb_note.addr, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %end.addr, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.48
  %40 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 0
  store %struct.rtx_def* %40, %struct.rtx_def** %head55, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end56 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 1
  store %struct.rtx_def* %42, %struct.rtx_def** %end56, align 8
  %44 = load i32, i32* %index.addr, align 4
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 11
  store i32 %44, i32* %index57, align 4
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %47 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 4
  %bb58 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx59 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb58, i32 0, i64 %idxprom
  store %struct.basic_block_def* %46, %struct.basic_block_def** %arrayidx59, align 8
  %49 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool60 = icmp ne %struct.varray_head_tag* %49, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.54
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @update_bb_for_insn(%struct.basic_block_def* %50)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.54
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %52 = bitcast %struct.basic_block_def* %51 to i8*
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 10
  store i8* %52, i8** %aux63, align 8
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  ret %struct.basic_block_def* %54
}

declare void @reorder_insns(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.basic_block_def* @alloc_block() #1

declare %struct.rtx_def* @emit_note_after(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @emit_note_before(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @update_bb_for_insn(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 0
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  call void @set_block_for_insn(%struct.rtx_def* %3, %struct.basic_block_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp = icmp eq %struct.rtx_def* %5, %7
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %for.cond
  br label %for.end

if.end.2:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end.2
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.basic_block_def* @create_basic_block(i32 %index, %struct.rtx_def* %head, %struct.rtx_def* %end) #0 {
entry:
  %index.addr = alloca i32, align 4
  %head.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct.basic_block_def*, align 8
  store i32 %index, i32* %index.addr, align 4
  store %struct.rtx_def* %head, %struct.rtx_def** %head.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %1 = load i32, i32* @n_basic_blocks, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @n_basic_blocks, align 4
  %conv = sext i32 %inc to i64
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %0, i64 %conv)
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @basic_block_info, align 8
  %2 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %index.addr, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub2 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %7, %struct.basic_block_def** %tmp, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %tmp, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb6 = bitcast %union.varray_data_tag* %data5 to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb6, i32 0, i64 %idxprom4
  store %struct.basic_block_def* %8, %struct.basic_block_def** %arrayidx7, align 8
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %tmp, align 8
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  store i32 %11, i32* %index8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %index.addr, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %head.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %call9 = call %struct.basic_block_def* @create_basic_block_structure(i32 %14, %struct.rtx_def* %15, %struct.rtx_def* %16, %struct.rtx_def* null)
  store %struct.basic_block_def* %call9, %struct.basic_block_def** %bb, align 8
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 10
  store i8* null, i8** %aux, align 8
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  ret %struct.basic_block_def* %18
}

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @flow_delete_block_noexpunge(%struct.basic_block_def* %b) #0 {
entry:
  %b.addr = alloca %struct.basic_block_def*, align 8
  %deleted_handler = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  store i32 0, i32* %deleted_handler, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 1
  %4 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  call void @never_reached_warning(%struct.rtx_def* %2, %struct.rtx_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @maybe_remove_eh_handler(%struct.rtx_def* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end2, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %end, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load3 = load i32, i32* %11, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 33
  br i1 %cmp5, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %tmp, align 8
  %cmp6 = icmp ne %struct.rtx_def* %13, null
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.30

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %tmp, align 8
  %cmp11 = icmp ne %struct.rtx_def* %15, null
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.30

land.lhs.true.12:                                 ; preds = %land.lhs.true.7
  %16 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load13 = load i32, i32* %17, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 33
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.30

land.lhs.true.16:                                 ; preds = %land.lhs.true.12
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load20 = load i32, i32* %20, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 44
  br i1 %cmp22, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load26 = load i32, i32* %23, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 45
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %land.lhs.true.16
  %24 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %end, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %lor.lhs.false, %land.lhs.true.12, %land.lhs.true.7, %land.lhs.true, %if.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %25)
  store %struct.rtx_def* %call, %struct.rtx_def** %tmp, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %tobool = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool, label %land.lhs.true.31, label %if.end.36

land.lhs.true.31:                                 ; preds = %if.end.30
  %27 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load32 = load i32, i32* %28, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 35
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.31
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %end, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.31, %if.end.30
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %head37, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  call void @delete_insn_chain(%struct.rtx_def* %31, %struct.rtx_def* %32)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.36
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 4
  %34 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp38 = icmp ne %struct.edge_def* %34, null
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %pred39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 4
  %36 = load %struct.edge_def*, %struct.edge_def** %pred39, align 8
  call void @remove_edge(%struct.edge_def* %36)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.40

while.cond.40:                                    ; preds = %while.body.42, %while.end
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 5
  %38 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %cmp41 = icmp ne %struct.edge_def* %38, null
  br i1 %cmp41, label %while.body.42, label %while.end.44

while.body.42:                                    ; preds = %while.cond.40
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 5
  %40 = load %struct.edge_def*, %struct.edge_def** %succ43, align 8
  call void @remove_edge(%struct.edge_def* %40)
  br label %while.cond.40

while.end.44:                                     ; preds = %while.cond.40
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %pred45 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 4
  store %struct.edge_def* null, %struct.edge_def** %pred45, align 8
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 5
  store %struct.edge_def* null, %struct.edge_def** %succ46, align 8
  %43 = load i32, i32* %deleted_handler, align 4
  ret i32 %43
}

declare void @never_reached_warning(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @maybe_remove_eh_handler(%struct.rtx_def*) #1

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

declare void @remove_edge(%struct.edge_def*) #1

; Function Attrs: nounwind uwtable
define i32 @flow_delete_block(%struct.basic_block_def* %b) #0 {
entry:
  %b.addr = alloca %struct.basic_block_def*, align 8
  %deleted_handler = alloca i32, align 4
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %call = call i32 @flow_delete_block_noexpunge(%struct.basic_block_def* %0)
  store i32 %call, i32* %deleted_handler, align 4
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  call void @expunge_block(%struct.basic_block_def* %1)
  %2 = load i32, i32* %deleted_handler, align 4
  ret i32 %2
}

declare void @expunge_block(%struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define void @compute_bb_for_insn(i32 %max) #0 {
entry:
  %max.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store i32 %max, i32* %max.addr, align 4
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool1 = icmp ne %struct.varray_head_tag* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %3 = bitcast %struct.varray_head_tag* %2 to i8*
  call void @free(i8* %3) #5
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @basic_block_for_insn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  %4 = load i32, i32* %max.addr, align 4
  %conv = sext i32 %4 to i64
  %call = call %struct.varray_head_tag* @varray_init(i64 %conv, i64 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @basic_block_for_insn, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %if.end.3
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb5 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb5, i32 0, i64 %idxprom
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %9, %struct.basic_block_def** %bb, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %end6, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %end, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %15 = load i32, i32* %rtint, align 4
  %16 = load i32, i32* %max.addr, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %for.cond.7
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %19 = load i32, i32* %rtint14, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 4
  %bb17 = bitcast %union.varray_data_tag* %data16 to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb17, i32 0, i64 %idxprom15
  store %struct.basic_block_def* %17, %struct.basic_block_def** %arrayidx18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.11, %for.cond.7
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp20 = icmp eq %struct.rtx_def* %21, %22
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  br label %for.end

if.end.23:                                        ; preds = %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.end:                                          ; preds = %if.then.22
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @free_bb_for_insn() #0 {
entry:
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool1 = icmp ne %struct.varray_head_tag* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %3 = bitcast %struct.varray_head_tag* %2 to i8*
  call void @free(i8* %3) #5
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @basic_block_for_insn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @basic_block_for_insn, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_block_for_insn(%struct.rtx_def* %insn, %struct.basic_block_def* %bb) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %uid = alloca i64, align 8
  %new_size = alloca i64, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %uid, align 8
  %2 = load i64, i64* %uid, align 8
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 0
  %4 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %uid, align 8
  %6 = load i64, i64* %uid, align 8
  %add = add i64 %6, 7
  %div = udiv i64 %add, 8
  %add2 = add i64 %5, %div
  store i64 %add2, i64* %new_size, align 8
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %8 = load i64, i64* %new_size, align 8
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %7, i64 %8)
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @basic_block_for_insn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %10 = load i64, i64* %uid, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %10
  store %struct.basic_block_def* %9, %struct.basic_block_def** %arrayidx4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.edge_def* @split_block(%struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.edge_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %new_bb = alloca %struct.basic_block_def*, align 8
  %new_edge = alloca %struct.edge_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp50 = alloca i8*, align 8
  %__h54 = alloca %struct.obstack*, align 8
  %__o56 = alloca %struct.obstack*, align 8
  %__len58 = alloca i32, align 4
  %tmp72 = alloca i8*, align 8
  %__o174 = alloca %struct.obstack*, align 8
  %value76 = alloca i8*, align 8
  %tmp117 = alloca i8*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index, align 4
  %add = add nsw i32 %4, 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  %call = call %struct.basic_block_def* @create_basic_block(i32 %add, %struct.rtx_def* %6, %struct.rtx_def* %8)
  store %struct.basic_block_def* %call, %struct.basic_block_def** %new_bb, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 13
  %10 = load i64, i64* %count, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %count2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 13
  store i64 %10, i64* %count2, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 14
  %13 = load i32, i32* %frequency, align 4
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %frequency3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 14
  store i32 %13, i32* %frequency3, align 4
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 12
  %16 = load i32, i32* %loop_depth, align 4
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %loop_depth4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 12
  store i32 %16, i32* %loop_depth4, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 1
  store %struct.rtx_def* %18, %struct.rtx_def** %end5, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 5
  %21 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %succ6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 5
  store %struct.edge_def* %21, %struct.edge_def** %succ6, align 8
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 5
  store %struct.edge_def* null, %struct.edge_def** %succ7, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %succ8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 5
  %25 = load %struct.edge_def*, %struct.edge_def** %succ8, align 8
  store %struct.edge_def* %25, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %26, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 2
  store %struct.basic_block_def* %27, %struct.basic_block_def** %src, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 1
  %30 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %30, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %call9 = call %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %31, %struct.basic_block_def* %32, i32 1)
  store %struct.edge_def* %call9, %struct.edge_def** %new_edge, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 8
  %34 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %tobool10 = icmp ne %struct.bitmap_head_def* %34, null
  br i1 %tobool10, label %if.then.11, label %if.end.127

if.then.11:                                       ; preds = %for.end
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h, align 8
  %35 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %35, %struct.obstack** %__o, align 8
  store i32 24, i32* %__len, align 4
  %36 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 4
  %37 = load i8*, i8** %chunk_limit, align 8
  %38 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  %39 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %40 = load i32, i32* %__len, align 4
  %conv = sext i32 %40 to i64
  %cmp12 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.11
  %41 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %42 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %41, i32 %42)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.11
  %43 = load i32, i32* %__len, align 4
  %44 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free16 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 3
  %45 = load i8*, i8** %next_free16, align 8
  %idx.ext = sext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free16, align 8
  %46 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %46, %struct.obstack** %__o1, align 8
  %47 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %47, i32 0, i32 2
  %48 = load i8*, i8** %object_base, align 8
  store i8* %48, i8** %value, align 8
  %49 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %49, i32 0, i32 3
  %50 = load i8*, i8** %next_free19, align 8
  %51 = load i8*, i8** %value, align 8
  %cmp20 = icmp eq i8* %50, %51
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  %52 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.15
  %53 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free24 = getelementptr inbounds %struct.obstack, %struct.obstack* %53, i32 0, i32 3
  %54 = load i8*, i8** %next_free24, align 8
  %sub.ptr.lhs.cast25 = ptrtoint i8* %54 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast25, 0
  %55 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %55, i32 0, i32 6
  %56 = load i32, i32* %alignment_mask, align 4
  %conv27 = sext i32 %56 to i64
  %add28 = add nsw i64 %sub.ptr.sub26, %conv27
  %57 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask29 = getelementptr inbounds %struct.obstack, %struct.obstack* %57, i32 0, i32 6
  %58 = load i32, i32* %alignment_mask29, align 4
  %neg = xor i32 %58, -1
  %conv30 = sext i32 %neg to i64
  %and = and i64 %add28, %conv30
  %add.ptr31 = getelementptr inbounds i8, i8* null, i64 %and
  %59 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free32 = getelementptr inbounds %struct.obstack, %struct.obstack* %59, i32 0, i32 3
  store i8* %add.ptr31, i8** %next_free32, align 8
  %60 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 3
  %61 = load i8*, i8** %next_free33, align 8
  %62 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %62, i32 0, i32 1
  %63 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %64 = bitcast %struct._obstack_chunk* %63 to i8*
  %sub.ptr.lhs.cast34 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast35 = ptrtoint i8* %64 to i64
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35
  %65 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit37 = getelementptr inbounds %struct.obstack, %struct.obstack* %65, i32 0, i32 4
  %66 = load i8*, i8** %chunk_limit37, align 8
  %67 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk38 = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 1
  %68 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk38, align 8
  %69 = bitcast %struct._obstack_chunk* %68 to i8*
  %sub.ptr.lhs.cast39 = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %69 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %cmp42 = icmp sgt i64 %sub.ptr.sub36, %sub.ptr.sub41
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.23
  %70 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit45 = getelementptr inbounds %struct.obstack, %struct.obstack* %70, i32 0, i32 4
  %71 = load i8*, i8** %chunk_limit45, align 8
  %72 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free46 = getelementptr inbounds %struct.obstack, %struct.obstack* %72, i32 0, i32 3
  store i8* %71, i8** %next_free46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.23
  %73 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free48 = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 3
  %74 = load i8*, i8** %next_free48, align 8
  %75 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base49 = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 2
  store i8* %74, i8** %object_base49, align 8
  %76 = load i8*, i8** %value, align 8
  store i8* %76, i8** %tmp50
  %77 = load i8*, i8** %tmp50
  store i8* %77, i8** %tmp
  %78 = load i8*, i8** %tmp
  %79 = bitcast i8* %78 to %struct.bitmap_head_def*
  %call51 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %79)
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %global_live_at_start52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i32 0, i32 8
  store %struct.bitmap_head_def* %call51, %struct.bitmap_head_def** %global_live_at_start52, align 8
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h54, align 8
  %81 = load %struct.obstack*, %struct.obstack** %__h54, align 8
  store %struct.obstack* %81, %struct.obstack** %__o56, align 8
  store i32 24, i32* %__len58, align 4
  %82 = load %struct.obstack*, %struct.obstack** %__o56, align 8
  %chunk_limit59 = getelementptr inbounds %struct.obstack, %struct.obstack* %82, i32 0, i32 4
  %83 = load i8*, i8** %chunk_limit59, align 8
  %84 = load %struct.obstack*, %struct.obstack** %__o56, align 8
  %next_free60 = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 3
  %85 = load i8*, i8** %next_free60, align 8
  %sub.ptr.lhs.cast61 = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast62 = ptrtoint i8* %85 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast61, %sub.ptr.rhs.cast62
  %86 = load i32, i32* %__len58, align 4
  %conv64 = sext i32 %86 to i64
  %cmp65 = icmp slt i64 %sub.ptr.sub63, %conv64
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.47
  %87 = load %struct.obstack*, %struct.obstack** %__o56, align 8
  %88 = load i32, i32* %__len58, align 4
  call void @_obstack_newchunk(%struct.obstack* %87, i32 %88)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.47
  %89 = load i32, i32* %__len58, align 4
  %90 = load %struct.obstack*, %struct.obstack** %__o56, align 8
  %next_free69 = getelementptr inbounds %struct.obstack, %struct.obstack* %90, i32 0, i32 3
  %91 = load i8*, i8** %next_free69, align 8
  %idx.ext70 = sext i32 %89 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %91, i64 %idx.ext70
  store i8* %add.ptr71, i8** %next_free69, align 8
  %92 = load %struct.obstack*, %struct.obstack** %__h54, align 8
  store %struct.obstack* %92, %struct.obstack** %__o174, align 8
  %93 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %object_base77 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 2
  %94 = load i8*, i8** %object_base77, align 8
  store i8* %94, i8** %value76, align 8
  %95 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %next_free78 = getelementptr inbounds %struct.obstack, %struct.obstack* %95, i32 0, i32 3
  %96 = load i8*, i8** %next_free78, align 8
  %97 = load i8*, i8** %value76, align 8
  %cmp79 = icmp eq i8* %96, %97
  br i1 %cmp79, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %if.end.68
  %98 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %maybe_empty_object82 = getelementptr inbounds %struct.obstack, %struct.obstack* %98, i32 0, i32 10
  %bf.load83 = load i8, i8* %maybe_empty_object82, align 8
  %bf.clear84 = and i8 %bf.load83, -3
  %bf.set85 = or i8 %bf.clear84, 2
  store i8 %bf.set85, i8* %maybe_empty_object82, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %if.end.68
  %99 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %next_free87 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 3
  %100 = load i8*, i8** %next_free87, align 8
  %sub.ptr.lhs.cast88 = ptrtoint i8* %100 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast88, 0
  %101 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %alignment_mask90 = getelementptr inbounds %struct.obstack, %struct.obstack* %101, i32 0, i32 6
  %102 = load i32, i32* %alignment_mask90, align 4
  %conv91 = sext i32 %102 to i64
  %add92 = add nsw i64 %sub.ptr.sub89, %conv91
  %103 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %alignment_mask93 = getelementptr inbounds %struct.obstack, %struct.obstack* %103, i32 0, i32 6
  %104 = load i32, i32* %alignment_mask93, align 4
  %neg94 = xor i32 %104, -1
  %conv95 = sext i32 %neg94 to i64
  %and96 = and i64 %add92, %conv95
  %add.ptr97 = getelementptr inbounds i8, i8* null, i64 %and96
  %105 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %next_free98 = getelementptr inbounds %struct.obstack, %struct.obstack* %105, i32 0, i32 3
  store i8* %add.ptr97, i8** %next_free98, align 8
  %106 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %next_free99 = getelementptr inbounds %struct.obstack, %struct.obstack* %106, i32 0, i32 3
  %107 = load i8*, i8** %next_free99, align 8
  %108 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %chunk100 = getelementptr inbounds %struct.obstack, %struct.obstack* %108, i32 0, i32 1
  %109 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk100, align 8
  %110 = bitcast %struct._obstack_chunk* %109 to i8*
  %sub.ptr.lhs.cast101 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast102 = ptrtoint i8* %110 to i64
  %sub.ptr.sub103 = sub i64 %sub.ptr.lhs.cast101, %sub.ptr.rhs.cast102
  %111 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %chunk_limit104 = getelementptr inbounds %struct.obstack, %struct.obstack* %111, i32 0, i32 4
  %112 = load i8*, i8** %chunk_limit104, align 8
  %113 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %chunk105 = getelementptr inbounds %struct.obstack, %struct.obstack* %113, i32 0, i32 1
  %114 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk105, align 8
  %115 = bitcast %struct._obstack_chunk* %114 to i8*
  %sub.ptr.lhs.cast106 = ptrtoint i8* %112 to i64
  %sub.ptr.rhs.cast107 = ptrtoint i8* %115 to i64
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107
  %cmp109 = icmp sgt i64 %sub.ptr.sub103, %sub.ptr.sub108
  br i1 %cmp109, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %if.end.86
  %116 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %chunk_limit112 = getelementptr inbounds %struct.obstack, %struct.obstack* %116, i32 0, i32 4
  %117 = load i8*, i8** %chunk_limit112, align 8
  %118 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %next_free113 = getelementptr inbounds %struct.obstack, %struct.obstack* %118, i32 0, i32 3
  store i8* %117, i8** %next_free113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %if.end.86
  %119 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %next_free115 = getelementptr inbounds %struct.obstack, %struct.obstack* %119, i32 0, i32 3
  %120 = load i8*, i8** %next_free115, align 8
  %121 = load %struct.obstack*, %struct.obstack** %__o174, align 8
  %object_base116 = getelementptr inbounds %struct.obstack, %struct.obstack* %121, i32 0, i32 2
  store i8* %120, i8** %object_base116, align 8
  %122 = load i8*, i8** %value76, align 8
  store i8* %122, i8** %tmp117
  %123 = load i8*, i8** %tmp117
  store i8* %123, i8** %tmp72
  %124 = load i8*, i8** %tmp72
  %125 = bitcast i8* %124 to %struct.bitmap_head_def*
  %call118 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %125)
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %126, i32 0, i32 9
  store %struct.bitmap_head_def* %call118, %struct.bitmap_head_def** %global_live_at_end, align 8
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %global_live_at_end119 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %127, i32 0, i32 9
  %128 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end119, align 8
  %129 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_end120 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %129, i32 0, i32 9
  %130 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end120, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %128, %struct.bitmap_head_def* %130)
  %131 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %global_live_at_start121 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %131, i32 0, i32 8
  %132 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start121, align 8
  %133 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_end122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %133, i32 0, i32 9
  %134 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end122, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %132, %struct.bitmap_head_def* %134)
  %135 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %136 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %global_live_at_start123 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %136, i32 0, i32 8
  %137 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start123, align 8
  %call124 = call i32 @propagate_block(%struct.basic_block_def* %135, %struct.bitmap_head_def* %137, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, i32 0)
  %138 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_end125 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %138, i32 0, i32 9
  %139 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end125, align 8
  %140 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %global_live_at_start126 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %140, i32 0, i32 8
  %141 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start126, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %139, %struct.bitmap_head_def* %141)
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.114, %for.end
  %142 = load %struct.edge_def*, %struct.edge_def** %new_edge, align 8
  store %struct.edge_def* %142, %struct.edge_def** %retval
  br label %return

return:                                           ; preds = %if.end.127, %if.then
  %143 = load %struct.edge_def*, %struct.edge_def** %retval
  ret %struct.edge_def* %143
}

declare %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

declare i32 @propagate_block(%struct.basic_block_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define void @merge_blocks_nomove(%struct.basic_block_def* %a, %struct.basic_block_def* %b) #0 {
entry:
  %a.addr = alloca %struct.basic_block_def*, align 8
  %b.addr = alloca %struct.basic_block_def*, align 8
  %b_head = alloca %struct.rtx_def*, align 8
  %b_end = alloca %struct.rtx_def*, align 8
  %a_end = alloca %struct.rtx_def*, align 8
  %del_first = alloca %struct.rtx_def*, align 8
  %del_last = alloca %struct.rtx_def*, align 8
  %b_empty = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %a, %struct.basic_block_def** %a.addr, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %b_head, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %b_end, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %a_end, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %del_first, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %del_last, align 8
  store i32 0, i32* %b_empty, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %b_end, align 8
  %cmp2 = icmp eq %struct.rtx_def* %8, %9
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 1, i32* %b_empty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %del_last, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %del_first, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %b_head, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %13 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load5 = load i32, i32* %14, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 37
  br i1 %cmp7, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %16 = load i32, i32* %rtint, align 4
  %cmp10 = icmp eq i32 %16, -80
  br i1 %cmp10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %b_end, align 8
  %cmp12 = icmp eq %struct.rtx_def* %17, %18
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.11
  store i32 1, i32* %b_empty, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.11
  %19 = load %struct.rtx_def*, %struct.rtx_def** %del_last, align 8
  %tobool = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.14
  %20 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %del_first, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.14
  %21 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %del_last, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %b_head, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 2
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %b_head, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.16, %land.lhs.true, %if.end.4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %a_end, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load21 = load i32, i32* %25, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 33
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.20
  %26 = load %struct.rtx_def*, %struct.rtx_def** %a_end, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %prev, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %28 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load28 = load i32, i32* %29, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp ne i32 %bf.clear29, 37
  br i1 %cmp30, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %30 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 4
  %rtint33 = bitcast %union.rtunion_def* %arrayidx32 to i32*
  %31 = load i32, i32* %rtint33, align 4
  %cmp34 = icmp eq i32 %31, -80
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false
  %32 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %head36 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %head36, align 8
  %cmp37 = icmp eq %struct.rtx_def* %32, %34
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false.35, %lor.lhs.false, %for.cond
  br label %for.end

if.end.39:                                        ; preds = %lor.lhs.false.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %35 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %prev, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.38
  %37 = load %struct.rtx_def*, %struct.rtx_def** %a_end, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %del_first, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %del_first, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %a_end, align 8
  br label %if.end.57

if.else:                                          ; preds = %if.end.20
  %40 = load %struct.rtx_def*, %struct.rtx_def** %a_end, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 2
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load49 = load i32, i32* %42, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 35
  br i1 %cmp51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.else
  %43 = load %struct.rtx_def*, %struct.rtx_def** %a_end, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 2
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %del_first, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.else
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.57
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 5
  %46 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool58 = icmp ne %struct.edge_def* %46, null
  br i1 %tobool58, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %succ59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 5
  %48 = load %struct.edge_def*, %struct.edge_def** %succ59, align 8
  call void @remove_edge(%struct.edge_def* %48)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 5
  %50 = load %struct.edge_def*, %struct.edge_def** %succ60, align 8
  store %struct.edge_def* %50, %struct.edge_def** %e, align 8
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.63, %while.end
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool62 = icmp ne %struct.edge_def* %51, null
  br i1 %tobool62, label %for.body, label %for.end.64

for.body:                                         ; preds = %for.cond.61
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %53 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 2
  store %struct.basic_block_def* %52, %struct.basic_block_def** %src, align 8
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body
  %54 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %54, i32 0, i32 1
  %55 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %55, %struct.edge_def** %e, align 8
  br label %for.cond.61

for.end.64:                                       ; preds = %for.cond.61
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %56, i32 0, i32 5
  %57 = load %struct.edge_def*, %struct.edge_def** %succ65, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %succ66 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 5
  store %struct.edge_def* %57, %struct.edge_def** %succ66, align 8
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ67 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %59, i32 0, i32 5
  store %struct.edge_def* null, %struct.edge_def** %succ67, align 8
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 4
  store %struct.edge_def* null, %struct.edge_def** %pred, align 8
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 9
  %62 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %global_live_at_end68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %63, i32 0, i32 9
  store %struct.bitmap_head_def* %62, %struct.bitmap_head_def** %global_live_at_end68, align 8
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  call void @expunge_block(%struct.basic_block_def* %64)
  %65 = load %struct.rtx_def*, %struct.rtx_def** %del_first, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %del_last, align 8
  call void @delete_insn_chain(%struct.rtx_def* %65, %struct.rtx_def* %66)
  %67 = load i32, i32* %b_empty, align 4
  %tobool69 = icmp ne i32 %67, 0
  br i1 %tobool69, label %if.end.82, label %if.then.70

if.then.70:                                       ; preds = %for.end.64
  %68 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool71 = icmp ne %struct.varray_head_tag* %68, null
  br i1 %tobool71, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %if.then.70
  %69 = load %struct.rtx_def*, %struct.rtx_def** %a_end, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %x, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.76, %if.then.72
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %b_end, align 8
  %cmp74 = icmp ne %struct.rtx_def* %70, %71
  br i1 %cmp74, label %for.body.75, label %for.end.80

for.body.75:                                      ; preds = %for.cond.73
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  call void @set_block_for_insn(%struct.rtx_def* %72, %struct.basic_block_def* %73)
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.75
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 2
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  store %struct.rtx_def* %75, %struct.rtx_def** %x, align 8
  br label %for.cond.73

for.end.80:                                       ; preds = %for.cond.73
  %76 = load %struct.rtx_def*, %struct.rtx_def** %b_end, align 8
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  call void @set_block_for_insn(%struct.rtx_def* %76, %struct.basic_block_def* %77)
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.80, %if.then.70
  %78 = load %struct.rtx_def*, %struct.rtx_def** %b_end, align 8
  store %struct.rtx_def* %78, %struct.rtx_def** %a_end, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %for.end.64
  %79 = load %struct.rtx_def*, %struct.rtx_def** %a_end, align 8
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %end83 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i32 0, i32 1
  store %struct.rtx_def* %79, %struct.rtx_def** %end83, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @block_label(%struct.basic_block_def* %block) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %block.addr = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %0, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 0
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 36
  br i1 %cmp1, label %if.then.2, label %if.end.9

if.then.2:                                        ; preds = %if.end
  %call = call %struct.rtx_def* @gen_label_rtx()
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %head3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head3, align 8
  %call4 = call %struct.rtx_def* @emit_label_before(%struct.rtx_def* %call, %struct.rtx_def* %5)
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %head5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 0
  store %struct.rtx_def* %call4, %struct.rtx_def** %head5, align 8
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool = icmp ne %struct.varray_head_tag* %7, null
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.2
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %head7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %head7, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  call void @set_block_for_insn(%struct.rtx_def* %9, %struct.basic_block_def* %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.2
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %head10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head10, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %13
}

declare %struct.rtx_def* @emit_label_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_label_rtx() #1

; Function Attrs: nounwind uwtable
define zeroext i1 @redirect_edge_and_branch(%struct.edge_def* %e, %struct.basic_block_def* %target) #0 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca %struct.edge_def*, align 8
  %target.addr = alloca %struct.basic_block_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %old_label = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %vec = alloca %struct.rtvec_def*, align 8
  %j = alloca i32, align 4
  %new_label = alloca %struct.rtx_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %target, %struct.basic_block_def** %target.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 3
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 0
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %old_label, align 8
  %3 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 2
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src3, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %src, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn, align 8
  %7 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 6
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, 12
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call = call zeroext i1 @try_redirect_by_replacing_jump(%struct.edge_def* %9, %struct.basic_block_def* %10)
  br i1 %call, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  store i1 true, i1* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %11 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 3
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest6, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %12, %13
  br i1 %cmp, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.else
  store i1 false, i1* %retval
  br label %return

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8
  %14 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 6
  %15 = load i32, i32* %flags10, align 4
  %and11 = and i32 %15, 1
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.9
  store i1 false, i1* %retval
  br label %return

if.else.14:                                       ; preds = %if.end.9
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp15 = icmp ne i32 %bf.clear, 33
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else.14
  store i1 false, i1* %retval
  br label %return

if.end.17:                                        ; preds = %if.else.14
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %tmp, align 8
  %cmp19 = icmp ne %struct.rtx_def* %19, null
  br i1 %cmp19, label %land.lhs.true, label %if.else.170

land.lhs.true:                                    ; preds = %if.end.18
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 2
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %tmp, align 8
  %cmp23 = icmp ne %struct.rtx_def* %21, null
  br i1 %cmp23, label %land.lhs.true.24, label %if.else.170

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load25 = load i32, i32* %23, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 33
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.170

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %24 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load32 = load i32, i32* %26, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 44
  br i1 %cmp34, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load38 = load i32, i32* %29, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 45
  br i1 %cmp40, label %if.then.41, label %if.else.170

if.then.41:                                       ; preds = %lor.lhs.false, %land.lhs.true.28
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call45 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %30)
  store %struct.rtx_def* %call45, %struct.rtx_def** %new_label, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp46 = icmp eq %struct.basic_block_def* %31, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.41
  store i1 false, i1* %retval
  br label %return

if.end.48:                                        ; preds = %if.then.41
  %32 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 3
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load52 = load i32, i32* %34, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 44
  br i1 %cmp54, label %if.then.55, label %if.else.61

if.then.55:                                       ; preds = %if.end.48
  %35 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 3
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtvec_def**
  %37 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  store %struct.rtvec_def* %37, %struct.rtvec_def** %vec, align 8
  br label %if.end.68

if.else.61:                                       ; preds = %if.end.48
  %38 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 3
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 1
  %rtvec67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtvec_def**
  %40 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec67, align 8
  store %struct.rtvec_def* %40, %struct.rtvec_def** %vec, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.61, %if.then.55
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 0
  %42 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %42, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.68
  %43 = load i32, i32* %j, align 4
  %cmp69 = icmp sge i32 %43, 0
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %j, align 4
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %45, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %46 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx70, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %old_label, align 8
  %cmp74 = icmp eq %struct.rtx_def* %47, %48
  br i1 %cmp74, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %for.body
  %49 = load i32, i32* @target_flags, align 4
  %and76 = and i32 %49, 33554432
  %tobool77 = icmp ne i32 %and76, 0
  %cond = select i1 %tobool77, i32 5, i32 4
  %50 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %call78 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 %cond, %struct.rtx_def* %50)
  %51 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %51 to i64
  %52 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %elem80 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %52, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem80, i32 0, i64 %idxprom79
  store %struct.rtx_def* %call78, %struct.rtx_def** %arrayidx81, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %old_label, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx83 to i32*
  %54 = load i32, i32* %rtint, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %rtint, align 4
  %55 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 3
  %rtint86 = bitcast %union.rtunion_def* %arrayidx85 to i32*
  %56 = load i32, i32* %rtint86, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %rtint86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.75, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %57 = load i32, i32* %j, align 4
  %dec88 = add nsw i32 %57, -1
  store i32 %dec88, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load89 = load i32, i32* %59, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %idxprom91 = sext i32 %bf.clear90 to i64
  %arrayidx92 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom91
  %60 = load i8, i8* %arrayidx92, align 1
  %conv = sext i8 %60 to i32
  %cmp93 = icmp eq i32 %conv, 105
  br i1 %cmp93, label %cond.true, label %cond.false.111

cond.true:                                        ; preds = %for.end
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 3
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load98 = load i32, i32* %63, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 47
  br i1 %cmp100, label %cond.true.102, label %cond.false

cond.true.102:                                    ; preds = %cond.true
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 3
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 3
  %rtx108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx108, align 8
  %call109 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %66, %struct.rtx_def* %68)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.102
  %cond110 = phi %struct.rtx_def* [ %65, %cond.true.102 ], [ %call109, %cond.false ]
  br label %cond.end.112

cond.false.111:                                   ; preds = %for.end
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.111, %cond.end
  %cond113 = phi %struct.rtx_def* [ %cond110, %cond.end ], [ null, %cond.false.111 ]
  store %struct.rtx_def* %cond113, %struct.rtx_def** %tmp, align 8
  %cmp114 = icmp ne %struct.rtx_def* %cond113, null
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.169

land.lhs.true.116:                                ; preds = %cond.end.112
  %69 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp120 = icmp eq %struct.rtx_def* %70, %71
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.169

land.lhs.true.122:                                ; preds = %land.lhs.true.116
  %72 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 1
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load126 = load i32, i32* %74, align 8
  %bf.clear127 = and i32 %bf.load126, 65535
  %cmp128 = icmp eq i32 %bf.clear127, 72
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.169

land.lhs.true.130:                                ; preds = %land.lhs.true.122
  %75 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 1
  %rtx133 = bitcast %union.rtunion_def* %arrayidx132 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx133, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 2
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load137 = load i32, i32* %78, align 8
  %bf.clear138 = and i32 %bf.load137, 65535
  %cmp139 = icmp eq i32 %bf.clear138, 67
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.169

land.lhs.true.141:                                ; preds = %land.lhs.true.130
  %79 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 1
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 2
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 0
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx150, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %old_label, align 8
  %cmp151 = icmp eq %struct.rtx_def* %82, %83
  br i1 %cmp151, label %if.then.153, label %if.end.169

if.then.153:                                      ; preds = %land.lhs.true.141
  %84 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %call154 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %84)
  %85 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 1
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 2
  %rtx160 = bitcast %union.rtunion_def* %arrayidx159 to %struct.rtx_def**
  store %struct.rtx_def* %call154, %struct.rtx_def** %rtx160, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %old_label, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 3
  %rtint163 = bitcast %union.rtunion_def* %arrayidx162 to i32*
  %88 = load i32, i32* %rtint163, align 4
  %dec164 = add nsw i32 %88, -1
  store i32 %dec164, i32* %rtint163, align 4
  %89 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %fld165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld165, i32 0, i64 3
  %rtint167 = bitcast %union.rtunion_def* %arrayidx166 to i32*
  %90 = load i32, i32* %rtint167, align 4
  %inc168 = add nsw i32 %90, 1
  store i32 %inc168, i32* %rtint167, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.153, %land.lhs.true.141, %land.lhs.true.130, %land.lhs.true.122, %land.lhs.true.116, %cond.end.112
  br label %if.end.194

if.else.170:                                      ; preds = %lor.lhs.false, %land.lhs.true.24, %land.lhs.true, %if.end.18
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call171 = call i32 @computed_jump_p(%struct.rtx_def* %91)
  %tobool172 = icmp ne i32 %call171, 0
  br i1 %tobool172, label %if.then.176, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %if.else.170
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call174 = call i32 @returnjump_p(%struct.rtx_def* %92)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %lor.lhs.false.173, %if.else.170
  store i1 false, i1* %retval
  br label %return

if.end.177:                                       ; preds = %lor.lhs.false.173
  %93 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 7
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx180, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %old_label, align 8
  %cmp181 = icmp ne %struct.rtx_def* %94, %95
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.end.177
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 890, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.redirect_edge_and_branch, i32 0, i32 0)) #4
  unreachable

if.end.184:                                       ; preds = %if.end.177
  %96 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call185 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %97)
  %call186 = call i32 @redirect_jump(%struct.rtx_def* %96, %struct.rtx_def* %call185, i32 0)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.end.193, label %if.then.188

if.then.188:                                      ; preds = %if.end.184
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp189 = icmp eq %struct.basic_block_def* %98, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.then.188
  store i1 false, i1* %retval
  br label %return

if.end.192:                                       ; preds = %if.then.188
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 899, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.redirect_edge_and_branch, i32 0, i32 0)) #4
  unreachable

if.end.193:                                       ; preds = %if.end.184
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.169
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool195 = icmp ne %struct._IO_FILE* %99, null
  br i1 %tobool195, label %if.then.196, label %if.end.202

if.then.196:                                      ; preds = %if.end.194
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %101 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src197 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %101, i32 0, i32 2
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %src197, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %102, i32 0, i32 11
  %103 = load i32, i32* %index, align 4
  %104 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest198 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %104, i32 0, i32 3
  %105 = load %struct.basic_block_def*, %struct.basic_block_def** %dest198, align 8
  %index199 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %105, i32 0, i32 11
  %106 = load i32, i32* %index199, align 4
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %index200 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %107, i32 0, i32 11
  %108 = load i32, i32* %index200, align 4
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %103, i32 %106, i32 %108)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.196, %if.end.194
  %109 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest203 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %109, i32 0, i32 3
  %110 = load %struct.basic_block_def*, %struct.basic_block_def** %dest203, align 8
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp204 = icmp ne %struct.basic_block_def* %110, %111
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.end.202
  %112 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call207 = call %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %112, %struct.basic_block_def* %113)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %if.end.202
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.208, %if.then.191, %if.then.176, %if.then.47, %if.then.16, %if.then.13, %if.then.7, %if.then.5, %if.then
  %114 = load i1, i1* %retval
  ret i1 %114
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @try_redirect_by_replacing_jump(%struct.edge_def* %e, %struct.basic_block_def* %target) #0 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca %struct.edge_def*, align 8
  %target.addr = alloca %struct.basic_block_def*, align 8
  %src = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %kill_from = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.edge_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %fallthru = alloca i32, align 4
  %target_label = alloca %struct.rtx_def*, align 8
  %barrier = alloca %struct.rtx_def*, align 8
  %tmp79 = alloca %struct.rtx_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %target, %struct.basic_block_def** %target.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 2
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %src, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  store i32 0, i32* %fallthru, align 4
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 5
  %5 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %5, %struct.edge_def** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %tobool = icmp ne %struct.edge_def* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 3
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp = icmp ne %struct.basic_block_def* %8, %9
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %cmp4 = icmp ne %struct.edge_def* %10, %11
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 1
  %13 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %13, %struct.edge_def** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %tobool5 = icmp ne %struct.edge_def* %14, null
  br i1 %tobool5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i32 @onlyjump_p(%struct.rtx_def* %15)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %for.end
  store i1 false, i1* %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %18 to i32
  %cmp9 = icmp eq i32 %conv, 105
  br i1 %cmp9, label %cond.true, label %cond.false.24

cond.true:                                        ; preds = %if.end.8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load12 = load i32, i32* %21, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 47
  br i1 %cmp14, label %cond.true.16, label %cond.false

cond.true.16:                                     ; preds = %cond.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %call23 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %24, %struct.rtx_def* %26)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.16
  %cond = phi %struct.rtx_def* [ %23, %cond.true.16 ], [ %call23, %cond.false ]
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.end.8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.end
  %cond26 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.24 ]
  store %struct.rtx_def* %cond26, %struct.rtx_def** %set, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool27 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool27, label %lor.lhs.false.28, label %if.then.31

lor.lhs.false.28:                                 ; preds = %cond.end.25
  %28 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %call29 = call i32 @side_effects_p(%struct.rtx_def* %28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false.28, %cond.end.25
  store i1 false, i1* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.28
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %kill_from, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call33 = call zeroext i1 @can_fallthru(%struct.basic_block_def* %30, %struct.basic_block_def* %31)
  br i1 %call33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.32
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool35 = icmp ne %struct._IO_FILE* %32, null
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.then.34
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx38 to i32*
  %35 = load i32, i32* %rtint, align 4
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i32 %35)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.then.34
  store i32 1, i32* %fallthru, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %kill_from, align 8
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 0
  %38 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  call void @delete_insn_chain(%struct.rtx_def* %36, %struct.rtx_def* %39)
  br label %if.end.151

if.else:                                          ; preds = %if.end.32
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call44 = call i32 @simplejump_p(%struct.rtx_def* %40)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.70

if.then.46:                                       ; preds = %if.else
  %41 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i32 0, i32 3
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %dest47, align 8
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp48 = icmp eq %struct.basic_block_def* %42, %43
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.46
  store i1 false, i1* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.46
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool52 = icmp ne %struct._IO_FILE* %44, null
  br i1 %tobool52, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.end.51
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtint56 = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %47 = load i32, i32* %rtint56, align 4
  %48 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest57 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 3
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %dest57, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 11
  %50 = load i32, i32* %index, align 4
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %index58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i32 0, i32 11
  %52 = load i32, i32* %index58, align 4
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0), i32 %47, i32 %50, i32 %52)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.53, %if.end.51
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call61 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %54)
  %call62 = call i32 @redirect_jump(%struct.rtx_def* %53, %struct.rtx_def* %call61, i32 0)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.69, label %if.then.64

if.then.64:                                       ; preds = %if.end.60
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp65 = icmp eq %struct.basic_block_def* %55, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.64
  store i1 false, i1* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.64
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 713, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.try_redirect_by_replacing_jump, i32 0, i32 0)) #4
  unreachable

if.end.69:                                        ; preds = %if.end.60
  br label %if.end.150

if.else.70:                                       ; preds = %if.else
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp71 = icmp eq %struct.basic_block_def* %56, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.else.70
  store i1 false, i1* %retval
  br label %return

if.else.74:                                       ; preds = %if.else.70
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call76 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %57)
  store %struct.rtx_def* %call76, %struct.rtx_def** %target_label, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %target_label, align 8
  %call80 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %58)
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call81 = call %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %call80, %struct.rtx_def* %59)
  %60 = load %struct.rtx_def*, %struct.rtx_def** %target_label, align 8
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %end82 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 1
  %62 = load %struct.rtx_def*, %struct.rtx_def** %end82, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 7
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  store %struct.rtx_def* %60, %struct.rtx_def** %rtx85, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %target_label, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 3
  %rtint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %64 = load i32, i32* %rtint88, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %rtint88, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool89 = icmp ne %struct._IO_FILE* %65, null
  br i1 %tobool89, label %if.then.90, label %if.end.99

if.then.90:                                       ; preds = %if.else.74
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtint93 = bitcast %union.rtunion_def* %arrayidx92 to i32*
  %68 = load i32, i32* %rtint93, align 4
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %end94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i32 0, i32 1
  %70 = load %struct.rtx_def*, %struct.rtx_def** %end94, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtint97 = bitcast %union.rtunion_def* %arrayidx96 to i32*
  %71 = load i32, i32* %rtint97, align 4
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i32 0, i32 0), i32 %68, i32 %71)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.90, %if.else.74
  %72 = load %struct.rtx_def*, %struct.rtx_def** %kill_from, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @delete_insn_chain(%struct.rtx_def* %72, %struct.rtx_def* %73)
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 7
  %rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx102, align 8
  store %struct.rtx_def* %75, %struct.rtx_def** %tmp79, align 8
  %cmp103 = icmp ne %struct.rtx_def* %75, null
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.136

land.lhs.true.105:                                ; preds = %if.end.99
  %76 = load %struct.rtx_def*, %struct.rtx_def** %tmp79, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 2
  %rtx108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx108, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %tmp79, align 8
  %cmp109 = icmp ne %struct.rtx_def* %77, null
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.136

land.lhs.true.111:                                ; preds = %land.lhs.true.105
  %78 = load %struct.rtx_def*, %struct.rtx_def** %tmp79, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load112 = load i32, i32* %79, align 8
  %bf.clear113 = and i32 %bf.load112, 65535
  %cmp114 = icmp eq i32 %bf.clear113, 33
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.136

land.lhs.true.116:                                ; preds = %land.lhs.true.111
  %80 = load %struct.rtx_def*, %struct.rtx_def** %tmp79, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 3
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load120 = load i32, i32* %82, align 8
  %bf.clear121 = and i32 %bf.load120, 65535
  %cmp122 = icmp eq i32 %bf.clear121, 44
  br i1 %cmp122, label %if.then.132, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %land.lhs.true.116
  %83 = load %struct.rtx_def*, %struct.rtx_def** %tmp79, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 3
  %rtx127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx127, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load128 = load i32, i32* %85, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %cmp130 = icmp eq i32 %bf.clear129, 45
  br i1 %cmp130, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %lor.lhs.false.124, %land.lhs.true.116
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 7
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %tmp79, align 8
  call void @delete_insn_chain(%struct.rtx_def* %87, %struct.rtx_def* %88)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.132, %lor.lhs.false.124, %land.lhs.true.111, %land.lhs.true.105, %if.end.99
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %end137 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %89, i32 0, i32 1
  %90 = load %struct.rtx_def*, %struct.rtx_def** %end137, align 8
  %call138 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %90)
  store %struct.rtx_def* %call138, %struct.rtx_def** %barrier, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %tobool139 = icmp ne %struct.rtx_def* %91, null
  br i1 %tobool139, label %lor.lhs.false.140, label %if.then.145

lor.lhs.false.140:                                ; preds = %if.end.136
  %92 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load141 = load i32, i32* %93, align 8
  %bf.clear142 = and i32 %bf.load141, 65535
  %cmp143 = icmp ne i32 %bf.clear142, 35
  br i1 %cmp143, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %lor.lhs.false.140, %if.end.136
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %end146 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i32 0, i32 1
  %95 = load %struct.rtx_def*, %struct.rtx_def** %end146, align 8
  %call147 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %95)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %lor.lhs.false.140
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.end.69
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.40
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.151
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ152 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %96, i32 0, i32 5
  %97 = load %struct.edge_def*, %struct.edge_def** %succ152, align 8
  %succ_next153 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %97, i32 0, i32 1
  %98 = load %struct.edge_def*, %struct.edge_def** %succ_next153, align 8
  %tobool154 = icmp ne %struct.edge_def* %98, null
  br i1 %tobool154, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %99 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ155 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %99, i32 0, i32 5
  %100 = load %struct.edge_def*, %struct.edge_def** %succ155, align 8
  call void @remove_edge(%struct.edge_def* %100)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ156 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %101, i32 0, i32 5
  %102 = load %struct.edge_def*, %struct.edge_def** %succ156, align 8
  store %struct.edge_def* %102, %struct.edge_def** %e.addr, align 8
  %103 = load i32, i32* %fallthru, align 4
  %tobool157 = icmp ne i32 %103, 0
  br i1 %tobool157, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %while.end
  %104 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %104, i32 0, i32 6
  store i32 1, i32* %flags, align 4
  br label %if.end.161

if.else.159:                                      ; preds = %while.end
  %105 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags160 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %105, i32 0, i32 6
  store i32 0, i32* %flags160, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.159, %if.then.158
  %106 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %106, i32 0, i32 7
  store i32 10000, i32* %probability, align 4
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %107, i32 0, i32 13
  %108 = load i64, i64* %count, align 8
  %109 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %count162 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %109, i32 0, i32 8
  store i64 %108, i64* %count162, align 8
  br label %while.cond.163

while.cond.163:                                   ; preds = %while.body.177, %if.end.161
  %110 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src164 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %110, i32 0, i32 2
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %src164, align 8
  %end165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %111, i32 0, i32 1
  %112 = load %struct.rtx_def*, %struct.rtx_def** %end165, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load166 = load i32, i32* %113, align 8
  %bf.clear167 = and i32 %bf.load166, 65535
  %cmp168 = icmp eq i32 %bf.clear167, 37
  br i1 %cmp168, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.163
  %114 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src170 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %114, i32 0, i32 2
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %src170, align 8
  %end171 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %115, i32 0, i32 1
  %116 = load %struct.rtx_def*, %struct.rtx_def** %end171, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 4
  %rtint174 = bitcast %union.rtunion_def* %arrayidx173 to i32*
  %117 = load i32, i32* %rtint174, align 4
  %cmp175 = icmp sge i32 %117, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.163
  %118 = phi i1 [ false, %while.cond.163 ], [ %cmp175, %land.rhs ]
  br i1 %118, label %while.body.177, label %while.end.181

while.body.177:                                   ; preds = %land.end
  %119 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src178 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %119, i32 0, i32 2
  %120 = load %struct.basic_block_def*, %struct.basic_block_def** %src178, align 8
  %end179 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %120, i32 0, i32 1
  %121 = load %struct.rtx_def*, %struct.rtx_def** %end179, align 8
  %call180 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %121)
  br label %while.cond.163

while.end.181:                                    ; preds = %land.end
  %122 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest182 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %122, i32 0, i32 3
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %dest182, align 8
  %124 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp183 = icmp ne %struct.basic_block_def* %123, %124
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %while.end.181
  %125 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  call void @redirect_edge_succ(%struct.edge_def* %125, %struct.basic_block_def* %126)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %while.end.181
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.186, %if.then.73, %if.then.67, %if.then.50, %if.then.31, %if.then.7
  %127 = load i1, i1* %retval
  ret i1 %127
}

declare %struct.rtx_def* @gen_rtx_fmt_u00(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @computed_jump_p(%struct.rtx_def*) #1

declare i32 @returnjump_p(%struct.rtx_def*) #1

declare i32 @redirect_jump(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def*, %struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define %struct.basic_block_def* @force_nonfallthru(%struct.edge_def* %e) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %1 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i32 0, i32 3
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %call = call %struct.basic_block_def* @force_nonfallthru_and_redirect(%struct.edge_def* %0, %struct.basic_block_def* %2)
  ret %struct.basic_block_def* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.basic_block_def* @force_nonfallthru_and_redirect(%struct.edge_def* %e, %struct.basic_block_def* %target) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %target.addr = alloca %struct.basic_block_def*, align 8
  %jump_block = alloca %struct.basic_block_def*, align 8
  %new_bb = alloca %struct.basic_block_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %new_edge = alloca %struct.edge_def*, align 8
  %pe1 = alloca %struct.edge_def**, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp125 = alloca i8*, align 8
  %__h129 = alloca %struct.obstack*, align 8
  %__o131 = alloca %struct.obstack*, align 8
  %__len133 = alloca i32, align 4
  %tmp147 = alloca i8*, align 8
  %__o1149 = alloca %struct.obstack*, align 8
  %value151 = alloca i8*, align 8
  %tmp192 = alloca i8*, align 8
  %label = alloca %struct.rtx_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %target, %struct.basic_block_def** %target.addr, align 8
  store %struct.basic_block_def* null, %struct.basic_block_def** %new_bb, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 6
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 926, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.force_nonfallthru_and_redirect, i32 0, i32 0)) #4
  unreachable

if.else:                                          ; preds = %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 6
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.else.5, label %if.then.4

if.then.4:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 928, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.force_nonfallthru_and_redirect, i32 0, i32 0)) #4
  unreachable

if.else.5:                                        ; preds = %if.else
  %4 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 2
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp = icmp eq %struct.basic_block_def* %5, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp, label %if.then.6, label %if.end.17

if.then.6:                                        ; preds = %if.else.5
  %6 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 3
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %call = call %struct.basic_block_def* @create_basic_block(i32 0, %struct.rtx_def* %8, %struct.rtx_def* null)
  store %struct.basic_block_def* %call, %struct.basic_block_def** %bb, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %10 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src7 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 2
  store %struct.basic_block_def* %9, %struct.basic_block_def** %src7, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 8
  %12 = load i64, i64* %count, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %count8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 13
  store i64 %12, i64* %count8, align 8
  %14 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 2
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src9, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 14
  %16 = load i32, i32* %frequency, align 4
  %17 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 7
  %18 = load i32, i32* %probability, align 4
  %mul = mul nsw i32 %16, %18
  %add = add nsw i32 %mul, 5000
  %div = sdiv i32 %add, 10000
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %frequency10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 14
  store i32 %div, i32* %frequency10, align 4
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 12
  store i32 0, i32* %loop_depth, align 4
  store %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), %struct.edge_def*** %pe1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %21 = load %struct.edge_def**, %struct.edge_def*** %pe1, align 8
  %22 = load %struct.edge_def*, %struct.edge_def** %21, align 8
  %tobool11 = icmp ne %struct.edge_def* %22, null
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.edge_def**, %struct.edge_def*** %pe1, align 8
  %24 = load %struct.edge_def*, %struct.edge_def** %23, align 8
  %25 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %cmp12 = icmp eq %struct.edge_def* %24, %25
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.body
  %26 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 1
  %27 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %28 = load %struct.edge_def**, %struct.edge_def*** %pe1, align 8
  store %struct.edge_def* %27, %struct.edge_def** %28, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %29 = load %struct.edge_def**, %struct.edge_def*** %pe1, align 8
  %30 = load %struct.edge_def*, %struct.edge_def** %29, align 8
  %succ_next14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 1
  store %struct.edge_def** %succ_next14, %struct.edge_def*** %pe1, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.13, %for.cond
  %31 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %succ_next15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 1
  store %struct.edge_def* null, %struct.edge_def** %succ_next15, align 8
  %32 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 5
  store %struct.edge_def* %32, %struct.edge_def** %succ, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call16 = call %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %34, i32 1)
  br label %if.end.17

if.end.17:                                        ; preds = %for.end, %if.else.5
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18
  %35 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i32 0, i32 2
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %src20, align 8
  %succ21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i32 0, i32 5
  %37 = load %struct.edge_def*, %struct.edge_def** %succ21, align 8
  %succ_next22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i32 0, i32 1
  %38 = load %struct.edge_def*, %struct.edge_def** %succ_next22, align 8
  %tobool23 = icmp ne %struct.edge_def* %38, null
  br i1 %tobool23, label %if.then.24, label %if.else.206

if.then.24:                                       ; preds = %if.end.19
  %39 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src25 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i32 0, i32 2
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %src25, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 1
  %41 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call26 = call %struct.rtx_def* @last_loop_beg_note(%struct.rtx_def* %41)
  store %struct.rtx_def* %call26, %struct.rtx_def** %note, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %note, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %cmp27 = icmp ne %struct.rtx_def* %44, null
  br i1 %cmp27, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %if.then.24
  %45 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load = load i32, i32* %46, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp28 = icmp eq i32 %bf.clear, 36
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.67

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %47 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 2
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %tobool33 = icmp ne %struct.rtx_def* %48, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.67

land.lhs.true.34:                                 ; preds = %land.lhs.true.29
  %49 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 2
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load38 = load i32, i32* %51, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 33
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.67

land.lhs.true.41:                                 ; preds = %land.lhs.true.34
  %52 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 2
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 3
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load48 = load i32, i32* %55, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 45
  br i1 %cmp50, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.41
  %56 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 2
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 3
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load57 = load i32, i32* %59, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 44
  br i1 %cmp59, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %lor.lhs.false, %land.lhs.true.41
  %60 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 2
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 2
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %note, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.60, %lor.lhs.false, %land.lhs.true.34, %land.lhs.true.29, %land.lhs.true, %if.then.24
  %63 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src68 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 2
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %src68, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 11
  %65 = load i32, i32* %index, align 4
  %add69 = add nsw i32 %65, 1
  %66 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call70 = call %struct.basic_block_def* @create_basic_block(i32 %add69, %struct.rtx_def* %66, %struct.rtx_def* null)
  store %struct.basic_block_def* %call70, %struct.basic_block_def** %jump_block, align 8
  %67 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %count71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %67, i32 0, i32 8
  %68 = load i64, i64* %count71, align 8
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %count72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i32 0, i32 13
  store i64 %68, i64* %count72, align 8
  %70 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src73 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %70, i32 0, i32 2
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %src73, align 8
  %frequency74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i32 0, i32 14
  %72 = load i32, i32* %frequency74, align 4
  %73 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %probability75 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 7
  %74 = load i32, i32* %probability75, align 4
  %mul76 = mul nsw i32 %72, %74
  %add77 = add nsw i32 %mul76, 5000
  %div78 = sdiv i32 %add77, 10000
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %frequency79 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i32 0, i32 14
  store i32 %div78, i32* %frequency79, align 4
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %loop_depth80 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 12
  %77 = load i32, i32* %loop_depth80, align 4
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %loop_depth81 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i32 0, i32 12
  store i32 %77, i32* %loop_depth81, align 4
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i32 0, i32 8
  %80 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %tobool82 = icmp ne %struct.bitmap_head_def* %80, null
  br i1 %tobool82, label %if.then.83, label %if.end.198

if.then.83:                                       ; preds = %if.end.67
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h, align 8
  %81 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %81, %struct.obstack** %__o, align 8
  store i32 24, i32* %__len, align 4
  %82 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %82, i32 0, i32 4
  %83 = load i8*, i8** %chunk_limit, align 8
  %84 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 3
  %85 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %83 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %85 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %86 = load i32, i32* %__len, align 4
  %conv = sext i32 %86 to i64
  %cmp84 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.83
  %87 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %88 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %87, i32 %88)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.then.83
  %89 = load i32, i32* %__len, align 4
  %90 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free88 = getelementptr inbounds %struct.obstack, %struct.obstack* %90, i32 0, i32 3
  %91 = load i8*, i8** %next_free88, align 8
  %idx.ext = sext i32 %89 to i64
  %add.ptr = getelementptr inbounds i8, i8* %91, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free88, align 8
  %92 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %92, %struct.obstack** %__o1, align 8
  %93 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 2
  %94 = load i8*, i8** %object_base, align 8
  store i8* %94, i8** %value, align 8
  %95 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free91 = getelementptr inbounds %struct.obstack, %struct.obstack* %95, i32 0, i32 3
  %96 = load i8*, i8** %next_free91, align 8
  %97 = load i8*, i8** %value, align 8
  %cmp92 = icmp eq i8* %96, %97
  br i1 %cmp92, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.end.87
  %98 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %98, i32 0, i32 10
  %bf.load95 = load i8, i8* %maybe_empty_object, align 8
  %bf.clear96 = and i8 %bf.load95, -3
  %bf.set = or i8 %bf.clear96, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.end.87
  %99 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free98 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 3
  %100 = load i8*, i8** %next_free98, align 8
  %sub.ptr.lhs.cast99 = ptrtoint i8* %100 to i64
  %sub.ptr.sub100 = sub i64 %sub.ptr.lhs.cast99, 0
  %101 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %101, i32 0, i32 6
  %102 = load i32, i32* %alignment_mask, align 4
  %conv101 = sext i32 %102 to i64
  %add102 = add nsw i64 %sub.ptr.sub100, %conv101
  %103 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask103 = getelementptr inbounds %struct.obstack, %struct.obstack* %103, i32 0, i32 6
  %104 = load i32, i32* %alignment_mask103, align 4
  %neg = xor i32 %104, -1
  %conv104 = sext i32 %neg to i64
  %and105 = and i64 %add102, %conv104
  %add.ptr106 = getelementptr inbounds i8, i8* null, i64 %and105
  %105 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free107 = getelementptr inbounds %struct.obstack, %struct.obstack* %105, i32 0, i32 3
  store i8* %add.ptr106, i8** %next_free107, align 8
  %106 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free108 = getelementptr inbounds %struct.obstack, %struct.obstack* %106, i32 0, i32 3
  %107 = load i8*, i8** %next_free108, align 8
  %108 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %108, i32 0, i32 1
  %109 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %110 = bitcast %struct._obstack_chunk* %109 to i8*
  %sub.ptr.lhs.cast109 = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast110 = ptrtoint i8* %110 to i64
  %sub.ptr.sub111 = sub i64 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast110
  %111 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit112 = getelementptr inbounds %struct.obstack, %struct.obstack* %111, i32 0, i32 4
  %112 = load i8*, i8** %chunk_limit112, align 8
  %113 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk113 = getelementptr inbounds %struct.obstack, %struct.obstack* %113, i32 0, i32 1
  %114 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk113, align 8
  %115 = bitcast %struct._obstack_chunk* %114 to i8*
  %sub.ptr.lhs.cast114 = ptrtoint i8* %112 to i64
  %sub.ptr.rhs.cast115 = ptrtoint i8* %115 to i64
  %sub.ptr.sub116 = sub i64 %sub.ptr.lhs.cast114, %sub.ptr.rhs.cast115
  %cmp117 = icmp sgt i64 %sub.ptr.sub111, %sub.ptr.sub116
  br i1 %cmp117, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.end.97
  %116 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit120 = getelementptr inbounds %struct.obstack, %struct.obstack* %116, i32 0, i32 4
  %117 = load i8*, i8** %chunk_limit120, align 8
  %118 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free121 = getelementptr inbounds %struct.obstack, %struct.obstack* %118, i32 0, i32 3
  store i8* %117, i8** %next_free121, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %if.end.97
  %119 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free123 = getelementptr inbounds %struct.obstack, %struct.obstack* %119, i32 0, i32 3
  %120 = load i8*, i8** %next_free123, align 8
  %121 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base124 = getelementptr inbounds %struct.obstack, %struct.obstack* %121, i32 0, i32 2
  store i8* %120, i8** %object_base124, align 8
  %122 = load i8*, i8** %value, align 8
  store i8* %122, i8** %tmp125
  %123 = load i8*, i8** %tmp125
  store i8* %123, i8** %tmp
  %124 = load i8*, i8** %tmp
  %125 = bitcast i8* %124 to %struct.bitmap_head_def*
  %call126 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %125)
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %global_live_at_start127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %126, i32 0, i32 8
  store %struct.bitmap_head_def* %call126, %struct.bitmap_head_def** %global_live_at_start127, align 8
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h129, align 8
  %127 = load %struct.obstack*, %struct.obstack** %__h129, align 8
  store %struct.obstack* %127, %struct.obstack** %__o131, align 8
  store i32 24, i32* %__len133, align 4
  %128 = load %struct.obstack*, %struct.obstack** %__o131, align 8
  %chunk_limit134 = getelementptr inbounds %struct.obstack, %struct.obstack* %128, i32 0, i32 4
  %129 = load i8*, i8** %chunk_limit134, align 8
  %130 = load %struct.obstack*, %struct.obstack** %__o131, align 8
  %next_free135 = getelementptr inbounds %struct.obstack, %struct.obstack* %130, i32 0, i32 3
  %131 = load i8*, i8** %next_free135, align 8
  %sub.ptr.lhs.cast136 = ptrtoint i8* %129 to i64
  %sub.ptr.rhs.cast137 = ptrtoint i8* %131 to i64
  %sub.ptr.sub138 = sub i64 %sub.ptr.lhs.cast136, %sub.ptr.rhs.cast137
  %132 = load i32, i32* %__len133, align 4
  %conv139 = sext i32 %132 to i64
  %cmp140 = icmp slt i64 %sub.ptr.sub138, %conv139
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.122
  %133 = load %struct.obstack*, %struct.obstack** %__o131, align 8
  %134 = load i32, i32* %__len133, align 4
  call void @_obstack_newchunk(%struct.obstack* %133, i32 %134)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.122
  %135 = load i32, i32* %__len133, align 4
  %136 = load %struct.obstack*, %struct.obstack** %__o131, align 8
  %next_free144 = getelementptr inbounds %struct.obstack, %struct.obstack* %136, i32 0, i32 3
  %137 = load i8*, i8** %next_free144, align 8
  %idx.ext145 = sext i32 %135 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %137, i64 %idx.ext145
  store i8* %add.ptr146, i8** %next_free144, align 8
  %138 = load %struct.obstack*, %struct.obstack** %__h129, align 8
  store %struct.obstack* %138, %struct.obstack** %__o1149, align 8
  %139 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %object_base152 = getelementptr inbounds %struct.obstack, %struct.obstack* %139, i32 0, i32 2
  %140 = load i8*, i8** %object_base152, align 8
  store i8* %140, i8** %value151, align 8
  %141 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %next_free153 = getelementptr inbounds %struct.obstack, %struct.obstack* %141, i32 0, i32 3
  %142 = load i8*, i8** %next_free153, align 8
  %143 = load i8*, i8** %value151, align 8
  %cmp154 = icmp eq i8* %142, %143
  br i1 %cmp154, label %if.then.156, label %if.end.161

if.then.156:                                      ; preds = %if.end.143
  %144 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %maybe_empty_object157 = getelementptr inbounds %struct.obstack, %struct.obstack* %144, i32 0, i32 10
  %bf.load158 = load i8, i8* %maybe_empty_object157, align 8
  %bf.clear159 = and i8 %bf.load158, -3
  %bf.set160 = or i8 %bf.clear159, 2
  store i8 %bf.set160, i8* %maybe_empty_object157, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.156, %if.end.143
  %145 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %next_free162 = getelementptr inbounds %struct.obstack, %struct.obstack* %145, i32 0, i32 3
  %146 = load i8*, i8** %next_free162, align 8
  %sub.ptr.lhs.cast163 = ptrtoint i8* %146 to i64
  %sub.ptr.sub164 = sub i64 %sub.ptr.lhs.cast163, 0
  %147 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %alignment_mask165 = getelementptr inbounds %struct.obstack, %struct.obstack* %147, i32 0, i32 6
  %148 = load i32, i32* %alignment_mask165, align 4
  %conv166 = sext i32 %148 to i64
  %add167 = add nsw i64 %sub.ptr.sub164, %conv166
  %149 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %alignment_mask168 = getelementptr inbounds %struct.obstack, %struct.obstack* %149, i32 0, i32 6
  %150 = load i32, i32* %alignment_mask168, align 4
  %neg169 = xor i32 %150, -1
  %conv170 = sext i32 %neg169 to i64
  %and171 = and i64 %add167, %conv170
  %add.ptr172 = getelementptr inbounds i8, i8* null, i64 %and171
  %151 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %next_free173 = getelementptr inbounds %struct.obstack, %struct.obstack* %151, i32 0, i32 3
  store i8* %add.ptr172, i8** %next_free173, align 8
  %152 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %next_free174 = getelementptr inbounds %struct.obstack, %struct.obstack* %152, i32 0, i32 3
  %153 = load i8*, i8** %next_free174, align 8
  %154 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %chunk175 = getelementptr inbounds %struct.obstack, %struct.obstack* %154, i32 0, i32 1
  %155 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk175, align 8
  %156 = bitcast %struct._obstack_chunk* %155 to i8*
  %sub.ptr.lhs.cast176 = ptrtoint i8* %153 to i64
  %sub.ptr.rhs.cast177 = ptrtoint i8* %156 to i64
  %sub.ptr.sub178 = sub i64 %sub.ptr.lhs.cast176, %sub.ptr.rhs.cast177
  %157 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %chunk_limit179 = getelementptr inbounds %struct.obstack, %struct.obstack* %157, i32 0, i32 4
  %158 = load i8*, i8** %chunk_limit179, align 8
  %159 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %chunk180 = getelementptr inbounds %struct.obstack, %struct.obstack* %159, i32 0, i32 1
  %160 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk180, align 8
  %161 = bitcast %struct._obstack_chunk* %160 to i8*
  %sub.ptr.lhs.cast181 = ptrtoint i8* %158 to i64
  %sub.ptr.rhs.cast182 = ptrtoint i8* %161 to i64
  %sub.ptr.sub183 = sub i64 %sub.ptr.lhs.cast181, %sub.ptr.rhs.cast182
  %cmp184 = icmp sgt i64 %sub.ptr.sub178, %sub.ptr.sub183
  br i1 %cmp184, label %if.then.186, label %if.end.189

if.then.186:                                      ; preds = %if.end.161
  %162 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %chunk_limit187 = getelementptr inbounds %struct.obstack, %struct.obstack* %162, i32 0, i32 4
  %163 = load i8*, i8** %chunk_limit187, align 8
  %164 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %next_free188 = getelementptr inbounds %struct.obstack, %struct.obstack* %164, i32 0, i32 3
  store i8* %163, i8** %next_free188, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.186, %if.end.161
  %165 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %next_free190 = getelementptr inbounds %struct.obstack, %struct.obstack* %165, i32 0, i32 3
  %166 = load i8*, i8** %next_free190, align 8
  %167 = load %struct.obstack*, %struct.obstack** %__o1149, align 8
  %object_base191 = getelementptr inbounds %struct.obstack, %struct.obstack* %167, i32 0, i32 2
  store i8* %166, i8** %object_base191, align 8
  %168 = load i8*, i8** %value151, align 8
  store i8* %168, i8** %tmp192
  %169 = load i8*, i8** %tmp192
  store i8* %169, i8** %tmp147
  %170 = load i8*, i8** %tmp147
  %171 = bitcast i8* %170 to %struct.bitmap_head_def*
  %call193 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %171)
  %172 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %172, i32 0, i32 9
  store %struct.bitmap_head_def* %call193, %struct.bitmap_head_def** %global_live_at_end, align 8
  %173 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %global_live_at_start194 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %173, i32 0, i32 8
  %174 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start194, align 8
  %175 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %global_live_at_start195 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %175, i32 0, i32 8
  %176 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start195, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %174, %struct.bitmap_head_def* %176)
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %global_live_at_end196 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %177, i32 0, i32 9
  %178 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end196, align 8
  %179 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %global_live_at_start197 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %179, i32 0, i32 8
  %180 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start197, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %178, %struct.bitmap_head_def* %180)
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.189, %if.end.67
  %181 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src199 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %181, i32 0, i32 2
  %182 = load %struct.basic_block_def*, %struct.basic_block_def** %src199, align 8
  %183 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %call200 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %182, %struct.basic_block_def* %183, i32 1)
  store %struct.edge_def* %call200, %struct.edge_def** %new_edge, align 8
  %184 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %probability201 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %184, i32 0, i32 7
  %185 = load i32, i32* %probability201, align 4
  %186 = load %struct.edge_def*, %struct.edge_def** %new_edge, align 8
  %probability202 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %186, i32 0, i32 7
  store i32 %185, i32* %probability202, align 4
  %187 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %count203 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %187, i32 0, i32 8
  %188 = load i64, i64* %count203, align 8
  %189 = load %struct.edge_def*, %struct.edge_def** %new_edge, align 8
  %count204 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %189, i32 0, i32 8
  store i64 %188, i64* %count204, align 8
  %190 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %191 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  call void @redirect_edge_pred(%struct.edge_def* %190, %struct.basic_block_def* %191)
  %192 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %probability205 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %192, i32 0, i32 7
  store i32 10000, i32* %probability205, align 4
  %193 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  store %struct.basic_block_def* %193, %struct.basic_block_def** %new_bb, align 8
  br label %if.end.208

if.else.206:                                      ; preds = %if.end.19
  %194 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src207 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %194, i32 0, i32 2
  %195 = load %struct.basic_block_def*, %struct.basic_block_def** %src207, align 8
  store %struct.basic_block_def* %195, %struct.basic_block_def** %jump_block, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.206, %if.end.198
  %196 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags209 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %196, i32 0, i32 6
  %197 = load i32, i32* %flags209, align 4
  %and210 = and i32 %197, -2
  store i32 %and210, i32* %flags209, align 4
  %198 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp211 = icmp eq %struct.basic_block_def* %198, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp211, label %if.then.213, label %if.else.222

if.then.213:                                      ; preds = %if.end.208
  %call214 = call i32 @ix86_can_use_return_insn_p()
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.then.216, label %if.else.220

if.then.216:                                      ; preds = %if.then.213
  %call217 = call %struct.rtx_def* @gen_return()
  %199 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %end218 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %199, i32 0, i32 1
  %200 = load %struct.rtx_def*, %struct.rtx_def** %end218, align 8
  %call219 = call %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %call217, %struct.rtx_def* %200)
  br label %if.end.221

if.else.220:                                      ; preds = %if.then.213
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1007, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.force_nonfallthru_and_redirect, i32 0, i32 0)) #4
  unreachable

if.end.221:                                       ; preds = %if.then.216
  br label %if.end.234

if.else.222:                                      ; preds = %if.end.208
  %201 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call224 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %201)
  store %struct.rtx_def* %call224, %struct.rtx_def** %label, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call225 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %202)
  %203 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %end226 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %203, i32 0, i32 1
  %204 = load %struct.rtx_def*, %struct.rtx_def** %end226, align 8
  %call227 = call %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %call225, %struct.rtx_def* %204)
  %205 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %206 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %end228 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %206, i32 0, i32 1
  %207 = load %struct.rtx_def*, %struct.rtx_def** %end228, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %207, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 7
  %rtx231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtx_def**
  store %struct.rtx_def* %205, %struct.rtx_def** %rtx231, align 8
  %208 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %208, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx233 to i32*
  %209 = load i32, i32* %rtint, align 4
  %inc = add nsw i32 %209, 1
  store i32 %inc, i32* %rtint, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.222, %if.end.221
  %210 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %end235 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %210, i32 0, i32 1
  %211 = load %struct.rtx_def*, %struct.rtx_def** %end235, align 8
  %call236 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %211)
  %212 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %213 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call237 = call %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %212, %struct.basic_block_def* %213)
  %214 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  ret %struct.basic_block_def* %214
}

; Function Attrs: nounwind uwtable
define %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %e, %struct.basic_block_def* %target) #0 {
entry:
  %retval = alloca %struct.basic_block_def*, align 8
  %e.addr = alloca %struct.edge_def*, align 8
  %target.addr = alloca %struct.basic_block_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %target, %struct.basic_block_def** %target.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call = call zeroext i1 @redirect_edge_and_branch(%struct.edge_def* %0, %struct.basic_block_def* %1)
  br i1 %call, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 3
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.basic_block_def* null, %struct.basic_block_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %call1 = call %struct.basic_block_def* @force_nonfallthru_and_redirect(%struct.edge_def* %5, %struct.basic_block_def* %6)
  store %struct.basic_block_def* %call1, %struct.basic_block_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %retval
  ret %struct.basic_block_def* %7
}

; Function Attrs: nounwind uwtable
define void @tidy_fallthru_edge(%struct.edge_def* %e, %struct.basic_block_def* %b, %struct.basic_block_def* %c) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %b.addr = alloca %struct.basic_block_def*, align 8
  %c.addr = alloca %struct.basic_block_def*, align 8
  %q = alloca %struct.rtx_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  store %struct.basic_block_def* %c, %struct.basic_block_def** %c.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %1)
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call1 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %4)
  %cmp = icmp ne %struct.rtx_def* %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end2, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %q, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 33
  br i1 %cmp3, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %call4 = call i32 @onlyjump_p(%struct.rtx_def* %9)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %land.lhs.true.5, label %if.end.24

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %call6 = call i32 @any_uncondjump_p(%struct.rtx_def* %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 5
  %12 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %13 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %cmp8 = icmp eq %struct.edge_def* %12, %13
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.24

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %14 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 1
  %15 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp10 = icmp eq %struct.edge_def* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %land.lhs.true.9, %land.lhs.true.5
  %16 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.11
  %18 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load15 = load i32, i32* %19, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 37
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %20 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %21 = load i32, i32* %rtint, align 4
  %cmp20 = icmp sge i32 %21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %q, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.24

if.end.24:                                        ; preds = %while.end, %land.lhs.true.9, %lor.lhs.false, %land.lhs.true, %if.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %head25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 0
  %27 = load %struct.rtx_def*, %struct.rtx_def** %head25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 1
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %cmp29 = icmp ne %struct.rtx_def* %25, %28
  br i1 %cmp29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.24
  %29 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 2
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %head34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 0
  %32 = load %struct.rtx_def*, %struct.rtx_def** %head34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  call void @delete_insn_chain(%struct.rtx_def* %30, %struct.rtx_def* %33)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.30, %if.end.24
  %34 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 6
  %35 = load i32, i32* %flags, align 4
  %or = or i32 %35, 1
  store i32 %or, i32* %flags, align 4
  br label %return

return:                                           ; preds = %if.end.38, %if.then
  ret void
}

declare %struct.rtx_def* @next_real_insn(%struct.rtx_def*) #1

declare i32 @onlyjump_p(%struct.rtx_def*) #1

declare i32 @any_uncondjump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @tidy_fallthru_edges() #0 {
entry:
  %i = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %c = alloca %struct.basic_block_def*, align 8
  %s = alloca %struct.edge_def*, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %b, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data2 to [1 x %struct.basic_block_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom1
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx4, align 8
  store %struct.basic_block_def* %7, %struct.basic_block_def** %c, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 5
  %9 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %9, %struct.edge_def** %s, align 8
  %cmp5 = icmp ne %struct.edge_def* %9, null
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 6
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 14
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %12 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 1
  %13 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp7 = icmp eq %struct.edge_def* %13, null
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %14 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 3
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %cmp9 = icmp eq %struct.basic_block_def* %15, %16
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 1
  %18 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load = load i32, i32* %19, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp11 = icmp ne i32 %bf.clear, 33
  br i1 %cmp11, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %end12, align 8
  %call = call i32 @onlyjump_p(%struct.rtx_def* %21)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.10
  %22 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  call void @tidy_fallthru_edge(%struct.edge_def* %22, %struct.basic_block_def* %23, %struct.basic_block_def* %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.basic_block_def* @split_edge(%struct.edge_def* %edge_in) #0 {
entry:
  %edge_in.addr = alloca %struct.edge_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %edge_out = alloca %struct.edge_def*, align 8
  %before = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp104 = alloca i8*, align 8
  %__h108 = alloca %struct.obstack*, align 8
  %__o110 = alloca %struct.obstack*, align 8
  %__len112 = alloca i32, align 4
  %tmp126 = alloca i8*, align 8
  %__o1128 = alloca %struct.obstack*, align 8
  %value130 = alloca i8*, align 8
  %tmp171 = alloca i8*, align 8
  store %struct.edge_def* %edge_in, %struct.edge_def** %edge_in.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 6
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.split_edge, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %flags1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 6
  %3 = load i32, i32* %flags1, align 4
  %and2 = and i32 %3, 1
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  %4 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 3
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 4
  %6 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 6
  %9 = load i32, i32* %flags5, align 4
  %and6 = and i32 %9, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %10 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 0
  %11 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %11, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool10 = icmp ne %struct.edge_def* %12, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %call = call %struct.basic_block_def* @force_nonfallthru(%struct.edge_def* %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %14 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 3
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest14, align 8
  %cmp15 = icmp ne %struct.basic_block_def* %15, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.13
  %16 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 3
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %dest16, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool17 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %20 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 3
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest19, align 8
  %head20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 0
  %22 = load %struct.rtx_def*, %struct.rtx_def** %head20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load = load i32, i32* %24, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp24 = icmp eq i32 %bf.clear, 37
  br i1 %cmp24, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %land.lhs.true.18
  %25 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 3
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %dest26, align 8
  %head27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 0
  %27 = load %struct.rtx_def*, %struct.rtx_def** %head27, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 1
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx32 to i32*
  %29 = load i32, i32* %rtint, align 4
  %cmp33 = icmp eq i32 %29, -96
  br i1 %cmp33, label %land.lhs.true.34, label %if.else

land.lhs.true.34:                                 ; preds = %land.lhs.true.25
  %30 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 3
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %dest35, align 8
  %32 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 2
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %call36 = call zeroext i1 @back_edge_of_syntactic_loop_p(%struct.basic_block_def* %31, %struct.basic_block_def* %33)
  br i1 %call36, label %if.else, label %if.then.37

if.then.37:                                       ; preds = %land.lhs.true.34
  %34 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest38 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 3
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %dest38, align 8
  %head39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 0
  %36 = load %struct.rtx_def*, %struct.rtx_def** %head39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %before, align 8
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true.34, %land.lhs.true.25, %land.lhs.true.18, %land.lhs.true, %if.end.13
  %38 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 3
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %dest43, align 8
  %cmp44 = icmp ne %struct.basic_block_def* %39, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp44, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.else
  %40 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest46 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i32 0, i32 3
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %dest46, align 8
  %head47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 0
  %42 = load %struct.rtx_def*, %struct.rtx_def** %head47, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %before, align 8
  br label %if.end.49

if.else.48:                                       ; preds = %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %before, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.then.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.37
  %43 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i32 0, i32 3
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %dest51, align 8
  %cmp52 = icmp eq %struct.basic_block_def* %44, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.50
  %45 = load i32, i32* @n_basic_blocks, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.50
  %46 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest53 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i32 0, i32 3
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %dest53, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 11
  %48 = load i32, i32* %index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %45, %cond.true ], [ %48, %cond.false ]
  %49 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %call54 = call %struct.basic_block_def* @create_basic_block(i32 %cond, %struct.rtx_def* %49, %struct.rtx_def* null)
  store %struct.basic_block_def* %call54, %struct.basic_block_def** %bb, align 8
  %50 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i32 0, i32 8
  %51 = load i64, i64* %count, align 8
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %count55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 13
  store i64 %51, i64* %count55, align 8
  %53 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %src56 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 2
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %src56, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 14
  %55 = load i32, i32* %frequency, align 4
  %56 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %56, i32 0, i32 7
  %57 = load i32, i32* %probability, align 4
  %mul = mul nsw i32 %55, %57
  %add = add nsw i32 %mul, 5000
  %div = sdiv i32 %add, 10000
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %frequency57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 14
  store i32 %div, i32* %frequency57, align 4
  %59 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest58 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i32 0, i32 3
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %dest58, align 8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 12
  %61 = load i32, i32* %loop_depth, align 4
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %loop_depth59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i32 0, i32 12
  store i32 %61, i32* %loop_depth59, align 4
  %63 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 3
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %dest60, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 8
  %65 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %tobool61 = icmp ne %struct.bitmap_head_def* %65, null
  br i1 %tobool61, label %if.then.62, label %if.end.179

if.then.62:                                       ; preds = %cond.end
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h, align 8
  %66 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %66, %struct.obstack** %__o, align 8
  store i32 24, i32* %__len, align 4
  %67 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 4
  %68 = load i8*, i8** %chunk_limit, align 8
  %69 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 3
  %70 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %70 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %71 = load i32, i32* %__len, align 4
  %conv = sext i32 %71 to i64
  %cmp63 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.62
  %72 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %73 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %72, i32 %73)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.62
  %74 = load i32, i32* %__len, align 4
  %75 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free67 = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 3
  %76 = load i8*, i8** %next_free67, align 8
  %idx.ext = sext i32 %74 to i64
  %add.ptr = getelementptr inbounds i8, i8* %76, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free67, align 8
  %77 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %77, %struct.obstack** %__o1, align 8
  %78 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %78, i32 0, i32 2
  %79 = load i8*, i8** %object_base, align 8
  store i8* %79, i8** %value, align 8
  %80 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free70 = getelementptr inbounds %struct.obstack, %struct.obstack* %80, i32 0, i32 3
  %81 = load i8*, i8** %next_free70, align 8
  %82 = load i8*, i8** %value, align 8
  %cmp71 = icmp eq i8* %81, %82
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.end.66
  %83 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %83, i32 0, i32 10
  %bf.load74 = load i8, i8* %maybe_empty_object, align 8
  %bf.clear75 = and i8 %bf.load74, -3
  %bf.set = or i8 %bf.clear75, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.end.66
  %84 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free77 = getelementptr inbounds %struct.obstack, %struct.obstack* %84, i32 0, i32 3
  %85 = load i8*, i8** %next_free77, align 8
  %sub.ptr.lhs.cast78 = ptrtoint i8* %85 to i64
  %sub.ptr.sub79 = sub i64 %sub.ptr.lhs.cast78, 0
  %86 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %86, i32 0, i32 6
  %87 = load i32, i32* %alignment_mask, align 4
  %conv80 = sext i32 %87 to i64
  %add81 = add nsw i64 %sub.ptr.sub79, %conv80
  %88 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask82 = getelementptr inbounds %struct.obstack, %struct.obstack* %88, i32 0, i32 6
  %89 = load i32, i32* %alignment_mask82, align 4
  %neg = xor i32 %89, -1
  %conv83 = sext i32 %neg to i64
  %and84 = and i64 %add81, %conv83
  %add.ptr85 = getelementptr inbounds i8, i8* null, i64 %and84
  %90 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free86 = getelementptr inbounds %struct.obstack, %struct.obstack* %90, i32 0, i32 3
  store i8* %add.ptr85, i8** %next_free86, align 8
  %91 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free87 = getelementptr inbounds %struct.obstack, %struct.obstack* %91, i32 0, i32 3
  %92 = load i8*, i8** %next_free87, align 8
  %93 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 1
  %94 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %95 = bitcast %struct._obstack_chunk* %94 to i8*
  %sub.ptr.lhs.cast88 = ptrtoint i8* %92 to i64
  %sub.ptr.rhs.cast89 = ptrtoint i8* %95 to i64
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %96 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit91 = getelementptr inbounds %struct.obstack, %struct.obstack* %96, i32 0, i32 4
  %97 = load i8*, i8** %chunk_limit91, align 8
  %98 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk92 = getelementptr inbounds %struct.obstack, %struct.obstack* %98, i32 0, i32 1
  %99 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk92, align 8
  %100 = bitcast %struct._obstack_chunk* %99 to i8*
  %sub.ptr.lhs.cast93 = ptrtoint i8* %97 to i64
  %sub.ptr.rhs.cast94 = ptrtoint i8* %100 to i64
  %sub.ptr.sub95 = sub i64 %sub.ptr.lhs.cast93, %sub.ptr.rhs.cast94
  %cmp96 = icmp sgt i64 %sub.ptr.sub90, %sub.ptr.sub95
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.end.76
  %101 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit99 = getelementptr inbounds %struct.obstack, %struct.obstack* %101, i32 0, i32 4
  %102 = load i8*, i8** %chunk_limit99, align 8
  %103 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free100 = getelementptr inbounds %struct.obstack, %struct.obstack* %103, i32 0, i32 3
  store i8* %102, i8** %next_free100, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.end.76
  %104 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free102 = getelementptr inbounds %struct.obstack, %struct.obstack* %104, i32 0, i32 3
  %105 = load i8*, i8** %next_free102, align 8
  %106 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base103 = getelementptr inbounds %struct.obstack, %struct.obstack* %106, i32 0, i32 2
  store i8* %105, i8** %object_base103, align 8
  %107 = load i8*, i8** %value, align 8
  store i8* %107, i8** %tmp104
  %108 = load i8*, i8** %tmp104
  store i8* %108, i8** %tmp
  %109 = load i8*, i8** %tmp
  %110 = bitcast i8* %109 to %struct.bitmap_head_def*
  %call105 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %110)
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_start106 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %111, i32 0, i32 8
  store %struct.bitmap_head_def* %call105, %struct.bitmap_head_def** %global_live_at_start106, align 8
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h108, align 8
  %112 = load %struct.obstack*, %struct.obstack** %__h108, align 8
  store %struct.obstack* %112, %struct.obstack** %__o110, align 8
  store i32 24, i32* %__len112, align 4
  %113 = load %struct.obstack*, %struct.obstack** %__o110, align 8
  %chunk_limit113 = getelementptr inbounds %struct.obstack, %struct.obstack* %113, i32 0, i32 4
  %114 = load i8*, i8** %chunk_limit113, align 8
  %115 = load %struct.obstack*, %struct.obstack** %__o110, align 8
  %next_free114 = getelementptr inbounds %struct.obstack, %struct.obstack* %115, i32 0, i32 3
  %116 = load i8*, i8** %next_free114, align 8
  %sub.ptr.lhs.cast115 = ptrtoint i8* %114 to i64
  %sub.ptr.rhs.cast116 = ptrtoint i8* %116 to i64
  %sub.ptr.sub117 = sub i64 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  %117 = load i32, i32* %__len112, align 4
  %conv118 = sext i32 %117 to i64
  %cmp119 = icmp slt i64 %sub.ptr.sub117, %conv118
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.101
  %118 = load %struct.obstack*, %struct.obstack** %__o110, align 8
  %119 = load i32, i32* %__len112, align 4
  call void @_obstack_newchunk(%struct.obstack* %118, i32 %119)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.101
  %120 = load i32, i32* %__len112, align 4
  %121 = load %struct.obstack*, %struct.obstack** %__o110, align 8
  %next_free123 = getelementptr inbounds %struct.obstack, %struct.obstack* %121, i32 0, i32 3
  %122 = load i8*, i8** %next_free123, align 8
  %idx.ext124 = sext i32 %120 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %122, i64 %idx.ext124
  store i8* %add.ptr125, i8** %next_free123, align 8
  %123 = load %struct.obstack*, %struct.obstack** %__h108, align 8
  store %struct.obstack* %123, %struct.obstack** %__o1128, align 8
  %124 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %object_base131 = getelementptr inbounds %struct.obstack, %struct.obstack* %124, i32 0, i32 2
  %125 = load i8*, i8** %object_base131, align 8
  store i8* %125, i8** %value130, align 8
  %126 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %next_free132 = getelementptr inbounds %struct.obstack, %struct.obstack* %126, i32 0, i32 3
  %127 = load i8*, i8** %next_free132, align 8
  %128 = load i8*, i8** %value130, align 8
  %cmp133 = icmp eq i8* %127, %128
  br i1 %cmp133, label %if.then.135, label %if.end.140

if.then.135:                                      ; preds = %if.end.122
  %129 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %maybe_empty_object136 = getelementptr inbounds %struct.obstack, %struct.obstack* %129, i32 0, i32 10
  %bf.load137 = load i8, i8* %maybe_empty_object136, align 8
  %bf.clear138 = and i8 %bf.load137, -3
  %bf.set139 = or i8 %bf.clear138, 2
  store i8 %bf.set139, i8* %maybe_empty_object136, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.135, %if.end.122
  %130 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %next_free141 = getelementptr inbounds %struct.obstack, %struct.obstack* %130, i32 0, i32 3
  %131 = load i8*, i8** %next_free141, align 8
  %sub.ptr.lhs.cast142 = ptrtoint i8* %131 to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast142, 0
  %132 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %alignment_mask144 = getelementptr inbounds %struct.obstack, %struct.obstack* %132, i32 0, i32 6
  %133 = load i32, i32* %alignment_mask144, align 4
  %conv145 = sext i32 %133 to i64
  %add146 = add nsw i64 %sub.ptr.sub143, %conv145
  %134 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %alignment_mask147 = getelementptr inbounds %struct.obstack, %struct.obstack* %134, i32 0, i32 6
  %135 = load i32, i32* %alignment_mask147, align 4
  %neg148 = xor i32 %135, -1
  %conv149 = sext i32 %neg148 to i64
  %and150 = and i64 %add146, %conv149
  %add.ptr151 = getelementptr inbounds i8, i8* null, i64 %and150
  %136 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %next_free152 = getelementptr inbounds %struct.obstack, %struct.obstack* %136, i32 0, i32 3
  store i8* %add.ptr151, i8** %next_free152, align 8
  %137 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %next_free153 = getelementptr inbounds %struct.obstack, %struct.obstack* %137, i32 0, i32 3
  %138 = load i8*, i8** %next_free153, align 8
  %139 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %chunk154 = getelementptr inbounds %struct.obstack, %struct.obstack* %139, i32 0, i32 1
  %140 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk154, align 8
  %141 = bitcast %struct._obstack_chunk* %140 to i8*
  %sub.ptr.lhs.cast155 = ptrtoint i8* %138 to i64
  %sub.ptr.rhs.cast156 = ptrtoint i8* %141 to i64
  %sub.ptr.sub157 = sub i64 %sub.ptr.lhs.cast155, %sub.ptr.rhs.cast156
  %142 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %chunk_limit158 = getelementptr inbounds %struct.obstack, %struct.obstack* %142, i32 0, i32 4
  %143 = load i8*, i8** %chunk_limit158, align 8
  %144 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %chunk159 = getelementptr inbounds %struct.obstack, %struct.obstack* %144, i32 0, i32 1
  %145 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk159, align 8
  %146 = bitcast %struct._obstack_chunk* %145 to i8*
  %sub.ptr.lhs.cast160 = ptrtoint i8* %143 to i64
  %sub.ptr.rhs.cast161 = ptrtoint i8* %146 to i64
  %sub.ptr.sub162 = sub i64 %sub.ptr.lhs.cast160, %sub.ptr.rhs.cast161
  %cmp163 = icmp sgt i64 %sub.ptr.sub157, %sub.ptr.sub162
  br i1 %cmp163, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %if.end.140
  %147 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %chunk_limit166 = getelementptr inbounds %struct.obstack, %struct.obstack* %147, i32 0, i32 4
  %148 = load i8*, i8** %chunk_limit166, align 8
  %149 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %next_free167 = getelementptr inbounds %struct.obstack, %struct.obstack* %149, i32 0, i32 3
  store i8* %148, i8** %next_free167, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %if.end.140
  %150 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %next_free169 = getelementptr inbounds %struct.obstack, %struct.obstack* %150, i32 0, i32 3
  %151 = load i8*, i8** %next_free169, align 8
  %152 = load %struct.obstack*, %struct.obstack** %__o1128, align 8
  %object_base170 = getelementptr inbounds %struct.obstack, %struct.obstack* %152, i32 0, i32 2
  store i8* %151, i8** %object_base170, align 8
  %153 = load i8*, i8** %value130, align 8
  store i8* %153, i8** %tmp171
  %154 = load i8*, i8** %tmp171
  store i8* %154, i8** %tmp126
  %155 = load i8*, i8** %tmp126
  %156 = bitcast i8* %155 to %struct.bitmap_head_def*
  %call172 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %156)
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %157, i32 0, i32 9
  store %struct.bitmap_head_def* %call172, %struct.bitmap_head_def** %global_live_at_end, align 8
  %158 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_start173 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %158, i32 0, i32 8
  %159 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start173, align 8
  %160 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest174 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %160, i32 0, i32 3
  %161 = load %struct.basic_block_def*, %struct.basic_block_def** %dest174, align 8
  %global_live_at_start175 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %161, i32 0, i32 8
  %162 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start175, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %159, %struct.bitmap_head_def* %162)
  %163 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_end176 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %163, i32 0, i32 9
  %164 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end176, align 8
  %165 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest177 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %165, i32 0, i32 3
  %166 = load %struct.basic_block_def*, %struct.basic_block_def** %dest177, align 8
  %global_live_at_start178 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %166, i32 0, i32 8
  %167 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start178, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %164, %struct.bitmap_head_def* %167)
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.168, %cond.end
  %168 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %169 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %dest180 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %169, i32 0, i32 3
  %170 = load %struct.basic_block_def*, %struct.basic_block_def** %dest180, align 8
  %call181 = call %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %168, %struct.basic_block_def* %170, i32 1)
  store %struct.edge_def* %call181, %struct.edge_def** %edge_out, align 8
  %171 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %flags182 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %171, i32 0, i32 6
  %172 = load i32, i32* %flags182, align 4
  %and183 = and i32 %172, 1
  %cmp184 = icmp eq i32 %and183, 0
  br i1 %cmp184, label %if.then.186, label %if.else.190

if.then.186:                                      ; preds = %if.end.179
  %173 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %174 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call187 = call zeroext i1 @redirect_edge_and_branch(%struct.edge_def* %173, %struct.basic_block_def* %174)
  br i1 %call187, label %if.end.189, label %if.then.188

if.then.188:                                      ; preds = %if.then.186
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1260, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.split_edge, i32 0, i32 0)) #4
  unreachable

if.end.189:                                       ; preds = %if.then.186
  br label %if.end.191

if.else.190:                                      ; preds = %if.end.179
  %175 = load %struct.edge_def*, %struct.edge_def** %edge_in.addr, align 8
  %176 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @redirect_edge_succ(%struct.edge_def* %175, %struct.basic_block_def* %176)
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.190, %if.end.189
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  ret %struct.basic_block_def* %177
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @back_edge_of_syntactic_loop_p(%struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2) #0 {
entry:
  %retval = alloca i1, align 1
  %bb1.addr = alloca %struct.basic_block_def*, align 8
  %bb2.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %count = alloca i32, align 4
  store %struct.basic_block_def* %bb1, %struct.basic_block_def** %bb1.addr, align 8
  store %struct.basic_block_def* %bb2, %struct.basic_block_def** %bb2.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 11
  %3 = load i32, i32* %index1, align 4
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 11
  %5 = load i32, i32* %index2, align 4
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index3, align 4
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp7 = icmp ne %struct.rtx_def* %10, %12
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, i32* %count, align 4
  %cmp8 = icmp sge i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp9 = icmp eq i32 %bf.clear, 37
  br i1 %cmp9, label %if.then.10, label %if.end.21

if.then.10:                                       ; preds = %for.body
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %18 = load i32, i32* %rtint, align 4
  %cmp11 = icmp eq i32 %18, -96
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.then.10
  %19 = load i32, i32* %count, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.20

if.else.13:                                       ; preds = %if.then.10
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 4
  %rtint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %21 = load i32, i32* %rtint16, align 4
  %cmp17 = icmp eq i32 %21, -95
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.13
  %22 = load i32, i32* %count, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %count, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i32, i32* %count, align 4
  %cmp24 = icmp sge i32 %25, 0
  store i1 %cmp24, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %26 = load i1, i1* %retval
  ret i1 %26
}

declare void @redirect_edge_succ(%struct.edge_def*, %struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define void @insert_insn_on_edge(%struct.rtx_def* %pattern, %struct.edge_def* %e) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %e.addr = alloca %struct.edge_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 6
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 2
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 5
  %4 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 1
  %5 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool1 = icmp ne %struct.edge_def* %5, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 3
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 4
  %8 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 0
  %9 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool3 = icmp ne %struct.edge_def* %9, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1280, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.insert_insn_on_edge, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %10 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %insns = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %cmp = icmp eq %struct.rtx_def* %11, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  call void @start_sequence()
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %12 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %insns5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insns5, align 8
  call void @push_to_sequence(%struct.rtx_def* %13)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %14)
  %call7 = call %struct.rtx_def* @get_insns()
  %15 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %insns8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 4
  store %struct.rtx_def* %call7, %struct.rtx_def** %insns8, align 8
  call void @end_sequence()
  ret void
}

declare void @start_sequence() #1

declare void @push_to_sequence(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @get_insns() #1

declare void @end_sequence() #1

; Function Attrs: nounwind uwtable
define void @commit_edge_insertions() #0 {
entry:
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %next = alloca %struct.edge_def*, align 8
  store i32 -1, i32* %i, align 4
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %bb, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.3
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 5
  %1 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %1, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 1
  %4 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %4, %struct.edge_def** %next, align 8
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %insns = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %tobool1 = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @commit_one_edge_insertion(%struct.edge_def* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.edge_def*, %struct.edge_def** %next, align 8
  store %struct.edge_def* %8, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  %10 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp sge i32 %inc, %10
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.end
  br label %while.end

if.end.3:                                         ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %13, %struct.basic_block_def** %bb, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @commit_one_edge_insertion(%struct.edge_def* %e) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %before = alloca %struct.rtx_def*, align 8
  %after = alloca %struct.rtx_def*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %before, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %after, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %insns3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insns3, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insns, align 8
  %2 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %insns4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 4
  store %struct.rtx_def* null, %struct.rtx_def** %insns4, align 8
  %3 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 3
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 4
  %5 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 0
  %6 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %cmp = icmp eq %struct.edge_def* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 3
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest5, align 8
  %cmp6 = icmp ne %struct.basic_block_def* %8, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp6, label %if.then, label %if.else.29

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest7 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 3
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %dest7, align 8
  store %struct.basic_block_def* %10, %struct.basic_block_def** %bb, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %tmp, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp8 = icmp eq i32 %bf.clear, 36
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %tmp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %17 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load10 = load i32, i32* %18, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 37
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.21

land.lhs.true.13:                                 ; preds = %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %20 = load i32, i32* %rtint, align 4
  %cmp16 = icmp eq i32 %20, -80
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %land.lhs.true.13
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 2
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %tmp, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %land.lhs.true.13, %if.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 0
  %25 = load %struct.rtx_def*, %struct.rtx_def** %head22, align 8
  %cmp23 = icmp eq %struct.rtx_def* %23, %25
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.21
  %26 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %before, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end.21
  %27 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %after, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.24
  br label %if.end.70

if.else.29:                                       ; preds = %land.lhs.true, %entry
  %29 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 6
  %30 = load i32, i32* %flags, align 4
  %and = and i32 %30, 2
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.67

land.lhs.true.31:                                 ; preds = %if.else.29
  %31 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 2
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 5
  %33 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 1
  %34 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp32 = icmp eq %struct.edge_def* %34, null
  br i1 %cmp32, label %land.lhs.true.33, label %if.else.67

land.lhs.true.33:                                 ; preds = %land.lhs.true.31
  %35 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i32 0, i32 2
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %src34, align 8
  %cmp35 = icmp ne %struct.basic_block_def* %36, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp35, label %if.then.36, label %if.else.67

if.then.36:                                       ; preds = %land.lhs.true.33
  %37 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i32 0, i32 2
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %src37, align 8
  store %struct.basic_block_def* %38, %struct.basic_block_def** %bb, align 8
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 1
  %40 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load38 = load i32, i32* %41, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 33
  br i1 %cmp40, label %if.then.41, label %if.else.59

if.then.41:                                       ; preds = %if.then.36
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 1
  %43 = load %struct.rtx_def*, %struct.rtx_def** %end42, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %before, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.41
  %44 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load46 = load i32, i32* %46, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 37
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %47 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 4
  %rtint54 = bitcast %union.rtunion_def* %arrayidx53 to i32*
  %49 = load i32, i32* %rtint54, align 4
  %cmp55 = icmp eq i32 %49, -96
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %50 = phi i1 [ false, %for.cond ], [ %cmp55, %land.rhs ]
  br i1 %50, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 1
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %before, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.66

if.else.59:                                       ; preds = %if.then.36
  %53 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 6
  %54 = load i32, i32* %flags60, align 4
  %and61 = and i32 %54, 1
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.else.59
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1350, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.commit_one_edge_insertion, i32 0, i32 0)) #4
  unreachable

if.end.64:                                        ; preds = %if.else.59
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i32 0, i32 1
  %56 = load %struct.rtx_def*, %struct.rtx_def** %end65, align 8
  store %struct.rtx_def* %56, %struct.rtx_def** %after, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.64, %for.end
  br label %if.end.69

if.else.67:                                       ; preds = %land.lhs.true.33, %land.lhs.true.31, %if.else.29
  %57 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %call = call %struct.basic_block_def* @split_edge(%struct.edge_def* %57)
  store %struct.basic_block_def* %call, %struct.basic_block_def** %bb, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 1
  %59 = load %struct.rtx_def*, %struct.rtx_def** %end68, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %after, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.end.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.28
  %60 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %tobool = icmp ne %struct.rtx_def* %60, null
  br i1 %tobool, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.end.70
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %call72 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %61, %struct.rtx_def* %62)
  %63 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %call73 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %63)
  store %struct.rtx_def* %call73, %struct.rtx_def** %last, align 8
  br label %if.end.76

if.else.74:                                       ; preds = %if.end.70
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %call75 = call %struct.rtx_def* @emit_insns_after(%struct.rtx_def* %64, %struct.rtx_def* %65)
  store %struct.rtx_def* %call75, %struct.rtx_def** %last, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.74, %if.then.71
  %66 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %call77 = call i32 @returnjump_p(%struct.rtx_def* %66)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.98

if.then.79:                                       ; preds = %if.end.76
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ80 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i32 0, i32 5
  %68 = load %struct.edge_def*, %struct.edge_def** %succ80, align 8
  store %struct.edge_def* %68, %struct.edge_def** %e.addr, align 8
  %69 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest81 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i32 0, i32 3
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %dest81, align 8
  %cmp82 = icmp ne %struct.basic_block_def* %70, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp82, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.79
  %71 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %succ_next83 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i32 0, i32 1
  %72 = load %struct.edge_def*, %struct.edge_def** %succ_next83, align 8
  %cmp84 = icmp ne %struct.edge_def* %72, null
  br i1 %cmp84, label %if.then.89, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false
  %73 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags86 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 6
  %74 = load i32, i32* %flags86, align 4
  %and87 = and i32 %74, 1
  %cmp88 = icmp eq i32 %and87, 0
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %lor.lhs.false.85, %lor.lhs.false, %if.then.79
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1384, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.commit_one_edge_insertion, i32 0, i32 0)) #4
  unreachable

if.end.90:                                        ; preds = %lor.lhs.false.85
  %75 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags91 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 6
  %76 = load i32, i32* %flags91, align 4
  %and92 = and i32 %76, -2
  store i32 %and92, i32* %flags91, align 4
  %77 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %call93 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %77)
  %78 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %tobool94 = icmp ne %struct.rtx_def* %78, null
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.end.90
  %79 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %call96 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %79)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.end.90
  br label %if.end.104

if.else.98:                                       ; preds = %if.end.76
  %80 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load99 = load i32, i32* %81, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp eq i32 %bf.clear100, 33
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.else.98
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1393, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.commit_one_edge_insertion, i32 0, i32 0)) #4
  unreachable

if.end.103:                                       ; preds = %if.else.98
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.97
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @find_sub_basic_blocks(%struct.basic_block_def* %82)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_bb(%struct.basic_block_def* %bb, %struct._IO_FILE* %outf) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %outf.addr = alloca %struct._IO_FILE*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct._IO_FILE* %outf, %struct._IO_FILE** %outf.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 11
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 12
  %4 = load i32, i32* %loop_depth, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 %2, i32 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 13
  %7 = load i64, i64* %count, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 4
  %11 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %11, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %12, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @dump_edge_info(%struct._IO_FILE* %13, %struct.edge_def* %14, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 0
  %16 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %16, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %18)
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 8
  %20 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  call void @dump_regset(%struct.bitmap_head_def* %20, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call6 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %22)
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 0
  %24 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 1
  %26 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %last, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.10, %for.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp = icmp ne %struct.rtx_def* %28, %29
  br i1 %cmp, label %for.body.8, label %for.end.14

for.body.8:                                       ; preds = %for.cond.7
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call9 = call i32 @print_rtl_single(%struct._IO_FILE* %30, %struct.rtx_def* %31)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.end.14:                                       ; preds = %for.cond.7
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %34)
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 9
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  call void @dump_regset(%struct.bitmap_head_def* %36, %struct._IO_FILE* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call16 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %39)
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 5
  %41 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %41, %struct.edge_def** %e, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.21, %for.end.14
  %42 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool19 = icmp ne %struct.edge_def* %42, null
  br i1 %tobool19, label %for.body.20, label %for.end.22

for.body.20:                                      ; preds = %for.cond.18
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %44 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @dump_edge_info(%struct._IO_FILE* %43, %struct.edge_def* %44, i32 1)
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.20
  %45 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 1
  %46 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %46, %struct.edge_def** %e, align 8
  br label %for.cond.18

for.end.22:                                       ; preds = %for.cond.18
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call23 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %47)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @dump_edge_info(%struct._IO_FILE*, %struct.edge_def*, i32) #1

declare void @dump_regset(%struct.bitmap_head_def*, %struct._IO_FILE*) #1

declare i32 @print_rtl_single(%struct._IO_FILE*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @debug_bb(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @dump_bb(%struct.basic_block_def* %0, %struct._IO_FILE* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_bb_n(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @dump_bb(%struct.basic_block_def* %2, %struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_rtl_with_bb(%struct._IO_FILE* %outf, %struct.rtx_def* %rtx_first) #0 {
entry:
  %outf.addr = alloca %struct._IO_FILE*, align 8
  %rtx_first.addr = alloca %struct.rtx_def*, align 8
  %tmp_rtx = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %max_uid = alloca i32, align 4
  %start = alloca %struct.basic_block_def**, align 8
  %end = alloca %struct.basic_block_def**, align 8
  %in_bb_p = alloca i32*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %state = alloca i32, align 4
  %did_output = alloca i32, align 4
  %bb50 = alloca %struct.basic_block_def*, align 8
  store %struct._IO_FILE* %outf, %struct._IO_FILE** %outf.addr, align 8
  store %struct.rtx_def* %rtx_first, %struct.rtx_def** %rtx_first.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rtx_first.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.111

if.else:                                          ; preds = %entry
  %call1 = call i32 @get_max_uid()
  store i32 %call1, i32* %max_uid, align 4
  %2 = load i32, i32* %max_uid, align 4
  %conv = sext i32 %2 to i64
  %call2 = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %3 = bitcast i8* %call2 to %struct.basic_block_def**
  store %struct.basic_block_def** %3, %struct.basic_block_def*** %start, align 8
  %4 = load i32, i32* %max_uid, align 4
  %conv3 = sext i32 %4 to i64
  %call4 = call noalias i8* @xcalloc(i64 %conv3, i64 8)
  %5 = bitcast i8* %call4 to %struct.basic_block_def**
  store %struct.basic_block_def** %5, %struct.basic_block_def*** %end, align 8
  %6 = load i32, i32* %max_uid, align 4
  %conv5 = sext i32 %6 to i64
  %call6 = call noalias i8* @xcalloc(i64 %conv5, i64 4)
  %7 = bitcast i8* %call6 to i32*
  store i32* %7, i32** %in_bb_p, align 8
  %8 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.else
  %9 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %9, 0
  br i1 %cmp7, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb9 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb9, i32 0, i64 %idxprom
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %12, %struct.basic_block_def** %bb, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 0
  %15 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %16 = load i32, i32* %rtint, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.basic_block_def**, %struct.basic_block_def*** %start, align 8
  %arrayidx12 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %17, i64 %idxprom11
  store %struct.basic_block_def* %13, %struct.basic_block_def** %arrayidx12, align 8
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 1
  %20 = load %struct.rtx_def*, %struct.rtx_def** %end13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %21 = load i32, i32* %rtint16, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.basic_block_def**, %struct.basic_block_def*** %end, align 8
  %arrayidx18 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %22, i64 %idxprom17
  store %struct.basic_block_def* %18, %struct.basic_block_def** %arrayidx18, align 8
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 0
  %24 = load %struct.rtx_def*, %struct.rtx_def** %head19, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %x, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %for.body
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp21 = icmp ne %struct.rtx_def* %25, null
  br i1 %cmp21, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.20
  store i32 2, i32* %state, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtint26 = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %27 = load i32, i32* %rtint26, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load i32*, i32** %in_bb_p, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %28, i64 %idxprom27
  %29 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %29, 0
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %for.body.23
  store i32 1, i32* %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.31, %for.body.23
  %30 = load i32, i32* %state, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %32 = load i32, i32* %rtint34, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load i32*, i32** %in_bb_p, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %33, i64 %idxprom35
  store i32 %30, i32* %arrayidx36, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 1
  %36 = load %struct.rtx_def*, %struct.rtx_def** %end37, align 8
  %cmp38 = icmp eq %struct.rtx_def* %34, %36
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end
  br label %for.end

if.end.41:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %x, align 8
  br label %for.cond.20

for.end:                                          ; preds = %if.then.40, %for.cond.20
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx_first.addr, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %tmp_rtx, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.106, %for.end.45
  %41 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %cmp47 = icmp ne %struct.rtx_def* null, %41
  br i1 %cmp47, label %for.body.49, label %for.end.110

for.body.49:                                      ; preds = %for.cond.46
  %42 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtint53 = bitcast %union.rtunion_def* %arrayidx52 to i32*
  %43 = load i32, i32* %rtint53, align 4
  %idxprom54 = sext i32 %43 to i64
  %44 = load %struct.basic_block_def**, %struct.basic_block_def*** %start, align 8
  %arrayidx55 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %44, i64 %idxprom54
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx55, align 8
  store %struct.basic_block_def* %45, %struct.basic_block_def** %bb50, align 8
  %cmp56 = icmp ne %struct.basic_block_def* %45, null
  br i1 %cmp56, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %for.body.49
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb50, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 11
  %48 = load i32, i32* %index, align 4
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i32 %48)
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %bb50, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 8
  %50 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  call void @dump_regset(%struct.bitmap_head_def* %50, %struct._IO_FILE* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call60 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %52)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %for.body.49
  %53 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtint64 = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %54 = load i32, i32* %rtint64, align 4
  %idxprom65 = sext i32 %54 to i64
  %55 = load i32*, i32** %in_bb_p, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %55, i64 %idxprom65
  %56 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp eq i32 %56, 0
  br i1 %cmp67, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %if.end.61
  %57 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load = load i32, i32* %58, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp69 = icmp ne i32 %bf.clear, 37
  br i1 %cmp69, label %land.lhs.true.71, label %if.else.78

land.lhs.true.71:                                 ; preds = %land.lhs.true
  %59 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load72 = load i32, i32* %60, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp ne i32 %bf.clear73, 35
  br i1 %cmp74, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %land.lhs.true.71
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.89

if.else.78:                                       ; preds = %land.lhs.true.71, %land.lhs.true, %if.end.61
  %62 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtint81 = bitcast %union.rtunion_def* %arrayidx80 to i32*
  %63 = load i32, i32* %rtint81, align 4
  %idxprom82 = sext i32 %63 to i64
  %64 = load i32*, i32** %in_bb_p, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %64, i64 %idxprom82
  %65 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp eq i32 %65, 2
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.else.78
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.else.78
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.76
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %call90 = call i32 @print_rtl_single(%struct._IO_FILE* %67, %struct.rtx_def* %68)
  store i32 %call90, i32* %did_output, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtint93 = bitcast %union.rtunion_def* %arrayidx92 to i32*
  %70 = load i32, i32* %rtint93, align 4
  %idxprom94 = sext i32 %70 to i64
  %71 = load %struct.basic_block_def**, %struct.basic_block_def*** %end, align 8
  %arrayidx95 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %71, i64 %idxprom94
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx95, align 8
  store %struct.basic_block_def* %72, %struct.basic_block_def** %bb50, align 8
  %cmp96 = icmp ne %struct.basic_block_def* %72, null
  br i1 %cmp96, label %if.then.98, label %if.end.102

if.then.98:                                       ; preds = %if.end.89
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %bb50, align 8
  %index99 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %74, i32 0, i32 11
  %75 = load i32, i32* %index99, align 4
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 %75)
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %bb50, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 9
  %77 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  call void @dump_regset(%struct.bitmap_head_def* %77, %struct._IO_FILE* %78)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call101 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %79)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.98, %if.end.89
  %80 = load i32, i32* %did_output, align 4
  %tobool = icmp ne i32 %80, 0
  br i1 %tobool, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.102
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call104 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %81)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.102
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %82 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 2
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %tmp_rtx, align 8
  br label %for.cond.46

for.end.110:                                      ; preds = %for.cond.46
  %84 = load %struct.basic_block_def**, %struct.basic_block_def*** %start, align 8
  %85 = bitcast %struct.basic_block_def** %84 to i8*
  call void @free(i8* %85) #5
  %86 = load %struct.basic_block_def**, %struct.basic_block_def*** %end, align 8
  %87 = bitcast %struct.basic_block_def** %86 to i8*
  call void @free(i8* %87) #5
  %88 = load i32*, i32** %in_bb_p, align 8
  %89 = bitcast i32* %88 to i8*
  call void @free(i8* %89) #5
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %if.then
  %90 = load %struct.function*, %struct.function** @cfun, align 8
  %epilogue_delay_list = getelementptr inbounds %struct.function, %struct.function* %90, i32 0, i32 55
  %91 = load %struct.rtx_def*, %struct.rtx_def** %epilogue_delay_list, align 8
  %cmp112 = icmp ne %struct.rtx_def* %91, null
  br i1 %cmp112, label %if.then.114, label %if.end.130

if.then.114:                                      ; preds = %if.end.111
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i32 0, i32 0))
  %93 = load %struct.function*, %struct.function** @cfun, align 8
  %epilogue_delay_list116 = getelementptr inbounds %struct.function, %struct.function* %93, i32 0, i32 55
  %94 = load %struct.rtx_def*, %struct.rtx_def** %epilogue_delay_list116, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %tmp_rtx, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.125, %if.then.114
  %95 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %cmp118 = icmp ne %struct.rtx_def* %95, null
  br i1 %cmp118, label %for.body.120, label %for.end.129

for.body.120:                                     ; preds = %for.cond.117
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %call124 = call i32 @print_rtl_single(%struct._IO_FILE* %96, %struct.rtx_def* %98)
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.body.120
  %99 = load %struct.rtx_def*, %struct.rtx_def** %tmp_rtx, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 1
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  store %struct.rtx_def* %100, %struct.rtx_def** %tmp_rtx, align 8
  br label %for.cond.117

for.end.129:                                      ; preds = %for.cond.117
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.129, %if.end.111
  ret void
}

declare i32 @get_max_uid() #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @update_br_prob_note(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 1
  %4 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %4, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx3 to i64*
  %8 = load i64, i64* %rtwint, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 5
  %10 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 6
  %11 = load i32, i32* %flags, align 4
  %and = and i32 %11, 1
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 5
  %13 = load %struct.edge_def*, %struct.edge_def** %succ5, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 1
  %14 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 5
  %16 = load %struct.edge_def*, %struct.edge_def** %succ6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %14, %cond.true ], [ %16, %cond.false ]
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond, i32 0, i32 7
  %17 = load i32, i32* %probability, align 4
  %conv = sext i32 %17 to i64
  %cmp7 = icmp eq i64 %8, %conv
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %cond.end, %if.end
  br label %return

if.end.10:                                        ; preds = %cond.end
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 5
  %19 = load %struct.edge_def*, %struct.edge_def** %succ11, align 8
  %flags12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i32 0, i32 6
  %20 = load i32, i32* %flags12, align 4
  %and13 = and i32 %20, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %if.end.10
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 5
  %22 = load %struct.edge_def*, %struct.edge_def** %succ16, align 8
  %succ_next17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 1
  %23 = load %struct.edge_def*, %struct.edge_def** %succ_next17, align 8
  br label %cond.end.20

cond.false.18:                                    ; preds = %if.end.10
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 5
  %25 = load %struct.edge_def*, %struct.edge_def** %succ19, align 8
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.15
  %cond21 = phi %struct.edge_def* [ %23, %cond.true.15 ], [ %25, %cond.false.18 ]
  %probability22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond21, i32 0, i32 7
  %26 = load i32, i32* %probability22, align 4
  %conv23 = sext i32 %26 to i64
  %call24 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv23)
  %27 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  store %struct.rtx_def* %call24, %struct.rtx_def** %rtx27, align 8
  br label %return

return:                                           ; preds = %cond.end.20, %if.then.9, %if.then
  ret void
}

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

; Function Attrs: nounwind uwtable
define void @verify_flow_info() #0 {
entry:
  %max_uid = alloca i32, align 4
  %rtx_first = alloca %struct.rtx_def*, align 8
  %last_head = alloca %struct.rtx_def*, align 8
  %bb_info = alloca %struct.basic_block_def**, align 8
  %last_visited = alloca %struct.basic_block_def**, align 8
  %edge_checksum = alloca i64*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %last_bb_num_seen = alloca i32, align 4
  %num_bb_notes = alloca i32, align 4
  %err = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %head = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %bb75 = alloca %struct.basic_block_def*, align 8
  %has_fallthru = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %insn177 = alloca %struct.rtx_def*, align 8
  %e374 = alloca %struct.edge_def*, align 8
  %bb425 = alloca %struct.basic_block_def*, align 8
  %call = call i32 @get_max_uid()
  store i32 %call, i32* %max_uid, align 4
  %call1 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call1, %struct.rtx_def** %rtx_first, align 8
  %call2 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call2, %struct.rtx_def** %last_head, align 8
  store i32 0, i32* %err, align 4
  %0 = load i32, i32* %max_uid, align 4
  %conv = sext i32 %0 to i64
  %call3 = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %1 = bitcast i8* %call3 to %struct.basic_block_def**
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %bb_info, align 8
  %2 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %2, 2
  %conv4 = sext i32 %add to i64
  %call5 = call noalias i8* @xcalloc(i64 %conv4, i64 8)
  %3 = bitcast i8* %call5 to %struct.basic_block_def**
  store %struct.basic_block_def** %3, %struct.basic_block_def*** %last_visited, align 8
  %4 = load i32, i32* @n_basic_blocks, align 4
  %add6 = add nsw i32 %4, 2
  %conv7 = sext i32 %add6 to i64
  %call8 = call noalias i8* @xcalloc(i64 %conv7, i64 8)
  %5 = bitcast i8* %call8 to i64*
  store i64* %5, i64** %edge_checksum, align 8
  %6 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %entry
  %7 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 4
  %bb10 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb10, i32 0, i64 %idxprom
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %10, %struct.basic_block_def** %bb, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head11, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %head, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %end12, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %end, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %last_head, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %x, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp14 = icmp ne %struct.rtx_def* %16, null
  br i1 %cmp14, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.13
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp17 = icmp eq %struct.rtx_def* %17, %18
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.16
  br label %for.end

if.end:                                           ; preds = %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %x, align 8
  br label %for.cond.13

for.end:                                          ; preds = %if.then, %for.cond.13
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %for.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx22 to i32*
  %23 = load i32, i32* %rtint, align 4
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 11
  %25 = load i32, i32* %index, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 %23, i32 %25)
  store i32 1, i32* %err, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %for.end
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.56, %if.end.23
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp25 = icmp ne %struct.rtx_def* %26, null
  br i1 %cmp25, label %for.body.27, label %for.end.60

for.body.27:                                      ; preds = %for.cond.24
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %28 = load i32, i32* %rtint30, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.basic_block_def**, %struct.basic_block_def*** %bb_info, align 8
  %arrayidx32 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %29, i64 %idxprom31
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx32, align 8
  %cmp33 = icmp ne %struct.basic_block_def* %30, null
  br i1 %cmp33, label %if.then.35, label %if.end.46

if.then.35:                                       ; preds = %for.body.27
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtint38 = bitcast %union.rtunion_def* %arrayidx37 to i32*
  %32 = load i32, i32* %rtint38, align 4
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 11
  %34 = load i32, i32* %index39, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %36 = load i32, i32* %rtint42, align 4
  %idxprom43 = sext i32 %36 to i64
  %37 = load %struct.basic_block_def**, %struct.basic_block_def*** %bb_info, align 8
  %arrayidx44 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %37, i64 %idxprom43
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx44, align 8
  %index45 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 11
  %39 = load i32, i32* %index45, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i32 0, i32 0), i32 %32, i32 %34, i32 %39)
  store i32 1, i32* %err, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.35, %for.body.27
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtint49 = bitcast %union.rtunion_def* %arrayidx48 to i32*
  %42 = load i32, i32* %rtint49, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load %struct.basic_block_def**, %struct.basic_block_def*** %bb_info, align 8
  %arrayidx51 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %43, i64 %idxprom50
  store %struct.basic_block_def* %40, %struct.basic_block_def** %arrayidx51, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp52 = icmp eq %struct.rtx_def* %44, %45
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.46
  br label %for.end.60

if.end.55:                                        ; preds = %if.end.46
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 1
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %x, align 8
  br label %for.cond.24

for.end.60:                                       ; preds = %if.then.54, %for.cond.24
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool61 = icmp ne %struct.rtx_def* %48, null
  br i1 %tobool61, label %if.end.67, label %if.then.62

if.then.62:                                       ; preds = %for.end.60
  %49 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtint65 = bitcast %union.rtunion_def* %arrayidx64 to i32*
  %50 = load i32, i32* %rtint65, align 4
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index66 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i32 0, i32 11
  %52 = load i32, i32* %index66, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i32 0, i32 0), i32 %50, i32 %52)
  store i32 1, i32* %err, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %for.end.60
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %last_head, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %54 = load i32, i32* %i, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  %55 = load i32, i32* @n_basic_blocks, align 4
  %sub70 = sub nsw i32 %55, 1
  store i32 %sub70, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.371, %for.end.69
  %56 = load i32, i32* %i, align 4
  %cmp72 = icmp sge i32 %56, 0
  br i1 %cmp72, label %for.body.74, label %for.end.373

for.body.74:                                      ; preds = %for.cond.71
  %57 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %57 to i64
  %58 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data77 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %58, i32 0, i32 4
  %bb78 = bitcast %union.varray_data_tag* %data77 to [1 x %struct.basic_block_def*]*
  %arrayidx79 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb78, i32 0, i64 %idxprom76
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx79, align 8
  store %struct.basic_block_def* %59, %struct.basic_block_def** %bb75, align 8
  store i32 0, i32* %has_fallthru, align 4
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 5
  %61 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %61, %struct.edge_def** %e, align 8
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.173, %for.body.74
  %62 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool81 = icmp ne %struct.edge_def* %62, null
  br i1 %tobool81, label %for.body.82, label %for.end.174

for.body.82:                                      ; preds = %for.cond.80
  %63 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 3
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index83 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 11
  %65 = load i32, i32* %index83, align 4
  %add84 = add nsw i32 %65, 2
  %idxprom85 = sext i32 %add84 to i64
  %66 = load %struct.basic_block_def**, %struct.basic_block_def*** %last_visited, align 8
  %arrayidx86 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %66, i64 %idxprom85
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx86, align 8
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %cmp87 = icmp eq %struct.basic_block_def* %67, %68
  br i1 %cmp87, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %for.body.82
  %69 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i32 0, i32 2
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index90 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 11
  %71 = load i32, i32* %index90, align 4
  %72 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest91 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %72, i32 0, i32 3
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %dest91, align 8
  %index92 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %73, i32 0, i32 11
  %74 = load i32, i32* %index92, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0), i32 %71, i32 %74)
  store i32 1, i32* %err, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.89, %for.body.82
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %76 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest94 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %76, i32 0, i32 3
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %dest94, align 8
  %index95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i32 0, i32 11
  %78 = load i32, i32* %index95, align 4
  %add96 = add nsw i32 %78, 2
  %idxprom97 = sext i32 %add96 to i64
  %79 = load %struct.basic_block_def**, %struct.basic_block_def*** %last_visited, align 8
  %arrayidx98 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %79, i64 %idxprom97
  store %struct.basic_block_def* %75, %struct.basic_block_def** %arrayidx98, align 8
  %80 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %80, i32 0, i32 6
  %81 = load i32, i32* %flags, align 4
  %and = and i32 %81, 1
  %tobool99 = icmp ne i32 %and, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.93
  store i32 1, i32* %has_fallthru, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.93
  %82 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags102 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %82, i32 0, i32 6
  %83 = load i32, i32* %flags102, align 4
  %and103 = and i32 %83, 1
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %land.lhs.true, label %if.end.157

land.lhs.true:                                    ; preds = %if.end.101
  %84 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src105 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %84, i32 0, i32 2
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %src105, align 8
  %cmp106 = icmp ne %struct.basic_block_def* %85, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.157

land.lhs.true.108:                                ; preds = %land.lhs.true
  %86 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest109 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %86, i32 0, i32 3
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %dest109, align 8
  %cmp110 = icmp ne %struct.basic_block_def* %87, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp110, label %if.then.112, label %if.end.157

if.then.112:                                      ; preds = %land.lhs.true.108
  %88 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src113 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %88, i32 0, i32 2
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %src113, align 8
  %index114 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %89, i32 0, i32 11
  %90 = load i32, i32* %index114, align 4
  %add115 = add nsw i32 %90, 1
  %91 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest116 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %91, i32 0, i32 3
  %92 = load %struct.basic_block_def*, %struct.basic_block_def** %dest116, align 8
  %index117 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %92, i32 0, i32 11
  %93 = load i32, i32* %index117, align 4
  %cmp118 = icmp ne i32 %add115, %93
  br i1 %cmp118, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %if.then.112
  %94 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src121 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %94, i32 0, i32 2
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %src121, align 8
  %index122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %95, i32 0, i32 11
  %96 = load i32, i32* %index122, align 4
  %97 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest123 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %97, i32 0, i32 3
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %dest123, align 8
  %index124 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %98, i32 0, i32 11
  %99 = load i32, i32* %index124, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i32 0, i32 0), i32 %96, i32 %99)
  store i32 1, i32* %err, align 4
  br label %if.end.156

if.else:                                          ; preds = %if.then.112
  %100 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src125 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %100, i32 0, i32 2
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %src125, align 8
  %end126 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %101, i32 0, i32 1
  %102 = load %struct.rtx_def*, %struct.rtx_def** %end126, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 2
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %insn, align 8
  br label %for.cond.130

for.cond.130:                                     ; preds = %for.inc.151, %if.else
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %105 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %105, i32 0, i32 3
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %dest131, align 8
  %head132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %106, i32 0, i32 0
  %107 = load %struct.rtx_def*, %struct.rtx_def** %head132, align 8
  %cmp133 = icmp ne %struct.rtx_def* %104, %107
  br i1 %cmp133, label %for.body.135, label %for.end.155

for.body.135:                                     ; preds = %for.cond.130
  %108 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load = load i32, i32* %109, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp136 = icmp eq i32 %bf.clear, 35
  br i1 %cmp136, label %if.then.145, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.135
  %110 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load138 = load i32, i32* %111, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %idxprom140 = sext i32 %bf.clear139 to i64
  %arrayidx141 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom140
  %112 = load i8, i8* %arrayidx141, align 1
  %conv142 = sext i8 %112 to i32
  %cmp143 = icmp eq i32 %conv142, 105
  br i1 %cmp143, label %if.then.145, label %if.end.150

if.then.145:                                      ; preds = %lor.lhs.false, %for.body.135
  %113 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src146 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %113, i32 0, i32 2
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %src146, align 8
  %index147 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %114, i32 0, i32 11
  %115 = load i32, i32* %index147, align 4
  %116 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest148 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %116, i32 0, i32 3
  %117 = load %struct.basic_block_def*, %struct.basic_block_def** %dest148, align 8
  %index149 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %117, i32 0, i32 11
  %118 = load i32, i32* %index149, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0), i32 %115, i32 %118)
  %119 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i32 0, i32 0), %struct.rtx_def* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1717, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.verify_flow_info, i32 0, i32 0)) #4
  unreachable

if.end.150:                                       ; preds = %lor.lhs.false
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 2
  %rtx154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx154, align 8
  store %struct.rtx_def* %121, %struct.rtx_def** %insn, align 8
  br label %for.cond.130

for.end.155:                                      ; preds = %for.cond.130
  br label %if.end.156

if.end.156:                                       ; preds = %for.end.155, %if.then.120
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %land.lhs.true.108, %land.lhs.true, %if.end.101
  %122 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src158 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %122, i32 0, i32 2
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %src158, align 8
  %124 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %cmp159 = icmp ne %struct.basic_block_def* %123, %124
  br i1 %cmp159, label %if.then.161, label %if.end.166

if.then.161:                                      ; preds = %if.end.157
  %125 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index162 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %125, i32 0, i32 11
  %126 = load i32, i32* %index162, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i32 0, i32 0), i32 %126)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %129 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @dump_edge_info(%struct._IO_FILE* %128, %struct.edge_def* %129, i32 0)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0))
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %132 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @dump_edge_info(%struct._IO_FILE* %131, %struct.edge_def* %132, i32 1)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  store i32 1, i32* %err, align 4
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.161, %if.end.157
  %134 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %135 = ptrtoint %struct.edge_def* %134 to i64
  %136 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest167 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %136, i32 0, i32 3
  %137 = load %struct.basic_block_def*, %struct.basic_block_def** %dest167, align 8
  %index168 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %137, i32 0, i32 11
  %138 = load i32, i32* %index168, align 4
  %add169 = add nsw i32 %138, 2
  %idxprom170 = sext i32 %add169 to i64
  %139 = load i64*, i64** %edge_checksum, align 8
  %arrayidx171 = getelementptr inbounds i64, i64* %139, i64 %idxprom170
  %140 = load i64, i64* %arrayidx171, align 8
  %add172 = add i64 %140, %135
  store i64 %add172, i64* %arrayidx171, align 8
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.166
  %141 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %141, i32 0, i32 1
  %142 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %142, %struct.edge_def** %e, align 8
  br label %for.cond.80

for.end.174:                                      ; preds = %for.cond.80
  %143 = load i32, i32* %has_fallthru, align 4
  %tobool175 = icmp ne i32 %143, 0
  br i1 %tobool175, label %if.end.206, label %if.then.176

if.then.176:                                      ; preds = %for.end.174
  %144 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %end178 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %144, i32 0, i32 1
  %145 = load %struct.rtx_def*, %struct.rtx_def** %end178, align 8
  store %struct.rtx_def* %145, %struct.rtx_def** %insn177, align 8
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.201, %if.then.176
  %146 = load %struct.rtx_def*, %struct.rtx_def** %insn177, align 8
  %tobool180 = icmp ne %struct.rtx_def* %146, null
  br i1 %tobool180, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %for.cond.179
  %147 = load %struct.rtx_def*, %struct.rtx_def** %insn177, align 8
  %148 = bitcast %struct.rtx_def* %147 to i32*
  %bf.load181 = load i32, i32* %148, align 8
  %bf.clear182 = and i32 %bf.load181, 65535
  %cmp183 = icmp ne i32 %bf.clear182, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond.179
  %149 = phi i1 [ true, %for.cond.179 ], [ %cmp183, %lor.rhs ]
  br i1 %149, label %for.body.185, label %for.end.205

for.body.185:                                     ; preds = %lor.end
  %150 = load %struct.rtx_def*, %struct.rtx_def** %insn177, align 8
  %tobool186 = icmp ne %struct.rtx_def* %150, null
  br i1 %tobool186, label %lor.lhs.false.187, label %if.then.198

lor.lhs.false.187:                                ; preds = %for.body.185
  %151 = load %struct.rtx_def*, %struct.rtx_def** %insn177, align 8
  %152 = bitcast %struct.rtx_def* %151 to i32*
  %bf.load188 = load i32, i32* %152, align 8
  %bf.clear189 = and i32 %bf.load188, 65535
  %cmp190 = icmp eq i32 %bf.clear189, 37
  br i1 %cmp190, label %land.lhs.true.192, label %if.end.200

land.lhs.true.192:                                ; preds = %lor.lhs.false.187
  %153 = load %struct.rtx_def*, %struct.rtx_def** %insn177, align 8
  %fld193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld193, i32 0, i64 4
  %rtint195 = bitcast %union.rtunion_def* %arrayidx194 to i32*
  %154 = load i32, i32* %rtint195, align 4
  %cmp196 = icmp eq i32 %154, -80
  br i1 %cmp196, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %land.lhs.true.192, %for.body.185
  %155 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index199 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %155, i32 0, i32 11
  %156 = load i32, i32* %index199, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i32 0, i32 0), i32 %156)
  store i32 1, i32* %err, align 4
  br label %for.end.205

if.end.200:                                       ; preds = %land.lhs.true.192, %lor.lhs.false.187
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %157 = load %struct.rtx_def*, %struct.rtx_def** %insn177, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 2
  %rtx204 = bitcast %union.rtunion_def* %arrayidx203 to %struct.rtx_def**
  %158 = load %struct.rtx_def*, %struct.rtx_def** %rtx204, align 8
  store %struct.rtx_def* %158, %struct.rtx_def** %insn177, align 8
  br label %for.cond.179

for.end.205:                                      ; preds = %if.then.198, %lor.end
  br label %if.end.206

if.end.206:                                       ; preds = %for.end.205, %for.end.174
  %159 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %159, i32 0, i32 4
  %160 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %160, %struct.edge_def** %e, align 8
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.225, %if.end.206
  %161 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool208 = icmp ne %struct.edge_def* %161, null
  br i1 %tobool208, label %for.body.209, label %for.end.226

for.body.209:                                     ; preds = %for.cond.207
  %162 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest210 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %162, i32 0, i32 3
  %163 = load %struct.basic_block_def*, %struct.basic_block_def** %dest210, align 8
  %164 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %cmp211 = icmp ne %struct.basic_block_def* %163, %164
  br i1 %cmp211, label %if.then.213, label %if.end.218

if.then.213:                                      ; preds = %for.body.209
  %165 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index214 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %165, i32 0, i32 11
  %166 = load i32, i32* %index214, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i32 0, i32 0), i32 %166)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call215 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %167)
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %169 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @dump_edge_info(%struct._IO_FILE* %168, %struct.edge_def* %169, i32 0)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call216 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %170)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @dump_edge_info(%struct._IO_FILE* %171, %struct.edge_def* %172, i32 1)
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call217 = call i32 @fputc(i32 10, %struct._IO_FILE* %173)
  store i32 1, i32* %err, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.213, %for.body.209
  %174 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %175 = ptrtoint %struct.edge_def* %174 to i64
  %176 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest219 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %176, i32 0, i32 3
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %dest219, align 8
  %index220 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %177, i32 0, i32 11
  %178 = load i32, i32* %index220, align 4
  %add221 = add nsw i32 %178, 2
  %idxprom222 = sext i32 %add221 to i64
  %179 = load i64*, i64** %edge_checksum, align 8
  %arrayidx223 = getelementptr inbounds i64, i64* %179, i64 %idxprom222
  %180 = load i64, i64* %arrayidx223, align 8
  %sub224 = sub i64 %180, %175
  store i64 %sub224, i64* %arrayidx223, align 8
  br label %for.inc.225

for.inc.225:                                      ; preds = %if.end.218
  %181 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %181, i32 0, i32 0
  %182 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %182, %struct.edge_def** %e, align 8
  br label %for.cond.207

for.end.226:                                      ; preds = %for.cond.207
  %183 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %head227 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %183, i32 0, i32 0
  %184 = load %struct.rtx_def*, %struct.rtx_def** %head227, align 8
  store %struct.rtx_def* %184, %struct.rtx_def** %x, align 8
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.276, %for.end.226
  %185 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %186 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %end229 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %186, i32 0, i32 1
  %187 = load %struct.rtx_def*, %struct.rtx_def** %end229, align 8
  %fld230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld230, i32 0, i64 2
  %rtx232 = bitcast %union.rtunion_def* %arrayidx231 to %struct.rtx_def**
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtx232, align 8
  %cmp233 = icmp ne %struct.rtx_def* %185, %188
  br i1 %cmp233, label %for.body.235, label %for.end.280

for.body.235:                                     ; preds = %for.cond.228
  %189 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool236 = icmp ne %struct.varray_head_tag* %189, null
  br i1 %tobool236, label %land.lhs.true.237, label %if.end.275

land.lhs.true.237:                                ; preds = %for.body.235
  %190 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 0
  %rtint240 = bitcast %union.rtunion_def* %arrayidx239 to i32*
  %191 = load i32, i32* %rtint240, align 4
  %idxprom241 = sext i32 %191 to i64
  %192 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data242 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %192, i32 0, i32 4
  %bb243 = bitcast %union.varray_data_tag* %data242 to [1 x %struct.basic_block_def*]*
  %arrayidx244 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb243, i32 0, i64 %idxprom241
  %193 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx244, align 8
  %194 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %cmp245 = icmp ne %struct.basic_block_def* %193, %194
  br i1 %cmp245, label %if.then.247, label %if.end.275

if.then.247:                                      ; preds = %land.lhs.true.237
  %195 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  call void @debug_rtx(%struct.rtx_def* %195)
  %196 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld248 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld248, i32 0, i64 0
  %rtint250 = bitcast %union.rtunion_def* %arrayidx249 to i32*
  %197 = load i32, i32* %rtint250, align 4
  %idxprom251 = sext i32 %197 to i64
  %198 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data252 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %198, i32 0, i32 4
  %bb253 = bitcast %union.varray_data_tag* %data252 to [1 x %struct.basic_block_def*]*
  %arrayidx254 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb253, i32 0, i64 %idxprom251
  %199 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx254, align 8
  %tobool255 = icmp ne %struct.basic_block_def* %199, null
  br i1 %tobool255, label %if.else.261, label %if.then.256

if.then.256:                                      ; preds = %if.then.247
  %200 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtint259 = bitcast %union.rtunion_def* %arrayidx258 to i32*
  %201 = load i32, i32* %rtint259, align 4
  %202 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index260 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %202, i32 0, i32 11
  %203 = load i32, i32* %index260, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0), i32 %201, i32 %203)
  br label %if.end.274

if.else.261:                                      ; preds = %if.then.247
  %204 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld262, i32 0, i64 0
  %rtint264 = bitcast %union.rtunion_def* %arrayidx263 to i32*
  %205 = load i32, i32* %rtint264, align 4
  %206 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index265 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %206, i32 0, i32 11
  %207 = load i32, i32* %index265, align 4
  %208 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %208, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld266, i32 0, i64 0
  %rtint268 = bitcast %union.rtunion_def* %arrayidx267 to i32*
  %209 = load i32, i32* %rtint268, align 4
  %idxprom269 = sext i32 %209 to i64
  %210 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data270 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %210, i32 0, i32 4
  %bb271 = bitcast %union.varray_data_tag* %data270 to [1 x %struct.basic_block_def*]*
  %arrayidx272 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb271, i32 0, i64 %idxprom269
  %211 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx272, align 8
  %index273 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %211, i32 0, i32 11
  %212 = load i32, i32* %index273, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.29, i32 0, i32 0), i32 %205, i32 %207, i32 %212)
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.261, %if.then.256
  store i32 1, i32* %err, align 4
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %land.lhs.true.237, %for.body.235
  br label %for.inc.276

for.inc.276:                                      ; preds = %if.end.275
  %213 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %213, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 2
  %rtx279 = bitcast %union.rtunion_def* %arrayidx278 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %rtx279, align 8
  store %struct.rtx_def* %214, %struct.rtx_def** %x, align 8
  br label %for.cond.228

for.end.280:                                      ; preds = %for.cond.228
  %215 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %head281 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %215, i32 0, i32 0
  %216 = load %struct.rtx_def*, %struct.rtx_def** %head281, align 8
  store %struct.rtx_def* %216, %struct.rtx_def** %x, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %218 = bitcast %struct.rtx_def* %217 to i32*
  %bf.load282 = load i32, i32* %218, align 8
  %bf.clear283 = and i32 %bf.load282, 65535
  %cmp284 = icmp eq i32 %bf.clear283, 36
  br i1 %cmp284, label %if.then.286, label %if.end.296

if.then.286:                                      ; preds = %for.end.280
  %219 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %end287 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %219, i32 0, i32 1
  %220 = load %struct.rtx_def*, %struct.rtx_def** %end287, align 8
  %221 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp288 = icmp eq %struct.rtx_def* %220, %221
  br i1 %cmp288, label %if.then.290, label %if.end.292

if.then.290:                                      ; preds = %if.then.286
  %222 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index291 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %222, i32 0, i32 11
  %223 = load i32, i32* %index291, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0), i32 %223)
  store i32 1, i32* %err, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.290, %if.then.286
  %224 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 2
  %rtx295 = bitcast %union.rtunion_def* %arrayidx294 to %struct.rtx_def**
  %225 = load %struct.rtx_def*, %struct.rtx_def** %rtx295, align 8
  store %struct.rtx_def* %225, %struct.rtx_def** %x, align 8
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.292, %for.end.280
  %226 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %227 = bitcast %struct.rtx_def* %226 to i32*
  %bf.load297 = load i32, i32* %227, align 8
  %bf.clear298 = and i32 %bf.load297, 65535
  %cmp299 = icmp eq i32 %bf.clear298, 37
  br i1 %cmp299, label %land.lhs.true.301, label %if.then.313

land.lhs.true.301:                                ; preds = %if.end.296
  %228 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %arrayidx303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld302, i32 0, i64 4
  %rtint304 = bitcast %union.rtunion_def* %arrayidx303 to i32*
  %229 = load i32, i32* %rtint304, align 4
  %cmp305 = icmp eq i32 %229, -80
  br i1 %cmp305, label %lor.lhs.false.307, label %if.then.313

lor.lhs.false.307:                                ; preds = %land.lhs.true.301
  %230 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld308, i32 0, i64 3
  %bb310 = bitcast %union.rtunion_def* %arrayidx309 to %struct.basic_block_def**
  %231 = load %struct.basic_block_def*, %struct.basic_block_def** %bb310, align 8
  %232 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %cmp311 = icmp ne %struct.basic_block_def* %231, %232
  br i1 %cmp311, label %if.then.313, label %if.end.315

if.then.313:                                      ; preds = %lor.lhs.false.307, %land.lhs.true.301, %if.end.296
  %233 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index314 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %233, i32 0, i32 11
  %234 = load i32, i32* %index314, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i32 0, i32 0), i32 %234)
  store i32 1, i32* %err, align 4
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.313, %lor.lhs.false.307
  %235 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %end316 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %235, i32 0, i32 1
  %236 = load %struct.rtx_def*, %struct.rtx_def** %end316, align 8
  %237 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp317 = icmp eq %struct.rtx_def* %236, %237
  br i1 %cmp317, label %if.then.319, label %if.else.320

if.then.319:                                      ; preds = %if.end.315
  br label %if.end.370

if.else.320:                                      ; preds = %if.end.315
  %238 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld321, i32 0, i64 2
  %rtx323 = bitcast %union.rtunion_def* %arrayidx322 to %struct.rtx_def**
  %239 = load %struct.rtx_def*, %struct.rtx_def** %rtx323, align 8
  store %struct.rtx_def* %239, %struct.rtx_def** %x, align 8
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.365, %if.else.320
  %240 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool325 = icmp ne %struct.rtx_def* %240, null
  br i1 %tobool325, label %for.body.326, label %for.end.369

for.body.326:                                     ; preds = %for.cond.324
  %241 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %242 = bitcast %struct.rtx_def* %241 to i32*
  %bf.load327 = load i32, i32* %242, align 8
  %bf.clear328 = and i32 %bf.load327, 65535
  %cmp329 = icmp eq i32 %bf.clear328, 37
  br i1 %cmp329, label %land.lhs.true.331, label %if.end.342

land.lhs.true.331:                                ; preds = %for.body.326
  %243 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld332 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %arrayidx333 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld332, i32 0, i64 4
  %rtint334 = bitcast %union.rtunion_def* %arrayidx333 to i32*
  %244 = load i32, i32* %rtint334, align 4
  %cmp335 = icmp eq i32 %244, -80
  br i1 %cmp335, label %if.then.337, label %if.end.342

if.then.337:                                      ; preds = %land.lhs.true.331
  %245 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld338 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %arrayidx339 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld338, i32 0, i64 0
  %rtint340 = bitcast %union.rtunion_def* %arrayidx339 to i32*
  %246 = load i32, i32* %rtint340, align 4
  %247 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index341 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %247, i32 0, i32 11
  %248 = load i32, i32* %index341, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.31, i32 0, i32 0), i32 %246, i32 %248)
  store i32 1, i32* %err, align 4
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.337, %land.lhs.true.331, %for.body.326
  %249 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %250 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %end343 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %250, i32 0, i32 1
  %251 = load %struct.rtx_def*, %struct.rtx_def** %end343, align 8
  %cmp344 = icmp eq %struct.rtx_def* %249, %251
  br i1 %cmp344, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %if.end.342
  br label %for.end.369

if.end.347:                                       ; preds = %if.end.342
  %252 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %253 = bitcast %struct.rtx_def* %252 to i32*
  %bf.load348 = load i32, i32* %253, align 8
  %bf.clear349 = and i32 %bf.load348, 65535
  %cmp350 = icmp eq i32 %bf.clear349, 33
  br i1 %cmp350, label %if.then.362, label %lor.lhs.false.352

lor.lhs.false.352:                                ; preds = %if.end.347
  %254 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %255 = bitcast %struct.rtx_def* %254 to i32*
  %bf.load353 = load i32, i32* %255, align 8
  %bf.clear354 = and i32 %bf.load353, 65535
  %cmp355 = icmp eq i32 %bf.clear354, 36
  br i1 %cmp355, label %if.then.362, label %lor.lhs.false.357

lor.lhs.false.357:                                ; preds = %lor.lhs.false.352
  %256 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %257 = bitcast %struct.rtx_def* %256 to i32*
  %bf.load358 = load i32, i32* %257, align 8
  %bf.clear359 = and i32 %bf.load358, 65535
  %cmp360 = icmp eq i32 %bf.clear359, 35
  br i1 %cmp360, label %if.then.362, label %if.end.364

if.then.362:                                      ; preds = %lor.lhs.false.357, %lor.lhs.false.352, %if.end.347
  %258 = load %struct.basic_block_def*, %struct.basic_block_def** %bb75, align 8
  %index363 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %258, i32 0, i32 11
  %259 = load i32, i32* %index363, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i32 %259)
  %260 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0), %struct.rtx_def* %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1829, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.verify_flow_info, i32 0, i32 0)) #4
  unreachable

if.end.364:                                       ; preds = %lor.lhs.false.357
  br label %for.inc.365

for.inc.365:                                      ; preds = %if.end.364
  %261 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %261, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 2
  %rtx368 = bitcast %union.rtunion_def* %arrayidx367 to %struct.rtx_def**
  %262 = load %struct.rtx_def*, %struct.rtx_def** %rtx368, align 8
  store %struct.rtx_def* %262, %struct.rtx_def** %x, align 8
  br label %for.cond.324

for.end.369:                                      ; preds = %if.then.346, %for.cond.324
  br label %if.end.370

if.end.370:                                       ; preds = %for.end.369, %if.then.319
  br label %for.inc.371

for.inc.371:                                      ; preds = %if.end.370
  %263 = load i32, i32* %i, align 4
  %dec372 = add nsw i32 %263, -1
  store i32 %dec372, i32* %i, align 4
  br label %for.cond.71

for.end.373:                                      ; preds = %for.cond.71
  %264 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %264, %struct.edge_def** %e374, align 8
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.384, %for.end.373
  %265 = load %struct.edge_def*, %struct.edge_def** %e374, align 8
  %tobool376 = icmp ne %struct.edge_def* %265, null
  br i1 %tobool376, label %for.body.377, label %for.end.386

for.body.377:                                     ; preds = %for.cond.375
  %266 = load %struct.edge_def*, %struct.edge_def** %e374, align 8
  %267 = ptrtoint %struct.edge_def* %266 to i64
  %268 = load %struct.edge_def*, %struct.edge_def** %e374, align 8
  %dest378 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %268, i32 0, i32 3
  %269 = load %struct.basic_block_def*, %struct.basic_block_def** %dest378, align 8
  %index379 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %269, i32 0, i32 11
  %270 = load i32, i32* %index379, align 4
  %add380 = add nsw i32 %270, 2
  %idxprom381 = sext i32 %add380 to i64
  %271 = load i64*, i64** %edge_checksum, align 8
  %arrayidx382 = getelementptr inbounds i64, i64* %271, i64 %idxprom381
  %272 = load i64, i64* %arrayidx382, align 8
  %add383 = add i64 %272, %267
  store i64 %add383, i64* %arrayidx382, align 8
  br label %for.inc.384

for.inc.384:                                      ; preds = %for.body.377
  %273 = load %struct.edge_def*, %struct.edge_def** %e374, align 8
  %succ_next385 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %273, i32 0, i32 1
  %274 = load %struct.edge_def*, %struct.edge_def** %succ_next385, align 8
  store %struct.edge_def* %274, %struct.edge_def** %e374, align 8
  br label %for.cond.375

for.end.386:                                      ; preds = %for.cond.375
  %275 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  store %struct.edge_def* %275, %struct.edge_def** %e374, align 8
  br label %for.cond.387

for.cond.387:                                     ; preds = %for.inc.396, %for.end.386
  %276 = load %struct.edge_def*, %struct.edge_def** %e374, align 8
  %tobool388 = icmp ne %struct.edge_def* %276, null
  br i1 %tobool388, label %for.body.389, label %for.end.398

for.body.389:                                     ; preds = %for.cond.387
  %277 = load %struct.edge_def*, %struct.edge_def** %e374, align 8
  %278 = ptrtoint %struct.edge_def* %277 to i64
  %279 = load %struct.edge_def*, %struct.edge_def** %e374, align 8
  %dest390 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %279, i32 0, i32 3
  %280 = load %struct.basic_block_def*, %struct.basic_block_def** %dest390, align 8
  %index391 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %280, i32 0, i32 11
  %281 = load i32, i32* %index391, align 4
  %add392 = add nsw i32 %281, 2
  %idxprom393 = sext i32 %add392 to i64
  %282 = load i64*, i64** %edge_checksum, align 8
  %arrayidx394 = getelementptr inbounds i64, i64* %282, i64 %idxprom393
  %283 = load i64, i64* %arrayidx394, align 8
  %sub395 = sub i64 %283, %278
  store i64 %sub395, i64* %arrayidx394, align 8
  br label %for.inc.396

for.inc.396:                                      ; preds = %for.body.389
  %284 = load %struct.edge_def*, %struct.edge_def** %e374, align 8
  %pred_next397 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %284, i32 0, i32 0
  %285 = load %struct.edge_def*, %struct.edge_def** %pred_next397, align 8
  store %struct.edge_def* %285, %struct.edge_def** %e374, align 8
  br label %for.cond.387

for.end.398:                                      ; preds = %for.cond.387
  store i32 -2, i32* %i, align 4
  br label %for.cond.399

for.cond.399:                                     ; preds = %for.inc.409, %for.end.398
  %286 = load i32, i32* %i, align 4
  %287 = load i32, i32* @n_basic_blocks, align 4
  %cmp400 = icmp slt i32 %286, %287
  br i1 %cmp400, label %for.body.402, label %for.end.410

for.body.402:                                     ; preds = %for.cond.399
  %288 = load i32, i32* %i, align 4
  %add403 = add nsw i32 %288, 2
  %idxprom404 = sext i32 %add403 to i64
  %289 = load i64*, i64** %edge_checksum, align 8
  %arrayidx405 = getelementptr inbounds i64, i64* %289, i64 %idxprom404
  %290 = load i64, i64* %arrayidx405, align 8
  %tobool406 = icmp ne i64 %290, 0
  br i1 %tobool406, label %if.then.407, label %if.end.408

if.then.407:                                      ; preds = %for.body.402
  %291 = load i32, i32* %i, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0), i32 %291)
  store i32 1, i32* %err, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.407, %for.body.402
  br label %for.inc.409

for.inc.409:                                      ; preds = %if.end.408
  %292 = load i32, i32* %i, align 4
  %inc = add nsw i32 %292, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.399

for.end.410:                                      ; preds = %for.cond.399
  store i32 -1, i32* %last_bb_num_seen, align 4
  store i32 0, i32* %num_bb_notes, align 4
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rtx_first, align 8
  store %struct.rtx_def* %293, %struct.rtx_def** %x, align 8
  br label %for.cond.411

for.cond.411:                                     ; preds = %for.inc.521, %for.end.410
  %294 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool412 = icmp ne %struct.rtx_def* %294, null
  br i1 %tobool412, label %for.body.413, label %for.end.525

for.body.413:                                     ; preds = %for.cond.411
  %295 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %296 = bitcast %struct.rtx_def* %295 to i32*
  %bf.load414 = load i32, i32* %296, align 8
  %bf.clear415 = and i32 %bf.load414, 65535
  %cmp416 = icmp eq i32 %bf.clear415, 37
  br i1 %cmp416, label %land.lhs.true.418, label %if.end.437

land.lhs.true.418:                                ; preds = %for.body.413
  %297 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld419 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %297, i32 0, i32 1
  %arrayidx420 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld419, i32 0, i64 4
  %rtint421 = bitcast %union.rtunion_def* %arrayidx420 to i32*
  %298 = load i32, i32* %rtint421, align 4
  %cmp422 = icmp eq i32 %298, -80
  br i1 %cmp422, label %if.then.424, label %if.end.437

if.then.424:                                      ; preds = %land.lhs.true.418
  %299 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld426 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %arrayidx427 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld426, i32 0, i64 3
  %bb428 = bitcast %union.rtunion_def* %arrayidx427 to %struct.basic_block_def**
  %300 = load %struct.basic_block_def*, %struct.basic_block_def** %bb428, align 8
  store %struct.basic_block_def* %300, %struct.basic_block_def** %bb425, align 8
  %301 = load i32, i32* %num_bb_notes, align 4
  %inc429 = add nsw i32 %301, 1
  store i32 %inc429, i32* %num_bb_notes, align 4
  %302 = load %struct.basic_block_def*, %struct.basic_block_def** %bb425, align 8
  %index430 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %302, i32 0, i32 11
  %303 = load i32, i32* %index430, align 4
  %304 = load i32, i32* %last_bb_num_seen, align 4
  %add431 = add nsw i32 %304, 1
  %cmp432 = icmp ne i32 %303, %add431
  br i1 %cmp432, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %if.then.424
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i32 0, i32 0)) #4
  unreachable

if.end.435:                                       ; preds = %if.then.424
  %305 = load %struct.basic_block_def*, %struct.basic_block_def** %bb425, align 8
  %index436 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %305, i32 0, i32 11
  %306 = load i32, i32* %index436, align 4
  store i32 %306, i32* %last_bb_num_seen, align 4
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.435, %land.lhs.true.418, %for.body.413
  %307 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld438 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %307, i32 0, i32 1
  %arrayidx439 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld438, i32 0, i64 0
  %rtint440 = bitcast %union.rtunion_def* %arrayidx439 to i32*
  %308 = load i32, i32* %rtint440, align 4
  %idxprom441 = sext i32 %308 to i64
  %309 = load %struct.basic_block_def**, %struct.basic_block_def*** %bb_info, align 8
  %arrayidx442 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %309, i64 %idxprom441
  %310 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx442, align 8
  %tobool443 = icmp ne %struct.basic_block_def* %310, null
  br i1 %tobool443, label %if.end.487, label %if.then.444

if.then.444:                                      ; preds = %if.end.437
  %311 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %312 = bitcast %struct.rtx_def* %311 to i32*
  %bf.load445 = load i32, i32* %312, align 8
  %bf.clear446 = and i32 %bf.load445, 65535
  switch i32 %bf.clear446, label %sw.default [
    i32 35, label %sw.bb
    i32 37, label %sw.bb
    i32 36, label %sw.bb.447
  ]

sw.bb:                                            ; preds = %if.then.444, %if.then.444
  br label %sw.epilog

sw.bb.447:                                        ; preds = %if.then.444
  %313 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld448 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %313, i32 0, i32 1
  %arrayidx449 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld448, i32 0, i64 2
  %rtx450 = bitcast %union.rtunion_def* %arrayidx449 to %struct.rtx_def**
  %314 = load %struct.rtx_def*, %struct.rtx_def** %rtx450, align 8
  %tobool451 = icmp ne %struct.rtx_def* %314, null
  br i1 %tobool451, label %land.lhs.true.452, label %if.end.486

land.lhs.true.452:                                ; preds = %sw.bb.447
  %315 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld453 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %arrayidx454 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld453, i32 0, i64 2
  %rtx455 = bitcast %union.rtunion_def* %arrayidx454 to %struct.rtx_def**
  %316 = load %struct.rtx_def*, %struct.rtx_def** %rtx455, align 8
  %317 = bitcast %struct.rtx_def* %316 to i32*
  %bf.load456 = load i32, i32* %317, align 8
  %bf.clear457 = and i32 %bf.load456, 65535
  %cmp458 = icmp eq i32 %bf.clear457, 33
  br i1 %cmp458, label %land.lhs.true.460, label %if.end.486

land.lhs.true.460:                                ; preds = %land.lhs.true.452
  %318 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %318, i32 0, i32 1
  %arrayidx462 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld461, i32 0, i64 2
  %rtx463 = bitcast %union.rtunion_def* %arrayidx462 to %struct.rtx_def**
  %319 = load %struct.rtx_def*, %struct.rtx_def** %rtx463, align 8
  %fld464 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %319, i32 0, i32 1
  %arrayidx465 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld464, i32 0, i64 3
  %rtx466 = bitcast %union.rtunion_def* %arrayidx465 to %struct.rtx_def**
  %320 = load %struct.rtx_def*, %struct.rtx_def** %rtx466, align 8
  %321 = bitcast %struct.rtx_def* %320 to i32*
  %bf.load467 = load i32, i32* %321, align 8
  %bf.clear468 = and i32 %bf.load467, 65535
  %cmp469 = icmp eq i32 %bf.clear468, 45
  br i1 %cmp469, label %if.then.482, label %lor.lhs.false.471

lor.lhs.false.471:                                ; preds = %land.lhs.true.460
  %322 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld472 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %322, i32 0, i32 1
  %arrayidx473 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld472, i32 0, i64 2
  %rtx474 = bitcast %union.rtunion_def* %arrayidx473 to %struct.rtx_def**
  %323 = load %struct.rtx_def*, %struct.rtx_def** %rtx474, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %323, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 3
  %rtx477 = bitcast %union.rtunion_def* %arrayidx476 to %struct.rtx_def**
  %324 = load %struct.rtx_def*, %struct.rtx_def** %rtx477, align 8
  %325 = bitcast %struct.rtx_def* %324 to i32*
  %bf.load478 = load i32, i32* %325, align 8
  %bf.clear479 = and i32 %bf.load478, 65535
  %cmp480 = icmp eq i32 %bf.clear479, 44
  br i1 %cmp480, label %if.then.482, label %if.end.486

if.then.482:                                      ; preds = %lor.lhs.false.471, %land.lhs.true.460
  %326 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld483 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %326, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld483, i32 0, i64 2
  %rtx485 = bitcast %union.rtunion_def* %arrayidx484 to %struct.rtx_def**
  %327 = load %struct.rtx_def*, %struct.rtx_def** %rtx485, align 8
  store %struct.rtx_def* %327, %struct.rtx_def** %x, align 8
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.482, %lor.lhs.false.471, %land.lhs.true.452, %sw.bb.447
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.444
  %328 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), %struct.rtx_def* %328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1887, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.verify_flow_info, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %if.end.486, %sw.bb
  br label %if.end.487

if.end.487:                                       ; preds = %sw.epilog, %if.end.437
  %329 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %330 = bitcast %struct.rtx_def* %329 to i32*
  %bf.load488 = load i32, i32* %330, align 8
  %bf.clear489 = and i32 %bf.load488, 65535
  %idxprom490 = sext i32 %bf.clear489 to i64
  %arrayidx491 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom490
  %331 = load i8, i8* %arrayidx491, align 1
  %conv492 = sext i8 %331 to i32
  %cmp493 = icmp eq i32 %conv492, 105
  br i1 %cmp493, label %land.lhs.true.495, label %if.end.520

land.lhs.true.495:                                ; preds = %if.end.487
  %332 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %333 = bitcast %struct.rtx_def* %332 to i32*
  %bf.load496 = load i32, i32* %333, align 8
  %bf.clear497 = and i32 %bf.load496, 65535
  %cmp498 = icmp eq i32 %bf.clear497, 33
  br i1 %cmp498, label %land.lhs.true.500, label %if.end.520

land.lhs.true.500:                                ; preds = %land.lhs.true.495
  %334 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call501 = call i32 @returnjump_p(%struct.rtx_def* %334)
  %tobool502 = icmp ne i32 %call501, 0
  br i1 %tobool502, label %land.lhs.true.503, label %if.end.520

land.lhs.true.503:                                ; preds = %land.lhs.true.500
  %335 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call504 = call i32 @condjump_p(%struct.rtx_def* %335)
  %tobool505 = icmp ne i32 %call504, 0
  br i1 %tobool505, label %if.end.520, label %land.lhs.true.506

land.lhs.true.506:                                ; preds = %land.lhs.true.503
  %336 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld507 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %336, i32 0, i32 1
  %arrayidx508 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld507, i32 0, i64 2
  %rtx509 = bitcast %union.rtunion_def* %arrayidx508 to %struct.rtx_def**
  %337 = load %struct.rtx_def*, %struct.rtx_def** %rtx509, align 8
  %tobool510 = icmp ne %struct.rtx_def* %337, null
  br i1 %tobool510, label %land.lhs.true.511, label %if.then.519

land.lhs.true.511:                                ; preds = %land.lhs.true.506
  %338 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld512 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %338, i32 0, i32 1
  %arrayidx513 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld512, i32 0, i64 2
  %rtx514 = bitcast %union.rtunion_def* %arrayidx513 to %struct.rtx_def**
  %339 = load %struct.rtx_def*, %struct.rtx_def** %rtx514, align 8
  %340 = bitcast %struct.rtx_def* %339 to i32*
  %bf.load515 = load i32, i32* %340, align 8
  %bf.clear516 = and i32 %bf.load515, 65535
  %cmp517 = icmp eq i32 %bf.clear516, 35
  br i1 %cmp517, label %if.end.520, label %if.then.519

if.then.519:                                      ; preds = %land.lhs.true.511, %land.lhs.true.506
  %341 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), %struct.rtx_def* %341, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1895, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.verify_flow_info, i32 0, i32 0)) #4
  unreachable

if.end.520:                                       ; preds = %land.lhs.true.511, %land.lhs.true.503, %land.lhs.true.500, %land.lhs.true.495, %if.end.487
  br label %for.inc.521

for.inc.521:                                      ; preds = %if.end.520
  %342 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld522 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %342, i32 0, i32 1
  %arrayidx523 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld522, i32 0, i64 2
  %rtx524 = bitcast %union.rtunion_def* %arrayidx523 to %struct.rtx_def**
  %343 = load %struct.rtx_def*, %struct.rtx_def** %rtx524, align 8
  store %struct.rtx_def* %343, %struct.rtx_def** %x, align 8
  br label %for.cond.411

for.end.525:                                      ; preds = %for.cond.411
  %344 = load i32, i32* %num_bb_notes, align 4
  %345 = load i32, i32* @n_basic_blocks, align 4
  %cmp526 = icmp ne i32 %344, %345
  br i1 %cmp526, label %if.then.528, label %if.end.529

if.then.528:                                      ; preds = %for.end.525
  %346 = load i32, i32* %num_bb_notes, align 4
  %347 = load i32, i32* @n_basic_blocks, align 4
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i32 0, i32 0), i32 %346, i32 %347) #4
  unreachable

if.end.529:                                       ; preds = %for.end.525
  %348 = load i32, i32* %err, align 4
  %tobool530 = icmp ne i32 %348, 0
  br i1 %tobool530, label %if.then.531, label %if.end.532

if.then.531:                                      ; preds = %if.end.529
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0)) #4
  unreachable

if.end.532:                                       ; preds = %if.end.529
  %349 = load %struct.basic_block_def**, %struct.basic_block_def*** %bb_info, align 8
  %350 = bitcast %struct.basic_block_def** %349 to i8*
  call void @free(i8* %350) #5
  %351 = load %struct.basic_block_def**, %struct.basic_block_def*** %last_visited, align 8
  %352 = bitcast %struct.basic_block_def** %351 to i8*
  call void @free(i8* %352) #5
  %353 = load i64*, i64** %edge_checksum, align 8
  %354 = bitcast i64* %353 to i8*
  call void @free(i8* %354) #5
  ret void
}

declare void @error(i8*, ...) #1

; Function Attrs: noreturn
declare void @_fatal_insn(i8*, %struct.rtx_def*, i8*, i32, i8*) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare void @debug_rtx(%struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @internal_error(i8*, ...) #2

declare i32 @condjump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @purge_dead_edges(%struct.basic_block_def* %bb) #0 {
entry:
  %retval = alloca i1, align 1
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %next = alloca %struct.edge_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %purged = alloca i8, align 1
  %eqnote = alloca %struct.rtx_def*, align 8
  %note25 = alloca %struct.rtx_def*, align 8
  %b = alloca %struct.edge_def*, align 8
  %f = alloca %struct.edge_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  store i8 0, i8* %purged, align 1
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %4, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call1 = call i32 @may_trap_p(%struct.rtx_def* %6)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call3 = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %7)
  store %struct.rtx_def* %call3, %struct.rtx_def** %eqnote, align 8
  %tobool4 = icmp ne %struct.rtx_def* %call3, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %8 = load %struct.rtx_def*, %struct.rtx_def** %eqnote, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %call9 = call i32 @may_trap_p(%struct.rtx_def* %9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true.5, %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %10, %struct.rtx_def* %11)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %land.lhs.true.5, %lor.lhs.false
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %land.lhs.true, %entry
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end13, align 8
  %call14 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %13)
  br i1 %call14, label %if.end.20, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 5
  %15 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %15, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool16 = icmp ne %struct.edge_def* %16, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 1
  %18 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %18, %struct.edge_def** %next, align 8
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i32 0, i32 6
  %20 = load i32, i32* %flags, align 4
  %and = and i32 %20, 8
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @remove_edge(%struct.edge_def* %21)
  store i8 1, i8* %purged, align 1
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %22 = load %struct.edge_def*, %struct.edge_def** %next, align 8
  store %struct.edge_def* %22, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %if.end.12
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load21 = load i32, i32* %24, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 33
  br i1 %cmp23, label %if.then.24, label %if.end.143

if.then.24:                                       ; preds = %if.end.20
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call26 = call i32 @any_condjump_p(%struct.rtx_def* %25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.35, label %land.lhs.true.28

land.lhs.true.28:                                 ; preds = %if.then.24
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call29 = call i32 @returnjump_p(%struct.rtx_def* %26)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.35, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call32 = call i32 @simplejump_p(%struct.rtx_def* %27)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.31
  store i1 false, i1* %retval
  br label %return

if.end.35:                                        ; preds = %land.lhs.true.31, %land.lhs.true.28, %if.then.24
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ36 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 5
  %29 = load %struct.edge_def*, %struct.edge_def** %succ36, align 8
  store %struct.edge_def* %29, %struct.edge_def** %e, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.76, %if.end.35
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool38 = icmp ne %struct.edge_def* %30, null
  br i1 %tobool38, label %for.body.39, label %for.end.77

for.body.39:                                      ; preds = %for.cond.37
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next40 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 1
  %32 = load %struct.edge_def*, %struct.edge_def** %succ_next40, align 8
  store %struct.edge_def* %32, %struct.edge_def** %next, align 8
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 6
  %34 = load i32, i32* %flags41, align 4
  %and42 = and i32 %34, -3
  store i32 %and42, i32* %flags41, align 4
  %35 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i32 0, i32 6
  %36 = load i32, i32* %flags43, align 4
  %and44 = and i32 %36, 1
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.else

land.lhs.true.46:                                 ; preds = %for.body.39
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call47 = call i32 @any_condjump_p(%struct.rtx_def* %37)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %land.lhs.true.46
  br label %for.inc.76

if.else:                                          ; preds = %land.lhs.true.46, %for.body.39
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 3
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp50 = icmp ne %struct.basic_block_def* %39, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp50, label %land.lhs.true.51, label %if.else.58

land.lhs.true.51:                                 ; preds = %if.else
  %40 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest52 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i32 0, i32 3
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %dest52, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 0
  %42 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 7
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %cmp56 = icmp eq %struct.rtx_def* %42, %44
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %land.lhs.true.51
  br label %for.inc.76

if.else.58:                                       ; preds = %land.lhs.true.51, %if.else
  %45 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 3
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %dest59, align 8
  %cmp60 = icmp eq %struct.basic_block_def* %46, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp60, label %land.lhs.true.61, label %if.else.65

land.lhs.true.61:                                 ; preds = %if.else.58
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call62 = call i32 @returnjump_p(%struct.rtx_def* %47)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %land.lhs.true.61
  br label %for.inc.76

if.else.65:                                       ; preds = %land.lhs.true.61, %if.else.58
  %48 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags66 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 6
  %49 = load i32, i32* %flags66, align 4
  %and67 = and i32 %49, 8
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.72

land.lhs.true.69:                                 ; preds = %if.else.65
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call70 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %50)
  br i1 %call70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.69
  br label %for.inc.76

if.end.72:                                        ; preds = %land.lhs.true.69, %if.else.65
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  store i8 1, i8* %purged, align 1
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @remove_edge(%struct.edge_def* %51)
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75, %if.then.71, %if.then.64, %if.then.57, %if.then.49
  %52 = load %struct.edge_def*, %struct.edge_def** %next, align 8
  store %struct.edge_def* %52, %struct.edge_def** %e, align 8
  br label %for.cond.37

for.end.77:                                       ; preds = %for.cond.37
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ78 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 5
  %54 = load %struct.edge_def*, %struct.edge_def** %succ78, align 8
  %tobool79 = icmp ne %struct.edge_def* %54, null
  br i1 %tobool79, label %lor.lhs.false.80, label %if.then.82

lor.lhs.false.80:                                 ; preds = %for.end.77
  %55 = load i8, i8* %purged, align 1
  %tobool81 = trunc i8 %55 to i1
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %lor.lhs.false.80, %for.end.77
  store i1 false, i1* %retval
  br label %return

if.end.83:                                        ; preds = %lor.lhs.false.80
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool84 = icmp ne %struct._IO_FILE* %56, null
  br i1 %tobool84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.83
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 11
  %59 = load i32, i32* %index, align 4
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i32 %59)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.83
  %60 = load i32, i32* @optimize, align 4
  %tobool88 = icmp ne i32 %60, 0
  br i1 %tobool88, label %if.end.91, label %if.then.89

if.then.89:                                       ; preds = %if.end.87
  %61 = load i8, i8* %purged, align 1
  %tobool90 = trunc i8 %61 to i1
  store i1 %tobool90, i1* %retval
  br label %return

if.end.91:                                        ; preds = %if.end.87
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ92 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i32 0, i32 5
  %63 = load %struct.edge_def*, %struct.edge_def** %succ92, align 8
  %succ_next93 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 1
  %64 = load %struct.edge_def*, %struct.edge_def** %succ_next93, align 8
  %tobool94 = icmp ne %struct.edge_def* %64, null
  br i1 %tobool94, label %if.else.99, label %if.then.95

if.then.95:                                       ; preds = %if.end.91
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i32 0, i32 5
  %66 = load %struct.edge_def*, %struct.edge_def** %succ96, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %66, i32 0, i32 7
  store i32 10000, i32* %probability, align 4
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i32 0, i32 13
  %68 = load i64, i64* %count, align 8
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ97 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i32 0, i32 5
  %70 = load %struct.edge_def*, %struct.edge_def** %succ97, align 8
  %count98 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %70, i32 0, i32 8
  store i64 %68, i64* %count98, align 8
  br label %if.end.141

if.else.99:                                       ; preds = %if.end.91
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call100 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %71, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call100, %struct.rtx_def** %note25, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %note25, align 8
  %tobool101 = icmp ne %struct.rtx_def* %72, null
  br i1 %tobool101, label %if.end.104, label %if.then.102

if.then.102:                                      ; preds = %if.else.99
  %73 = load i8, i8* %purged, align 1
  %tobool103 = trunc i8 %73 to i1
  store i1 %tobool103, i1* %retval
  br label %return

if.end.104:                                       ; preds = %if.else.99
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %74, i32 0, i32 5
  %75 = load %struct.edge_def*, %struct.edge_def** %succ105, align 8
  %flags106 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 6
  %76 = load i32, i32* %flags106, align 4
  %and107 = and i32 %76, 1
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.104
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ109 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i32 0, i32 5
  %78 = load %struct.edge_def*, %struct.edge_def** %succ109, align 8
  %succ_next110 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i32 0, i32 1
  %79 = load %struct.edge_def*, %struct.edge_def** %succ_next110, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.104
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ111 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i32 0, i32 5
  %81 = load %struct.edge_def*, %struct.edge_def** %succ111, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %79, %cond.true ], [ %81, %cond.false ]
  store %struct.edge_def* %cond, %struct.edge_def** %b, align 8
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ112 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %82, i32 0, i32 5
  %83 = load %struct.edge_def*, %struct.edge_def** %succ112, align 8
  %flags113 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i32 0, i32 6
  %84 = load i32, i32* %flags113, align 4
  %and114 = and i32 %84, 1
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %cond.true.116, label %cond.false.118

cond.true.116:                                    ; preds = %cond.end
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ117 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %85, i32 0, i32 5
  %86 = load %struct.edge_def*, %struct.edge_def** %succ117, align 8
  br label %cond.end.121

cond.false.118:                                   ; preds = %cond.end
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ119 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %87, i32 0, i32 5
  %88 = load %struct.edge_def*, %struct.edge_def** %succ119, align 8
  %succ_next120 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %88, i32 0, i32 1
  %89 = load %struct.edge_def*, %struct.edge_def** %succ_next120, align 8
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.118, %cond.true.116
  %cond122 = phi %struct.edge_def* [ %86, %cond.true.116 ], [ %89, %cond.false.118 ]
  store %struct.edge_def* %cond122, %struct.edge_def** %f, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %note25, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 0
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx127 to i64*
  %92 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %92 to i32
  %93 = load %struct.edge_def*, %struct.edge_def** %b, align 8
  %probability128 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %93, i32 0, i32 7
  store i32 %conv, i32* %probability128, align 4
  %94 = load %struct.edge_def*, %struct.edge_def** %b, align 8
  %probability129 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %94, i32 0, i32 7
  %95 = load i32, i32* %probability129, align 4
  %sub = sub nsw i32 10000, %95
  %96 = load %struct.edge_def*, %struct.edge_def** %f, align 8
  %probability130 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %96, i32 0, i32 7
  store i32 %sub, i32* %probability130, align 4
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count131 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %97, i32 0, i32 13
  %98 = load i64, i64* %count131, align 8
  %99 = load %struct.edge_def*, %struct.edge_def** %b, align 8
  %probability132 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i32 0, i32 7
  %100 = load i32, i32* %probability132, align 4
  %conv133 = sext i32 %100 to i64
  %mul = mul nsw i64 %98, %conv133
  %div = sdiv i64 %mul, 10000
  %101 = load %struct.edge_def*, %struct.edge_def** %b, align 8
  %count134 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %101, i32 0, i32 8
  store i64 %div, i64* %count134, align 8
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count135 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %102, i32 0, i32 13
  %103 = load i64, i64* %count135, align 8
  %104 = load %struct.edge_def*, %struct.edge_def** %f, align 8
  %probability136 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %104, i32 0, i32 7
  %105 = load i32, i32* %probability136, align 4
  %conv137 = sext i32 %105 to i64
  %mul138 = mul nsw i64 %103, %conv137
  %div139 = sdiv i64 %mul138, 10000
  %106 = load %struct.edge_def*, %struct.edge_def** %f, align 8
  %count140 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %106, i32 0, i32 8
  store i64 %div139, i64* %count140, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %cond.end.121, %if.then.95
  %107 = load i8, i8* %purged, align 1
  %tobool142 = trunc i8 %107 to i1
  store i1 %tobool142, i1* %retval
  br label %return

if.end.143:                                       ; preds = %if.end.20
  %108 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %108, i32 0, i32 5
  %109 = load %struct.edge_def*, %struct.edge_def** %succ144, align 8
  store %struct.edge_def* %109, %struct.edge_def** %e, align 8
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.151, %if.end.143
  %110 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool146 = icmp ne %struct.edge_def* %110, null
  br i1 %tobool146, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.145
  %111 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags147 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %111, i32 0, i32 6
  %112 = load i32, i32* %flags147, align 4
  %and148 = and i32 %112, 15
  %tobool149 = icmp ne i32 %and148, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.145
  %113 = phi i1 [ false, %for.cond.145 ], [ %tobool149, %land.rhs ]
  br i1 %113, label %for.body.150, label %for.end.153

for.body.150:                                     ; preds = %land.end
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.150
  %114 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next152 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %114, i32 0, i32 1
  %115 = load %struct.edge_def*, %struct.edge_def** %succ_next152, align 8
  store %struct.edge_def* %115, %struct.edge_def** %e, align 8
  br label %for.cond.145

for.end.153:                                      ; preds = %land.end
  %116 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool154 = icmp ne %struct.edge_def* %116, null
  br i1 %tobool154, label %if.end.157, label %if.then.155

if.then.155:                                      ; preds = %for.end.153
  %117 = load i8, i8* %purged, align 1
  %tobool156 = trunc i8 %117 to i1
  store i1 %tobool156, i1* %retval
  br label %return

if.end.157:                                       ; preds = %for.end.153
  %118 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ158 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %118, i32 0, i32 5
  %119 = load %struct.edge_def*, %struct.edge_def** %succ158, align 8
  store %struct.edge_def* %119, %struct.edge_def** %e, align 8
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.168, %if.end.157
  %120 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool160 = icmp ne %struct.edge_def* %120, null
  br i1 %tobool160, label %for.body.161, label %for.end.169

for.body.161:                                     ; preds = %for.cond.159
  %121 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next162 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %121, i32 0, i32 1
  %122 = load %struct.edge_def*, %struct.edge_def** %succ_next162, align 8
  store %struct.edge_def* %122, %struct.edge_def** %next, align 8
  %123 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags163 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %123, i32 0, i32 6
  %124 = load i32, i32* %flags163, align 4
  %and164 = and i32 %124, 1
  %tobool165 = icmp ne i32 %and164, 0
  br i1 %tobool165, label %if.end.167, label %if.then.166

if.then.166:                                      ; preds = %for.body.161
  %125 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @remove_edge(%struct.edge_def* %125)
  store i8 1, i8* %purged, align 1
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %for.body.161
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %126 = load %struct.edge_def*, %struct.edge_def** %next, align 8
  store %struct.edge_def* %126, %struct.edge_def** %e, align 8
  br label %for.cond.159

for.end.169:                                      ; preds = %for.cond.159
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ170 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %127, i32 0, i32 5
  %128 = load %struct.edge_def*, %struct.edge_def** %succ170, align 8
  %tobool171 = icmp ne %struct.edge_def* %128, null
  br i1 %tobool171, label %lor.lhs.false.172, label %if.then.176

lor.lhs.false.172:                                ; preds = %for.end.169
  %129 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ173 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %129, i32 0, i32 5
  %130 = load %struct.edge_def*, %struct.edge_def** %succ173, align 8
  %succ_next174 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %130, i32 0, i32 1
  %131 = load %struct.edge_def*, %struct.edge_def** %succ_next174, align 8
  %tobool175 = icmp ne %struct.edge_def* %131, null
  br i1 %tobool175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %lor.lhs.false.172, %for.end.169
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2045, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.purge_dead_edges, i32 0, i32 0)) #4
  unreachable

if.end.177:                                       ; preds = %lor.lhs.false.172
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ178 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %132, i32 0, i32 5
  %133 = load %struct.edge_def*, %struct.edge_def** %succ178, align 8
  %probability179 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %133, i32 0, i32 7
  store i32 10000, i32* %probability179, align 4
  %134 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count180 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %134, i32 0, i32 13
  %135 = load i64, i64* %count180, align 8
  %136 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ181 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %136, i32 0, i32 5
  %137 = load %struct.edge_def*, %struct.edge_def** %succ181, align 8
  %count182 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %137, i32 0, i32 8
  store i64 %135, i64* %count182, align 8
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool183 = icmp ne %struct._IO_FILE* %138, null
  br i1 %tobool183, label %if.then.184, label %if.end.187

if.then.184:                                      ; preds = %if.end.177
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %140 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index185 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %140, i32 0, i32 11
  %141 = load i32, i32* %index185, align 4
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i32 0, i32 0), i32 %141)
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.184, %if.end.177
  %142 = load i8, i8* %purged, align 1
  %tobool188 = trunc i8 %142 to i1
  store i1 %tobool188, i1* %retval
  br label %return

return:                                           ; preds = %if.end.187, %if.then.155, %if.end.141, %if.then.102, %if.then.89, %if.then.82, %if.then.34
  %143 = load i1, i1* %retval
  ret i1 %143
}

declare i32 @may_trap_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare i32 @simplejump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @purge_all_dead_edges(i32 %update_life_p) #0 {
entry:
  %update_life_p.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %purged = alloca i32, align 4
  %blocks = alloca %struct.simple_bitmap_def*, align 8
  %purged_here = alloca i8, align 1
  store i32 %update_life_p, i32* %update_life_p.addr, align 4
  store i32 0, i32* %purged, align 4
  store %struct.simple_bitmap_def* null, %struct.simple_bitmap_def** %blocks, align 8
  %0 = load i32, i32* %update_life_p.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %blocks, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %call1 = call zeroext i1 @purge_dead_edges(%struct.basic_block_def* %7)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %purged_here, align 1
  %8 = load i8, i8* %purged_here, align 1
  %tobool2 = trunc i8 %8 to i1
  %conv = zext i1 %tobool2 to i32
  %9 = load i32, i32* %purged, align 4
  %or = or i32 %9, %conv
  store i32 %or, i32* %purged, align 4
  %10 = load i8, i8* %purged_here, align 1
  %tobool3 = trunc i8 %10 to i1
  br i1 %tobool3, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %update_life_p.addr, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %land.lhs.true
  %12 = load i32, i32* %i, align 4
  %rem = urem i32 %12, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %13 = load i32, i32* %i, align 4
  %div = udiv i32 %13, 64
  %idxprom7 = zext i32 %div to i64
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom7
  %15 = load i64, i64* %arrayidx8, align 8
  %or9 = or i64 %15, %shl
  store i64 %or9, i64* %arrayidx8, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %update_life_p.addr, align 4
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.15

land.lhs.true.12:                                 ; preds = %for.end
  %18 = load i32, i32* %purged, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.12
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  call void @update_life_info(%struct.simple_bitmap_def* %19, i32 1, i32 25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.12, %for.end
  %20 = load i32, i32* %update_life_p.addr, align 4
  %tobool16 = icmp ne i32 %20, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %22 = bitcast %struct.simple_bitmap_def* %21 to i8*
  call void @free(i8* %22) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %23 = load i32, i32* %purged, align 4
  %tobool19 = icmp ne i32 %23, 0
  ret i1 %tobool19
}

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare void @update_life_info(%struct.simple_bitmap_def*, i32, i32) #1

declare i32 @in_expr_list_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

declare zeroext i1 @can_fallthru(%struct.basic_block_def*, %struct.basic_block_def*) #1

declare %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @last_loop_beg_note(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %last, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %7 = load i32, i32* %rtint, align 4
  %cmp3 = icmp ne i32 %7, -80
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 4
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %10 = load i32, i32* %rtint6, align 4
  %cmp7 = icmp eq i32 %10, -96
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %last, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  ret %struct.rtx_def* %14
}

declare %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

declare void @redirect_edge_pred(%struct.edge_def*, %struct.basic_block_def*) #1

declare i32 @ix86_can_use_return_insn_p() #1

declare %struct.rtx_def* @gen_return() #1

declare %struct.rtx_def* @emit_insns_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insns_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @find_sub_basic_blocks(%struct.basic_block_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
