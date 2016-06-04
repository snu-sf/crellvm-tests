; ModuleID = 'cfg.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
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
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@entry_exit_blocks = global [2 x %struct.basic_block_def] [%struct.basic_block_def { %struct.rtx_def* null, %struct.rtx_def* null, %union.tree_node* null, %union.tree_node* null, %struct.edge_def* null, %struct.edge_def* null, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, i8* null, i32 -1, i32 0, i64 0, i32 0, i32 0 }, %struct.basic_block_def { %struct.rtx_def* null, %struct.rtx_def* null, %union.tree_node* null, %union.tree_node* null, %struct.edge_def* null, %struct.edge_def* null, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, i8* null, i32 -2, i32 0, i64 0, i32 0, i32 0 }], align 16
@init_flow.initialized = internal global i32 0, align 4
@first_deleted_edge = common global %struct.edge_def* null, align 8
@first_deleted_block = internal global %struct.basic_block_def* null, align 8
@n_edges = common global i32 0, align 4
@flow_obstack = common global %struct.obstack zeroinitializer, align 8
@flow_firstobj = internal global i8* null, align 8
@n_basic_blocks = common global i32 0, align 4
@basic_block_info = common global %struct.varray_head_tag* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cfg.c\00", align 1
@__FUNCTION__.clear_edges = private unnamed_addr constant [12 x i8] c"clear_edges\00", align 1
@__FUNCTION__.remove_edge = private unnamed_addr constant [12 x i8] c"remove_edge\00", align 1
@dump_flow_info.reg_class_names = internal constant [25 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"NO_REGS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"AREG\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DREG\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CREG\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"BREG\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"SIREG\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"DIREG\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"AD_REGS\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Q_REGS\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"NON_Q_REGS\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"INDEX_REGS\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"LEGACY_REGS\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"GENERAL_REGS\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"FP_TOP_REG\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"FP_SECOND_REG\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"FLOAT_REGS\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"SSE_REGS\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"MMX_REGS\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"FP_TOP_SSE_REGS\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"FP_SECOND_SSE_REGS\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"FLOAT_SSE_REGS\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"FLOAT_INT_REGS\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"INT_SSE_REGS\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"FLOAT_INT_SSE_REGS\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"ALL_REGS\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"%d registers.\0A\00", align 1
@max_regno = external global i32, align 4
@reg_n_info = external global %struct.varray_head_tag*, align 8
@.str.27 = private unnamed_addr constant [43 x i8] c"\0ARegister %d used %d times across %d insns\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c" in block %d\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"; set %d time%s\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@cfun = external global %struct.function*, align 8
@.str.32 = private unnamed_addr constant [11 x i8] c"; user var\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"; dies in %d places\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"; crosses 1 call\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"; crosses %d calls\00", align 1
@mode_size = external constant [59 x i8], align 16
@target_flags = external global i32, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"; %d bytes\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"; pref %s\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"; %s or none\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"; pref %s, else %s\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"; pointer\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"\0A%d basic blocks, %d edges.\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"\0ABasic block %d: first insn %d, last %d, \00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"loop_depth %d, count \00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c", freq %i.\0A\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"Predecessors: \00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"\0ASuccessors: \00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"\0ARegisters live at start:\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"\0ARegisters live at end:\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.51 = private unnamed_addr constant [7 x i8] c" ENTRY\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c" EXIT\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c" [%.1f%%] \00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c" count:\00", align 1
@dump_edge_info.bitnames = internal constant [6 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0)], align 16
@.str.56 = private unnamed_addr constant [9 x i8] c"fallthru\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"abcall\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"fake\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"dfs_back\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@first_block_aux_obj = internal global i8* null, align 8
@__FUNCTION__.alloc_aux_for_block = private unnamed_addr constant [20 x i8] c"alloc_aux_for_block\00", align 1
@block_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@alloc_aux_for_blocks.initialized = internal global i32 0, align 4
@__FUNCTION__.alloc_aux_for_blocks = private unnamed_addr constant [21 x i8] c"alloc_aux_for_blocks\00", align 1
@__FUNCTION__.free_aux_for_blocks = private unnamed_addr constant [20 x i8] c"free_aux_for_blocks\00", align 1
@alloc_aux_for_edges.initialized = internal global i32 0, align 4
@edge_aux_obstack = internal global %struct.obstack zeroinitializer, align 8
@first_edge_aux_obj = internal global i8* null, align 8
@__FUNCTION__.alloc_aux_for_edges = private unnamed_addr constant [20 x i8] c"alloc_aux_for_edges\00", align 1
@__FUNCTION__.free_aux_for_edges = private unnamed_addr constant [19 x i8] c"free_aux_for_edges\00", align 1
@__FUNCTION__.alloc_aux_for_edge = private unnamed_addr constant [19 x i8] c"alloc_aux_for_edge\00", align 1

; Function Attrs: nounwind uwtable
define void @init_flow() #0 {
entry:
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp36 = alloca i8*, align 8
  %__o38 = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %__h52 = alloca %struct.obstack*, align 8
  %__o54 = alloca %struct.obstack*, align 8
  %__len56 = alloca i32, align 4
  %tmp70 = alloca i8*, align 8
  %__o172 = alloca %struct.obstack*, align 8
  %value74 = alloca i8*, align 8
  %tmp115 = alloca i8*, align 8
  store %struct.edge_def* null, %struct.edge_def** @first_deleted_edge, align 8
  store %struct.basic_block_def* null, %struct.basic_block_def** @first_deleted_block, align 8
  store i32 0, i32* @n_edges, align 4
  %0 = load i32, i32* @init_flow.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @gcc_obstack_init(%struct.obstack* @flow_obstack)
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h, align 8
  %1 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %1, %struct.obstack** %__o, align 8
  store i32 0, i32* %__len, align 4
  %2 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %2, i32 0, i32 4
  %3 = load i8*, i8** %chunk_limit, align 8
  %4 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i32 0, i32 3
  %5 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %6 = load i32, i32* %__len, align 4
  %conv = sext i32 %6 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %8 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %9 = load i32, i32* %__len, align 4
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free3 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free3, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free3, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %12, %struct.obstack** %__o1, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 2
  %14 = load i8*, i8** %object_base, align 8
  store i8* %14, i8** %value, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free6 = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %next_free6, align 8
  %17 = load i8*, i8** %value, align 8
  %cmp7 = icmp eq i8* %16, %17
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free11 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free11, align 8
  %sub.ptr.lhs.cast12 = ptrtoint i8* %20 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast12, 0
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 6
  %22 = load i32, i32* %alignment_mask, align 4
  %conv14 = sext i32 %22 to i64
  %add = add nsw i64 %sub.ptr.sub13, %conv14
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask15 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 6
  %24 = load i32, i32* %alignment_mask15, align 4
  %neg = xor i32 %24, -1
  %conv16 = sext i32 %neg to i64
  %and = and i64 %add, %conv16
  %add.ptr17 = getelementptr inbounds i8, i8* null, i64 %and
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 3
  store i8* %add.ptr17, i8** %next_free18, align 8
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  %27 = load i8*, i8** %next_free19, align 8
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 1
  %29 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %30 = bitcast %struct._obstack_chunk* %29 to i8*
  %sub.ptr.lhs.cast20 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast21 = ptrtoint i8* %30 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit23 = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit23, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk24 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 1
  %34 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk24, align 8
  %35 = bitcast %struct._obstack_chunk* %34 to i8*
  %sub.ptr.lhs.cast25 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast26 = ptrtoint i8* %35 to i64
  %sub.ptr.sub27 = sub i64 %sub.ptr.lhs.cast25, %sub.ptr.rhs.cast26
  %cmp28 = icmp sgt i64 %sub.ptr.sub22, %sub.ptr.sub27
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %if.end.10
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit31 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 4
  %37 = load i8*, i8** %chunk_limit31, align 8
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free32 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  store i8* %37, i8** %next_free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %if.end.10
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free34 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  %40 = load i8*, i8** %next_free34, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base35 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 2
  store i8* %40, i8** %object_base35, align 8
  %42 = load i8*, i8** %value, align 8
  store i8* %42, i8** %tmp36
  %43 = load i8*, i8** %tmp36
  store i8* %43, i8** %tmp
  %44 = load i8*, i8** %tmp
  store i8* %44, i8** @flow_firstobj, align 8
  store i32 1, i32* @init_flow.initialized, align 4
  br label %if.end.116

if.else:                                          ; preds = %entry
  store %struct.obstack* @flow_obstack, %struct.obstack** %__o38, align 8
  %45 = load i8*, i8** @flow_firstobj, align 8
  store i8* %45, i8** %__obj, align 8
  %46 = load i8*, i8** %__obj, align 8
  %47 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %chunk40 = getelementptr inbounds %struct.obstack, %struct.obstack* %47, i32 0, i32 1
  %48 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk40, align 8
  %49 = bitcast %struct._obstack_chunk* %48 to i8*
  %cmp41 = icmp ugt i8* %46, %49
  br i1 %cmp41, label %land.lhs.true, label %if.else.49

land.lhs.true:                                    ; preds = %if.else
  %50 = load i8*, i8** %__obj, align 8
  %51 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %chunk_limit43 = getelementptr inbounds %struct.obstack, %struct.obstack* %51, i32 0, i32 4
  %52 = load i8*, i8** %chunk_limit43, align 8
  %cmp44 = icmp ult i8* %50, %52
  br i1 %cmp44, label %if.then.46, label %if.else.49

if.then.46:                                       ; preds = %land.lhs.true
  %53 = load i8*, i8** %__obj, align 8
  %54 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %object_base47 = getelementptr inbounds %struct.obstack, %struct.obstack* %54, i32 0, i32 2
  store i8* %53, i8** %object_base47, align 8
  %55 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %next_free48 = getelementptr inbounds %struct.obstack, %struct.obstack* %55, i32 0, i32 3
  store i8* %53, i8** %next_free48, align 8
  br label %if.end.50

if.else.49:                                       ; preds = %land.lhs.true, %if.else
  %56 = load %struct.obstack*, %struct.obstack** %__o38, align 8
  %57 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %56, i8* %57)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.49, %if.then.46
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h52, align 8
  %58 = load %struct.obstack*, %struct.obstack** %__h52, align 8
  store %struct.obstack* %58, %struct.obstack** %__o54, align 8
  store i32 0, i32* %__len56, align 4
  %59 = load %struct.obstack*, %struct.obstack** %__o54, align 8
  %chunk_limit57 = getelementptr inbounds %struct.obstack, %struct.obstack* %59, i32 0, i32 4
  %60 = load i8*, i8** %chunk_limit57, align 8
  %61 = load %struct.obstack*, %struct.obstack** %__o54, align 8
  %next_free58 = getelementptr inbounds %struct.obstack, %struct.obstack* %61, i32 0, i32 3
  %62 = load i8*, i8** %next_free58, align 8
  %sub.ptr.lhs.cast59 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast60 = ptrtoint i8* %62 to i64
  %sub.ptr.sub61 = sub i64 %sub.ptr.lhs.cast59, %sub.ptr.rhs.cast60
  %63 = load i32, i32* %__len56, align 4
  %conv62 = sext i32 %63 to i64
  %cmp63 = icmp slt i64 %sub.ptr.sub61, %conv62
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.50
  %64 = load %struct.obstack*, %struct.obstack** %__o54, align 8
  %65 = load i32, i32* %__len56, align 4
  call void @_obstack_newchunk(%struct.obstack* %64, i32 %65)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.50
  %66 = load i32, i32* %__len56, align 4
  %67 = load %struct.obstack*, %struct.obstack** %__o54, align 8
  %next_free67 = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 3
  %68 = load i8*, i8** %next_free67, align 8
  %idx.ext68 = sext i32 %66 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %68, i64 %idx.ext68
  store i8* %add.ptr69, i8** %next_free67, align 8
  %69 = load %struct.obstack*, %struct.obstack** %__h52, align 8
  store %struct.obstack* %69, %struct.obstack** %__o172, align 8
  %70 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %object_base75 = getelementptr inbounds %struct.obstack, %struct.obstack* %70, i32 0, i32 2
  %71 = load i8*, i8** %object_base75, align 8
  store i8* %71, i8** %value74, align 8
  %72 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %next_free76 = getelementptr inbounds %struct.obstack, %struct.obstack* %72, i32 0, i32 3
  %73 = load i8*, i8** %next_free76, align 8
  %74 = load i8*, i8** %value74, align 8
  %cmp77 = icmp eq i8* %73, %74
  br i1 %cmp77, label %if.then.79, label %if.end.84

if.then.79:                                       ; preds = %if.end.66
  %75 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %maybe_empty_object80 = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 10
  %bf.load81 = load i8, i8* %maybe_empty_object80, align 8
  %bf.clear82 = and i8 %bf.load81, -3
  %bf.set83 = or i8 %bf.clear82, 2
  store i8 %bf.set83, i8* %maybe_empty_object80, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.79, %if.end.66
  %76 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %next_free85 = getelementptr inbounds %struct.obstack, %struct.obstack* %76, i32 0, i32 3
  %77 = load i8*, i8** %next_free85, align 8
  %sub.ptr.lhs.cast86 = ptrtoint i8* %77 to i64
  %sub.ptr.sub87 = sub i64 %sub.ptr.lhs.cast86, 0
  %78 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %alignment_mask88 = getelementptr inbounds %struct.obstack, %struct.obstack* %78, i32 0, i32 6
  %79 = load i32, i32* %alignment_mask88, align 4
  %conv89 = sext i32 %79 to i64
  %add90 = add nsw i64 %sub.ptr.sub87, %conv89
  %80 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %alignment_mask91 = getelementptr inbounds %struct.obstack, %struct.obstack* %80, i32 0, i32 6
  %81 = load i32, i32* %alignment_mask91, align 4
  %neg92 = xor i32 %81, -1
  %conv93 = sext i32 %neg92 to i64
  %and94 = and i64 %add90, %conv93
  %add.ptr95 = getelementptr inbounds i8, i8* null, i64 %and94
  %82 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %next_free96 = getelementptr inbounds %struct.obstack, %struct.obstack* %82, i32 0, i32 3
  store i8* %add.ptr95, i8** %next_free96, align 8
  %83 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %next_free97 = getelementptr inbounds %struct.obstack, %struct.obstack* %83, i32 0, i32 3
  %84 = load i8*, i8** %next_free97, align 8
  %85 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %chunk98 = getelementptr inbounds %struct.obstack, %struct.obstack* %85, i32 0, i32 1
  %86 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk98, align 8
  %87 = bitcast %struct._obstack_chunk* %86 to i8*
  %sub.ptr.lhs.cast99 = ptrtoint i8* %84 to i64
  %sub.ptr.rhs.cast100 = ptrtoint i8* %87 to i64
  %sub.ptr.sub101 = sub i64 %sub.ptr.lhs.cast99, %sub.ptr.rhs.cast100
  %88 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %chunk_limit102 = getelementptr inbounds %struct.obstack, %struct.obstack* %88, i32 0, i32 4
  %89 = load i8*, i8** %chunk_limit102, align 8
  %90 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %chunk103 = getelementptr inbounds %struct.obstack, %struct.obstack* %90, i32 0, i32 1
  %91 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk103, align 8
  %92 = bitcast %struct._obstack_chunk* %91 to i8*
  %sub.ptr.lhs.cast104 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast105 = ptrtoint i8* %92 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105
  %cmp107 = icmp sgt i64 %sub.ptr.sub101, %sub.ptr.sub106
  br i1 %cmp107, label %if.then.109, label %if.end.112

if.then.109:                                      ; preds = %if.end.84
  %93 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %chunk_limit110 = getelementptr inbounds %struct.obstack, %struct.obstack* %93, i32 0, i32 4
  %94 = load i8*, i8** %chunk_limit110, align 8
  %95 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %next_free111 = getelementptr inbounds %struct.obstack, %struct.obstack* %95, i32 0, i32 3
  store i8* %94, i8** %next_free111, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %if.end.84
  %96 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %next_free113 = getelementptr inbounds %struct.obstack, %struct.obstack* %96, i32 0, i32 3
  %97 = load i8*, i8** %next_free113, align 8
  %98 = load %struct.obstack*, %struct.obstack** %__o172, align 8
  %object_base114 = getelementptr inbounds %struct.obstack, %struct.obstack* %98, i32 0, i32 2
  store i8* %97, i8** %object_base114, align 8
  %99 = load i8*, i8** %value74, align 8
  store i8* %99, i8** %tmp115
  %100 = load i8*, i8** %tmp115
  store i8* %100, i8** %tmp70
  %101 = load i8*, i8** %tmp70
  store i8* %101, i8** @flow_firstobj, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.112, %if.end.33
  ret void
}

declare void @gcc_obstack_init(%struct.obstack*) #1

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

declare void @obstack_free(%struct.obstack*, i8*) #1

; Function Attrs: nounwind uwtable
define void @clear_edges() #0 {
entry:
  %i = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %e2 = alloca %struct.edge_def*, align 8
  %next = alloca %struct.edge_def*, align 8
  %next7 = alloca %struct.edge_def*, align 8
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
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %bb, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %7 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %tobool = icmp ne %struct.edge_def* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 1
  %9 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %9, %struct.edge_def** %next, align 8
  %10 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  call void @free_edge(%struct.edge_def* %10)
  %11 = load %struct.edge_def*, %struct.edge_def** %next, align 8
  store %struct.edge_def* %11, %struct.edge_def** %e2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 5
  store %struct.edge_def* null, %struct.edge_def** %succ3, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 4
  store %struct.edge_def* null, %struct.edge_def** %pred, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %15, %struct.edge_def** %e, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.6, %for.end
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool5 = icmp ne %struct.edge_def* %16, null
  br i1 %tobool5, label %while.body.6, label %while.end.9

while.body.6:                                     ; preds = %while.cond.4
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 1
  %18 = load %struct.edge_def*, %struct.edge_def** %succ_next8, align 8
  store %struct.edge_def* %18, %struct.edge_def** %next7, align 8
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @free_edge(%struct.edge_def* %19)
  %20 = load %struct.edge_def*, %struct.edge_def** %next7, align 8
  store %struct.edge_def* %20, %struct.edge_def** %e, align 8
  br label %while.cond.4

while.end.9:                                      ; preds = %while.cond.4
  store %struct.edge_def* null, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  store %struct.edge_def* null, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  %21 = load i32, i32* @n_edges, align 4
  %tobool10 = icmp ne i32 %21, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end.9
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.clear_edges, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %while.end.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_edge(%struct.edge_def* %e) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  %0 = load i32, i32* @n_edges, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @n_edges, align 4
  %1 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %2 = bitcast %struct.edge_def* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 64, i32 8, i1 false)
  %3 = load %struct.edge_def*, %struct.edge_def** @first_deleted_edge, align 8
  %4 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 1
  store %struct.edge_def* %3, %struct.edge_def** %succ_next, align 8
  %5 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  store %struct.edge_def* %5, %struct.edge_def** @first_deleted_edge, align 8
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.basic_block_def* @alloc_block() #0 {
entry:
  %bb = alloca %struct.basic_block_def*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp37 = alloca i8*, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** @first_deleted_block, align 8
  %tobool = icmp ne %struct.basic_block_def* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** @first_deleted_block, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %bb, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 5
  %3 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %4 = bitcast %struct.edge_def* %3 to %struct.basic_block_def*
  store %struct.basic_block_def* %4, %struct.basic_block_def** @first_deleted_block, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  store %struct.edge_def* null, %struct.edge_def** %succ1, align 8
  br label %if.end.38

if.else:                                          ; preds = %entry
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h, align 8
  %6 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %6, %struct.obstack** %__o, align 8
  store i32 112, i32* %__len, align 4
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 4
  %8 = load i8*, i8** %chunk_limit, align 8
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 3
  %10 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %11 = load i32, i32* %__len, align 4
  %conv = sext i32 %11 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %13 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %14 = load i32, i32* %__len, align 4
  %15 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free4 = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %next_free4, align 8
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free4, align 8
  %17 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %17, %struct.obstack** %__o1, align 8
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 2
  %19 = load i8*, i8** %object_base, align 8
  store i8* %19, i8** %value, align 8
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 3
  %21 = load i8*, i8** %next_free7, align 8
  %22 = load i8*, i8** %value, align 8
  %cmp8 = icmp eq i8* %21, %22
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free12 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 3
  %25 = load i8*, i8** %next_free12, align 8
  %sub.ptr.lhs.cast13 = ptrtoint i8* %25 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast13, 0
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 6
  %27 = load i32, i32* %alignment_mask, align 4
  %conv15 = sext i32 %27 to i64
  %add = add nsw i64 %sub.ptr.sub14, %conv15
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask16 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 6
  %29 = load i32, i32* %alignment_mask16, align 4
  %neg = xor i32 %29, -1
  %conv17 = sext i32 %neg to i64
  %and = and i64 %add, %conv17
  %add.ptr18 = getelementptr inbounds i8, i8* null, i64 %and
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 3
  store i8* %add.ptr18, i8** %next_free19, align 8
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 3
  %32 = load i8*, i8** %next_free20, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 1
  %34 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %35 = bitcast %struct._obstack_chunk* %34 to i8*
  %sub.ptr.lhs.cast21 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %35 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit24 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 4
  %37 = load i8*, i8** %chunk_limit24, align 8
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk25 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 1
  %39 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk25, align 8
  %40 = bitcast %struct._obstack_chunk* %39 to i8*
  %sub.ptr.lhs.cast26 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %40 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %cmp29 = icmp sgt i64 %sub.ptr.sub23, %sub.ptr.sub28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.11
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit32 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 4
  %42 = load i8*, i8** %chunk_limit32, align 8
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3
  store i8* %42, i8** %next_free33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.11
  %44 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 3
  %45 = load i8*, i8** %next_free35, align 8
  %46 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base36 = getelementptr inbounds %struct.obstack, %struct.obstack* %46, i32 0, i32 2
  store i8* %45, i8** %object_base36, align 8
  %47 = load i8*, i8** %value, align 8
  store i8* %47, i8** %tmp37
  %48 = load i8*, i8** %tmp37
  store i8* %48, i8** %tmp
  %49 = load i8*, i8** %tmp
  %50 = bitcast i8* %49 to %struct.basic_block_def*
  store %struct.basic_block_def* %50, %struct.basic_block_def** %bb, align 8
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %52 = bitcast %struct.basic_block_def* %51 to i8*
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 112, i32 8, i1 false)
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.34, %if.then
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  ret %struct.basic_block_def* %53
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @expunge_block_nocompact(%struct.basic_block_def* %b) #0 {
entry:
  %b.addr = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %1 = bitcast %struct.basic_block_def* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 112, i32 8, i1 false)
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 11
  store i32 -3, i32* %index, align 4
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** @first_deleted_block, align 8
  %4 = bitcast %struct.basic_block_def* %3 to %struct.edge_def*
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  store %struct.edge_def* %4, %struct.edge_def** %succ, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** @first_deleted_block, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @expunge_block(%struct.basic_block_def* %b) #0 {
entry:
  %b.addr = alloca %struct.basic_block_def*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  store i32 %0, i32* %n, align 4
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 11
  %2 = load i32, i32* %index, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 1
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %add, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %5, 1
  %idxprom = sext i32 %add1 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %7, %struct.basic_block_def** %x, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data3 to [1 x %struct.basic_block_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom2
  store %struct.basic_block_def* %8, %struct.basic_block_def** %arrayidx5, align 8
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x, align 8
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  store i32 %11, i32* %index6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* @n_basic_blocks, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* @n_basic_blocks, align 4
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 0
  %16 = load i64, i64* %num_elements, align 8
  %dec7 = add i64 %16, -1
  store i64 %dec7, i64* %num_elements, align 8
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  call void @expunge_block_nocompact(%struct.basic_block_def* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** %edge_cache, %struct.basic_block_def* %src, %struct.basic_block_def* %dst, i32 %flags) #0 {
entry:
  %retval = alloca %struct.edge_def*, align 8
  %edge_cache.addr = alloca %struct.simple_bitmap_def**, align 8
  %src.addr = alloca %struct.basic_block_def*, align 8
  %dst.addr = alloca %struct.basic_block_def*, align 8
  %flags.addr = alloca i32, align 4
  %use_edge_cache = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp56 = alloca i8*, align 8
  store %struct.simple_bitmap_def** %edge_cache, %struct.simple_bitmap_def*** %edge_cache.addr, align 8
  store %struct.basic_block_def* %src, %struct.basic_block_def** %src.addr, align 8
  store %struct.basic_block_def* %dst, %struct.basic_block_def** %dst.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache.addr, align 8
  %tobool = icmp ne %struct.simple_bitmap_def** %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %cmp = icmp ne %struct.basic_block_def* %1, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %cmp1 = icmp ne %struct.basic_block_def* %2, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %use_edge_cache, align 4
  %4 = load i32, i32* %use_edge_cache, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %land.end
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 11
  %6 = load i32, i32* %index, align 4
  %div = udiv i32 %6, 64
  %idxprom = zext i32 %div to i64
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index2, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %9, i64 %idxprom3
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %11 = load i64, i64* %arrayidx4, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %index5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index5, align 4
  %rem = urem i32 %13, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %11, %sh_prom
  %and = and i64 %shr, 1
  %tobool6 = icmp ne i64 %and, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %sw.default
  br label %sw.epilog

if.end:                                           ; preds = %sw.default
  %14 = load i32, i32* %flags.addr, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  br label %sw.bb

sw.bb:                                            ; preds = %land.end, %if.end.9
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 5
  %16 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %16, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool10 = icmp ne %struct.edge_def* %17, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 3
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %cmp11 = icmp eq %struct.basic_block_def* %19, %20
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %for.body
  %21 = load i32, i32* %flags.addr, align 4
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 6
  %23 = load i32, i32* %flags13, align 4
  %or = or i32 %23, %21
  store i32 %or, i32* %flags13, align 4
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end.14:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 1
  %25 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %25, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.then
  %26 = load %struct.edge_def*, %struct.edge_def** @first_deleted_edge, align 8
  %tobool15 = icmp ne %struct.edge_def* %26, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %sw.epilog
  %27 = load %struct.edge_def*, %struct.edge_def** @first_deleted_edge, align 8
  store %struct.edge_def* %27, %struct.edge_def** %e, align 8
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 1
  %29 = load %struct.edge_def*, %struct.edge_def** %succ_next17, align 8
  store %struct.edge_def* %29, %struct.edge_def** @first_deleted_edge, align 8
  br label %if.end.57

if.else:                                          ; preds = %sw.epilog
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %30, %struct.obstack** %__o, align 8
  store i32 64, i32* %__len, align 4
  %31 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 3
  %34 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %35 = load i32, i32* %__len, align 4
  %conv = sext i32 %35 to i64
  %cmp18 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else
  %36 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %37 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %36, i32 %37)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.else
  %38 = load i32, i32* %__len, align 4
  %39 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free22 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  %40 = load i8*, i8** %next_free22, align 8
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free22, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %41, %struct.obstack** %__o1, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 2
  %43 = load i8*, i8** %object_base, align 8
  store i8* %43, i8** %value, align 8
  %44 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free25 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 3
  %45 = load i8*, i8** %next_free25, align 8
  %46 = load i8*, i8** %value, align 8
  %cmp26 = icmp eq i8* %45, %46
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.21
  %47 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %47, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.21
  %48 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free30 = getelementptr inbounds %struct.obstack, %struct.obstack* %48, i32 0, i32 3
  %49 = load i8*, i8** %next_free30, align 8
  %sub.ptr.lhs.cast31 = ptrtoint i8* %49 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast31, 0
  %50 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %50, i32 0, i32 6
  %51 = load i32, i32* %alignment_mask, align 4
  %conv33 = sext i32 %51 to i64
  %add = add nsw i64 %sub.ptr.sub32, %conv33
  %52 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask34 = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 6
  %53 = load i32, i32* %alignment_mask34, align 4
  %neg = xor i32 %53, -1
  %conv35 = sext i32 %neg to i64
  %and36 = and i64 %add, %conv35
  %add.ptr37 = getelementptr inbounds i8, i8* null, i64 %and36
  %54 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free38 = getelementptr inbounds %struct.obstack, %struct.obstack* %54, i32 0, i32 3
  store i8* %add.ptr37, i8** %next_free38, align 8
  %55 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free39 = getelementptr inbounds %struct.obstack, %struct.obstack* %55, i32 0, i32 3
  %56 = load i8*, i8** %next_free39, align 8
  %57 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %57, i32 0, i32 1
  %58 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %59 = bitcast %struct._obstack_chunk* %58 to i8*
  %sub.ptr.lhs.cast40 = ptrtoint i8* %56 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i8* %59 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %60 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit43 = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 4
  %61 = load i8*, i8** %chunk_limit43, align 8
  %62 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk44 = getelementptr inbounds %struct.obstack, %struct.obstack* %62, i32 0, i32 1
  %63 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk44, align 8
  %64 = bitcast %struct._obstack_chunk* %63 to i8*
  %sub.ptr.lhs.cast45 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast46 = ptrtoint i8* %64 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %cmp48 = icmp sgt i64 %sub.ptr.sub42, %sub.ptr.sub47
  br i1 %cmp48, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.29
  %65 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit51 = getelementptr inbounds %struct.obstack, %struct.obstack* %65, i32 0, i32 4
  %66 = load i8*, i8** %chunk_limit51, align 8
  %67 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free52 = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 3
  store i8* %66, i8** %next_free52, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.29
  %68 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free54 = getelementptr inbounds %struct.obstack, %struct.obstack* %68, i32 0, i32 3
  %69 = load i8*, i8** %next_free54, align 8
  %70 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base55 = getelementptr inbounds %struct.obstack, %struct.obstack* %70, i32 0, i32 2
  store i8* %69, i8** %object_base55, align 8
  %71 = load i8*, i8** %value, align 8
  store i8* %71, i8** %tmp56
  %72 = load i8*, i8** %tmp56
  store i8* %72, i8** %tmp
  %73 = load i8*, i8** %tmp
  %74 = bitcast i8* %73 to %struct.edge_def*
  store %struct.edge_def* %74, %struct.edge_def** %e, align 8
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %76 = bitcast %struct.edge_def* %75 to i8*
  call void @llvm.memset.p0i8.i64(i8* %76, i8 0, i64 64, i32 8, i1 false)
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.53, %if.then.16
  %77 = load i32, i32* @n_edges, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* @n_edges, align 4
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %succ58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i32 0, i32 5
  %79 = load %struct.edge_def*, %struct.edge_def** %succ58, align 8
  %80 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %80, i32 0, i32 1
  store %struct.edge_def* %79, %struct.edge_def** %succ_next59, align 8
  %81 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %81, i32 0, i32 4
  %82 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %83 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i32 0, i32 0
  store %struct.edge_def* %82, %struct.edge_def** %pred_next, align 8
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %85 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %85, i32 0, i32 2
  store %struct.basic_block_def* %84, %struct.basic_block_def** %src60, align 8
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %87 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest61 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %87, i32 0, i32 3
  store %struct.basic_block_def* %86, %struct.basic_block_def** %dest61, align 8
  %88 = load i32, i32* %flags.addr, align 4
  %89 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags62 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %89, i32 0, i32 6
  store i32 %88, i32* %flags62, align 4
  %90 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %91 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %succ63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %91, i32 0, i32 5
  store %struct.edge_def* %90, %struct.edge_def** %succ63, align 8
  %92 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %pred64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %93, i32 0, i32 4
  store %struct.edge_def* %92, %struct.edge_def** %pred64, align 8
  %94 = load i32, i32* %use_edge_cache, align 4
  %tobool65 = icmp ne i32 %94, 0
  br i1 %tobool65, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %if.end.57
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %index67 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %95, i32 0, i32 11
  %96 = load i32, i32* %index67, align 4
  %rem68 = urem i32 %96, 64
  %sh_prom69 = zext i32 %rem68 to i64
  %shl = shl i64 1, %sh_prom69
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %dst.addr, align 8
  %index70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %97, i32 0, i32 11
  %98 = load i32, i32* %index70, align 4
  %div71 = udiv i32 %98, 64
  %idxprom72 = zext i32 %div71 to i64
  %99 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %index73 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %99, i32 0, i32 11
  %100 = load i32, i32* %index73, align 4
  %idxprom74 = sext i32 %100 to i64
  %101 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %101, i64 %idxprom74
  %102 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx75, align 8
  %elms76 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %102, i32 0, i32 3
  %arrayidx77 = getelementptr inbounds [1 x i64], [1 x i64]* %elms76, i32 0, i64 %idxprom72
  %103 = load i64, i64* %arrayidx77, align 8
  %or78 = or i64 %103, %shl
  store i64 %or78, i64* %arrayidx77, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.66, %if.end.57
  %104 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %104, %struct.edge_def** %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.12, %if.then.8
  %105 = load %struct.edge_def*, %struct.edge_def** %retval
  ret %struct.edge_def* %105
}

; Function Attrs: nounwind uwtable
define %struct.edge_def* @make_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dest, i32 %flags) #0 {
entry:
  %src.addr = alloca %struct.basic_block_def*, align 8
  %dest.addr = alloca %struct.basic_block_def*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.basic_block_def* %src, %struct.basic_block_def** %src.addr, align 8
  store %struct.basic_block_def* %dest, %struct.basic_block_def** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest.addr, align 8
  %2 = load i32, i32* %flags.addr, align 4
  %call = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** null, %struct.basic_block_def* %0, %struct.basic_block_def* %1, i32 %2)
  ret %struct.edge_def* %call
}

; Function Attrs: nounwind uwtable
define %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %src, %struct.basic_block_def* %dest, i32 %flags) #0 {
entry:
  %src.addr = alloca %struct.basic_block_def*, align 8
  %dest.addr = alloca %struct.basic_block_def*, align 8
  %flags.addr = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  store %struct.basic_block_def* %src, %struct.basic_block_def** %src.addr, align 8
  store %struct.basic_block_def* %dest, %struct.basic_block_def** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest.addr, align 8
  %2 = load i32, i32* %flags.addr, align 4
  %call = call %struct.edge_def* @make_edge(%struct.basic_block_def* %0, %struct.basic_block_def* %1, i32 %2)
  store %struct.edge_def* %call, %struct.edge_def** %e, align 8
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 7
  store i32 10000, i32* %probability, align 4
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 13
  %5 = load i64, i64* %count, align 8
  %6 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 8
  store i64 %5, i64* %count1, align 8
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  ret %struct.edge_def* %7
}

; Function Attrs: nounwind uwtable
define void @remove_edge(%struct.edge_def* %e) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %last_pred = alloca %struct.edge_def*, align 8
  %last_succ = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_def*, align 8
  %src = alloca %struct.basic_block_def*, align 8
  %dest = alloca %struct.basic_block_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.edge_def* null, %struct.edge_def** %last_pred, align 8
  store %struct.edge_def* null, %struct.edge_def** %last_succ, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 2
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src3, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %src, align 8
  %2 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 3
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest4, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %dest, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 5
  %5 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %5, %struct.edge_def** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %tobool = icmp ne %struct.edge_def* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %8 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %cmp = icmp ne %struct.edge_def* %7, %8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  store %struct.edge_def* %10, %struct.edge_def** %last_succ, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 1
  %12 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %12, %struct.edge_def** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %13 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %tobool5 = icmp ne %struct.edge_def* %13, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 364, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.remove_edge, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %for.end
  %14 = load %struct.edge_def*, %struct.edge_def** %last_succ, align 8
  %tobool6 = icmp ne %struct.edge_def* %14, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %15 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %succ_next8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 1
  %16 = load %struct.edge_def*, %struct.edge_def** %succ_next8, align 8
  %17 = load %struct.edge_def*, %struct.edge_def** %last_succ, align 8
  %succ_next9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 1
  store %struct.edge_def* %16, %struct.edge_def** %succ_next9, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %18 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %succ_next10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 1
  %19 = load %struct.edge_def*, %struct.edge_def** %succ_next10, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 5
  store %struct.edge_def* %19, %struct.edge_def** %succ11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.7
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 4
  %22 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %22, %struct.edge_def** %tmp, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %if.end.12
  %23 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %tobool14 = icmp ne %struct.edge_def* %23, null
  br i1 %tobool14, label %land.rhs.15, label %land.end.17

land.rhs.15:                                      ; preds = %for.cond.13
  %24 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %25 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %cmp16 = icmp ne %struct.edge_def* %24, %25
  br label %land.end.17

land.end.17:                                      ; preds = %land.rhs.15, %for.cond.13
  %26 = phi i1 [ false, %for.cond.13 ], [ %cmp16, %land.rhs.15 ]
  br i1 %26, label %for.body.18, label %for.end.20

for.body.18:                                      ; preds = %land.end.17
  %27 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  store %struct.edge_def* %27, %struct.edge_def** %last_pred, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.18
  %28 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 0
  %29 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %29, %struct.edge_def** %tmp, align 8
  br label %for.cond.13

for.end.20:                                       ; preds = %land.end.17
  %30 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %tobool21 = icmp ne %struct.edge_def* %30, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %for.end.20
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 374, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.remove_edge, i32 0, i32 0)) #5
  unreachable

if.end.23:                                        ; preds = %for.end.20
  %31 = load %struct.edge_def*, %struct.edge_def** %last_pred, align 8
  %tobool24 = icmp ne %struct.edge_def* %31, null
  br i1 %tobool24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.end.23
  %32 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %pred_next26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 0
  %33 = load %struct.edge_def*, %struct.edge_def** %pred_next26, align 8
  %34 = load %struct.edge_def*, %struct.edge_def** %last_pred, align 8
  %pred_next27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 0
  store %struct.edge_def* %33, %struct.edge_def** %pred_next27, align 8
  br label %if.end.31

if.else.28:                                       ; preds = %if.end.23
  %35 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %pred_next29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i32 0, i32 0
  %36 = load %struct.edge_def*, %struct.edge_def** %pred_next29, align 8
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %pred30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 4
  store %struct.edge_def* %36, %struct.edge_def** %pred30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.25
  %38 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  call void @free_edge(%struct.edge_def* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define void @redirect_edge_succ(%struct.edge_def* %e, %struct.basic_block_def* %new_succ) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %new_succ.addr = alloca %struct.basic_block_def*, align 8
  %pe = alloca %struct.edge_def**, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %new_succ, %struct.basic_block_def** %new_succ.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 3
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 4
  store %struct.edge_def** %pred, %struct.edge_def*** %pe, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.edge_def**, %struct.edge_def*** %pe, align 8
  %3 = load %struct.edge_def*, %struct.edge_def** %2, align 8
  %4 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %cmp = icmp ne %struct.edge_def* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.edge_def**, %struct.edge_def*** %pe, align 8
  %6 = load %struct.edge_def*, %struct.edge_def** %5, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 0
  store %struct.edge_def** %pred_next, %struct.edge_def*** %pe, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.edge_def**, %struct.edge_def*** %pe, align 8
  %8 = load %struct.edge_def*, %struct.edge_def** %7, align 8
  %pred_next1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 0
  %9 = load %struct.edge_def*, %struct.edge_def** %pred_next1, align 8
  %10 = load %struct.edge_def**, %struct.edge_def*** %pe, align 8
  store %struct.edge_def* %9, %struct.edge_def** %10, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %new_succ.addr, align 8
  %pred2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 4
  %12 = load %struct.edge_def*, %struct.edge_def** %pred2, align 8
  %13 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %pred_next3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 0
  store %struct.edge_def* %12, %struct.edge_def** %pred_next3, align 8
  %14 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %new_succ.addr, align 8
  %pred4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 4
  store %struct.edge_def* %14, %struct.edge_def** %pred4, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %new_succ.addr, align 8
  %17 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 3
  store %struct.basic_block_def* %16, %struct.basic_block_def** %dest5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %e, %struct.basic_block_def* %new_succ) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %new_succ.addr = alloca %struct.basic_block_def*, align 8
  %s = alloca %struct.edge_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %new_succ, %struct.basic_block_def** %new_succ.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 2
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 5
  %2 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %2, %struct.edge_def** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %tobool = icmp ne %struct.edge_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 3
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %new_succ.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %8 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %cmp1 = icmp ne %struct.edge_def* %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 1
  %10 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %10, %struct.edge_def** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %tobool2 = icmp ne %struct.edge_def* %11, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.end
  %12 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 6
  %13 = load i32, i32* %flags, align 4
  %14 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %flags4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 6
  %15 = load i32, i32* %flags4, align 4
  %or = or i32 %15, %13
  store i32 %or, i32* %flags4, align 4
  %16 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 7
  %17 = load i32, i32* %probability, align 4
  %18 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %probability5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 7
  %19 = load i32, i32* %probability5, align 4
  %add = add nsw i32 %19, %17
  store i32 %add, i32* %probability5, align 4
  %20 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 8
  %21 = load i64, i64* %count, align 8
  %22 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %count6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 8
  %23 = load i64, i64* %count6, align 8
  %add7 = add nsw i64 %23, %21
  store i64 %add7, i64* %count6, align 8
  %24 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  call void @remove_edge(%struct.edge_def* %24)
  %25 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  store %struct.edge_def* %25, %struct.edge_def** %e.addr, align 8
  br label %if.end.8

if.else:                                          ; preds = %for.end
  %26 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %new_succ.addr, align 8
  call void @redirect_edge_succ(%struct.edge_def* %26, %struct.basic_block_def* %27)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.3
  %28 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  ret %struct.edge_def* %28
}

; Function Attrs: nounwind uwtable
define void @redirect_edge_pred(%struct.edge_def* %e, %struct.basic_block_def* %new_pred) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %new_pred.addr = alloca %struct.basic_block_def*, align 8
  %pe = alloca %struct.edge_def**, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %new_pred, %struct.basic_block_def** %new_pred.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 2
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 5
  store %struct.edge_def** %succ, %struct.edge_def*** %pe, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.edge_def**, %struct.edge_def*** %pe, align 8
  %3 = load %struct.edge_def*, %struct.edge_def** %2, align 8
  %4 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %cmp = icmp ne %struct.edge_def* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.edge_def**, %struct.edge_def*** %pe, align 8
  %6 = load %struct.edge_def*, %struct.edge_def** %5, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 1
  store %struct.edge_def** %succ_next, %struct.edge_def*** %pe, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.edge_def**, %struct.edge_def*** %pe, align 8
  %8 = load %struct.edge_def*, %struct.edge_def** %7, align 8
  %succ_next1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 1
  %9 = load %struct.edge_def*, %struct.edge_def** %succ_next1, align 8
  %10 = load %struct.edge_def**, %struct.edge_def*** %pe, align 8
  store %struct.edge_def* %9, %struct.edge_def** %10, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %new_pred.addr, align 8
  %succ2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 5
  %12 = load %struct.edge_def*, %struct.edge_def** %succ2, align 8
  %13 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %succ_next3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 1
  store %struct.edge_def* %12, %struct.edge_def** %succ_next3, align 8
  %14 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %new_pred.addr, align 8
  %succ4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 5
  store %struct.edge_def* %14, %struct.edge_def** %succ4, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %new_pred.addr, align 8
  %17 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 2
  store %struct.basic_block_def* %16, %struct.basic_block_def** %src5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @dump_flow_info(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %class = alloca i32, align 4
  %altclass = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load i32, i32* @max_regno, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 %1)
  store i32 53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @max_regno, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %6 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %6, i32 0, i32 4
  %7 = load i32, i32* %refs, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.152

if.then:                                          ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %reg3 = bitcast %union.varray_data_tag* %data2 to [1 x %struct.reg_info_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg3, i32 0, i64 %idxprom1
  %12 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx4, align 8
  %refs5 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %12, i32 0, i32 4
  %13 = load i32, i32* %refs5, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %reg8 = bitcast %union.varray_data_tag* %data7 to [1 x %struct.reg_info_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg8, i32 0, i64 %idxprom6
  %16 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx9, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %16, i32 0, i32 7
  %17 = load i32, i32* %live_length, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0), i32 %9, i32 %13, i32 %17)
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data12 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %reg13 = bitcast %union.varray_data_tag* %data12 to [1 x %struct.reg_info_def*]*
  %arrayidx14 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg13, i32 0, i64 %idxprom11
  %20 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx14, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %20, i32 0, i32 9
  %21 = load i32, i32* %basic_block, align 4
  %cmp15 = icmp sge i32 %21, 0
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data18 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 4
  %reg19 = bitcast %union.varray_data_tag* %data18 to [1 x %struct.reg_info_def*]*
  %arrayidx20 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg19, i32 0, i64 %idxprom17
  %25 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx20, align 8
  %basic_block21 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %25, i32 0, i32 9
  %26 = load i32, i32* %basic_block21, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 %26)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then
  %27 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data24 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %28, i32 0, i32 4
  %reg25 = bitcast %union.varray_data_tag* %data24 to [1 x %struct.reg_info_def*]*
  %arrayidx26 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg25, i32 0, i64 %idxprom23
  %29 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx26, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %29, i32 0, i32 3
  %30 = load i32, i32* %sets, align 4
  %tobool27 = icmp ne i32 %30, 0
  br i1 %tobool27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %if.end
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data30 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %reg31 = bitcast %union.varray_data_tag* %data30 to [1 x %struct.reg_info_def*]*
  %arrayidx32 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg31, i32 0, i64 %idxprom29
  %34 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx32, align 8
  %sets33 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %34, i32 0, i32 3
  %35 = load i32, i32* %sets33, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data35 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %reg36 = bitcast %union.varray_data_tag* %data35 to [1 x %struct.reg_info_def*]*
  %arrayidx37 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg36, i32 0, i64 %idxprom34
  %38 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx37, align 8
  %sets38 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %38, i32 0, i32 3
  %39 = load i32, i32* %sets38, align 4
  %cmp39 = icmp eq i32 %39, 1
  %cond = select i1 %cmp39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0)
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i32 %35, i8* %cond)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.28, %if.end
  %40 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %40 to i64
  %41 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %41, i32 0, i32 3
  %42 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %42, i32 0, i32 12
  %43 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx43 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %43, i64 %idxprom42
  %44 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx43, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load = load i32, i32* %45, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool44 = icmp ne i32 %bf.clear, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.41
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.41
  %47 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data49 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 4
  %reg50 = bitcast %union.varray_data_tag* %data49 to [1 x %struct.reg_info_def*]*
  %arrayidx51 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg50, i32 0, i64 %idxprom48
  %49 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx51, align 8
  %deaths = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %49, i32 0, i32 6
  %50 = load i32, i32* %deaths, align 4
  %cmp52 = icmp ne i32 %50, 1
  br i1 %cmp52, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.end.47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %52 to i64
  %53 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data55 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %53, i32 0, i32 4
  %reg56 = bitcast %union.varray_data_tag* %data55 to [1 x %struct.reg_info_def*]*
  %arrayidx57 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg56, i32 0, i64 %idxprom54
  %54 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx57, align 8
  %deaths58 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %54, i32 0, i32 6
  %55 = load i32, i32* %deaths58, align 4
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 %55)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.53, %if.end.47
  %56 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %56 to i64
  %57 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data62 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %57, i32 0, i32 4
  %reg63 = bitcast %union.varray_data_tag* %data62 to [1 x %struct.reg_info_def*]*
  %arrayidx64 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg63, i32 0, i64 %idxprom61
  %58 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx64, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %58, i32 0, i32 8
  %59 = load i32, i32* %calls_crossed, align 4
  %cmp65 = icmp eq i32 %59, 1
  br i1 %cmp65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %if.end.60
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.82

if.else:                                          ; preds = %if.end.60
  %61 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %61 to i64
  %62 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data69 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %62, i32 0, i32 4
  %reg70 = bitcast %union.varray_data_tag* %data69 to [1 x %struct.reg_info_def*]*
  %arrayidx71 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg70, i32 0, i64 %idxprom68
  %63 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx71, align 8
  %calls_crossed72 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %63, i32 0, i32 8
  %64 = load i32, i32* %calls_crossed72, align 4
  %tobool73 = icmp ne i32 %64, 0
  br i1 %tobool73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.else
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %66 to i64
  %67 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data76 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %67, i32 0, i32 4
  %reg77 = bitcast %union.varray_data_tag* %data76 to [1 x %struct.reg_info_def*]*
  %arrayidx78 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg77, i32 0, i64 %idxprom75
  %68 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx78, align 8
  %calls_crossed79 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %68, i32 0, i32 8
  %69 = load i32, i32* %calls_crossed79, align 4
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i32 %69)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.74, %if.else
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.66
  %70 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %70 to i64
  %71 = load %struct.function*, %struct.function** @cfun, align 8
  %emit84 = getelementptr inbounds %struct.function, %struct.function* %71, i32 0, i32 3
  %72 = load %struct.emit_status*, %struct.emit_status** %emit84, align 8
  %x_regno_reg_rtx85 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %72, i32 0, i32 12
  %73 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx85, align 8
  %arrayidx86 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %73, i64 %idxprom83
  %74 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx86, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load87 = load i32, i32* %75, align 8
  %bf.lshr88 = lshr i32 %bf.load87, 16
  %bf.clear89 = and i32 %bf.lshr88, 255
  %idxprom90 = sext i32 %bf.clear89 to i64
  %arrayidx91 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom90
  %76 = load i8, i8* %arrayidx91, align 1
  %conv = zext i8 %76 to i32
  %77 = load i32, i32* @target_flags, align 4
  %and = and i32 %77, 33554432
  %tobool92 = icmp ne i32 %and, 0
  %cond93 = select i1 %tobool92, i32 8, i32 4
  %cmp94 = icmp ne i32 %conv, %cond93
  br i1 %cmp94, label %if.then.96, label %if.end.108

if.then.96:                                       ; preds = %if.end.82
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %79 to i64
  %80 = load %struct.function*, %struct.function** @cfun, align 8
  %emit98 = getelementptr inbounds %struct.function, %struct.function* %80, i32 0, i32 3
  %81 = load %struct.emit_status*, %struct.emit_status** %emit98, align 8
  %x_regno_reg_rtx99 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %81, i32 0, i32 12
  %82 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx99, align 8
  %arrayidx100 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %82, i64 %idxprom97
  %83 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx100, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load101 = load i32, i32* %84, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 16
  %bf.clear103 = and i32 %bf.lshr102, 255
  %idxprom104 = sext i32 %bf.clear103 to i64
  %arrayidx105 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom104
  %85 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %85 to i32
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 %conv106)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.96, %if.end.82
  %86 = load i32, i32* %i, align 4
  %call109 = call i32 @reg_preferred_class(i32 %86)
  store i32 %call109, i32* %class, align 4
  %87 = load i32, i32* %i, align 4
  %call110 = call i32 @reg_alternate_class(i32 %87)
  store i32 %call110, i32* %altclass, align 4
  %88 = load i32, i32* %class, align 4
  %cmp111 = icmp ne i32 %88, 12
  br i1 %cmp111, label %if.then.115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.108
  %89 = load i32, i32* %altclass, align 4
  %cmp113 = icmp ne i32 %89, 24
  br i1 %cmp113, label %if.then.115, label %if.end.140

if.then.115:                                      ; preds = %lor.lhs.false, %if.end.108
  %90 = load i32, i32* %altclass, align 4
  %cmp116 = icmp eq i32 %90, 24
  br i1 %cmp116, label %if.then.121, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.then.115
  %91 = load i32, i32* %class, align 4
  %cmp119 = icmp eq i32 %91, 24
  br i1 %cmp119, label %if.then.121, label %if.else.125

if.then.121:                                      ; preds = %lor.lhs.false.118, %if.then.115
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %93 = load i32, i32* %class, align 4
  %idxprom122 = sext i32 %93 to i64
  %arrayidx123 = getelementptr inbounds [25 x i8*], [25 x i8*]* @dump_flow_info.reg_class_names, i32 0, i64 %idxprom122
  %94 = load i8*, i8** %arrayidx123, align 8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* %94)
  br label %if.end.139

if.else.125:                                      ; preds = %lor.lhs.false.118
  %95 = load i32, i32* %altclass, align 4
  %cmp126 = icmp eq i32 %95, 0
  br i1 %cmp126, label %if.then.128, label %if.else.132

if.then.128:                                      ; preds = %if.else.125
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %97 = load i32, i32* %class, align 4
  %idxprom129 = sext i32 %97 to i64
  %arrayidx130 = getelementptr inbounds [25 x i8*], [25 x i8*]* @dump_flow_info.reg_class_names, i32 0, i64 %idxprom129
  %98 = load i8*, i8** %arrayidx130, align 8
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* %98)
  br label %if.end.138

if.else.132:                                      ; preds = %if.else.125
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %100 = load i32, i32* %class, align 4
  %idxprom133 = sext i32 %100 to i64
  %arrayidx134 = getelementptr inbounds [25 x i8*], [25 x i8*]* @dump_flow_info.reg_class_names, i32 0, i64 %idxprom133
  %101 = load i8*, i8** %arrayidx134, align 8
  %102 = load i32, i32* %altclass, align 4
  %idxprom135 = sext i32 %102 to i64
  %arrayidx136 = getelementptr inbounds [25 x i8*], [25 x i8*]* @dump_flow_info.reg_class_names, i32 0, i64 %idxprom135
  %103 = load i8*, i8** %arrayidx136, align 8
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), i8* %101, i8* %103)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.132, %if.then.128
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.121
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %lor.lhs.false
  %104 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %104 to i64
  %105 = load %struct.function*, %struct.function** @cfun, align 8
  %emit142 = getelementptr inbounds %struct.function, %struct.function* %105, i32 0, i32 3
  %106 = load %struct.emit_status*, %struct.emit_status** %emit142, align 8
  %x_regno_reg_rtx143 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %106, i32 0, i32 12
  %107 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx143, align 8
  %arrayidx144 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %107, i64 %idxprom141
  %108 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx144, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load145 = load i32, i32* %109, align 8
  %bf.lshr146 = lshr i32 %bf.load145, 31
  %tobool147 = icmp ne i32 %bf.lshr146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.end.140
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.end.140
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.150, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.152
  %112 = load i32, i32* %i, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %114 = load i32, i32* @n_basic_blocks, align 4
  %115 = load i32, i32* @n_edges, align 4
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i32 0, i32 0), i32 %114, i32 %115)
  store i32 0, i32* %i, align 4
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.185, %for.end
  %116 = load i32, i32* %i, align 4
  %117 = load i32, i32* @n_basic_blocks, align 4
  %cmp155 = icmp slt i32 %116, %117
  br i1 %cmp155, label %for.body.157, label %for.end.187

for.body.157:                                     ; preds = %for.cond.154
  %118 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %118 to i64
  %119 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data159 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %119, i32 0, i32 4
  %bb160 = bitcast %union.varray_data_tag* %data159 to [1 x %struct.basic_block_def*]*
  %arrayidx161 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb160, i32 0, i64 %idxprom158
  %120 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx161, align 8
  store %struct.basic_block_def* %120, %struct.basic_block_def** %bb, align 8
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %122 = load i32, i32* %i, align 4
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %123, i32 0, i32 0
  %124 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx162 to i32*
  %125 = load i32, i32* %rtint, align 4
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %126, i32 0, i32 1
  %127 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtint165 = bitcast %union.rtunion_def* %arrayidx164 to i32*
  %128 = load i32, i32* %rtint165, align 4
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i32 0, i32 0), i32 %122, i32 %125, i32 %128)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %130 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %130, i32 0, i32 12
  %131 = load i32, i32* %loop_depth, align 4
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0), i32 %131)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %133 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %133, i32 0, i32 13
  %134 = load i64, i64* %count, align 8
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i64 %134)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %136 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %136, i32 0, i32 14
  %137 = load i32, i32* %frequency, align 4
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 %137)
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0))
  %139 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %139, i32 0, i32 4
  %140 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %140, %struct.edge_def** %e, align 8
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.174, %for.body.157
  %141 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool172 = icmp ne %struct.edge_def* %141, null
  br i1 %tobool172, label %for.body.173, label %for.end.175

for.body.173:                                     ; preds = %for.cond.171
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %143 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @dump_edge_info(%struct._IO_FILE* %142, %struct.edge_def* %143, i32 0)
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.173
  %144 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %144, i32 0, i32 0
  %145 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %145, %struct.edge_def** %e, align 8
  br label %for.cond.171

for.end.175:                                      ; preds = %for.cond.171
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0))
  %147 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %147, i32 0, i32 5
  %148 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %148, %struct.edge_def** %e, align 8
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.180, %for.end.175
  %149 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool178 = icmp ne %struct.edge_def* %149, null
  br i1 %tobool178, label %for.body.179, label %for.end.181

for.body.179:                                     ; preds = %for.cond.177
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %151 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @dump_edge_info(%struct._IO_FILE* %150, %struct.edge_def* %151, i32 1)
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.body.179
  %152 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %152, i32 0, i32 1
  %153 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %153, %struct.edge_def** %e, align 8
  br label %for.cond.177

for.end.181:                                      ; preds = %for.cond.177
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0))
  %155 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %155, i32 0, i32 8
  %156 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @dump_regset(%struct.bitmap_head_def* %156, %struct._IO_FILE* %157)
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0))
  %159 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %159, i32 0, i32 9
  %160 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @dump_regset(%struct.bitmap_head_def* %160, %struct._IO_FILE* %161)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call184 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %162)
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.end.181
  %163 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %163, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.154

for.end.187:                                      ; preds = %for.cond.154
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call188 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %164)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @reg_preferred_class(i32) #1

declare i32 @reg_alternate_class(i32) #1

; Function Attrs: nounwind uwtable
define void @dump_edge_info(%struct._IO_FILE* %file, %struct.edge_def* %e, i32 %do_succ) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %e.addr = alloca %struct.edge_def*, align 8
  %do_succ.addr = alloca i32, align 4
  %side = alloca %struct.basic_block_def*, align 8
  %comma = alloca i32, align 4
  %i = alloca i32, align 4
  %flags20 = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store i32 %do_succ, i32* %do_succ.addr, align 4
  %0 = load i32, i32* %do_succ.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %1, i32 0, i32 3
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 2
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.basic_block_def* [ %2, %cond.true ], [ %4, %cond.false ]
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %side, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %side, align 8
  %cmp = icmp eq %struct.basic_block_def* %5, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %if.end.6

if.else:                                          ; preds = %cond.end
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %side, align 8
  %cmp1 = icmp eq %struct.basic_block_def* %7, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp1, label %if.then.2, label %if.else.4

if.then.2:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %8)
  br label %if.end

if.else.4:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %side, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 11
  %11 = load i32, i32* %index, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %12 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 7
  %13 = load i32, i32* %probability, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %probability9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 7
  %16 = load i32, i32* %probability9, align 4
  %conv = sitofp i32 %16 to double
  %mul = fmul double %conv, 1.000000e+02
  %div = fdiv double %mul, 1.000000e+04
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), double %div)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.6
  %17 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 8
  %18 = load i64, i64* %count, align 8
  %tobool12 = icmp ne i64 %18, 0
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %21 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %count15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i32 0, i32 8
  %22 = load i64, i64* %count15, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i64 %22)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  %23 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 6
  %24 = load i32, i32* %flags, align 4
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.then.19, label %if.end.41

if.then.19:                                       ; preds = %if.end.17
  store i32 0, i32* %comma, align 4
  %25 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 6
  %26 = load i32, i32* %flags21, align 4
  store i32 %26, i32* %flags20, align 4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), %struct._IO_FILE* %27)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %28 = load i32, i32* %flags20, align 4
  %tobool23 = icmp ne i32 %28, 0
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %flags20, align 4
  %30 = load i32, i32* %i, align 4
  %shl = shl i32 1, %30
  %and = and i32 %29, %shl
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then.25, label %if.end.39

if.then.25:                                       ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %shl26 = shl i32 1, %31
  %neg = xor i32 %shl26, -1
  %32 = load i32, i32* %flags20, align 4
  %and27 = and i32 %32, %neg
  store i32 %and27, i32* %flags20, align 4
  %33 = load i32, i32* %comma, align 4
  %tobool28 = icmp ne i32 %33, 0
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.25
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call30 = call i32 @fputc(i32 44, %struct._IO_FILE* %34)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.25
  %35 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %35, 6
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.end.31
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @dump_edge_info.bitnames, i32 0, i64 %idxprom
  %37 = load i8*, i8** %arrayidx, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call35 = call i32 @fputs(i8* %37, %struct._IO_FILE* %38)
  br label %if.end.38

if.else.36:                                       ; preds = %if.end.31
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %40 = load i32, i32* %i, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i32 %40)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.34
  store i32 1, i32* %comma, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call40 = call i32 @fputc(i32 41, %struct._IO_FILE* %42)
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %if.end.17
  ret void
}

declare void @dump_regset(%struct.bitmap_head_def*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @debug_flow_info() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @dump_flow_info(%struct._IO_FILE* %0)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @alloc_aux_for_block(%struct.basic_block_def* %bb, i32 %size) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %size.addr = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp38 = alloca i8*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 10
  %1 = load i8*, i8** %aux, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** @first_block_aux_obj, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 612, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.alloc_aux_for_block, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store %struct.obstack* @block_aux_obstack, %struct.obstack** %__h, align 8
  %3 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %3, %struct.obstack** %__o, align 8
  %4 = load i32, i32* %size.addr, align 4
  store i32 %4, i32* %__len, align 4
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 4
  %6 = load i8*, i8** %chunk_limit, align 8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 3
  %8 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i32, i32* %__len, align 4
  %conv = sext i32 %9 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %11 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %10, i32 %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %12 = load i32, i32* %__len, align 4
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 3
  %14 = load i8*, i8** %next_free5, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free5, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %15, %struct.obstack** %__o1, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 2
  %17 = load i8*, i8** %object_base, align 8
  store i8* %17, i8** %value, align 8
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free8 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 3
  %19 = load i8*, i8** %next_free8, align 8
  %20 = load i8*, i8** %value, align 8
  %cmp9 = icmp eq i8* %19, %20
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.4
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.4
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free13 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3
  %23 = load i8*, i8** %next_free13, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %23 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast14, 0
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask, align 4
  %conv16 = sext i32 %25 to i64
  %add = add nsw i64 %sub.ptr.sub15, %conv16
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask17 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 6
  %27 = load i32, i32* %alignment_mask17, align 4
  %neg = xor i32 %27, -1
  %conv18 = sext i32 %neg to i64
  %and = and i64 %add, %conv18
  %add.ptr19 = getelementptr inbounds i8, i8* null, i64 %and
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  store i8* %add.ptr19, i8** %next_free20, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free21 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  %30 = load i8*, i8** %next_free21, align 8
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 1
  %32 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %33 = bitcast %struct._obstack_chunk* %32 to i8*
  %sub.ptr.lhs.cast22 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %33 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit25 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 4
  %35 = load i8*, i8** %chunk_limit25, align 8
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk26 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 1
  %37 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk26, align 8
  %38 = bitcast %struct._obstack_chunk* %37 to i8*
  %sub.ptr.lhs.cast27 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast28 = ptrtoint i8* %38 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %cmp30 = icmp sgt i64 %sub.ptr.sub24, %sub.ptr.sub29
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.12
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit33 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 4
  %40 = load i8*, i8** %chunk_limit33, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free34 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  store i8* %40, i8** %next_free34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.12
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free36 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  %43 = load i8*, i8** %next_free36, align 8
  %44 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base37 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 2
  store i8* %43, i8** %object_base37, align 8
  %45 = load i8*, i8** %value, align 8
  store i8* %45, i8** %tmp38
  %46 = load i8*, i8** %tmp38
  store i8* %46, i8** %tmp
  %47 = load i8*, i8** %tmp
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i32 0, i32 10
  store i8* %47, i8** %aux39, align 8
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 10
  %50 = load i8*, i8** %aux40, align 8
  %51 = load i32, i32* %size.addr, align 4
  %conv41 = sext i32 %51 to i64
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 %conv41, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_aux_for_blocks(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp40 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @alloc_aux_for_blocks.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @gcc_obstack_init(%struct.obstack* @block_aux_obstack)
  store i32 1, i32* @alloc_aux_for_blocks.initialized, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** @first_block_aux_obj, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 634, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.alloc_aux_for_blocks, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  store %struct.obstack* @block_aux_obstack, %struct.obstack** %__h, align 8
  %2 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %2, %struct.obstack** %__o, align 8
  store i32 0, i32* %__len, align 4
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 4
  %4 = load i8*, i8** %chunk_limit, align 8
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 3
  %6 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i32, i32* %__len, align 4
  %conv = sext i32 %7 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %9 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %8, i32 %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %10 = load i32, i32* %__len, align 4
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 3
  %12 = load i8*, i8** %next_free7, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free7, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %13, %struct.obstack** %__o1, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 2
  %15 = load i8*, i8** %object_base, align 8
  store i8* %15, i8** %value, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 3
  %17 = load i8*, i8** %next_free10, align 8
  %18 = load i8*, i8** %value, align 8
  %cmp11 = icmp eq i8* %17, %18
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.6
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.6
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free15 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 3
  %21 = load i8*, i8** %next_free15, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %21 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast16, 0
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 6
  %23 = load i32, i32* %alignment_mask, align 4
  %conv18 = sext i32 %23 to i64
  %add = add nsw i64 %sub.ptr.sub17, %conv18
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask19 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask19, align 4
  %neg = xor i32 %25, -1
  %conv20 = sext i32 %neg to i64
  %and = and i64 %add, %conv20
  %add.ptr21 = getelementptr inbounds i8, i8* null, i64 %and
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free22 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  store i8* %add.ptr21, i8** %next_free22, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free23 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  %28 = load i8*, i8** %next_free23, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 1
  %30 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %31 = bitcast %struct._obstack_chunk* %30 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %31 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit27 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 4
  %33 = load i8*, i8** %chunk_limit27, align 8
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk28 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 1
  %35 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk28, align 8
  %36 = bitcast %struct._obstack_chunk* %35 to i8*
  %sub.ptr.lhs.cast29 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %36 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %cmp32 = icmp sgt i64 %sub.ptr.sub26, %sub.ptr.sub31
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.14
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit35 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 4
  %38 = load i8*, i8** %chunk_limit35, align 8
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free36 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  store i8* %38, i8** %next_free36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.14
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free38 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  %41 = load i8*, i8** %next_free38, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base39 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 2
  store i8* %41, i8** %object_base39, align 8
  %43 = load i8*, i8** %value, align 8
  store i8* %43, i8** %tmp40
  %44 = load i8*, i8** %tmp40
  store i8* %44, i8** %tmp
  %45 = load i8*, i8** %tmp
  store i8* %45, i8** @first_block_aux_obj, align 8
  %46 = load i32, i32* %size.addr, align 4
  %tobool41 = icmp ne i32 %46, 0
  br i1 %tobool41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.37
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.42
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* @n_basic_blocks, align 4
  %cmp44 = icmp slt i32 %47, %48
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %50, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %52 = load i32, i32* %size.addr, align 4
  call void @alloc_aux_for_block(%struct.basic_block_def* %51, i32 %52)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load i32, i32* %size.addr, align 4
  call void @alloc_aux_for_block(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), i32 %54)
  %55 = load i32, i32* %size.addr, align 4
  call void @alloc_aux_for_block(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), i32 %55)
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %if.end.37
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_aux_for_blocks() #0 {
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
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 10
  store i8* null, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 10), align 8
  store i8* null, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_aux_for_blocks() #0 {
entry:
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %0 = load i8*, i8** @first_block_aux_obj, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 669, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.free_aux_for_blocks, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  store %struct.obstack* @block_aux_obstack, %struct.obstack** %__o, align 8
  %1 = load i8*, i8** @first_block_aux_obj, align 8
  store i8* %1, i8** %__obj, align 8
  %2 = load i8*, i8** %__obj, align 8
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 1
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %5 = bitcast %struct._obstack_chunk* %4 to i8*
  %cmp = icmp ugt i8* %2, %5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8*, i8** %__obj, align 8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 4
  %8 = load i8*, i8** %chunk_limit, align 8
  %cmp1 = icmp ult i8* %6, %8
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %__obj, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 2
  store i8* %9, i8** %object_base, align 8
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 3
  store i8* %9, i8** %next_free, align 8
  br label %if.end.3

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %13 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %12, i8* %13)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  store i8* null, i8** @first_block_aux_obj, align 8
  call void @clear_aux_for_blocks()
  ret void
}

; Function Attrs: nounwind uwtable
define void @alloc_aux_for_edges(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp40 = alloca i8*, align 8
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* @alloc_aux_for_edges.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @gcc_obstack_init(%struct.obstack* @edge_aux_obstack)
  store i32 1, i32* @alloc_aux_for_edges.initialized, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** @first_edge_aux_obj, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 713, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.alloc_aux_for_edges, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  store %struct.obstack* @edge_aux_obstack, %struct.obstack** %__h, align 8
  %2 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %2, %struct.obstack** %__o, align 8
  store i32 0, i32* %__len, align 4
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 4
  %4 = load i8*, i8** %chunk_limit, align 8
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 3
  %6 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = load i32, i32* %__len, align 4
  %conv = sext i32 %7 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %9 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %8, i32 %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  %10 = load i32, i32* %__len, align 4
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 3
  %12 = load i8*, i8** %next_free7, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free7, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %13, %struct.obstack** %__o1, align 8
  %14 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 2
  %15 = load i8*, i8** %object_base, align 8
  store i8* %15, i8** %value, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 3
  %17 = load i8*, i8** %next_free10, align 8
  %18 = load i8*, i8** %value, align 8
  %cmp11 = icmp eq i8* %17, %18
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.6
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.6
  %20 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free15 = getelementptr inbounds %struct.obstack, %struct.obstack* %20, i32 0, i32 3
  %21 = load i8*, i8** %next_free15, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %21 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast16, 0
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 6
  %23 = load i32, i32* %alignment_mask, align 4
  %conv18 = sext i32 %23 to i64
  %add = add nsw i64 %sub.ptr.sub17, %conv18
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask19 = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask19, align 4
  %neg = xor i32 %25, -1
  %conv20 = sext i32 %neg to i64
  %and = and i64 %add, %conv20
  %add.ptr21 = getelementptr inbounds i8, i8* null, i64 %and
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free22 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  store i8* %add.ptr21, i8** %next_free22, align 8
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free23 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  %28 = load i8*, i8** %next_free23, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 1
  %30 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %31 = bitcast %struct._obstack_chunk* %30 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %31 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit27 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 4
  %33 = load i8*, i8** %chunk_limit27, align 8
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk28 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 1
  %35 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk28, align 8
  %36 = bitcast %struct._obstack_chunk* %35 to i8*
  %sub.ptr.lhs.cast29 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %36 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %cmp32 = icmp sgt i64 %sub.ptr.sub26, %sub.ptr.sub31
  br i1 %cmp32, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.14
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit35 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 4
  %38 = load i8*, i8** %chunk_limit35, align 8
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free36 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  store i8* %38, i8** %next_free36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.14
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free38 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 3
  %41 = load i8*, i8** %next_free38, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base39 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 2
  store i8* %41, i8** %object_base39, align 8
  %43 = load i8*, i8** %value, align 8
  store i8* %43, i8** %tmp40
  %44 = load i8*, i8** %tmp40
  store i8* %44, i8** %tmp
  %45 = load i8*, i8** %tmp
  store i8* %45, i8** @first_edge_aux_obj, align 8
  %46 = load i32, i32* %size.addr, align 4
  %tobool41 = icmp ne i32 %46, 0
  br i1 %tobool41, label %if.then.42, label %if.end.59

if.then.42:                                       ; preds = %if.end.37
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %if.then.42
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* @n_basic_blocks, align 4
  %cmp44 = icmp slt i32 %47, %48
  br i1 %cmp44, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %i, align 4
  %cmp48 = icmp sge i32 %49, 0
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %51, i32 0, i32 4
  %bb51 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb51, i32 0, i64 %idxprom
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %52, %struct.basic_block_def** %bb, align 8
  br label %if.end.53

if.else.52:                                       ; preds = %for.body
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %bb, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.52, %if.then.50
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 5
  %54 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %54, %struct.edge_def** %e, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc, %if.end.53
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool55 = icmp ne %struct.edge_def* %55, null
  br i1 %tobool55, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.54
  %56 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %57 = load i32, i32* %size.addr, align 4
  call void @alloc_aux_for_edge(%struct.edge_def* %56, i32 %57)
  br label %for.inc

for.inc:                                          ; preds = %for.body.56
  %58 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i32 0, i32 1
  %59 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %59, %struct.edge_def** %e, align 8
  br label %for.cond.54

for.end:                                          ; preds = %for.cond.54
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end
  %60 = load i32, i32* %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %if.end.37
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @alloc_aux_for_edge(%struct.edge_def* %e, i32 %size) #4 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %size.addr = alloca i32, align 4
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp38 = alloca i8*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 5
  %1 = load i8*, i8** %aux, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** @first_edge_aux_obj, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 691, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.alloc_aux_for_edge, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  store %struct.obstack* @edge_aux_obstack, %struct.obstack** %__h, align 8
  %3 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %3, %struct.obstack** %__o, align 8
  %4 = load i32, i32* %size.addr, align 4
  store i32 %4, i32* %__len, align 4
  %5 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i32 0, i32 4
  %6 = load i8*, i8** %chunk_limit, align 8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 3
  %8 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i32, i32* %__len, align 4
  %conv = sext i32 %9 to i64
  %cmp = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %11 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %10, i32 %11)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %12 = load i32, i32* %__len, align 4
  %13 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 3
  %14 = load i8*, i8** %next_free5, align 8
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free5, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %15, %struct.obstack** %__o1, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %16, i32 0, i32 2
  %17 = load i8*, i8** %object_base, align 8
  store i8* %17, i8** %value, align 8
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free8 = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 3
  %19 = load i8*, i8** %next_free8, align 8
  %20 = load i8*, i8** %value, align 8
  %cmp9 = icmp eq i8* %19, %20
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.4
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.4
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free13 = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 3
  %23 = load i8*, i8** %next_free13, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %23 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast14, 0
  %24 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %24, i32 0, i32 6
  %25 = load i32, i32* %alignment_mask, align 4
  %conv16 = sext i32 %25 to i64
  %add = add nsw i64 %sub.ptr.sub15, %conv16
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask17 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 6
  %27 = load i32, i32* %alignment_mask17, align 4
  %neg = xor i32 %27, -1
  %conv18 = sext i32 %neg to i64
  %and = and i64 %add, %conv18
  %add.ptr19 = getelementptr inbounds i8, i8* null, i64 %and
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 3
  store i8* %add.ptr19, i8** %next_free20, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free21 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  %30 = load i8*, i8** %next_free21, align 8
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 1
  %32 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %33 = bitcast %struct._obstack_chunk* %32 to i8*
  %sub.ptr.lhs.cast22 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %33 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %34 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit25 = getelementptr inbounds %struct.obstack, %struct.obstack* %34, i32 0, i32 4
  %35 = load i8*, i8** %chunk_limit25, align 8
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk26 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 1
  %37 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk26, align 8
  %38 = bitcast %struct._obstack_chunk* %37 to i8*
  %sub.ptr.lhs.cast27 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast28 = ptrtoint i8* %38 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %cmp30 = icmp sgt i64 %sub.ptr.sub24, %sub.ptr.sub29
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.12
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit33 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 4
  %40 = load i8*, i8** %chunk_limit33, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free34 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 3
  store i8* %40, i8** %next_free34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.12
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free36 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  %43 = load i8*, i8** %next_free36, align 8
  %44 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base37 = getelementptr inbounds %struct.obstack, %struct.obstack* %44, i32 0, i32 2
  store i8* %43, i8** %object_base37, align 8
  %45 = load i8*, i8** %value, align 8
  store i8* %45, i8** %tmp38
  %46 = load i8*, i8** %tmp38
  store i8* %46, i8** %tmp
  %47 = load i8*, i8** %tmp
  %48 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %aux39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 5
  store i8* %47, i8** %aux39, align 8
  %49 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %aux40 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %49, i32 0, i32 5
  %50 = load i8*, i8** %aux40, align 8
  %51 = load i32, i32* %size.addr, align 4
  %conv41 = sext i32 %51 to i64
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 %conv41, i32 1, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_aux_for_edges() #0 {
entry:
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  store i32 -1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %bb2 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb2, i32 0, i64 %idxprom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %5, %struct.basic_block_def** %bb, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %bb, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 5
  %7 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %7, %struct.edge_def** %e, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.end
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %8, null
  br i1 %tobool, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.3
  %9 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 5
  store i8* null, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %10 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 1
  %11 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %11, %struct.edge_def** %e, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_aux_for_edges() #0 {
entry:
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %0 = load i8*, i8** @first_edge_aux_obj, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 764, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.free_aux_for_edges, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  store %struct.obstack* @edge_aux_obstack, %struct.obstack** %__o, align 8
  %1 = load i8*, i8** @first_edge_aux_obj, align 8
  store i8* %1, i8** %__obj, align 8
  %2 = load i8*, i8** %__obj, align 8
  %3 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 1
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %5 = bitcast %struct._obstack_chunk* %4 to i8*
  %cmp = icmp ugt i8* %2, %5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8*, i8** %__obj, align 8
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i32 0, i32 4
  %8 = load i8*, i8** %chunk_limit, align 8
  %cmp1 = icmp ult i8* %6, %8
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %__obj, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 2
  store i8* %9, i8** %object_base, align 8
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %11, i32 0, i32 3
  store i8* %9, i8** %next_free, align 8
  br label %if.end.3

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %13 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %12, i8* %13)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  store i8* null, i8** @first_edge_aux_obj, align 8
  call void @clear_aux_for_edges()
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
