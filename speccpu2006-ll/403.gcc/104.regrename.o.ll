; ModuleID = 'regrename.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.du_chain = type { %struct.du_chain*, %struct.du_chain*, %struct.rtx_def*, %struct.rtx_def**, i32, i8 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
%struct.operand_alternative = type { i8*, i32, i32, i32, i32, i8 }
%struct.insn_data = type { i8*, i8*, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.value_data = type { [53 x %struct.value_data_entry], i32 }
%struct.value_data_entry = type { i32, i32, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@rename_obstack = internal global %struct.obstack zeroinitializer, align 8
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"\0ABasic block %d:\0A\00", align 1
@frame_pointer_needed = external global i32, align 4
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@fixed_regs = external global [53 x i8], align 16
@global_regs = external global [53 x i8], align 16
@reg_class_contents = external global [25 x i64], align 16
@call_used_reg_set = external global i64, align 8
@mode_class = external constant [59 x i32], align 16
@regs_ever_live = external global [53 x i8], align 16
@call_used_regs = external global [53 x i8], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"Register %s in insn %d\00", align 1
@reg_names = external global [53 x i8*], align 16
@.str.2 = private unnamed_addr constant [16 x i8] c" crosses a call\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"; no available registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c", renamed as %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"[%u] Bad next_regno for empty chain (%u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"[%u %s] \00", align 1
@mode_name = external constant [59 x i8*], align 16
@.str.8 = private unnamed_addr constant [26 x i8] c"[%u] Loop in regno chain\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"[%u] Bad oldest_regno (%u)\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"[%u] Non-empty reg in chain (%s %u %i)\0A\00", align 1
@rtx_class = external constant [153 x i8], align 16
@.str.11 = private unnamed_addr constant [12 x i8] c"regrename.c\00", align 1
@__FUNCTION__.clear_dead_regs = private unnamed_addr constant [16 x i8] c"clear_dead_regs\00", align 1
@__FUNCTION__.note_sets = private unnamed_addr constant [10 x i8] c"note_sets\00", align 1
@closed_chains = internal global %struct.du_chain* null, align 8
@open_chains = internal global %struct.du_chain* null, align 8
@which_alternative = external global i32, align 4
@recog_data = external global %struct.recog_data, align 8
@recog_op_alt = external global [30 x [30 x %struct.operand_alternative]], align 16
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@insn_data = external constant [0 x %struct.insn_data], align 8
@__FUNCTION__.scan_rtx = private unnamed_addr constant [9 x i8] c"scan_rtx\00", align 1
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@__FUNCTION__.scan_rtx_reg = private unnamed_addr constant [13 x i8] c"scan_rtx_reg\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Closing chain %s at insn %d (%s)\0A\00", align 1
@scan_actions_name = internal constant [6 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [37 x i8] c"Discarding chain %s at insn %d (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"terminate_all_read\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"terminate_overlapping_read\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"terminate_write\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"terminate_dead\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"mark_read\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"mark_write\00", align 1
@reg_renumber = external global i16*, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"Register %s (%d):\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c" %d [%s]\00", align 1
@reg_class_names = internal constant [25 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"NO_REGS\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"AREG\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"DREG\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"CREG\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"BREG\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"SIREG\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"DIREG\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"AD_REGS\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Q_REGS\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"NON_Q_REGS\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"INDEX_REGS\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"LEGACY_REGS\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"GENERAL_REGS\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"FP_TOP_REG\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"FP_SECOND_REG\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"FLOAT_REGS\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"SSE_REGS\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"MMX_REGS\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"FP_TOP_SSE_REGS\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"FP_SECOND_SSE_REGS\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"FLOAT_SSE_REGS\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"FLOAT_INT_REGS\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"INT_SSE_REGS\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"FLOAT_INT_SSE_REGS\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"ALL_REGS\00", align 1
@regclass_map = external constant [53 x i32], align 16
@.str.48 = private unnamed_addr constant [34 x i8] c"insn %u: replaced reg %u with %u\0A\00", align 1
@regs_invalidated_by_call = external global i64, align 8

; Function Attrs: nounwind uwtable
define void @regrename_optimize() #0 {
entry:
  %tick = alloca [53 x i32], align 16
  %this_tick = alloca i32, align 4
  %b = alloca i32, align 4
  %first_obj = alloca i8*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp35 = alloca i8*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %all_chains = alloca %struct.du_chain*, align 8
  %unavailable = alloca i64, align 8
  %regs_seen = alloca i64, align 8
  %i = alloca i32, align 4
  %new_reg = alloca i32, align 4
  %best_new_reg = alloca i32, align 4
  %n_uses = alloca i32, align 4
  %this = alloca %struct.du_chain*, align 8
  %tmp144 = alloca %struct.du_chain*, align 8
  %last = alloca %struct.du_chain*, align 8
  %this_unavailable = alloca i64, align 8
  %reg = alloca i32, align 4
  %i150 = alloca i32, align 4
  %nregs = alloca i32, align 4
  %__o400 = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  %__o417 = alloca %struct.obstack*, align 8
  %__obj419 = alloca i8*, align 8
  store i32 0, i32* %this_tick, align 4
  %0 = bitcast [53 x i32]* %tick to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 212, i32 16, i1 false)
  call void @gcc_obstack_init(%struct.obstack* @rename_obstack)
  store %struct.obstack* @rename_obstack, %struct.obstack** %__h, align 8
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
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %8 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %__len, align 4
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free2 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  %11 = load i8*, i8** %next_free2, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free2, align 8
  %12 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %12, %struct.obstack** %__o1, align 8
  %13 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %13, i32 0, i32 2
  %14 = load i8*, i8** %object_base, align 8
  store i8* %14, i8** %value, align 8
  %15 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free5 = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i32 0, i32 3
  %16 = load i8*, i8** %next_free5, align 8
  %17 = load i8*, i8** %value, align 8
  %cmp6 = icmp eq i8* %16, %17
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %18 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %18, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free10 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free10, align 8
  %sub.ptr.lhs.cast11 = ptrtoint i8* %20 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast11, 0
  %21 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 6
  %22 = load i32, i32* %alignment_mask, align 4
  %conv13 = sext i32 %22 to i64
  %add = add nsw i64 %sub.ptr.sub12, %conv13
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask14 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 6
  %24 = load i32, i32* %alignment_mask14, align 4
  %neg = xor i32 %24, -1
  %conv15 = sext i32 %neg to i64
  %and = and i64 %add, %conv15
  %add.ptr16 = getelementptr inbounds i8, i8* null, i64 %and
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free17 = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 3
  store i8* %add.ptr16, i8** %next_free17, align 8
  %26 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free18 = getelementptr inbounds %struct.obstack, %struct.obstack* %26, i32 0, i32 3
  %27 = load i8*, i8** %next_free18, align 8
  %28 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %28, i32 0, i32 1
  %29 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %30 = bitcast %struct._obstack_chunk* %29 to i8*
  %sub.ptr.lhs.cast19 = ptrtoint i8* %27 to i64
  %sub.ptr.rhs.cast20 = ptrtoint i8* %30 to i64
  %sub.ptr.sub21 = sub i64 %sub.ptr.lhs.cast19, %sub.ptr.rhs.cast20
  %31 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit22 = getelementptr inbounds %struct.obstack, %struct.obstack* %31, i32 0, i32 4
  %32 = load i8*, i8** %chunk_limit22, align 8
  %33 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk23 = getelementptr inbounds %struct.obstack, %struct.obstack* %33, i32 0, i32 1
  %34 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk23, align 8
  %35 = bitcast %struct._obstack_chunk* %34 to i8*
  %sub.ptr.lhs.cast24 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %35 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %cmp27 = icmp sgt i64 %sub.ptr.sub21, %sub.ptr.sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.9
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit30 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 4
  %37 = load i8*, i8** %chunk_limit30, align 8
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free31 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  store i8* %37, i8** %next_free31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.9
  %39 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %39, i32 0, i32 3
  %40 = load i8*, i8** %next_free33, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base34 = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 2
  store i8* %40, i8** %object_base34, align 8
  %42 = load i8*, i8** %value, align 8
  store i8* %42, i8** %tmp35
  %43 = load i8*, i8** %tmp35
  store i8* %43, i8** %tmp
  %44 = load i8*, i8** %tmp
  store i8* %44, i8** %first_obj, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.413, %if.end.32
  %45 = load i32, i32* %b, align 4
  %46 = load i32, i32* @n_basic_blocks, align 4
  %cmp36 = icmp slt i32 %45, %46
  br i1 %cmp36, label %for.body, label %for.end.415

for.body:                                         ; preds = %for.cond
  %47 = load i32, i32* %b, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 4
  %bb39 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb39, i32 0, i64 %idxprom
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %49, %struct.basic_block_def** %bb, align 8
  store %struct.du_chain* null, %struct.du_chain** %all_chains, align 8
  store i64 0, i64* %unavailable, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %50, null
  br i1 %tobool, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %52 = load i32, i32* %b, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %52)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %for.body
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call45 = call %struct.du_chain* @build_def_use(%struct.basic_block_def* %53)
  store %struct.du_chain* %call45, %struct.du_chain** %all_chains, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool46 = icmp ne %struct._IO_FILE* %54, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  %55 = load %struct.du_chain*, %struct.du_chain** %all_chains, align 8
  call void @dump_def_use_chain(%struct.du_chain* %55)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.44
  store i64 0, i64* %unavailable, align 8
  %56 = load i32, i32* @frame_pointer_needed, align 4
  %tobool49 = icmp ne i32 %56, 0
  br i1 %tobool49, label %if.then.50, label %if.end.137

if.then.50:                                       ; preds = %if.end.48
  %57 = load i32, i32* @target_flags, align 4
  %and52 = and i32 %57, 33554432
  %tobool53 = icmp ne i32 %and52, 0
  %cond = select i1 %tobool53, i32 5, i32 4
  %cmp54 = icmp eq i32 %cond, 18
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.50
  %58 = load i32, i32* @target_flags, align 4
  %and56 = and i32 %58, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 2, i32 3
  br label %cond.end.83

cond.false:                                       ; preds = %if.then.50
  %59 = load i32, i32* @target_flags, align 4
  %and59 = and i32 %59, 33554432
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 5, i32 4
  %cmp62 = icmp eq i32 %cond61, 24
  br i1 %cmp62, label %cond.true.64, label %cond.false.68

cond.true.64:                                     ; preds = %cond.false
  %60 = load i32, i32* @target_flags, align 4
  %and65 = and i32 %60, 33554432
  %tobool66 = icmp ne i32 %and65, 0
  %cond67 = select i1 %tobool66, i32 4, i32 6
  br label %cond.end

cond.false.68:                                    ; preds = %cond.false
  %61 = load i32, i32* @target_flags, align 4
  %and69 = and i32 %61, 33554432
  %tobool70 = icmp ne i32 %and69, 0
  %cond71 = select i1 %tobool70, i32 5, i32 4
  %idxprom72 = sext i32 %cond71 to i64
  %arrayidx73 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom72
  %62 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %62 to i32
  %63 = load i32, i32* @target_flags, align 4
  %and75 = and i32 %63, 33554432
  %tobool76 = icmp ne i32 %and75, 0
  %cond77 = select i1 %tobool76, i32 8, i32 4
  %add78 = add nsw i32 %conv74, %cond77
  %sub = sub nsw i32 %add78, 1
  %64 = load i32, i32* @target_flags, align 4
  %and79 = and i32 %64, 33554432
  %tobool80 = icmp ne i32 %and79, 0
  %cond81 = select i1 %tobool80, i32 8, i32 4
  %div = sdiv i32 %sub, %cond81
  br label %cond.end

cond.end:                                         ; preds = %cond.false.68, %cond.true.64
  %cond82 = phi i32 [ %cond67, %cond.true.64 ], [ %div, %cond.false.68 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end, %cond.true
  %cond84 = phi i32 [ %cond58, %cond.true ], [ %cond82, %cond.end ]
  store i32 %cond84, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.body.87, %cond.end.83
  %65 = load i32, i32* %i, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %i, align 4
  %tobool86 = icmp ne i32 %65, 0
  br i1 %tobool86, label %for.body.87, label %for.end

for.body.87:                                      ; preds = %for.cond.85
  %66 = load i32, i32* %i, align 4
  %add88 = add nsw i32 20, %66
  %sh_prom = zext i32 %add88 to i64
  %shl = shl i64 1, %sh_prom
  %67 = load i64, i64* %unavailable, align 8
  %or = or i64 %67, %shl
  store i64 %or, i64* %unavailable, align 8
  br label %for.cond.85

for.end:                                          ; preds = %for.cond.85
  %68 = load i32, i32* @target_flags, align 4
  %and89 = and i32 %68, 33554432
  %tobool90 = icmp ne i32 %and89, 0
  %cond91 = select i1 %tobool90, i32 5, i32 4
  %cmp92 = icmp eq i32 %cond91, 18
  br i1 %cmp92, label %cond.true.94, label %cond.false.98

cond.true.94:                                     ; preds = %for.end
  %69 = load i32, i32* @target_flags, align 4
  %and95 = and i32 %69, 33554432
  %tobool96 = icmp ne i32 %and95, 0
  %cond97 = select i1 %tobool96, i32 2, i32 3
  br label %cond.end.126

cond.false.98:                                    ; preds = %for.end
  %70 = load i32, i32* @target_flags, align 4
  %and99 = and i32 %70, 33554432
  %tobool100 = icmp ne i32 %and99, 0
  %cond101 = select i1 %tobool100, i32 5, i32 4
  %cmp102 = icmp eq i32 %cond101, 24
  br i1 %cmp102, label %cond.true.104, label %cond.false.108

cond.true.104:                                    ; preds = %cond.false.98
  %71 = load i32, i32* @target_flags, align 4
  %and105 = and i32 %71, 33554432
  %tobool106 = icmp ne i32 %and105, 0
  %cond107 = select i1 %tobool106, i32 4, i32 6
  br label %cond.end.124

cond.false.108:                                   ; preds = %cond.false.98
  %72 = load i32, i32* @target_flags, align 4
  %and109 = and i32 %72, 33554432
  %tobool110 = icmp ne i32 %and109, 0
  %cond111 = select i1 %tobool110, i32 5, i32 4
  %idxprom112 = sext i32 %cond111 to i64
  %arrayidx113 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom112
  %73 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %73 to i32
  %74 = load i32, i32* @target_flags, align 4
  %and115 = and i32 %74, 33554432
  %tobool116 = icmp ne i32 %and115, 0
  %cond117 = select i1 %tobool116, i32 8, i32 4
  %add118 = add nsw i32 %conv114, %cond117
  %sub119 = sub nsw i32 %add118, 1
  %75 = load i32, i32* @target_flags, align 4
  %and120 = and i32 %75, 33554432
  %tobool121 = icmp ne i32 %and120, 0
  %cond122 = select i1 %tobool121, i32 8, i32 4
  %div123 = sdiv i32 %sub119, %cond122
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.108, %cond.true.104
  %cond125 = phi i32 [ %cond107, %cond.true.104 ], [ %div123, %cond.false.108 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true.94
  %cond127 = phi i32 [ %cond97, %cond.true.94 ], [ %cond125, %cond.end.124 ]
  store i32 %cond127, i32* %i, align 4
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.body.131, %cond.end.126
  %76 = load i32, i32* %i, align 4
  %dec129 = add nsw i32 %76, -1
  store i32 %dec129, i32* %i, align 4
  %tobool130 = icmp ne i32 %76, 0
  br i1 %tobool130, label %for.body.131, label %for.end.136

for.body.131:                                     ; preds = %for.cond.128
  %77 = load i32, i32* %i, align 4
  %add132 = add nsw i32 6, %77
  %sh_prom133 = zext i32 %add132 to i64
  %shl134 = shl i64 1, %sh_prom133
  %78 = load i64, i64* %unavailable, align 8
  %or135 = or i64 %78, %shl134
  store i64 %or135, i64* %unavailable, align 8
  br label %for.cond.128

for.end.136:                                      ; preds = %for.cond.128
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.136, %if.end.48
  store i64 0, i64* %regs_seen, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.398, %if.end.388, %if.then.176, %if.then.163, %if.end.137
  %79 = load %struct.du_chain*, %struct.du_chain** %all_chains, align 8
  %tobool138 = icmp ne %struct.du_chain* %79, null
  br i1 %tobool138, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 -1, i32* %best_new_reg, align 4
  %80 = load %struct.du_chain*, %struct.du_chain** %all_chains, align 8
  store %struct.du_chain* %80, %struct.du_chain** %this, align 8
  %81 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc = getelementptr inbounds %struct.du_chain, %struct.du_chain* %81, i32 0, i32 3
  %82 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %82, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx148 to i32*
  %84 = load i32, i32* %rtuint, align 4
  store i32 %84, i32* %reg, align 4
  %85 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %next_chain = getelementptr inbounds %struct.du_chain, %struct.du_chain* %85, i32 0, i32 0
  %86 = load %struct.du_chain*, %struct.du_chain** %next_chain, align 8
  store %struct.du_chain* %86, %struct.du_chain** %all_chains, align 8
  %87 = load i32, i32* %reg, align 4
  %idxprom151 = sext i32 %87 to i64
  %arrayidx152 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom151
  %88 = load i8, i8* %arrayidx152, align 1
  %conv153 = sext i8 %88 to i32
  %tobool154 = icmp ne i32 %conv153, 0
  br i1 %tobool154, label %if.then.163, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %89 = load i32, i32* %reg, align 4
  %idxprom155 = sext i32 %89 to i64
  %arrayidx156 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom155
  %90 = load i8, i8* %arrayidx156, align 1
  %conv157 = sext i8 %90 to i32
  %tobool158 = icmp ne i32 %conv157, 0
  br i1 %tobool158, label %if.then.163, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %lor.lhs.false
  %91 = load i32, i32* @frame_pointer_needed, align 4
  %tobool160 = icmp ne i32 %91, 0
  br i1 %tobool160, label %land.lhs.true, label %if.end.164

land.lhs.true:                                    ; preds = %lor.lhs.false.159
  %92 = load i32, i32* %reg, align 4
  %cmp161 = icmp eq i32 %92, 6
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %land.lhs.true, %lor.lhs.false, %while.body
  br label %while.cond

if.end.164:                                       ; preds = %land.lhs.true, %lor.lhs.false.159
  %93 = load i64, i64* %unavailable, align 8
  store i64 %93, i64* %this_unavailable, align 8
  store i32 0, i32* %n_uses, align 4
  %94 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  store %struct.du_chain* %94, %struct.du_chain** %last, align 8
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc, %if.end.164
  %95 = load %struct.du_chain*, %struct.du_chain** %last, align 8
  %next_use = getelementptr inbounds %struct.du_chain, %struct.du_chain* %95, i32 0, i32 1
  %96 = load %struct.du_chain*, %struct.du_chain** %next_use, align 8
  %tobool166 = icmp ne %struct.du_chain* %96, null
  br i1 %tobool166, label %for.body.167, label %for.end.173

for.body.167:                                     ; preds = %for.cond.165
  %97 = load i32, i32* %n_uses, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %n_uses, align 4
  %98 = load %struct.du_chain*, %struct.du_chain** %last, align 8
  %class = getelementptr inbounds %struct.du_chain, %struct.du_chain* %98, i32 0, i32 4
  %99 = load i32, i32* %class, align 4
  %idxprom168 = zext i32 %99 to i64
  %arrayidx169 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom168
  %100 = load i64, i64* %arrayidx169, align 8
  %neg170 = xor i64 %100, -1
  %101 = load i64, i64* %this_unavailable, align 8
  %or171 = or i64 %101, %neg170
  store i64 %or171, i64* %this_unavailable, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.167
  %102 = load %struct.du_chain*, %struct.du_chain** %last, align 8
  %next_use172 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %102, i32 0, i32 1
  %103 = load %struct.du_chain*, %struct.du_chain** %next_use172, align 8
  store %struct.du_chain* %103, %struct.du_chain** %last, align 8
  br label %for.cond.165

for.end.173:                                      ; preds = %for.cond.165
  %104 = load i32, i32* %n_uses, align 4
  %cmp174 = icmp slt i32 %104, 1
  br i1 %cmp174, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %for.end.173
  br label %while.cond

if.end.177:                                       ; preds = %for.end.173
  %105 = load %struct.du_chain*, %struct.du_chain** %last, align 8
  %class178 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %105, i32 0, i32 4
  %106 = load i32, i32* %class178, align 4
  %idxprom179 = zext i32 %106 to i64
  %arrayidx180 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom179
  %107 = load i64, i64* %arrayidx180, align 8
  %neg181 = xor i64 %107, -1
  %108 = load i64, i64* %this_unavailable, align 8
  %or182 = or i64 %108, %neg181
  store i64 %or182, i64* %this_unavailable, align 8
  %109 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %need_caller_save_reg = getelementptr inbounds %struct.du_chain, %struct.du_chain* %109, i32 0, i32 5
  %bf.load183 = load i8, i8* %need_caller_save_reg, align 4
  %bf.clear184 = and i8 %bf.load183, 1
  %bf.cast = zext i8 %bf.clear184 to i32
  %tobool185 = icmp ne i32 %bf.cast, 0
  br i1 %tobool185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %if.end.177
  %110 = load i64, i64* @call_used_reg_set, align 8
  %111 = load i64, i64* %this_unavailable, align 8
  %or187 = or i64 %111, %110
  store i64 %or187, i64* %this_unavailable, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %if.end.177
  %112 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %113 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  call void @merge_overlapping_regs(%struct.basic_block_def* %112, i64* %this_unavailable, %struct.du_chain* %113)
  store i32 0, i32* %new_reg, align 4
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.363, %if.end.188
  %114 = load i32, i32* %new_reg, align 4
  %cmp190 = icmp slt i32 %114, 53
  br i1 %cmp190, label %for.body.192, label %for.end.365

for.body.192:                                     ; preds = %for.cond.189
  %115 = load i32, i32* %new_reg, align 4
  %cmp194 = icmp sge i32 %115, 8
  br i1 %cmp194, label %land.lhs.true.196, label %lor.lhs.false.199

land.lhs.true.196:                                ; preds = %for.body.192
  %116 = load i32, i32* %new_reg, align 4
  %cmp197 = icmp sle i32 %116, 15
  br i1 %cmp197, label %cond.true.217, label %lor.lhs.false.199

lor.lhs.false.199:                                ; preds = %land.lhs.true.196, %for.body.192
  %117 = load i32, i32* %new_reg, align 4
  %cmp200 = icmp sge i32 %117, 21
  br i1 %cmp200, label %land.lhs.true.202, label %lor.lhs.false.205

land.lhs.true.202:                                ; preds = %lor.lhs.false.199
  %118 = load i32, i32* %new_reg, align 4
  %cmp203 = icmp sle i32 %118, 28
  br i1 %cmp203, label %cond.true.217, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %land.lhs.true.202, %lor.lhs.false.199
  %119 = load i32, i32* %new_reg, align 4
  %cmp206 = icmp sge i32 %119, 45
  br i1 %cmp206, label %land.lhs.true.208, label %lor.lhs.false.211

land.lhs.true.208:                                ; preds = %lor.lhs.false.205
  %120 = load i32, i32* %new_reg, align 4
  %cmp209 = icmp sle i32 %120, 52
  br i1 %cmp209, label %cond.true.217, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %land.lhs.true.208, %lor.lhs.false.205
  %121 = load i32, i32* %new_reg, align 4
  %cmp212 = icmp sge i32 %121, 29
  br i1 %cmp212, label %land.lhs.true.214, label %cond.false.234

land.lhs.true.214:                                ; preds = %lor.lhs.false.211
  %122 = load i32, i32* %new_reg, align 4
  %cmp215 = icmp sle i32 %122, 36
  br i1 %cmp215, label %cond.true.217, label %cond.false.234

cond.true.217:                                    ; preds = %land.lhs.true.214, %land.lhs.true.208, %land.lhs.true.202, %land.lhs.true.196
  %123 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc218 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %123, i32 0, i32 3
  %124 = load %struct.rtx_def**, %struct.rtx_def*** %loc218, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %124, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %bf.load219 = load i32, i32* %126, align 8
  %bf.lshr = lshr i32 %bf.load219, 16
  %bf.clear220 = and i32 %bf.lshr, 255
  %idxprom221 = sext i32 %bf.clear220 to i64
  %arrayidx222 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom221
  %127 = load i32, i32* %arrayidx222, align 4
  %cmp223 = icmp eq i32 %127, 5
  br i1 %cmp223, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.217
  %128 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc225 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %128, i32 0, i32 3
  %129 = load %struct.rtx_def**, %struct.rtx_def*** %loc225, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %129, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load226 = load i32, i32* %131, align 8
  %bf.lshr227 = lshr i32 %bf.load226, 16
  %bf.clear228 = and i32 %bf.lshr227, 255
  %idxprom229 = sext i32 %bf.clear228 to i64
  %arrayidx230 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom229
  %132 = load i32, i32* %arrayidx230, align 4
  %cmp231 = icmp eq i32 %132, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.217
  %133 = phi i1 [ true, %cond.true.217 ], [ %cmp231, %lor.rhs ]
  %cond233 = select i1 %133, i32 2, i32 1
  br label %cond.end.277

cond.false.234:                                   ; preds = %land.lhs.true.214, %lor.lhs.false.211
  %134 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc235 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %134, i32 0, i32 3
  %135 = load %struct.rtx_def**, %struct.rtx_def*** %loc235, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %135, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load236 = load i32, i32* %137, align 8
  %bf.lshr237 = lshr i32 %bf.load236, 16
  %bf.clear238 = and i32 %bf.lshr237, 255
  %cmp239 = icmp eq i32 %bf.clear238, 18
  br i1 %cmp239, label %cond.true.241, label %cond.false.245

cond.true.241:                                    ; preds = %cond.false.234
  %138 = load i32, i32* @target_flags, align 4
  %and242 = and i32 %138, 33554432
  %tobool243 = icmp ne i32 %and242, 0
  %cond244 = select i1 %tobool243, i32 2, i32 3
  br label %cond.end.275

cond.false.245:                                   ; preds = %cond.false.234
  %139 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc246 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %139, i32 0, i32 3
  %140 = load %struct.rtx_def**, %struct.rtx_def*** %loc246, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %140, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %bf.load247 = load i32, i32* %142, align 8
  %bf.lshr248 = lshr i32 %bf.load247, 16
  %bf.clear249 = and i32 %bf.lshr248, 255
  %cmp250 = icmp eq i32 %bf.clear249, 24
  br i1 %cmp250, label %cond.true.252, label %cond.false.256

cond.true.252:                                    ; preds = %cond.false.245
  %143 = load i32, i32* @target_flags, align 4
  %and253 = and i32 %143, 33554432
  %tobool254 = icmp ne i32 %and253, 0
  %cond255 = select i1 %tobool254, i32 4, i32 6
  br label %cond.end.273

cond.false.256:                                   ; preds = %cond.false.245
  %144 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc257 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %144, i32 0, i32 3
  %145 = load %struct.rtx_def**, %struct.rtx_def*** %loc257, align 8
  %146 = load %struct.rtx_def*, %struct.rtx_def** %145, align 8
  %147 = bitcast %struct.rtx_def* %146 to i32*
  %bf.load258 = load i32, i32* %147, align 8
  %bf.lshr259 = lshr i32 %bf.load258, 16
  %bf.clear260 = and i32 %bf.lshr259, 255
  %idxprom261 = sext i32 %bf.clear260 to i64
  %arrayidx262 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom261
  %148 = load i8, i8* %arrayidx262, align 1
  %conv263 = zext i8 %148 to i32
  %149 = load i32, i32* @target_flags, align 4
  %and264 = and i32 %149, 33554432
  %tobool265 = icmp ne i32 %and264, 0
  %cond266 = select i1 %tobool265, i32 8, i32 4
  %add267 = add nsw i32 %conv263, %cond266
  %sub268 = sub nsw i32 %add267, 1
  %150 = load i32, i32* @target_flags, align 4
  %and269 = and i32 %150, 33554432
  %tobool270 = icmp ne i32 %and269, 0
  %cond271 = select i1 %tobool270, i32 8, i32 4
  %div272 = sdiv i32 %sub268, %cond271
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.256, %cond.true.252
  %cond274 = phi i32 [ %cond255, %cond.true.252 ], [ %div272, %cond.false.256 ]
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.end.273, %cond.true.241
  %cond276 = phi i32 [ %cond244, %cond.true.241 ], [ %cond274, %cond.end.273 ]
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.end.275, %lor.end
  %cond278 = phi i32 [ %cond233, %lor.end ], [ %cond276, %cond.end.275 ]
  store i32 %cond278, i32* %nregs, align 4
  %151 = load i32, i32* %nregs, align 4
  %sub279 = sub nsw i32 %151, 1
  store i32 %sub279, i32* %i150, align 4
  br label %for.cond.280

for.cond.280:                                     ; preds = %for.inc.321, %cond.end.277
  %152 = load i32, i32* %i150, align 4
  %cmp281 = icmp sge i32 %152, 0
  br i1 %cmp281, label %for.body.283, label %for.end.323

for.body.283:                                     ; preds = %for.cond.280
  %153 = load i64, i64* %this_unavailable, align 8
  %154 = load i32, i32* %new_reg, align 4
  %155 = load i32, i32* %i150, align 4
  %add284 = add nsw i32 %154, %155
  %sh_prom285 = zext i32 %add284 to i64
  %shl286 = shl i64 1, %sh_prom285
  %and287 = and i64 %153, %shl286
  %tobool288 = icmp ne i64 %and287, 0
  br i1 %tobool288, label %if.then.319, label %lor.lhs.false.289

lor.lhs.false.289:                                ; preds = %for.body.283
  %156 = load i32, i32* %new_reg, align 4
  %157 = load i32, i32* %i150, align 4
  %add290 = add nsw i32 %156, %157
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom291
  %158 = load i8, i8* %arrayidx292, align 1
  %conv293 = sext i8 %158 to i32
  %tobool294 = icmp ne i32 %conv293, 0
  br i1 %tobool294, label %if.then.319, label %lor.lhs.false.295

lor.lhs.false.295:                                ; preds = %lor.lhs.false.289
  %159 = load i32, i32* %new_reg, align 4
  %160 = load i32, i32* %i150, align 4
  %add296 = add nsw i32 %159, %160
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom297
  %161 = load i8, i8* %arrayidx298, align 1
  %conv299 = sext i8 %161 to i32
  %tobool300 = icmp ne i32 %conv299, 0
  br i1 %tobool300, label %if.then.319, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %lor.lhs.false.295
  %162 = load i32, i32* %new_reg, align 4
  %163 = load i32, i32* %i150, align 4
  %add302 = add nsw i32 %162, %163
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %idxprom303
  %164 = load i8, i8* %arrayidx304, align 1
  %tobool305 = icmp ne i8 %164, 0
  br i1 %tobool305, label %lor.lhs.false.311, label %land.lhs.true.306

land.lhs.true.306:                                ; preds = %lor.lhs.false.301
  %165 = load i32, i32* %new_reg, align 4
  %166 = load i32, i32* %i150, align 4
  %add307 = add nsw i32 %165, %166
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom308
  %167 = load i8, i8* %arrayidx309, align 1
  %tobool310 = icmp ne i8 %167, 0
  br i1 %tobool310, label %lor.lhs.false.311, label %if.then.319

lor.lhs.false.311:                                ; preds = %land.lhs.true.306, %lor.lhs.false.301
  %168 = load i32, i32* %reg, align 4
  %169 = load i32, i32* %i150, align 4
  %add312 = add nsw i32 %168, %169
  %cmp313 = icmp slt i32 %add312, 8
  br i1 %cmp313, label %if.end.320, label %lor.lhs.false.315

lor.lhs.false.315:                                ; preds = %lor.lhs.false.311
  %170 = load i32, i32* %reg, align 4
  %171 = load i32, i32* %i150, align 4
  %add316 = add nsw i32 %170, %171
  %cmp317 = icmp sgt i32 %add316, 15
  br i1 %cmp317, label %if.end.320, label %if.then.319

if.then.319:                                      ; preds = %lor.lhs.false.315, %land.lhs.true.306, %lor.lhs.false.295, %lor.lhs.false.289, %for.body.283
  br label %for.end.323

if.end.320:                                       ; preds = %lor.lhs.false.315, %lor.lhs.false.311
  br label %for.inc.321

for.inc.321:                                      ; preds = %if.end.320
  %172 = load i32, i32* %i150, align 4
  %dec322 = add nsw i32 %172, -1
  store i32 %dec322, i32* %i150, align 4
  br label %for.cond.280

for.end.323:                                      ; preds = %if.then.319, %for.cond.280
  %173 = load i32, i32* %i150, align 4
  %cmp324 = icmp sge i32 %173, 0
  br i1 %cmp324, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %for.end.323
  br label %for.inc.363

if.end.327:                                       ; preds = %for.end.323
  %174 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  store %struct.du_chain* %174, %struct.du_chain** %tmp144, align 8
  br label %for.cond.328

for.cond.328:                                     ; preds = %for.inc.346, %if.end.327
  %175 = load %struct.du_chain*, %struct.du_chain** %tmp144, align 8
  %tobool329 = icmp ne %struct.du_chain* %175, null
  br i1 %tobool329, label %for.body.330, label %for.end.348

for.body.330:                                     ; preds = %for.cond.328
  %176 = load i32, i32* %new_reg, align 4
  %177 = load %struct.du_chain*, %struct.du_chain** %tmp144, align 8
  %loc331 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %177, i32 0, i32 3
  %178 = load %struct.rtx_def**, %struct.rtx_def*** %loc331, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %178, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load332 = load i32, i32* %180, align 8
  %bf.lshr333 = lshr i32 %bf.load332, 16
  %bf.clear334 = and i32 %bf.lshr333, 255
  %call335 = call i32 @ix86_hard_regno_mode_ok(i32 %176, i32 %bf.clear334)
  %tobool336 = icmp ne i32 %call335, 0
  br i1 %tobool336, label %lor.lhs.false.337, label %if.then.344

lor.lhs.false.337:                                ; preds = %for.body.330
  %181 = load %struct.du_chain*, %struct.du_chain** %tmp144, align 8
  %need_caller_save_reg338 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %181, i32 0, i32 5
  %bf.load339 = load i8, i8* %need_caller_save_reg338, align 4
  %bf.clear340 = and i8 %bf.load339, 1
  %bf.cast341 = zext i8 %bf.clear340 to i32
  %tobool342 = icmp ne i32 %bf.cast341, 0
  br i1 %tobool342, label %land.lhs.true.343, label %if.end.345

land.lhs.true.343:                                ; preds = %lor.lhs.false.337
  br i1 false, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %land.lhs.true.343, %for.body.330
  br label %for.end.348

if.end.345:                                       ; preds = %land.lhs.true.343, %lor.lhs.false.337
  br label %for.inc.346

for.inc.346:                                      ; preds = %if.end.345
  %182 = load %struct.du_chain*, %struct.du_chain** %tmp144, align 8
  %next_use347 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %182, i32 0, i32 1
  %183 = load %struct.du_chain*, %struct.du_chain** %next_use347, align 8
  store %struct.du_chain* %183, %struct.du_chain** %tmp144, align 8
  br label %for.cond.328

for.end.348:                                      ; preds = %if.then.344, %for.cond.328
  %184 = load %struct.du_chain*, %struct.du_chain** %tmp144, align 8
  %tobool349 = icmp ne %struct.du_chain* %184, null
  br i1 %tobool349, label %if.end.362, label %if.then.350

if.then.350:                                      ; preds = %for.end.348
  %185 = load i32, i32* %best_new_reg, align 4
  %cmp351 = icmp eq i32 %185, -1
  br i1 %cmp351, label %if.then.360, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %if.then.350
  %186 = load i32, i32* %best_new_reg, align 4
  %idxprom354 = sext i32 %186 to i64
  %arrayidx355 = getelementptr inbounds [53 x i32], [53 x i32]* %tick, i32 0, i64 %idxprom354
  %187 = load i32, i32* %arrayidx355, align 4
  %188 = load i32, i32* %new_reg, align 4
  %idxprom356 = sext i32 %188 to i64
  %arrayidx357 = getelementptr inbounds [53 x i32], [53 x i32]* %tick, i32 0, i64 %idxprom356
  %189 = load i32, i32* %arrayidx357, align 4
  %cmp358 = icmp sgt i32 %187, %189
  br i1 %cmp358, label %if.then.360, label %if.end.361

if.then.360:                                      ; preds = %lor.lhs.false.353, %if.then.350
  %190 = load i32, i32* %new_reg, align 4
  store i32 %190, i32* %best_new_reg, align 4
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.360, %lor.lhs.false.353
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %for.end.348
  br label %for.inc.363

for.inc.363:                                      ; preds = %if.end.362, %if.then.326
  %191 = load i32, i32* %new_reg, align 4
  %inc364 = add nsw i32 %191, 1
  store i32 %inc364, i32* %new_reg, align 4
  br label %for.cond.189

for.end.365:                                      ; preds = %for.cond.189
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool366 = icmp ne %struct._IO_FILE* %192, null
  br i1 %tobool366, label %if.then.367, label %if.end.381

if.then.367:                                      ; preds = %for.end.365
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %194 = load i32, i32* %reg, align 4
  %idxprom368 = sext i32 %194 to i64
  %arrayidx369 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom368
  %195 = load i8*, i8** %arrayidx369, align 8
  %196 = load %struct.du_chain*, %struct.du_chain** %last, align 8
  %insn = getelementptr inbounds %struct.du_chain, %struct.du_chain* %196, i32 0, i32 2
  %197 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld370 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx371 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld370, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx371 to i32*
  %198 = load i32, i32* %rtint, align 4
  %call372 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i8* %195, i32 %198)
  %199 = load %struct.du_chain*, %struct.du_chain** %last, align 8
  %need_caller_save_reg373 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %199, i32 0, i32 5
  %bf.load374 = load i8, i8* %need_caller_save_reg373, align 4
  %bf.clear375 = and i8 %bf.load374, 1
  %bf.cast376 = zext i8 %bf.clear375 to i32
  %tobool377 = icmp ne i32 %bf.cast376, 0
  br i1 %tobool377, label %if.then.378, label %if.end.380

if.then.378:                                      ; preds = %if.then.367
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call379 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.378, %if.then.367
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %for.end.365
  %201 = load i32, i32* %best_new_reg, align 4
  %cmp382 = icmp eq i32 %201, -1
  br i1 %cmp382, label %if.then.384, label %if.end.389

if.then.384:                                      ; preds = %if.end.381
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool385 = icmp ne %struct._IO_FILE* %202, null
  br i1 %tobool385, label %if.then.386, label %if.end.388

if.then.386:                                      ; preds = %if.then.384
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.386, %if.then.384
  br label %while.cond

if.end.389:                                       ; preds = %if.end.381
  %204 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %205 = load i32, i32* %best_new_reg, align 4
  call void @do_replace(%struct.du_chain* %204, i32 %205)
  %206 = load i32, i32* %this_tick, align 4
  %inc390 = add nsw i32 %206, 1
  store i32 %inc390, i32* %this_tick, align 4
  %207 = load i32, i32* %best_new_reg, align 4
  %idxprom391 = sext i32 %207 to i64
  %arrayidx392 = getelementptr inbounds [53 x i32], [53 x i32]* %tick, i32 0, i64 %idxprom391
  store i32 %206, i32* %arrayidx392, align 4
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool393 = icmp ne %struct._IO_FILE* %208, null
  br i1 %tobool393, label %if.then.394, label %if.end.398

if.then.394:                                      ; preds = %if.end.389
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %210 = load i32, i32* %best_new_reg, align 4
  %idxprom395 = sext i32 %210 to i64
  %arrayidx396 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom395
  %211 = load i8*, i8** %arrayidx396, align 8
  %call397 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %209, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* %211)
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.394, %if.end.389
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.obstack* @rename_obstack, %struct.obstack** %__o400, align 8
  %212 = load i8*, i8** %first_obj, align 8
  store i8* %212, i8** %__obj, align 8
  %213 = load i8*, i8** %__obj, align 8
  %214 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  %chunk402 = getelementptr inbounds %struct.obstack, %struct.obstack* %214, i32 0, i32 1
  %215 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk402, align 8
  %216 = bitcast %struct._obstack_chunk* %215 to i8*
  %cmp403 = icmp ugt i8* %213, %216
  br i1 %cmp403, label %land.lhs.true.405, label %if.else

land.lhs.true.405:                                ; preds = %while.end
  %217 = load i8*, i8** %__obj, align 8
  %218 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  %chunk_limit406 = getelementptr inbounds %struct.obstack, %struct.obstack* %218, i32 0, i32 4
  %219 = load i8*, i8** %chunk_limit406, align 8
  %cmp407 = icmp ult i8* %217, %219
  br i1 %cmp407, label %if.then.409, label %if.else

if.then.409:                                      ; preds = %land.lhs.true.405
  %220 = load i8*, i8** %__obj, align 8
  %221 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  %object_base410 = getelementptr inbounds %struct.obstack, %struct.obstack* %221, i32 0, i32 2
  store i8* %220, i8** %object_base410, align 8
  %222 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  %next_free411 = getelementptr inbounds %struct.obstack, %struct.obstack* %222, i32 0, i32 3
  store i8* %220, i8** %next_free411, align 8
  br label %if.end.412

if.else:                                          ; preds = %land.lhs.true.405, %while.end
  %223 = load %struct.obstack*, %struct.obstack** %__o400, align 8
  %224 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %223, i8* %224)
  br label %if.end.412

if.end.412:                                       ; preds = %if.else, %if.then.409
  br label %for.inc.413

for.inc.413:                                      ; preds = %if.end.412
  %225 = load i32, i32* %b, align 4
  %inc414 = add nsw i32 %225, 1
  store i32 %inc414, i32* %b, align 4
  br label %for.cond

for.end.415:                                      ; preds = %for.cond
  store %struct.obstack* @rename_obstack, %struct.obstack** %__o417, align 8
  store i8* null, i8** %__obj419, align 8
  %226 = load i8*, i8** %__obj419, align 8
  %227 = load %struct.obstack*, %struct.obstack** %__o417, align 8
  %chunk420 = getelementptr inbounds %struct.obstack, %struct.obstack* %227, i32 0, i32 1
  %228 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk420, align 8
  %229 = bitcast %struct._obstack_chunk* %228 to i8*
  %cmp421 = icmp ugt i8* %226, %229
  br i1 %cmp421, label %land.lhs.true.423, label %if.else.430

land.lhs.true.423:                                ; preds = %for.end.415
  %230 = load i8*, i8** %__obj419, align 8
  %231 = load %struct.obstack*, %struct.obstack** %__o417, align 8
  %chunk_limit424 = getelementptr inbounds %struct.obstack, %struct.obstack* %231, i32 0, i32 4
  %232 = load i8*, i8** %chunk_limit424, align 8
  %cmp425 = icmp ult i8* %230, %232
  br i1 %cmp425, label %if.then.427, label %if.else.430

if.then.427:                                      ; preds = %land.lhs.true.423
  %233 = load i8*, i8** %__obj419, align 8
  %234 = load %struct.obstack*, %struct.obstack** %__o417, align 8
  %object_base428 = getelementptr inbounds %struct.obstack, %struct.obstack* %234, i32 0, i32 2
  store i8* %233, i8** %object_base428, align 8
  %235 = load %struct.obstack*, %struct.obstack** %__o417, align 8
  %next_free429 = getelementptr inbounds %struct.obstack, %struct.obstack* %235, i32 0, i32 3
  store i8* %233, i8** %next_free429, align 8
  br label %if.end.431

if.else.430:                                      ; preds = %land.lhs.true.423, %for.end.415
  %236 = load %struct.obstack*, %struct.obstack** %__o417, align 8
  %237 = load i8*, i8** %__obj419, align 8
  call void @obstack_free(%struct.obstack* %236, i8* %237)
  br label %if.end.431

if.end.431:                                       ; preds = %if.else.430, %if.then.427
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool432 = icmp ne %struct._IO_FILE* %238, null
  br i1 %tobool432, label %if.then.433, label %if.end.435

if.then.433:                                      ; preds = %if.end.431
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call434 = call i32 @fputc(i32 10, %struct._IO_FILE* %239)
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.433, %if.end.431
  %call436 = call i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* null, i32 1)
  call void @update_life_info(%struct.simple_bitmap_def* null, i32 0, i32 5)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @gcc_obstack_init(%struct.obstack*) #2

declare void @_obstack_newchunk(%struct.obstack*, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.du_chain* @build_def_use(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %n_ops = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %old_operands = alloca [30 x %struct.rtx_def*], align 16
  %old_dups = alloca [4 x %struct.rtx_def*], align 16
  %i = alloca i32, align 4
  %icode = alloca i32, align 4
  %alt = alloca i32, align 4
  %predicated = alloca i32, align 4
  %matches = alloca i32, align 4
  %dup_num = alloca i32, align 4
  %loc = alloca %struct.rtx_def**, align 8
  %op = alloca %struct.rtx_def*, align 8
  %opn = alloca i32, align 4
  %loc213 = alloca %struct.rtx_def**, align 8
  %class225 = alloca i32, align 4
  %type = alloca i32, align 4
  %p = alloca %struct.du_chain*, align 8
  %opn322 = alloca i32, align 4
  %loc383 = alloca %struct.rtx_def**, align 8
  %op386 = alloca %struct.rtx_def*, align 8
  %class387 = alloca i32, align 4
  %opn431 = alloca i32, align 4
  %loc442 = alloca %struct.rtx_def**, align 8
  %class454 = alloca i32, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.du_chain* null, %struct.du_chain** @closed_chains, align 8
  store %struct.du_chain* null, %struct.du_chain** @open_chains, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.505, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end.500

if.then:                                          ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %6 = load i32, i32* %rtint, align 4
  %cmp3 = icmp sge i32 %6, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 4
  %rtint7 = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %8 = load i32, i32* %rtint7, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i32 @recog_memoized_1(%struct.rtx_def* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %icode, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @extract_insn(%struct.rtx_def* %10)
  %call8 = call i32 @constrain_operands(i32 1)
  call void @preprocess_constraints()
  %11 = load i32, i32* @which_alternative, align 4
  store i32 %11, i32* %alt, align 4
  %12 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv9 = sext i8 %12 to i32
  store i32 %conv9, i32* %n_ops, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load12 = load i32, i32* %15, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 38
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, i32* %predicated, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %cond.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n_ops, align 4
  %cmp17 = icmp slt i32 %16, %17
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.16
  %18 = load i32, i32* %alt, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx21, i32 0, i64 %idxprom19
  %matches23 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx22, i32 0, i32 3
  %20 = load i32, i32* %matches23, align 4
  store i32 %20, i32* %matches, align 4
  %21 = load i32, i32* %matches, align 4
  %cmp24 = icmp sge i32 %21, 0
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %for.body
  %22 = load i32, i32* %alt, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load i32, i32* %matches, align 4
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx29, i32 0, i64 %idxprom27
  %class = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx30, i32 0, i32 1
  %24 = load i32, i32* %class, align 4
  %25 = load i32, i32* %alt, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx33, i32 0, i64 %idxprom31
  %class35 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx34, i32 0, i32 1
  store i32 %24, i32* %class35, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.26, %for.body
  %27 = load i32, i32* %matches, align 4
  %cmp36 = icmp sge i32 %27, 0
  br i1 %cmp36, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %28 = load i32, i32* %alt, align 4
  %idxprom38 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx40, i32 0, i64 %idxprom38
  %matched = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx41, i32 0, i32 4
  %30 = load i32, i32* %matched, align 4
  %cmp42 = icmp sge i32 %30, 0
  br i1 %cmp42, label %if.then.49, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false
  %31 = load i32, i32* %predicated, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %lor.lhs.false.44
  %32 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %32 to i64
  %arrayidx46 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom45
  %33 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp eq i32 %33, 1
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  %34 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %34 to i64
  %arrayidx51 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom50
  store i32 2, i32* %arrayidx51, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %land.lhs.true, %lor.lhs.false.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.61, %for.end
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %n_ops, align 4
  %cmp54 = icmp slt i32 %36, %37
  br i1 %cmp54, label %for.body.56, label %for.end.63

for.body.56:                                      ; preds = %for.cond.53
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom57
  %40 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx58, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %41 to i64
  %arrayidx60 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom59
  %42 = load i32, i32* %arrayidx60, align 4
  call void @scan_rtx(%struct.rtx_def* %38, %struct.rtx_def** %40, i32 0, i32 1, i32 %42, i32 0)
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.56
  %43 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %43, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.53

for.end.63:                                       ; preds = %for.cond.53
  store i32 0, i32* %i, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.82, %for.end.63
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n_ops, align 4
  %cmp65 = icmp slt i32 %44, %45
  br i1 %cmp65, label %for.body.67, label %for.end.84

for.body.67:                                      ; preds = %for.cond.64
  %46 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %46 to i64
  %arrayidx69 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom68
  %47 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx69, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %48 to i64
  %arrayidx71 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* %old_operands, i32 0, i64 %idxprom70
  store %struct.rtx_def* %47, %struct.rtx_def** %arrayidx71, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %49 to i64
  %arrayidx73 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom72
  %50 = load i8*, i8** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %51 to i32
  %cmp76 = icmp eq i32 %conv75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %for.body.67
  br label %for.inc.82

if.end.79:                                        ; preds = %for.body.67
  %52 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 1), align 8
  %53 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %53 to i64
  %arrayidx81 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom80
  %54 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx81, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %54, align 8
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.79, %if.then.78
  %55 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %55, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.64

for.end.84:                                       ; preds = %for.cond.64
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.115, %for.end.84
  %56 = load i32, i32* %i, align 4
  %57 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv86 = sext i8 %57 to i32
  %cmp87 = icmp slt i32 %56, %conv86
  br i1 %cmp87, label %for.body.89, label %for.end.117

for.body.89:                                      ; preds = %for.cond.85
  %58 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %58 to i64
  %arrayidx91 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6), i32 0, i64 %idxprom90
  %59 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %59 to i32
  store i32 %conv92, i32* %dup_num, align 4
  %60 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %60 to i64
  %arrayidx94 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom93
  %61 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx94, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %63 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %63 to i64
  %arrayidx96 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %old_dups, i32 0, i64 %idxprom95
  store %struct.rtx_def* %62, %struct.rtx_def** %arrayidx96, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 1), align 8
  %65 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %65 to i64
  %arrayidx98 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom97
  %66 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx98, align 8
  store %struct.rtx_def* %64, %struct.rtx_def** %66, align 8
  %67 = load i32, i32* %icode, align 4
  %cmp99 = icmp sge i32 %67, 0
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.114

land.lhs.true.101:                                ; preds = %for.body.89
  %68 = load i32, i32* %dup_num, align 4
  %idxprom102 = sext i32 %68 to i64
  %69 = load i32, i32* %icode, align 4
  %idxprom103 = sext i32 %69 to i64
  %arrayidx104 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom103
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx104, i32 0, i32 3
  %70 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx105 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %70, i64 %idxprom102
  %eliminable = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx105, i32 0, i32 4
  %71 = load i8, i8* %eliminable, align 1
  %conv106 = sext i8 %71 to i32
  %cmp107 = icmp eq i32 %conv106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %land.lhs.true.101
  %72 = load i32, i32* %dup_num, align 4
  %idxprom110 = sext i32 %72 to i64
  %arrayidx111 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom110
  %73 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx111, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %74 to i64
  %arrayidx113 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %old_dups, i32 0, i64 %idxprom112
  store %struct.rtx_def* %73, %struct.rtx_def** %arrayidx113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.109, %land.lhs.true.101, %for.body.89
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %75 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %75, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.85

for.end.117:                                      ; preds = %for.cond.85
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 3
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  call void @scan_rtx(%struct.rtx_def* %76, %struct.rtx_def** %rtx120, i32 0, i32 0, i32 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.130, %for.end.117
  %78 = load i32, i32* %i, align 4
  %79 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv122 = sext i8 %79 to i32
  %cmp123 = icmp slt i32 %78, %conv122
  br i1 %cmp123, label %for.body.125, label %for.end.132

for.body.125:                                     ; preds = %for.cond.121
  %80 = load i32, i32* %i, align 4
  %idxprom126 = sext i32 %80 to i64
  %arrayidx127 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %old_dups, i32 0, i64 %idxprom126
  %81 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx127, align 8
  %82 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %82 to i64
  %arrayidx129 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom128
  %83 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx129, align 8
  store %struct.rtx_def* %81, %struct.rtx_def** %83, align 8
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.125
  %84 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %84, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.121

for.end.132:                                      ; preds = %for.cond.121
  store i32 0, i32* %i, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.141, %for.end.132
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %n_ops, align 4
  %cmp134 = icmp slt i32 %85, %86
  br i1 %cmp134, label %for.body.136, label %for.end.143

for.body.136:                                     ; preds = %for.cond.133
  %87 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %87 to i64
  %arrayidx138 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* %old_operands, i32 0, i64 %idxprom137
  %88 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx138, align 8
  %89 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %89 to i64
  %arrayidx140 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom139
  %90 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx140, align 8
  store %struct.rtx_def* %88, %struct.rtx_def** %90, align 8
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.136
  %91 = load i32, i32* %i, align 4
  %inc142 = add nsw i32 %91, 1
  store i32 %inc142, i32* %i, align 4
  br label %for.cond.133

for.end.143:                                      ; preds = %for.cond.133
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load144 = load i32, i32* %93, align 8
  %bf.clear145 = and i32 %bf.load144, 65535
  %cmp146 = icmp eq i32 %bf.clear145, 34
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.157

land.lhs.true.148:                                ; preds = %for.end.143
  %94 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 7
  %rtx151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx151, align 8
  %tobool152 = icmp ne %struct.rtx_def* %95, null
  br i1 %tobool152, label %if.then.153, label %if.end.157

if.then.153:                                      ; preds = %land.lhs.true.148
  %96 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 7
  %rtx156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtx_def**
  call void @scan_rtx(%struct.rtx_def* %96, %struct.rtx_def** %rtx156, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.153, %land.lhs.true.148, %for.end.143
  %98 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 3
  %rtx160 = bitcast %union.rtunion_def* %arrayidx159 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx160, align 8
  %call161 = call i32 @asm_noperands(%struct.rtx_def* %99)
  %cmp162 = icmp sgt i32 %call161, 0
  br i1 %cmp162, label %if.then.164, label %if.end.198

if.then.164:                                      ; preds = %if.end.157
  store i32 0, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.195, %if.then.164
  %100 = load i32, i32* %i, align 4
  %101 = load i32, i32* %n_ops, align 4
  %cmp166 = icmp slt i32 %100, %101
  br i1 %cmp166, label %for.body.168, label %for.end.197

for.body.168:                                     ; preds = %for.cond.165
  %102 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %102 to i64
  %arrayidx170 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom169
  %103 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx170, align 8
  store %struct.rtx_def** %103, %struct.rtx_def*** %loc, align 8
  %104 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %104, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %op, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load171 = load i32, i32* %107, align 8
  %bf.clear172 = and i32 %bf.load171, 65535
  %cmp173 = icmp eq i32 %bf.clear172, 61
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.194

land.lhs.true.175:                                ; preds = %for.body.168
  %108 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx177 to i32*
  %109 = load i32, i32* %rtuint, align 4
  %110 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 1
  %rtuint180 = bitcast %union.rtunion_def* %arrayidx179 to i32*
  %111 = load i32, i32* %rtuint180, align 4
  %cmp181 = icmp eq i32 %109, %111
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.194

land.lhs.true.183:                                ; preds = %land.lhs.true.175
  %112 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %112 to i64
  %arrayidx185 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom184
  %113 = load i32, i32* %arrayidx185, align 4
  %cmp186 = icmp eq i32 %113, 0
  br i1 %cmp186, label %if.then.193, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %land.lhs.true.183
  %114 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %114 to i64
  %arrayidx190 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom189
  %115 = load i32, i32* %arrayidx190, align 4
  %cmp191 = icmp eq i32 %115, 2
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %lor.lhs.false.188, %land.lhs.true.183
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %117 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  call void @scan_rtx(%struct.rtx_def* %116, %struct.rtx_def** %117, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %lor.lhs.false.188, %land.lhs.true.175, %for.body.168
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end.194
  %118 = load i32, i32* %i, align 4
  %inc196 = add nsw i32 %118, 1
  store i32 %inc196, i32* %i, align 4
  br label %for.cond.165

for.end.197:                                      ; preds = %for.cond.165
  br label %if.end.198

if.end.198:                                       ; preds = %for.end.197, %if.end.157
  store i32 0, i32* %i, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.250, %if.end.198
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %n_ops, align 4
  %121 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv200 = sext i8 %121 to i32
  %add = add nsw i32 %120, %conv200
  %cmp201 = icmp slt i32 %119, %add
  br i1 %cmp201, label %for.body.203, label %for.end.252

for.body.203:                                     ; preds = %for.cond.199
  %122 = load i32, i32* %i, align 4
  %123 = load i32, i32* %n_ops, align 4
  %cmp204 = icmp slt i32 %122, %123
  br i1 %cmp204, label %cond.true.206, label %cond.false.207

cond.true.206:                                    ; preds = %for.body.203
  %124 = load i32, i32* %i, align 4
  br label %cond.end.211

cond.false.207:                                   ; preds = %for.body.203
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %n_ops, align 4
  %sub = sub nsw i32 %125, %126
  %idxprom208 = sext i32 %sub to i64
  %arrayidx209 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6), i32 0, i64 %idxprom208
  %127 = load i8, i8* %arrayidx209, align 1
  %conv210 = sext i8 %127 to i32
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.207, %cond.true.206
  %cond212 = phi i32 [ %124, %cond.true.206 ], [ %conv210, %cond.false.207 ]
  store i32 %cond212, i32* %opn, align 4
  %128 = load i32, i32* %i, align 4
  %129 = load i32, i32* %n_ops, align 4
  %cmp214 = icmp slt i32 %128, %129
  br i1 %cmp214, label %cond.true.216, label %cond.false.219

cond.true.216:                                    ; preds = %cond.end.211
  %130 = load i32, i32* %opn, align 4
  %idxprom217 = sext i32 %130 to i64
  %arrayidx218 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom217
  %131 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx218, align 8
  br label %cond.end.223

cond.false.219:                                   ; preds = %cond.end.211
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %n_ops, align 4
  %sub220 = sub nsw i32 %132, %133
  %idxprom221 = sext i32 %sub220 to i64
  %arrayidx222 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom221
  %134 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx222, align 8
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.219, %cond.true.216
  %cond224 = phi %struct.rtx_def** [ %131, %cond.true.216 ], [ %134, %cond.false.219 ]
  store %struct.rtx_def** %cond224, %struct.rtx_def*** %loc213, align 8
  %135 = load i32, i32* %alt, align 4
  %idxprom226 = sext i32 %135 to i64
  %136 = load i32, i32* %opn, align 4
  %idxprom227 = sext i32 %136 to i64
  %arrayidx228 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom227
  %arrayidx229 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx228, i32 0, i64 %idxprom226
  %class230 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx229, i32 0, i32 1
  %137 = load i32, i32* %class230, align 4
  store i32 %137, i32* %class225, align 4
  %138 = load i32, i32* %opn, align 4
  %idxprom231 = sext i32 %138 to i64
  %arrayidx232 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom231
  %139 = load i32, i32* %arrayidx232, align 4
  store i32 %139, i32* %type, align 4
  %140 = load i32, i32* %opn, align 4
  %idxprom233 = sext i32 %140 to i64
  %arrayidx234 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom233
  %141 = load i8*, i8** %arrayidx234, align 8
  %arrayidx235 = getelementptr inbounds i8, i8* %141, i64 0
  %142 = load i8, i8* %arrayidx235, align 1
  %conv236 = sext i8 %142 to i32
  %cmp237 = icmp eq i32 %conv236, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %cond.end.223
  br label %for.inc.250

if.end.240:                                       ; preds = %cond.end.223
  %143 = load i32, i32* %alt, align 4
  %idxprom241 = sext i32 %143 to i64
  %144 = load i32, i32* %opn, align 4
  %idxprom242 = sext i32 %144 to i64
  %arrayidx243 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom242
  %arrayidx244 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx243, i32 0, i64 %idxprom241
  %is_address = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx244, i32 0, i32 5
  %bf.load245 = load i8, i8* %is_address, align 8
  %bf.lshr = lshr i8 %bf.load245, 6
  %bf.clear246 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear246 to i32
  %tobool247 = icmp ne i32 %bf.cast, 0
  br i1 %tobool247, label %if.then.248, label %if.else

if.then.248:                                      ; preds = %if.end.240
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %146 = load %struct.rtx_def**, %struct.rtx_def*** %loc213, align 8
  %147 = load i32, i32* %class225, align 4
  call void @scan_rtx_address(%struct.rtx_def* %145, %struct.rtx_def** %146, i32 %147, i32 4, i32 0)
  br label %if.end.249

if.else:                                          ; preds = %if.end.240
  %148 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %149 = load %struct.rtx_def**, %struct.rtx_def*** %loc213, align 8
  %150 = load i32, i32* %class225, align 4
  %151 = load i32, i32* %type, align 4
  call void @scan_rtx(%struct.rtx_def* %148, %struct.rtx_def** %149, i32 %150, i32 4, i32 %151, i32 0)
  br label %if.end.249

if.end.249:                                       ; preds = %if.else, %if.then.248
  br label %for.inc.250

for.inc.250:                                      ; preds = %if.end.249, %if.then.239
  %152 = load i32, i32* %i, align 4
  %inc251 = add nsw i32 %152, 1
  store i32 %inc251, i32* %i, align 4
  br label %for.cond.199

for.end.252:                                      ; preds = %for.cond.199
  %153 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 6
  %rtx255 = bitcast %union.rtunion_def* %arrayidx254 to %struct.rtx_def**
  %154 = load %struct.rtx_def*, %struct.rtx_def** %rtx255, align 8
  store %struct.rtx_def* %154, %struct.rtx_def** %note, align 8
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.280, %for.end.252
  %155 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool257 = icmp ne %struct.rtx_def* %155, null
  br i1 %tobool257, label %for.body.258, label %for.end.284

for.body.258:                                     ; preds = %for.cond.256
  %156 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %157 = bitcast %struct.rtx_def* %156 to i32*
  %bf.load259 = load i32, i32* %157, align 8
  %bf.lshr260 = lshr i32 %bf.load259, 16
  %bf.clear261 = and i32 %bf.lshr260, 255
  %cmp262 = icmp eq i32 %bf.clear261, 1
  br i1 %cmp262, label %if.then.264, label %if.else.268

if.then.264:                                      ; preds = %for.body.258
  %158 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %159 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld265 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld265, i32 0, i64 0
  %rtx267 = bitcast %union.rtunion_def* %arrayidx266 to %struct.rtx_def**
  call void @scan_rtx(%struct.rtx_def* %158, %struct.rtx_def** %rtx267, i32 0, i32 3, i32 0, i32 0)
  br label %if.end.279

if.else.268:                                      ; preds = %for.body.258
  %160 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load269 = load i32, i32* %161, align 8
  %bf.lshr270 = lshr i32 %bf.load269, 16
  %bf.clear271 = and i32 %bf.lshr270, 255
  %cmp272 = icmp eq i32 %bf.clear271, 2
  br i1 %cmp272, label %if.then.274, label %if.end.278

if.then.274:                                      ; preds = %if.else.268
  %162 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %163 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld275 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %163, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld275, i32 0, i64 0
  %rtx277 = bitcast %union.rtunion_def* %arrayidx276 to %struct.rtx_def**
  call void @scan_rtx(%struct.rtx_def* %162, %struct.rtx_def** %rtx277, i32 24, i32 4, i32 2, i32 0)
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.274, %if.else.268
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.then.264
  br label %for.inc.280

for.inc.280:                                      ; preds = %if.end.279
  %164 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %arrayidx282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld281, i32 0, i64 1
  %rtx283 = bitcast %union.rtunion_def* %arrayidx282 to %struct.rtx_def**
  %165 = load %struct.rtx_def*, %struct.rtx_def** %rtx283, align 8
  store %struct.rtx_def* %165, %struct.rtx_def** %note, align 8
  br label %for.cond.256

for.end.284:                                      ; preds = %for.cond.256
  %166 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %167 = bitcast %struct.rtx_def* %166 to i32*
  %bf.load285 = load i32, i32* %167, align 8
  %bf.clear286 = and i32 %bf.load285, 65535
  %cmp287 = icmp eq i32 %bf.clear286, 34
  br i1 %cmp287, label %if.then.289, label %if.end.297

if.then.289:                                      ; preds = %for.end.284
  %168 = load %struct.du_chain*, %struct.du_chain** @open_chains, align 8
  store %struct.du_chain* %168, %struct.du_chain** %p, align 8
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.295, %if.then.289
  %169 = load %struct.du_chain*, %struct.du_chain** %p, align 8
  %tobool291 = icmp ne %struct.du_chain* %169, null
  br i1 %tobool291, label %for.body.292, label %for.end.296

for.body.292:                                     ; preds = %for.cond.290
  %170 = load %struct.du_chain*, %struct.du_chain** %p, align 8
  %need_caller_save_reg = getelementptr inbounds %struct.du_chain, %struct.du_chain* %170, i32 0, i32 5
  %bf.load293 = load i8, i8* %need_caller_save_reg, align 4
  %bf.clear294 = and i8 %bf.load293, -2
  %bf.set = or i8 %bf.clear294, 1
  store i8 %bf.set, i8* %need_caller_save_reg, align 4
  br label %for.inc.295

for.inc.295:                                      ; preds = %for.body.292
  %171 = load %struct.du_chain*, %struct.du_chain** %p, align 8
  %next_chain = getelementptr inbounds %struct.du_chain, %struct.du_chain* %171, i32 0, i32 0
  %172 = load %struct.du_chain*, %struct.du_chain** %next_chain, align 8
  store %struct.du_chain* %172, %struct.du_chain** %p, align 8
  br label %for.cond.290

for.end.296:                                      ; preds = %for.cond.290
  br label %if.end.297

if.end.297:                                       ; preds = %for.end.296, %for.end.284
  store i32 0, i32* %i, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.314, %if.end.297
  %173 = load i32, i32* %i, align 4
  %174 = load i32, i32* %n_ops, align 4
  %cmp299 = icmp slt i32 %173, %174
  br i1 %cmp299, label %for.body.301, label %for.end.316

for.body.301:                                     ; preds = %for.cond.298
  %175 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %175 to i64
  %arrayidx303 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom302
  %176 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx303, align 8
  %177 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %177 to i64
  %arrayidx305 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* %old_operands, i32 0, i64 %idxprom304
  store %struct.rtx_def* %176, %struct.rtx_def** %arrayidx305, align 8
  %178 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %178 to i64
  %arrayidx307 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom306
  %179 = load i32, i32* %arrayidx307, align 4
  %cmp308 = icmp eq i32 %179, 2
  br i1 %cmp308, label %if.then.310, label %if.end.313

if.then.310:                                      ; preds = %for.body.301
  %180 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 1), align 8
  %181 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %181 to i64
  %arrayidx312 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom311
  %182 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx312, align 8
  store %struct.rtx_def* %180, %struct.rtx_def** %182, align 8
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.310, %for.body.301
  br label %for.inc.314

for.inc.314:                                      ; preds = %if.end.313
  %183 = load i32, i32* %i, align 4
  %inc315 = add nsw i32 %183, 1
  store i32 %inc315, i32* %i, align 4
  br label %for.cond.298

for.end.316:                                      ; preds = %for.cond.298
  store i32 0, i32* %i, align 4
  br label %for.cond.317

for.cond.317:                                     ; preds = %for.inc.338, %for.end.316
  %184 = load i32, i32* %i, align 4
  %185 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv318 = sext i8 %185 to i32
  %cmp319 = icmp slt i32 %184, %conv318
  br i1 %cmp319, label %for.body.321, label %for.end.340

for.body.321:                                     ; preds = %for.cond.317
  %186 = load i32, i32* %i, align 4
  %idxprom323 = sext i32 %186 to i64
  %arrayidx324 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6), i32 0, i64 %idxprom323
  %187 = load i8, i8* %arrayidx324, align 1
  %conv325 = sext i8 %187 to i32
  store i32 %conv325, i32* %opn322, align 4
  %188 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %188 to i64
  %arrayidx327 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom326
  %189 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx327, align 8
  %190 = load %struct.rtx_def*, %struct.rtx_def** %189, align 8
  %191 = load i32, i32* %i, align 4
  %idxprom328 = sext i32 %191 to i64
  %arrayidx329 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %old_dups, i32 0, i64 %idxprom328
  store %struct.rtx_def* %190, %struct.rtx_def** %arrayidx329, align 8
  %192 = load i32, i32* %opn322, align 4
  %idxprom330 = sext i32 %192 to i64
  %arrayidx331 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom330
  %193 = load i32, i32* %arrayidx331, align 4
  %cmp332 = icmp eq i32 %193, 2
  br i1 %cmp332, label %if.then.334, label %if.end.337

if.then.334:                                      ; preds = %for.body.321
  %194 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 1), align 8
  %195 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %195 to i64
  %arrayidx336 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom335
  %196 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx336, align 8
  store %struct.rtx_def* %194, %struct.rtx_def** %196, align 8
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.334, %for.body.321
  br label %for.inc.338

for.inc.338:                                      ; preds = %if.end.337
  %197 = load i32, i32* %i, align 4
  %inc339 = add nsw i32 %197, 1
  store i32 %inc339, i32* %i, align 4
  br label %for.cond.317

for.end.340:                                      ; preds = %for.cond.317
  %198 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld341 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx342 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld341, i32 0, i64 3
  %rtx343 = bitcast %union.rtunion_def* %arrayidx342 to %struct.rtx_def**
  call void @scan_rtx(%struct.rtx_def* %198, %struct.rtx_def** %rtx343, i32 0, i32 2, i32 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond.344

for.cond.344:                                     ; preds = %for.inc.353, %for.end.340
  %200 = load i32, i32* %i, align 4
  %201 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv345 = sext i8 %201 to i32
  %cmp346 = icmp slt i32 %200, %conv345
  br i1 %cmp346, label %for.body.348, label %for.end.355

for.body.348:                                     ; preds = %for.cond.344
  %202 = load i32, i32* %i, align 4
  %idxprom349 = sext i32 %202 to i64
  %arrayidx350 = getelementptr inbounds [4 x %struct.rtx_def*], [4 x %struct.rtx_def*]* %old_dups, i32 0, i64 %idxprom349
  %203 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx350, align 8
  %204 = load i32, i32* %i, align 4
  %idxprom351 = sext i32 %204 to i64
  %arrayidx352 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom351
  %205 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx352, align 8
  store %struct.rtx_def* %203, %struct.rtx_def** %205, align 8
  br label %for.inc.353

for.inc.353:                                      ; preds = %for.body.348
  %206 = load i32, i32* %i, align 4
  %inc354 = add nsw i32 %206, 1
  store i32 %inc354, i32* %i, align 4
  br label %for.cond.344

for.end.355:                                      ; preds = %for.cond.344
  store i32 0, i32* %i, align 4
  br label %for.cond.356

for.cond.356:                                     ; preds = %for.inc.364, %for.end.355
  %207 = load i32, i32* %i, align 4
  %208 = load i32, i32* %n_ops, align 4
  %cmp357 = icmp slt i32 %207, %208
  br i1 %cmp357, label %for.body.359, label %for.end.366

for.body.359:                                     ; preds = %for.cond.356
  %209 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %209 to i64
  %arrayidx361 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* %old_operands, i32 0, i64 %idxprom360
  %210 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx361, align 8
  %211 = load i32, i32* %i, align 4
  %idxprom362 = sext i32 %211 to i64
  %arrayidx363 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom362
  %212 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx363, align 8
  store %struct.rtx_def* %210, %struct.rtx_def** %212, align 8
  br label %for.inc.364

for.inc.364:                                      ; preds = %for.body.359
  %213 = load i32, i32* %i, align 4
  %inc365 = add nsw i32 %213, 1
  store i32 %inc365, i32* %i, align 4
  br label %for.cond.356

for.end.366:                                      ; preds = %for.cond.356
  %214 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld367 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %arrayidx368 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld367, i32 0, i64 3
  %rtx369 = bitcast %union.rtunion_def* %arrayidx368 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %rtx369, align 8
  %call370 = call i32 @asm_noperands(%struct.rtx_def* %215)
  %cmp371 = icmp sgt i32 %call370, 0
  br i1 %cmp371, label %if.then.373, label %if.else.419

if.then.373:                                      ; preds = %for.end.366
  store i32 0, i32* %i, align 4
  br label %for.cond.374

for.cond.374:                                     ; preds = %for.inc.416, %if.then.373
  %216 = load i32, i32* %i, align 4
  %217 = load i32, i32* %n_ops, align 4
  %cmp375 = icmp slt i32 %216, %217
  br i1 %cmp375, label %for.body.377, label %for.end.418

for.body.377:                                     ; preds = %for.cond.374
  %218 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %218 to i64
  %arrayidx379 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom378
  %219 = load i32, i32* %arrayidx379, align 4
  %cmp380 = icmp eq i32 %219, 1
  br i1 %cmp380, label %if.then.382, label %if.end.415

if.then.382:                                      ; preds = %for.body.377
  %220 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %220 to i64
  %arrayidx385 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom384
  %221 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx385, align 8
  store %struct.rtx_def** %221, %struct.rtx_def*** %loc383, align 8
  %222 = load %struct.rtx_def**, %struct.rtx_def*** %loc383, align 8
  %223 = load %struct.rtx_def*, %struct.rtx_def** %222, align 8
  store %struct.rtx_def* %223, %struct.rtx_def** %op386, align 8
  %224 = load i32, i32* %alt, align 4
  %idxprom388 = sext i32 %224 to i64
  %225 = load i32, i32* %i, align 4
  %idxprom389 = sext i32 %225 to i64
  %arrayidx390 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom389
  %arrayidx391 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx390, i32 0, i64 %idxprom388
  %class392 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx391, i32 0, i32 1
  %226 = load i32, i32* %class392, align 4
  store i32 %226, i32* %class387, align 4
  %227 = load %struct.rtx_def*, %struct.rtx_def** %op386, align 8
  %228 = bitcast %struct.rtx_def* %227 to i32*
  %bf.load393 = load i32, i32* %228, align 8
  %bf.clear394 = and i32 %bf.load393, 65535
  %cmp395 = icmp eq i32 %bf.clear394, 61
  br i1 %cmp395, label %land.lhs.true.397, label %if.end.407

land.lhs.true.397:                                ; preds = %if.then.382
  %229 = load %struct.rtx_def*, %struct.rtx_def** %op386, align 8
  %fld398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld398, i32 0, i64 0
  %rtuint400 = bitcast %union.rtunion_def* %arrayidx399 to i32*
  %230 = load i32, i32* %rtuint400, align 4
  %231 = load %struct.rtx_def*, %struct.rtx_def** %op386, align 8
  %fld401 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %231, i32 0, i32 1
  %arrayidx402 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld401, i32 0, i64 1
  %rtuint403 = bitcast %union.rtunion_def* %arrayidx402 to i32*
  %232 = load i32, i32* %rtuint403, align 4
  %cmp404 = icmp eq i32 %230, %232
  br i1 %cmp404, label %if.then.406, label %if.end.407

if.then.406:                                      ; preds = %land.lhs.true.397
  br label %for.inc.416

if.end.407:                                       ; preds = %land.lhs.true.397, %if.then.382
  %233 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %234 = load %struct.rtx_def**, %struct.rtx_def*** %loc383, align 8
  %235 = load i32, i32* %class387, align 4
  %236 = load i32, i32* %alt, align 4
  %idxprom408 = sext i32 %236 to i64
  %237 = load i32, i32* %i, align 4
  %idxprom409 = sext i32 %237 to i64
  %arrayidx410 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom409
  %arrayidx411 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx410, i32 0, i64 %idxprom408
  %earlyclobber = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx411, i32 0, i32 5
  %bf.load412 = load i8, i8* %earlyclobber, align 8
  %bf.clear413 = and i8 %bf.load412, 1
  %bf.cast414 = zext i8 %bf.clear413 to i32
  call void @scan_rtx(%struct.rtx_def* %233, %struct.rtx_def** %234, i32 %235, i32 5, i32 1, i32 %bf.cast414)
  br label %if.end.415

if.end.415:                                       ; preds = %if.end.407, %for.body.377
  br label %for.inc.416

for.inc.416:                                      ; preds = %if.end.415, %if.then.406
  %238 = load i32, i32* %i, align 4
  %inc417 = add nsw i32 %238, 1
  store i32 %inc417, i32* %i, align 4
  br label %for.cond.374

for.end.418:                                      ; preds = %for.cond.374
  br label %if.end.478

if.else.419:                                      ; preds = %for.end.366
  %239 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %240 = bitcast %struct.rtx_def* %239 to i32*
  %bf.load420 = load i32, i32* %240, align 8
  %bf.clear421 = and i32 %bf.load420, 65535
  %cmp422 = icmp ne i32 %bf.clear421, 34
  br i1 %cmp422, label %if.then.424, label %if.end.477

if.then.424:                                      ; preds = %if.else.419
  store i32 0, i32* %i, align 4
  br label %for.cond.425

for.cond.425:                                     ; preds = %for.inc.474, %if.then.424
  %241 = load i32, i32* %i, align 4
  %242 = load i32, i32* %n_ops, align 4
  %243 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv426 = sext i8 %243 to i32
  %add427 = add nsw i32 %242, %conv426
  %cmp428 = icmp slt i32 %241, %add427
  br i1 %cmp428, label %for.body.430, label %for.end.476

for.body.430:                                     ; preds = %for.cond.425
  %244 = load i32, i32* %i, align 4
  %245 = load i32, i32* %n_ops, align 4
  %cmp432 = icmp slt i32 %244, %245
  br i1 %cmp432, label %cond.true.434, label %cond.false.435

cond.true.434:                                    ; preds = %for.body.430
  %246 = load i32, i32* %i, align 4
  br label %cond.end.440

cond.false.435:                                   ; preds = %for.body.430
  %247 = load i32, i32* %i, align 4
  %248 = load i32, i32* %n_ops, align 4
  %sub436 = sub nsw i32 %247, %248
  %idxprom437 = sext i32 %sub436 to i64
  %arrayidx438 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6), i32 0, i64 %idxprom437
  %249 = load i8, i8* %arrayidx438, align 1
  %conv439 = sext i8 %249 to i32
  br label %cond.end.440

cond.end.440:                                     ; preds = %cond.false.435, %cond.true.434
  %cond441 = phi i32 [ %246, %cond.true.434 ], [ %conv439, %cond.false.435 ]
  store i32 %cond441, i32* %opn431, align 4
  %250 = load i32, i32* %i, align 4
  %251 = load i32, i32* %n_ops, align 4
  %cmp443 = icmp slt i32 %250, %251
  br i1 %cmp443, label %cond.true.445, label %cond.false.448

cond.true.445:                                    ; preds = %cond.end.440
  %252 = load i32, i32* %opn431, align 4
  %idxprom446 = sext i32 %252 to i64
  %arrayidx447 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom446
  %253 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx447, align 8
  br label %cond.end.452

cond.false.448:                                   ; preds = %cond.end.440
  %254 = load i32, i32* %i, align 4
  %255 = load i32, i32* %n_ops, align 4
  %sub449 = sub nsw i32 %254, %255
  %idxprom450 = sext i32 %sub449 to i64
  %arrayidx451 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom450
  %256 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx451, align 8
  br label %cond.end.452

cond.end.452:                                     ; preds = %cond.false.448, %cond.true.445
  %cond453 = phi %struct.rtx_def** [ %253, %cond.true.445 ], [ %256, %cond.false.448 ]
  store %struct.rtx_def** %cond453, %struct.rtx_def*** %loc442, align 8
  %257 = load i32, i32* %alt, align 4
  %idxprom455 = sext i32 %257 to i64
  %258 = load i32, i32* %opn431, align 4
  %idxprom456 = sext i32 %258 to i64
  %arrayidx457 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom456
  %arrayidx458 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx457, i32 0, i64 %idxprom455
  %class459 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx458, i32 0, i32 1
  %259 = load i32, i32* %class459, align 4
  store i32 %259, i32* %class454, align 4
  %260 = load i32, i32* %opn431, align 4
  %idxprom460 = sext i32 %260 to i64
  %arrayidx461 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom460
  %261 = load i32, i32* %arrayidx461, align 4
  %cmp462 = icmp eq i32 %261, 1
  br i1 %cmp462, label %if.then.464, label %if.end.473

if.then.464:                                      ; preds = %cond.end.452
  %262 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %263 = load %struct.rtx_def**, %struct.rtx_def*** %loc442, align 8
  %264 = load i32, i32* %class454, align 4
  %265 = load i32, i32* %alt, align 4
  %idxprom465 = sext i32 %265 to i64
  %266 = load i32, i32* %opn431, align 4
  %idxprom466 = sext i32 %266 to i64
  %arrayidx467 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom466
  %arrayidx468 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx467, i32 0, i64 %idxprom465
  %earlyclobber469 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx468, i32 0, i32 5
  %bf.load470 = load i8, i8* %earlyclobber469, align 8
  %bf.clear471 = and i8 %bf.load470, 1
  %bf.cast472 = zext i8 %bf.clear471 to i32
  call void @scan_rtx(%struct.rtx_def* %262, %struct.rtx_def** %263, i32 %264, i32 5, i32 1, i32 %bf.cast472)
  br label %if.end.473

if.end.473:                                       ; preds = %if.then.464, %cond.end.452
  br label %for.inc.474

for.inc.474:                                      ; preds = %if.end.473
  %267 = load i32, i32* %i, align 4
  %inc475 = add nsw i32 %267, 1
  store i32 %inc475, i32* %i, align 4
  br label %for.cond.425

for.end.476:                                      ; preds = %for.cond.425
  br label %if.end.477

if.end.477:                                       ; preds = %for.end.476, %if.else.419
  br label %if.end.478

if.end.478:                                       ; preds = %if.end.477, %for.end.418
  %268 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld479 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %arrayidx480 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld479, i32 0, i64 6
  %rtx481 = bitcast %union.rtunion_def* %arrayidx480 to %struct.rtx_def**
  %269 = load %struct.rtx_def*, %struct.rtx_def** %rtx481, align 8
  store %struct.rtx_def* %269, %struct.rtx_def** %note, align 8
  br label %for.cond.482

for.cond.482:                                     ; preds = %for.inc.495, %if.end.478
  %270 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool483 = icmp ne %struct.rtx_def* %270, null
  br i1 %tobool483, label %for.body.484, label %for.end.499

for.body.484:                                     ; preds = %for.cond.482
  %271 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %272 = bitcast %struct.rtx_def* %271 to i32*
  %bf.load485 = load i32, i32* %272, align 8
  %bf.lshr486 = lshr i32 %bf.load485, 16
  %bf.clear487 = and i32 %bf.lshr486, 255
  %cmp488 = icmp eq i32 %bf.clear487, 10
  br i1 %cmp488, label %if.then.490, label %if.end.494

if.then.490:                                      ; preds = %for.body.484
  %273 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %274 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld491 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %274, i32 0, i32 1
  %arrayidx492 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld491, i32 0, i64 0
  %rtx493 = bitcast %union.rtunion_def* %arrayidx492 to %struct.rtx_def**
  call void @scan_rtx(%struct.rtx_def* %273, %struct.rtx_def** %rtx493, i32 0, i32 3, i32 0, i32 0)
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.490, %for.body.484
  br label %for.inc.495

for.inc.495:                                      ; preds = %if.end.494
  %275 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld496 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx497 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld496, i32 0, i64 1
  %rtx498 = bitcast %union.rtunion_def* %arrayidx497 to %struct.rtx_def**
  %276 = load %struct.rtx_def*, %struct.rtx_def** %rtx498, align 8
  store %struct.rtx_def* %276, %struct.rtx_def** %note, align 8
  br label %for.cond.482

for.end.499:                                      ; preds = %for.cond.482
  br label %if.end.500

if.end.500:                                       ; preds = %for.end.499, %for.cond
  %277 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %278 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %278, i32 0, i32 1
  %279 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp501 = icmp eq %struct.rtx_def* %277, %279
  br i1 %cmp501, label %if.then.503, label %if.end.504

if.then.503:                                      ; preds = %if.end.500
  br label %for.end.509

if.end.504:                                       ; preds = %if.end.500
  br label %for.inc.505

for.inc.505:                                      ; preds = %if.end.504
  %280 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %280, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld506, i32 0, i64 2
  %rtx508 = bitcast %union.rtunion_def* %arrayidx507 to %struct.rtx_def**
  %281 = load %struct.rtx_def*, %struct.rtx_def** %rtx508, align 8
  store %struct.rtx_def* %281, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.509:                                      ; preds = %if.then.503
  %282 = load %struct.du_chain*, %struct.du_chain** @closed_chains, align 8
  ret %struct.du_chain* %282
}

; Function Attrs: nounwind uwtable
define internal void @dump_def_use_chain(%struct.du_chain* %chains) #0 {
entry:
  %chains.addr = alloca %struct.du_chain*, align 8
  %this = alloca %struct.du_chain*, align 8
  %r = alloca i32, align 4
  %nregs = alloca i32, align 4
  store %struct.du_chain* %chains, %struct.du_chain** %chains.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load %struct.du_chain*, %struct.du_chain** %chains.addr, align 8
  %tobool = icmp ne %struct.du_chain* %0, null
  br i1 %tobool, label %while.body, label %while.end.70

while.body:                                       ; preds = %while.cond
  %1 = load %struct.du_chain*, %struct.du_chain** %chains.addr, align 8
  store %struct.du_chain* %1, %struct.du_chain** %this, align 8
  %2 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc = getelementptr inbounds %struct.du_chain, %struct.du_chain* %2, i32 0, i32 3
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  store i32 %5, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %cmp = icmp sge i32 %6, 8
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %7 = load i32, i32* %r, align 4
  %cmp1 = icmp sle i32 %7, 15
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %8 = load i32, i32* %r, align 4
  %cmp2 = icmp sge i32 %8, 21
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false.5

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %r, align 4
  %cmp4 = icmp sle i32 %9, 28
  br i1 %cmp4, label %cond.true, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true.3, %lor.lhs.false
  %10 = load i32, i32* %r, align 4
  %cmp6 = icmp sge i32 %10, 45
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5
  %11 = load i32, i32* %r, align 4
  %cmp8 = icmp sle i32 %11, 52
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %lor.lhs.false.5
  %12 = load i32, i32* %r, align 4
  %cmp10 = icmp sge i32 %12, 29
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %13 = load i32, i32* %r, align 4
  %cmp12 = icmp sle i32 %13, 36
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  %14 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc13 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %14, i32 0, i32 3
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %loc13, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx14 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %18, 5
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %19 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc16 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %19, i32 0, i32 3
  %20 = load %struct.rtx_def**, %struct.rtx_def*** %loc16, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %20, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load17 = load i32, i32* %22, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 16
  %bf.clear19 = and i32 %bf.lshr18, 255
  %idxprom20 = sext i32 %bf.clear19 to i64
  %arrayidx21 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom20
  %23 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %23, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %24 = phi i1 [ true, %cond.true ], [ %cmp22, %lor.rhs ]
  %cond = select i1 %24, i32 2, i32 1
  br label %cond.end.57

cond.false:                                       ; preds = %land.lhs.true.11, %lor.lhs.false.9
  %25 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc23 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %25, i32 0, i32 3
  %26 = load %struct.rtx_def**, %struct.rtx_def*** %loc23, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load24 = load i32, i32* %28, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %cmp27 = icmp eq i32 %bf.clear26, 18
  br i1 %cmp27, label %cond.true.28, label %cond.false.31

cond.true.28:                                     ; preds = %cond.false
  %29 = load i32, i32* @target_flags, align 4
  %and = and i32 %29, 33554432
  %tobool29 = icmp ne i32 %and, 0
  %cond30 = select i1 %tobool29, i32 2, i32 3
  br label %cond.end.55

cond.false.31:                                    ; preds = %cond.false
  %30 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc32 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %30, i32 0, i32 3
  %31 = load %struct.rtx_def**, %struct.rtx_def*** %loc32, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %31, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load33 = load i32, i32* %33, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 16
  %bf.clear35 = and i32 %bf.lshr34, 255
  %cmp36 = icmp eq i32 %bf.clear35, 24
  br i1 %cmp36, label %cond.true.37, label %cond.false.41

cond.true.37:                                     ; preds = %cond.false.31
  %34 = load i32, i32* @target_flags, align 4
  %and38 = and i32 %34, 33554432
  %tobool39 = icmp ne i32 %and38, 0
  %cond40 = select i1 %tobool39, i32 4, i32 6
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false.31
  %35 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc42 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %35, i32 0, i32 3
  %36 = load %struct.rtx_def**, %struct.rtx_def*** %loc42, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load43 = load i32, i32* %38, align 8
  %bf.lshr44 = lshr i32 %bf.load43, 16
  %bf.clear45 = and i32 %bf.lshr44, 255
  %idxprom46 = sext i32 %bf.clear45 to i64
  %arrayidx47 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom46
  %39 = load i8, i8* %arrayidx47, align 1
  %conv = zext i8 %39 to i32
  %40 = load i32, i32* @target_flags, align 4
  %and48 = and i32 %40, 33554432
  %tobool49 = icmp ne i32 %and48, 0
  %cond50 = select i1 %tobool49, i32 8, i32 4
  %add = add nsw i32 %conv, %cond50
  %sub = sub nsw i32 %add, 1
  %41 = load i32, i32* @target_flags, align 4
  %and51 = and i32 %41, 33554432
  %tobool52 = icmp ne i32 %and51, 0
  %cond53 = select i1 %tobool52, i32 8, i32 4
  %div = sdiv i32 %sub, %cond53
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.37
  %cond54 = phi i32 [ %cond40, %cond.true.37 ], [ %div, %cond.false.41 ]
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.end, %cond.true.28
  %cond56 = phi i32 [ %cond30, %cond.true.28 ], [ %cond54, %cond.end ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.55, %lor.end
  %cond58 = phi i32 [ %cond, %lor.end ], [ %cond56, %cond.end.55 ]
  store i32 %cond58, i32* %nregs, align 4
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %43 = load i32, i32* %r, align 4
  %idxprom59 = sext i32 %43 to i64
  %arrayidx60 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom59
  %44 = load i8*, i8** %arrayidx60, align 8
  %45 = load i32, i32* %nregs, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* %44, i32 %45)
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.63, %cond.end.57
  %46 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %tobool62 = icmp ne %struct.du_chain* %46, null
  br i1 %tobool62, label %while.body.63, label %while.end

while.body.63:                                    ; preds = %while.cond.61
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %48 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %insn = getelementptr inbounds %struct.du_chain, %struct.du_chain* %48, i32 0, i32 2
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx65 to i32*
  %50 = load i32, i32* %rtint, align 4
  %51 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %class = getelementptr inbounds %struct.du_chain, %struct.du_chain* %51, i32 0, i32 4
  %52 = load i32, i32* %class, align 4
  %idxprom66 = zext i32 %52 to i64
  %arrayidx67 = getelementptr inbounds [25 x i8*], [25 x i8*]* @reg_class_names, i32 0, i64 %idxprom66
  %53 = load i8*, i8** %arrayidx67, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %50, i8* %53)
  %54 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %next_use = getelementptr inbounds %struct.du_chain, %struct.du_chain* %54, i32 0, i32 1
  %55 = load %struct.du_chain*, %struct.du_chain** %next_use, align 8
  store %struct.du_chain* %55, %struct.du_chain** %this, align 8
  br label %while.cond.61

while.end:                                        ; preds = %while.cond.61
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %57 = load %struct.du_chain*, %struct.du_chain** %chains.addr, align 8
  %next_chain = getelementptr inbounds %struct.du_chain, %struct.du_chain* %57, i32 0, i32 0
  %58 = load %struct.du_chain*, %struct.du_chain** %next_chain, align 8
  store %struct.du_chain* %58, %struct.du_chain** %chains.addr, align 8
  br label %while.cond

while.end.70:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merge_overlapping_regs(%struct.basic_block_def* %b, i64* %pset, %struct.du_chain* %chain) #0 {
entry:
  %b.addr = alloca %struct.basic_block_def*, align 8
  %pset.addr = alloca i64*, align 8
  %chain.addr = alloca %struct.du_chain*, align 8
  %t = alloca %struct.du_chain*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %live = alloca i64, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  store i64* %pset, i64** %pset.addr, align 8
  store %struct.du_chain* %chain, %struct.du_chain** %chain.addr, align 8
  %0 = load %struct.du_chain*, %struct.du_chain** %chain.addr, align 8
  store %struct.du_chain* %0, %struct.du_chain** %t, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i64 0, i64* %live, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  call void @reg_set_to_hard_reg_set(i64* %live, %struct.bitmap_head_def* %2)
  br label %do.end

do.end:                                           ; preds = %do.body
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %do.end
  %5 = load %struct.du_chain*, %struct.du_chain** %t, align 8
  %tobool = icmp ne %struct.du_chain* %5, null
  br i1 %tobool, label %while.body, label %while.end.28

while.body:                                       ; preds = %while.cond
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end.16, %while.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = load %struct.du_chain*, %struct.du_chain** %t, align 8
  %insn2 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %7, i32 0, i32 2
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %cmp = icmp ne %struct.rtx_def* %6, %8
  br i1 %cmp, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load = load i32, i32* %10, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp4 = icmp eq i32 %conv, 105
  br i1 %cmp4, label %if.then, label %if.end.16

if.then:                                          ; preds = %while.body.3
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @clear_dead_regs(i64* %live, i32 1, %struct.rtx_def* %13)
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %16 = bitcast i64* %live to i8*
  call void @note_stores(%struct.rtx_def* %15, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @note_sets, i8* %16)
  %17 = load %struct.du_chain*, %struct.du_chain** %t, align 8
  %18 = load %struct.du_chain*, %struct.du_chain** %chain.addr, align 8
  %cmp10 = icmp ne %struct.du_chain* %17, %18
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %19 = load i64, i64* %live, align 8
  %20 = load i64*, i64** %pset.addr, align 8
  %21 = load i64, i64* %20, align 8
  %or = or i64 %21, %19
  store i64 %or, i64* %20, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 6
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  call void @clear_dead_regs(i64* %live, i32 10, %struct.rtx_def* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %while.body.3
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 2
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %insn, align 8
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %26 = load i64, i64* %live, align 8
  %27 = load i64*, i64** %pset.addr, align 8
  %28 = load i64, i64* %27, align 8
  %or20 = or i64 %28, %26
  store i64 %or20, i64* %27, align 8
  %29 = load %struct.du_chain*, %struct.du_chain** %t, align 8
  %next_use = getelementptr inbounds %struct.du_chain, %struct.du_chain* %29, i32 0, i32 1
  %30 = load %struct.du_chain*, %struct.du_chain** %next_use, align 8
  %tobool21 = icmp ne %struct.du_chain* %30, null
  br i1 %tobool21, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %while.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %33 = load i64*, i64** %pset.addr, align 8
  %34 = bitcast i64* %33 to i8*
  call void @note_stores(%struct.rtx_def* %32, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @note_sets, i8* %34)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %while.end
  %35 = load %struct.du_chain*, %struct.du_chain** %t, align 8
  %next_use27 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %35, i32 0, i32 1
  %36 = load %struct.du_chain*, %struct.du_chain** %next_use27, align 8
  store %struct.du_chain* %36, %struct.du_chain** %t, align 8
  br label %while.cond

while.end.28:                                     ; preds = %while.cond
  ret void
}

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @do_replace(%struct.du_chain* %chain, i32 %reg) #0 {
entry:
  %chain.addr = alloca %struct.du_chain*, align 8
  %reg.addr = alloca i32, align 4
  %regno = alloca i32, align 4
  store %struct.du_chain* %chain, %struct.du_chain** %chain.addr, align 8
  store i32 %reg, i32* %reg.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.du_chain*, %struct.du_chain** %chain.addr, align 8
  %tobool = icmp ne %struct.du_chain* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.du_chain*, %struct.du_chain** %chain.addr, align 8
  %loc = getelementptr inbounds %struct.du_chain, %struct.du_chain* %1, i32 0, i32 3
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  store i32 %4, i32* %regno, align 4
  %5 = load %struct.du_chain*, %struct.du_chain** %chain.addr, align 8
  %loc1 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %5, i32 0, i32 3
  %6 = load %struct.rtx_def**, %struct.rtx_def*** %loc1, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %9 = load i32, i32* %reg.addr, align 4
  %call = call %struct.rtx_def* @gen_raw_REG(i32 %bf.clear, i32 %9)
  %10 = load %struct.du_chain*, %struct.du_chain** %chain.addr, align 8
  %loc2 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %10, i32 0, i32 3
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %loc2, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %11, align 8
  %12 = load i32, i32* %regno, align 4
  %cmp = icmp uge i32 %12, 53
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load i32, i32* %regno, align 4
  %14 = load %struct.du_chain*, %struct.du_chain** %chain.addr, align 8
  %loc3 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %14, i32 0, i32 3
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %loc3, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtuint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  store i32 %13, i32* %rtuint6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %17 = load %struct.du_chain*, %struct.du_chain** %chain.addr, align 8
  %next_use = getelementptr inbounds %struct.du_chain, %struct.du_chain* %17, i32 0, i32 1
  %18 = load %struct.du_chain*, %struct.du_chain** %next_use, align 8
  store %struct.du_chain* %18, %struct.du_chain** %chain.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @obstack_free(%struct.obstack*, i8*) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i32 @count_or_remove_death_notes(%struct.simple_bitmap_def*, i32) #2

declare void @update_life_info(%struct.simple_bitmap_def*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @copyprop_hardreg_forward() #0 {
entry:
  %all_vd = alloca %struct.value_data*, align 8
  %need_refresh = alloca i8, align 1
  %b = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  store i8 0, i8* %need_refresh, align 1
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 640, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.value_data*
  store %struct.value_data* %1, %struct.value_data** %all_vd, align 8
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %b, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %b, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb2 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb2, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %bb, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 4
  %8 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %tobool = icmp ne %struct.edge_def* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 4
  %10 = load %struct.edge_def*, %struct.edge_def** %pred3, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 0
  %11 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool4 = icmp ne %struct.edge_def* %11, null
  br i1 %tobool4, label %if.else, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 4
  %13 = load %struct.edge_def*, %struct.edge_def** %pred6, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 6
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 12
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.else, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 4
  %16 = load %struct.edge_def*, %struct.edge_def** %pred9, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 2
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 11
  %18 = load i32, i32* %index, align 4
  %cmp10 = icmp ne i32 %18, -1
  br i1 %cmp10, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 4
  %20 = load %struct.edge_def*, %struct.edge_def** %pred13, align 8
  %src14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 2
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src14, align 8
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 11
  %22 = load i32, i32* %index15, align 4
  %23 = load i32, i32* %b, align 4
  %cmp16 = icmp slt i32 %22, %23
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.12
  %24 = load i32, i32* %b, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.value_data*, %struct.value_data** %all_vd, align 8
  %arrayidx19 = getelementptr inbounds %struct.value_data, %struct.value_data* %25, i64 %idxprom18
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 4
  %27 = load %struct.edge_def*, %struct.edge_def** %pred20, align 8
  %src21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i32 0, i32 2
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %src21, align 8
  %index22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 11
  %29 = load i32, i32* %index22, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load %struct.value_data*, %struct.value_data** %all_vd, align 8
  %arrayidx24 = getelementptr inbounds %struct.value_data, %struct.value_data* %30, i64 %idxprom23
  %31 = bitcast %struct.value_data* %arrayidx19 to i8*
  %32 = bitcast %struct.value_data* %arrayidx24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 640, i32 4, i1 false)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.5, %land.lhs.true, %for.body
  %33 = load %struct.value_data*, %struct.value_data** %all_vd, align 8
  %34 = load i32, i32* %b, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds %struct.value_data, %struct.value_data* %33, i64 %idx.ext
  call void @init_value_data(%struct.value_data* %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %36 = load %struct.value_data*, %struct.value_data** %all_vd, align 8
  %37 = load i32, i32* %b, align 4
  %idx.ext25 = sext i32 %37 to i64
  %add.ptr26 = getelementptr inbounds %struct.value_data, %struct.value_data* %36, i64 %idx.ext25
  %call27 = call zeroext i1 @copyprop_hardreg_forward_1(%struct.basic_block_def* %35, %struct.value_data* %add.ptr26)
  br i1 %call27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end
  store i8 1, i8* %need_refresh, align 1
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %38 = load i32, i32* %b, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i8, i8* %need_refresh, align 1
  %tobool30 = trunc i8 %39 to i1
  br i1 %tobool30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %for.end
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool32 = icmp ne %struct._IO_FILE* %40, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.31
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %41)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.31
  %call36 = call %struct.rtx_def* @get_insns()
  call void @delete_noop_moves(%struct.rtx_def* %call36)
  call void @update_life_info(%struct.simple_bitmap_def* null, i32 2, i32 25)
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.35, %for.end
  %42 = load %struct.value_data*, %struct.value_data** %all_vd, align 8
  %43 = bitcast %struct.value_data* %42 to i8*
  call void @free(i8* %43) #1
  ret void
}

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @init_value_data(%struct.value_data* %vd) #0 {
entry:
  %vd.addr = alloca %struct.value_data*, align 8
  %i = alloca i32, align 4
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e = getelementptr inbounds %struct.value_data, %struct.value_data* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i32 0, i64 %idxprom
  %mode = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx, i32 0, i32 0
  store i32 0, i32* %mode, align 4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e2 = getelementptr inbounds %struct.value_data, %struct.value_data* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e2, i32 0, i64 %idxprom1
  %oldest_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx3, i32 0, i32 1
  store i32 %3, i32* %oldest_regno, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e5 = getelementptr inbounds %struct.value_data, %struct.value_data* %7, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e5, i32 0, i64 %idxprom4
  %next_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx6, i32 0, i32 2
  store i32 -1, i32* %next_regno, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %max_value_regs = getelementptr inbounds %struct.value_data, %struct.value_data* %9, i32 0, i32 1
  store i32 0, i32* %max_value_regs, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @copyprop_hardreg_forward_1(%struct.basic_block_def* %bb, %struct.value_data* %vd) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %vd.addr = alloca %struct.value_data*, align 8
  %changed = alloca i8, align 1
  %insn = alloca %struct.rtx_def*, align 8
  %n_ops = alloca i32, align 4
  %i = alloca i32, align 4
  %alt = alloca i32, align 4
  %predicated = alloca i32, align 4
  %is_asm = alloca i8, align 1
  %set = alloca %struct.rtx_def*, align 8
  %matches = alloca i32, align 4
  %src = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %mode = alloca i32, align 4
  %i142 = alloca i32, align 4
  %new = alloca %struct.rtx_def*, align 8
  %replaced = alloca i8, align 1
  %j = alloca i32, align 4
  %new494 = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  store i8 0, i8* %changed, align 1
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.570, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp2 = icmp eq %struct.rtx_def* %5, %7
  br i1 %cmp2, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  br label %for.end.574

if.else:                                          ; preds = %if.then
  br label %for.inc.570

if.end:                                           ; preds = %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load5 = load i32, i32* %9, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %idxprom7 = sext i32 %bf.clear6 to i64
  %arrayidx8 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom7
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 105
  br i1 %cmp10, label %cond.true, label %cond.false.24

cond.true:                                        ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load13 = load i32, i32* %13, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 47
  br i1 %cmp15, label %cond.true.17, label %cond.false

cond.true.17:                                     ; preds = %cond.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 3
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %16, %struct.rtx_def* %18)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.17
  %cond = phi %struct.rtx_def* [ %15, %cond.true.17 ], [ %call, %cond.false ]
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.end
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.end
  %cond26 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.24 ]
  store %struct.rtx_def* %cond26, %struct.rtx_def** %set, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @extract_insn(%struct.rtx_def* %19)
  %call27 = call i32 @constrain_operands(i32 1)
  call void @preprocess_constraints()
  %20 = load i32, i32* @which_alternative, align 4
  store i32 %20, i32* %alt, align 4
  %21 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv28 = sext i8 %21 to i32
  store i32 %conv28, i32* %n_ops, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %call32 = call i32 @asm_noperands(%struct.rtx_def* %23)
  %cmp33 = icmp sge i32 %call32, 0
  %frombool = zext i1 %cmp33 to i8
  store i8 %frombool, i8* %is_asm, align 1
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load38 = load i32, i32* %26, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 38
  %conv41 = zext i1 %cmp40 to i32
  store i32 %conv41, i32* %predicated, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %cond.end.25
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n_ops, align 4
  %cmp43 = icmp slt i32 %27, %28
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.42
  %29 = load i32, i32* %alt, align 4
  %idxprom45 = sext i32 %29 to i64
  %30 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %30 to i64
  %arrayidx47 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx47, i32 0, i64 %idxprom45
  %matches49 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx48, i32 0, i32 3
  %31 = load i32, i32* %matches49, align 4
  store i32 %31, i32* %matches, align 4
  %32 = load i32, i32* %matches, align 4
  %cmp50 = icmp sge i32 %32, 0
  br i1 %cmp50, label %if.then.52, label %if.end.62

if.then.52:                                       ; preds = %for.body
  %33 = load i32, i32* %alt, align 4
  %idxprom53 = sext i32 %33 to i64
  %34 = load i32, i32* %matches, align 4
  %idxprom54 = sext i32 %34 to i64
  %arrayidx55 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx55, i32 0, i64 %idxprom53
  %class = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx56, i32 0, i32 1
  %35 = load i32, i32* %class, align 4
  %36 = load i32, i32* %alt, align 4
  %idxprom57 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %37 to i64
  %arrayidx59 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx59, i32 0, i64 %idxprom57
  %class61 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx60, i32 0, i32 1
  store i32 %35, i32* %class61, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.52, %for.body
  %38 = load i32, i32* %matches, align 4
  %cmp63 = icmp sge i32 %38, 0
  br i1 %cmp63, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.62
  %39 = load i32, i32* %alt, align 4
  %idxprom65 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %40 to i64
  %arrayidx67 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom66
  %arrayidx68 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx67, i32 0, i64 %idxprom65
  %matched = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx68, i32 0, i32 4
  %41 = load i32, i32* %matched, align 4
  %cmp69 = icmp sge i32 %41, 0
  br i1 %cmp69, label %if.then.76, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false
  %42 = load i32, i32* %predicated, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.79

land.lhs.true:                                    ; preds = %lor.lhs.false.71
  %43 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %43 to i64
  %arrayidx73 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom72
  %44 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp eq i32 %44, 1
  br i1 %cmp74, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end.62
  %45 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %45 to i64
  %arrayidx78 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom77
  store i32 2, i32* %arrayidx78, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %land.lhs.true, %lor.lhs.false.71
  br label %for.inc

for.inc:                                          ; preds = %if.end.79
  %46 = load i32, i32* %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  store i32 0, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.95, %for.end
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* %n_ops, align 4
  %cmp81 = icmp slt i32 %47, %48
  br i1 %cmp81, label %for.body.83, label %for.end.97

for.body.83:                                      ; preds = %for.cond.80
  %49 = load i32, i32* %alt, align 4
  %idxprom84 = sext i32 %49 to i64
  %50 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %50 to i64
  %arrayidx86 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx86, i32 0, i64 %idxprom84
  %earlyclobber = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx87, i32 0, i32 5
  %bf.load88 = load i8, i8* %earlyclobber, align 8
  %bf.clear89 = and i8 %bf.load88, 1
  %bf.cast = zext i8 %bf.clear89 to i32
  %tobool90 = icmp ne i32 %bf.cast, 0
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %for.body.83
  %51 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %51 to i64
  %arrayidx93 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom92
  %52 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx93, align 8
  %53 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  call void @kill_value(%struct.rtx_def* %52, %struct.value_data* %53)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %for.body.83
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %54 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %54, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.80

for.end.97:                                       ; preds = %for.cond.80
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 3
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %57 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %58 = bitcast %struct.value_data* %57 to i8*
  call void @note_stores(%struct.rtx_def* %56, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @kill_clobbered_value, i8* %58)
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 3
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %60 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %61 = bitcast %struct.value_data* %60 to i8*
  %call104 = call i32 @for_each_rtx(%struct.rtx_def** %rtx103, i32 (%struct.rtx_def**, i8*)* @kill_autoinc_value, i8* %61)
  store i32 0, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.122, %for.end.97
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %n_ops, align 4
  %cmp106 = icmp slt i32 %62, %63
  br i1 %cmp106, label %for.body.108, label %for.end.124

for.body.108:                                     ; preds = %for.cond.105
  %64 = load i32, i32* %alt, align 4
  %idxprom109 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %65 to i64
  %arrayidx111 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom110
  %arrayidx112 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx111, i32 0, i64 %idxprom109
  %earlyclobber113 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx112, i32 0, i32 5
  %bf.load114 = load i8, i8* %earlyclobber113, align 8
  %bf.clear115 = and i8 %bf.load114, 1
  %bf.cast116 = zext i8 %bf.clear115 to i32
  %tobool117 = icmp ne i32 %bf.cast116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.121

if.then.118:                                      ; preds = %for.body.108
  %66 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %66 to i64
  %arrayidx120 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom119
  %67 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx120, align 8
  %68 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  call void @kill_value(%struct.rtx_def* %67, %struct.value_data* %68)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.118, %for.body.108
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %69 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %69, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.105

for.end.124:                                      ; preds = %for.cond.105
  %70 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool125 = icmp ne %struct.rtx_def* %70, null
  br i1 %tobool125, label %land.lhs.true.126, label %if.end.385

land.lhs.true.126:                                ; preds = %for.end.124
  %71 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 1
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load130 = load i32, i32* %73, align 8
  %bf.clear131 = and i32 %bf.load130, 65535
  %cmp132 = icmp eq i32 %bf.clear131, 61
  br i1 %cmp132, label %if.then.134, label %if.end.385

if.then.134:                                      ; preds = %land.lhs.true.126
  %74 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 1
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  store %struct.rtx_def* %75, %struct.rtx_def** %src, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx139 to i32*
  %77 = load i32, i32* %rtuint, align 4
  store i32 %77, i32* %regno, align 4
  %78 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load140 = load i32, i32* %79, align 8
  %bf.lshr = lshr i32 %bf.load140, 16
  %bf.clear141 = and i32 %bf.lshr, 255
  store i32 %bf.clear141, i32* %mode, align 4
  %80 = load i32, i32* %mode, align 4
  %81 = load i32, i32* %regno, align 4
  %idxprom143 = zext i32 %81 to i64
  %82 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e = getelementptr inbounds %struct.value_data, %struct.value_data* %82, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i32 0, i64 %idxprom143
  %mode145 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx144, i32 0, i32 0
  %83 = load i32, i32* %mode145, align 4
  %cmp146 = icmp ne i32 %80, %83
  br i1 %cmp146, label %if.then.148, label %if.end.303

if.then.148:                                      ; preds = %if.then.134
  %84 = load i32, i32* %regno, align 4
  %cmp149 = icmp uge i32 %84, 8
  br i1 %cmp149, label %land.lhs.true.151, label %lor.lhs.false.154

land.lhs.true.151:                                ; preds = %if.then.148
  %85 = load i32, i32* %regno, align 4
  %cmp152 = icmp ule i32 %85, 15
  br i1 %cmp152, label %cond.true.172, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %land.lhs.true.151, %if.then.148
  %86 = load i32, i32* %regno, align 4
  %cmp155 = icmp uge i32 %86, 21
  br i1 %cmp155, label %land.lhs.true.157, label %lor.lhs.false.160

land.lhs.true.157:                                ; preds = %lor.lhs.false.154
  %87 = load i32, i32* %regno, align 4
  %cmp158 = icmp ule i32 %87, 28
  br i1 %cmp158, label %cond.true.172, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %land.lhs.true.157, %lor.lhs.false.154
  %88 = load i32, i32* %regno, align 4
  %cmp161 = icmp uge i32 %88, 45
  br i1 %cmp161, label %land.lhs.true.163, label %lor.lhs.false.166

land.lhs.true.163:                                ; preds = %lor.lhs.false.160
  %89 = load i32, i32* %regno, align 4
  %cmp164 = icmp ule i32 %89, 52
  br i1 %cmp164, label %cond.true.172, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %land.lhs.true.163, %lor.lhs.false.160
  %90 = load i32, i32* %regno, align 4
  %cmp167 = icmp uge i32 %90, 29
  br i1 %cmp167, label %land.lhs.true.169, label %cond.false.182

land.lhs.true.169:                                ; preds = %lor.lhs.false.166
  %91 = load i32, i32* %regno, align 4
  %cmp170 = icmp ule i32 %91, 36
  br i1 %cmp170, label %cond.true.172, label %cond.false.182

cond.true.172:                                    ; preds = %land.lhs.true.169, %land.lhs.true.163, %land.lhs.true.157, %land.lhs.true.151
  %92 = load i32, i32* %mode, align 4
  %idxprom173 = sext i32 %92 to i64
  %arrayidx174 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom173
  %93 = load i32, i32* %arrayidx174, align 4
  %cmp175 = icmp eq i32 %93, 5
  br i1 %cmp175, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.172
  %94 = load i32, i32* %mode, align 4
  %idxprom177 = sext i32 %94 to i64
  %arrayidx178 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom177
  %95 = load i32, i32* %arrayidx178, align 4
  %cmp179 = icmp eq i32 %95, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.172
  %96 = phi i1 [ true, %cond.true.172 ], [ %cmp179, %lor.rhs ]
  %cond181 = select i1 %96, i32 2, i32 1
  br label %cond.end.209

cond.false.182:                                   ; preds = %land.lhs.true.169, %lor.lhs.false.166
  %97 = load i32, i32* %mode, align 4
  %cmp183 = icmp eq i32 %97, 18
  br i1 %cmp183, label %cond.true.185, label %cond.false.188

cond.true.185:                                    ; preds = %cond.false.182
  %98 = load i32, i32* @target_flags, align 4
  %and = and i32 %98, 33554432
  %tobool186 = icmp ne i32 %and, 0
  %cond187 = select i1 %tobool186, i32 2, i32 3
  br label %cond.end.207

cond.false.188:                                   ; preds = %cond.false.182
  %99 = load i32, i32* %mode, align 4
  %cmp189 = icmp eq i32 %99, 24
  br i1 %cmp189, label %cond.true.191, label %cond.false.195

cond.true.191:                                    ; preds = %cond.false.188
  %100 = load i32, i32* @target_flags, align 4
  %and192 = and i32 %100, 33554432
  %tobool193 = icmp ne i32 %and192, 0
  %cond194 = select i1 %tobool193, i32 4, i32 6
  br label %cond.end.205

cond.false.195:                                   ; preds = %cond.false.188
  %101 = load i32, i32* %mode, align 4
  %idxprom196 = sext i32 %101 to i64
  %arrayidx197 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom196
  %102 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %102 to i32
  %103 = load i32, i32* @target_flags, align 4
  %and199 = and i32 %103, 33554432
  %tobool200 = icmp ne i32 %and199, 0
  %cond201 = select i1 %tobool200, i32 8, i32 4
  %add = add nsw i32 %conv198, %cond201
  %sub = sub nsw i32 %add, 1
  %104 = load i32, i32* @target_flags, align 4
  %and202 = and i32 %104, 33554432
  %tobool203 = icmp ne i32 %and202, 0
  %cond204 = select i1 %tobool203, i32 8, i32 4
  %div = sdiv i32 %sub, %cond204
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.195, %cond.true.191
  %cond206 = phi i32 [ %cond194, %cond.true.191 ], [ %div, %cond.false.195 ]
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.end.205, %cond.true.185
  %cond208 = phi i32 [ %cond187, %cond.true.185 ], [ %cond206, %cond.end.205 ]
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.end.207, %lor.end
  %cond210 = phi i32 [ %cond181, %lor.end ], [ %cond208, %cond.end.207 ]
  %105 = load i32, i32* %regno, align 4
  %cmp211 = icmp uge i32 %105, 8
  br i1 %cmp211, label %land.lhs.true.213, label %lor.lhs.false.216

land.lhs.true.213:                                ; preds = %cond.end.209
  %106 = load i32, i32* %regno, align 4
  %cmp214 = icmp ule i32 %106, 15
  br i1 %cmp214, label %cond.true.234, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %land.lhs.true.213, %cond.end.209
  %107 = load i32, i32* %regno, align 4
  %cmp217 = icmp uge i32 %107, 21
  br i1 %cmp217, label %land.lhs.true.219, label %lor.lhs.false.222

land.lhs.true.219:                                ; preds = %lor.lhs.false.216
  %108 = load i32, i32* %regno, align 4
  %cmp220 = icmp ule i32 %108, 28
  br i1 %cmp220, label %cond.true.234, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %land.lhs.true.219, %lor.lhs.false.216
  %109 = load i32, i32* %regno, align 4
  %cmp223 = icmp uge i32 %109, 45
  br i1 %cmp223, label %land.lhs.true.225, label %lor.lhs.false.228

land.lhs.true.225:                                ; preds = %lor.lhs.false.222
  %110 = load i32, i32* %regno, align 4
  %cmp226 = icmp ule i32 %110, 52
  br i1 %cmp226, label %cond.true.234, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %land.lhs.true.225, %lor.lhs.false.222
  %111 = load i32, i32* %regno, align 4
  %cmp229 = icmp uge i32 %111, 29
  br i1 %cmp229, label %land.lhs.true.231, label %cond.false.254

land.lhs.true.231:                                ; preds = %lor.lhs.false.228
  %112 = load i32, i32* %regno, align 4
  %cmp232 = icmp ule i32 %112, 36
  br i1 %cmp232, label %cond.true.234, label %cond.false.254

cond.true.234:                                    ; preds = %land.lhs.true.231, %land.lhs.true.225, %land.lhs.true.219, %land.lhs.true.213
  %113 = load i32, i32* %regno, align 4
  %idxprom235 = zext i32 %113 to i64
  %114 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e236 = getelementptr inbounds %struct.value_data, %struct.value_data* %114, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e236, i32 0, i64 %idxprom235
  %mode238 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx237, i32 0, i32 0
  %115 = load i32, i32* %mode238, align 4
  %idxprom239 = sext i32 %115 to i64
  %arrayidx240 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom239
  %116 = load i32, i32* %arrayidx240, align 4
  %cmp241 = icmp eq i32 %116, 5
  br i1 %cmp241, label %lor.end.252, label %lor.rhs.243

lor.rhs.243:                                      ; preds = %cond.true.234
  %117 = load i32, i32* %regno, align 4
  %idxprom244 = zext i32 %117 to i64
  %118 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e245 = getelementptr inbounds %struct.value_data, %struct.value_data* %118, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e245, i32 0, i64 %idxprom244
  %mode247 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx246, i32 0, i32 0
  %119 = load i32, i32* %mode247, align 4
  %idxprom248 = sext i32 %119 to i64
  %arrayidx249 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom248
  %120 = load i32, i32* %arrayidx249, align 4
  %cmp250 = icmp eq i32 %120, 6
  br label %lor.end.252

lor.end.252:                                      ; preds = %lor.rhs.243, %cond.true.234
  %121 = phi i1 [ true, %cond.true.234 ], [ %cmp250, %lor.rhs.243 ]
  %cond253 = select i1 %121, i32 2, i32 1
  br label %cond.end.297

cond.false.254:                                   ; preds = %land.lhs.true.231, %lor.lhs.false.228
  %122 = load i32, i32* %regno, align 4
  %idxprom255 = zext i32 %122 to i64
  %123 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e256 = getelementptr inbounds %struct.value_data, %struct.value_data* %123, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e256, i32 0, i64 %idxprom255
  %mode258 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx257, i32 0, i32 0
  %124 = load i32, i32* %mode258, align 4
  %cmp259 = icmp eq i32 %124, 18
  br i1 %cmp259, label %cond.true.261, label %cond.false.265

cond.true.261:                                    ; preds = %cond.false.254
  %125 = load i32, i32* @target_flags, align 4
  %and262 = and i32 %125, 33554432
  %tobool263 = icmp ne i32 %and262, 0
  %cond264 = select i1 %tobool263, i32 2, i32 3
  br label %cond.end.295

cond.false.265:                                   ; preds = %cond.false.254
  %126 = load i32, i32* %regno, align 4
  %idxprom266 = zext i32 %126 to i64
  %127 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e267 = getelementptr inbounds %struct.value_data, %struct.value_data* %127, i32 0, i32 0
  %arrayidx268 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e267, i32 0, i64 %idxprom266
  %mode269 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx268, i32 0, i32 0
  %128 = load i32, i32* %mode269, align 4
  %cmp270 = icmp eq i32 %128, 24
  br i1 %cmp270, label %cond.true.272, label %cond.false.276

cond.true.272:                                    ; preds = %cond.false.265
  %129 = load i32, i32* @target_flags, align 4
  %and273 = and i32 %129, 33554432
  %tobool274 = icmp ne i32 %and273, 0
  %cond275 = select i1 %tobool274, i32 4, i32 6
  br label %cond.end.293

cond.false.276:                                   ; preds = %cond.false.265
  %130 = load i32, i32* %regno, align 4
  %idxprom277 = zext i32 %130 to i64
  %131 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e278 = getelementptr inbounds %struct.value_data, %struct.value_data* %131, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e278, i32 0, i64 %idxprom277
  %mode280 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx279, i32 0, i32 0
  %132 = load i32, i32* %mode280, align 4
  %idxprom281 = sext i32 %132 to i64
  %arrayidx282 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom281
  %133 = load i8, i8* %arrayidx282, align 1
  %conv283 = zext i8 %133 to i32
  %134 = load i32, i32* @target_flags, align 4
  %and284 = and i32 %134, 33554432
  %tobool285 = icmp ne i32 %and284, 0
  %cond286 = select i1 %tobool285, i32 8, i32 4
  %add287 = add nsw i32 %conv283, %cond286
  %sub288 = sub nsw i32 %add287, 1
  %135 = load i32, i32* @target_flags, align 4
  %and289 = and i32 %135, 33554432
  %tobool290 = icmp ne i32 %and289, 0
  %cond291 = select i1 %tobool290, i32 8, i32 4
  %div292 = sdiv i32 %sub288, %cond291
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.false.276, %cond.true.272
  %cond294 = phi i32 [ %cond275, %cond.true.272 ], [ %div292, %cond.false.276 ]
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.end.293, %cond.true.261
  %cond296 = phi i32 [ %cond264, %cond.true.261 ], [ %cond294, %cond.end.293 ]
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.end.295, %lor.end.252
  %cond298 = phi i32 [ %cond253, %lor.end.252 ], [ %cond296, %cond.end.295 ]
  %cmp299 = icmp sgt i32 %cond210, %cond298
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %cond.end.297
  br label %no_move_special_case

if.end.302:                                       ; preds = %cond.end.297
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.then.134
  %136 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld304 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx305 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld304, i32 0, i64 0
  %rtx306 = bitcast %union.rtunion_def* %arrayidx305 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx306, align 8
  %138 = bitcast %struct.rtx_def* %137 to i32*
  %bf.load307 = load i32, i32* %138, align 8
  %bf.clear308 = and i32 %bf.load307, 65535
  %cmp309 = icmp eq i32 %bf.clear308, 61
  br i1 %cmp309, label %if.then.311, label %if.end.333

if.then.311:                                      ; preds = %if.end.303
  %139 = load i32, i32* %regno, align 4
  %idxprom312 = zext i32 %139 to i64
  %arrayidx313 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom312
  %140 = load i32, i32* %arrayidx313, align 4
  %141 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %142 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call314 = call %struct.rtx_def* @find_oldest_value_reg(i32 %140, %struct.rtx_def* %141, %struct.value_data* %142)
  store %struct.rtx_def* %call314, %struct.rtx_def** %new, align 8
  %143 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool315 = icmp ne %struct.rtx_def* %143, null
  br i1 %tobool315, label %land.lhs.true.316, label %if.end.332

land.lhs.true.316:                                ; preds = %if.then.311
  %144 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 1
  %rtx319 = bitcast %union.rtunion_def* %arrayidx318 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call320 = call i32 @validate_change(%struct.rtx_def* %144, %struct.rtx_def** %rtx319, %struct.rtx_def* %146, i32 0)
  %tobool321 = icmp ne i32 %call320, 0
  br i1 %tobool321, label %if.then.322, label %if.end.332

if.then.322:                                      ; preds = %land.lhs.true.316
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool323 = icmp ne %struct._IO_FILE* %147, null
  br i1 %tobool323, label %if.then.324, label %if.end.331

if.then.324:                                      ; preds = %if.then.322
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %149 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld325 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx326 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld325, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx326 to i32*
  %150 = load i32, i32* %rtint, align 4
  %151 = load i32, i32* %regno, align 4
  %152 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld327 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld327, i32 0, i64 0
  %rtuint329 = bitcast %union.rtunion_def* %arrayidx328 to i32*
  %153 = load i32, i32* %rtuint329, align 4
  %call330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0), i32 %150, i32 %151, i32 %153)
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.324, %if.then.322
  store i8 1, i8* %changed, align 1
  br label %did_replacement

if.end.332:                                       ; preds = %land.lhs.true.316, %if.then.311
  br label %if.end.333

if.end.333:                                       ; preds = %if.end.332, %if.end.303
  %154 = load i32, i32* %regno, align 4
  %idxprom334 = zext i32 %154 to i64
  %155 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e335 = getelementptr inbounds %struct.value_data, %struct.value_data* %155, i32 0, i32 0
  %arrayidx336 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e335, i32 0, i64 %idxprom334
  %oldest_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx336, i32 0, i32 1
  %156 = load i32, i32* %oldest_regno, align 4
  store i32 %156, i32* %i142, align 4
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.380, %if.end.333
  %157 = load i32, i32* %i142, align 4
  %158 = load i32, i32* %regno, align 4
  %cmp338 = icmp ne i32 %157, %158
  br i1 %cmp338, label %for.body.340, label %for.end.384

for.body.340:                                     ; preds = %for.cond.337
  %159 = load i32, i32* %i142, align 4
  %idxprom341 = zext i32 %159 to i64
  %160 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e342 = getelementptr inbounds %struct.value_data, %struct.value_data* %160, i32 0, i32 0
  %arrayidx343 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e342, i32 0, i64 %idxprom341
  %mode344 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx343, i32 0, i32 0
  %161 = load i32, i32* %mode344, align 4
  %162 = load i32, i32* %mode, align 4
  %cmp345 = icmp eq i32 %161, %162
  br i1 %cmp345, label %if.then.354, label %lor.lhs.false.347

lor.lhs.false.347:                                ; preds = %for.body.340
  %163 = load i32, i32* %i142, align 4
  %idxprom348 = zext i32 %163 to i64
  %164 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e349 = getelementptr inbounds %struct.value_data, %struct.value_data* %164, i32 0, i32 0
  %arrayidx350 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e349, i32 0, i64 %idxprom348
  %mode351 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx350, i32 0, i32 0
  %165 = load i32, i32* %mode351, align 4
  %166 = load i32, i32* %mode, align 4
  %167 = load i32, i32* %i142, align 4
  %call352 = call zeroext i1 @mode_change_ok(i32 %165, i32 %166, i32 %167)
  br i1 %call352, label %if.then.354, label %if.end.379

if.then.354:                                      ; preds = %lor.lhs.false.347, %for.body.340
  %168 = load i32, i32* %mode, align 4
  %169 = load i32, i32* %i142, align 4
  %call355 = call %struct.rtx_def* @gen_rtx_fmt_i0(i32 61, i32 %168, i32 %169)
  store %struct.rtx_def* %call355, %struct.rtx_def** %new, align 8
  %170 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld356 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx357 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld356, i32 0, i64 1
  %rtx358 = bitcast %union.rtunion_def* %arrayidx357 to %struct.rtx_def**
  %172 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call359 = call i32 @validate_change(%struct.rtx_def* %170, %struct.rtx_def** %rtx358, %struct.rtx_def* %172, i32 0)
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.then.361, label %if.end.378

if.then.361:                                      ; preds = %if.then.354
  %173 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld362 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx363 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld362, i32 0, i64 1
  %rtuint364 = bitcast %union.rtunion_def* %arrayidx363 to i32*
  %174 = load i32, i32* %rtuint364, align 4
  %175 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld365 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx366 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld365, i32 0, i64 1
  %rtuint367 = bitcast %union.rtunion_def* %arrayidx366 to i32*
  store i32 %174, i32* %rtuint367, align 4
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool368 = icmp ne %struct._IO_FILE* %176, null
  br i1 %tobool368, label %if.then.369, label %if.end.377

if.then.369:                                      ; preds = %if.then.361
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld370 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx371 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld370, i32 0, i64 0
  %rtint372 = bitcast %union.rtunion_def* %arrayidx371 to i32*
  %179 = load i32, i32* %rtint372, align 4
  %180 = load i32, i32* %regno, align 4
  %181 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 0
  %rtuint375 = bitcast %union.rtunion_def* %arrayidx374 to i32*
  %182 = load i32, i32* %rtuint375, align 4
  %call376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0), i32 %179, i32 %180, i32 %182)
  br label %if.end.377

if.end.377:                                       ; preds = %if.then.369, %if.then.361
  store i8 1, i8* %changed, align 1
  br label %did_replacement

if.end.378:                                       ; preds = %if.then.354
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %lor.lhs.false.347
  br label %for.inc.380

for.inc.380:                                      ; preds = %if.end.379
  %183 = load i32, i32* %i142, align 4
  %idxprom381 = zext i32 %183 to i64
  %184 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e382 = getelementptr inbounds %struct.value_data, %struct.value_data* %184, i32 0, i32 0
  %arrayidx383 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e382, i32 0, i64 %idxprom381
  %next_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx383, i32 0, i32 2
  %185 = load i32, i32* %next_regno, align 4
  store i32 %185, i32* %i142, align 4
  br label %for.cond.337

for.end.384:                                      ; preds = %for.cond.337
  br label %if.end.385

if.end.385:                                       ; preds = %for.end.384, %land.lhs.true.126, %for.end.124
  br label %no_move_special_case

no_move_special_case:                             ; preds = %if.end.385, %if.then.301
  store i32 0, i32* %i, align 4
  br label %for.cond.386

for.cond.386:                                     ; preds = %for.inc.517, %no_move_special_case
  %186 = load i32, i32* %i, align 4
  %187 = load i32, i32* %n_ops, align 4
  %cmp387 = icmp slt i32 %186, %187
  br i1 %cmp387, label %for.body.389, label %for.end.519

for.body.389:                                     ; preds = %for.cond.386
  store i8 0, i8* %replaced, align 1
  %188 = load i32, i32* %i, align 4
  %idxprom390 = sext i32 %188 to i64
  %arrayidx391 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom390
  %189 = load i8*, i8** %arrayidx391, align 8
  %arrayidx392 = getelementptr inbounds i8, i8* %189, i64 0
  %190 = load i8, i8* %arrayidx392, align 1
  %conv393 = sext i8 %190 to i32
  %cmp394 = icmp eq i32 %conv393, 0
  br i1 %cmp394, label %if.then.396, label %if.end.397

if.then.396:                                      ; preds = %for.body.389
  br label %for.inc.517

if.end.397:                                       ; preds = %for.body.389
  %191 = load i8, i8* %is_asm, align 1
  %tobool398 = trunc i8 %191 to i1
  br i1 %tobool398, label %land.lhs.true.400, label %if.end.421

land.lhs.true.400:                                ; preds = %if.end.397
  %192 = load i32, i32* %i, align 4
  %idxprom401 = sext i32 %192 to i64
  %arrayidx402 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom401
  %193 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx402, align 8
  %194 = bitcast %struct.rtx_def* %193 to i32*
  %bf.load403 = load i32, i32* %194, align 8
  %bf.clear404 = and i32 %bf.load403, 65535
  %cmp405 = icmp eq i32 %bf.clear404, 61
  br i1 %cmp405, label %land.lhs.true.407, label %if.end.421

land.lhs.true.407:                                ; preds = %land.lhs.true.400
  %195 = load i32, i32* %i, align 4
  %idxprom408 = sext i32 %195 to i64
  %arrayidx409 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom408
  %196 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx409, align 8
  %fld410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld410, i32 0, i64 0
  %rtuint412 = bitcast %union.rtunion_def* %arrayidx411 to i32*
  %197 = load i32, i32* %rtuint412, align 4
  %198 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %198 to i64
  %arrayidx414 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom413
  %199 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx414, align 8
  %fld415 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx416 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld415, i32 0, i64 1
  %rtuint417 = bitcast %union.rtunion_def* %arrayidx416 to i32*
  %200 = load i32, i32* %rtuint417, align 4
  %cmp418 = icmp eq i32 %197, %200
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %land.lhs.true.407
  br label %for.inc.517

if.end.421:                                       ; preds = %land.lhs.true.407, %land.lhs.true.400, %if.end.397
  %201 = load i32, i32* %i, align 4
  %idxprom422 = sext i32 %201 to i64
  %arrayidx423 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom422
  %202 = load i32, i32* %arrayidx423, align 4
  %cmp424 = icmp eq i32 %202, 0
  br i1 %cmp424, label %if.then.426, label %if.else.478

if.then.426:                                      ; preds = %if.end.421
  %203 = load i32, i32* %alt, align 4
  %idxprom427 = sext i32 %203 to i64
  %204 = load i32, i32* %i, align 4
  %idxprom428 = sext i32 %204 to i64
  %arrayidx429 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom428
  %arrayidx430 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx429, i32 0, i64 %idxprom427
  %is_address = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx430, i32 0, i32 5
  %bf.load431 = load i8, i8* %is_address, align 8
  %bf.lshr432 = lshr i8 %bf.load431, 6
  %bf.clear433 = and i8 %bf.lshr432, 1
  %bf.cast434 = zext i8 %bf.clear433 to i32
  %tobool435 = icmp ne i32 %bf.cast434, 0
  br i1 %tobool435, label %if.then.436, label %if.else.446

if.then.436:                                      ; preds = %if.then.426
  %205 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %205 to i64
  %arrayidx438 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom437
  %206 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx438, align 8
  %207 = load i32, i32* %alt, align 4
  %idxprom439 = sext i32 %207 to i64
  %208 = load i32, i32* %i, align 4
  %idxprom440 = sext i32 %208 to i64
  %arrayidx441 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom440
  %arrayidx442 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx441, i32 0, i64 %idxprom439
  %class443 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx442, i32 0, i32 1
  %209 = load i32, i32* %class443, align 4
  %210 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %211 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call444 = call zeroext i1 @replace_oldest_value_addr(%struct.rtx_def** %206, i32 %209, i32 0, %struct.rtx_def* %210, %struct.value_data* %211)
  %frombool445 = zext i1 %call444 to i8
  store i8 %frombool445, i8* %replaced, align 1
  br label %if.end.477

if.else.446:                                      ; preds = %if.then.426
  %212 = load i32, i32* %i, align 4
  %idxprom447 = sext i32 %212 to i64
  %arrayidx448 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom447
  %213 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx448, align 8
  %214 = bitcast %struct.rtx_def* %213 to i32*
  %bf.load449 = load i32, i32* %214, align 8
  %bf.clear450 = and i32 %bf.load449, 65535
  %cmp451 = icmp eq i32 %bf.clear450, 61
  br i1 %cmp451, label %if.then.453, label %if.else.463

if.then.453:                                      ; preds = %if.else.446
  %215 = load i32, i32* %i, align 4
  %idxprom454 = sext i32 %215 to i64
  %arrayidx455 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom454
  %216 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx455, align 8
  %217 = load i32, i32* %alt, align 4
  %idxprom456 = sext i32 %217 to i64
  %218 = load i32, i32* %i, align 4
  %idxprom457 = sext i32 %218 to i64
  %arrayidx458 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom457
  %arrayidx459 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx458, i32 0, i64 %idxprom456
  %class460 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx459, i32 0, i32 1
  %219 = load i32, i32* %class460, align 4
  %220 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %221 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call461 = call zeroext i1 @replace_oldest_value_reg(%struct.rtx_def** %216, i32 %219, %struct.rtx_def* %220, %struct.value_data* %221)
  %frombool462 = zext i1 %call461 to i8
  store i8 %frombool462, i8* %replaced, align 1
  br label %if.end.476

if.else.463:                                      ; preds = %if.else.446
  %222 = load i32, i32* %i, align 4
  %idxprom464 = sext i32 %222 to i64
  %arrayidx465 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom464
  %223 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx465, align 8
  %224 = bitcast %struct.rtx_def* %223 to i32*
  %bf.load466 = load i32, i32* %224, align 8
  %bf.clear467 = and i32 %bf.load466, 65535
  %cmp468 = icmp eq i32 %bf.clear467, 66
  br i1 %cmp468, label %if.then.470, label %if.end.475

if.then.470:                                      ; preds = %if.else.463
  %225 = load i32, i32* %i, align 4
  %idxprom471 = sext i32 %225 to i64
  %arrayidx472 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom471
  %226 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx472, align 8
  %227 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %228 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call473 = call zeroext i1 @replace_oldest_value_mem(%struct.rtx_def* %226, %struct.rtx_def* %227, %struct.value_data* %228)
  %frombool474 = zext i1 %call473 to i8
  store i8 %frombool474, i8* %replaced, align 1
  br label %if.end.475

if.end.475:                                       ; preds = %if.then.470, %if.else.463
  br label %if.end.476

if.end.476:                                       ; preds = %if.end.475, %if.then.453
  br label %if.end.477

if.end.477:                                       ; preds = %if.end.476, %if.then.436
  br label %if.end.491

if.else.478:                                      ; preds = %if.end.421
  %229 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %229 to i64
  %arrayidx480 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom479
  %230 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx480, align 8
  %231 = bitcast %struct.rtx_def* %230 to i32*
  %bf.load481 = load i32, i32* %231, align 8
  %bf.clear482 = and i32 %bf.load481, 65535
  %cmp483 = icmp eq i32 %bf.clear482, 66
  br i1 %cmp483, label %if.then.485, label %if.end.490

if.then.485:                                      ; preds = %if.else.478
  %232 = load i32, i32* %i, align 4
  %idxprom486 = sext i32 %232 to i64
  %arrayidx487 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom486
  %233 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx487, align 8
  %234 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %235 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call488 = call zeroext i1 @replace_oldest_value_mem(%struct.rtx_def* %233, %struct.rtx_def* %234, %struct.value_data* %235)
  %frombool489 = zext i1 %call488 to i8
  store i8 %frombool489, i8* %replaced, align 1
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.485, %if.else.478
  br label %if.end.491

if.end.491:                                       ; preds = %if.end.490, %if.end.477
  %236 = load i8, i8* %replaced, align 1
  %tobool492 = trunc i8 %236 to i1
  br i1 %tobool492, label %if.then.493, label %if.end.516

if.then.493:                                      ; preds = %if.end.491
  store i8 1, i8* %changed, align 1
  %237 = load i32, i32* %i, align 4
  %idxprom495 = sext i32 %237 to i64
  %arrayidx496 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom495
  %238 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx496, align 8
  %239 = load %struct.rtx_def*, %struct.rtx_def** %238, align 8
  store %struct.rtx_def* %239, %struct.rtx_def** %new494, align 8
  %240 = load %struct.rtx_def*, %struct.rtx_def** %new494, align 8
  %241 = load i32, i32* %i, align 4
  %idxprom497 = sext i32 %241 to i64
  %arrayidx498 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom497
  store %struct.rtx_def* %240, %struct.rtx_def** %arrayidx498, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.499

for.cond.499:                                     ; preds = %for.inc.513, %if.then.493
  %242 = load i32, i32* %j, align 4
  %243 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv500 = sext i8 %243 to i32
  %cmp501 = icmp slt i32 %242, %conv500
  br i1 %cmp501, label %for.body.503, label %for.end.515

for.body.503:                                     ; preds = %for.cond.499
  %244 = load i32, i32* %j, align 4
  %idxprom504 = sext i32 %244 to i64
  %arrayidx505 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6), i32 0, i64 %idxprom504
  %245 = load i8, i8* %arrayidx505, align 1
  %conv506 = sext i8 %245 to i32
  %246 = load i32, i32* %i, align 4
  %cmp507 = icmp eq i32 %conv506, %246
  br i1 %cmp507, label %if.then.509, label %if.end.512

if.then.509:                                      ; preds = %for.body.503
  %247 = load %struct.rtx_def*, %struct.rtx_def** %new494, align 8
  %248 = load i32, i32* %j, align 4
  %idxprom510 = sext i32 %248 to i64
  %arrayidx511 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom510
  %249 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx511, align 8
  store %struct.rtx_def* %247, %struct.rtx_def** %249, align 8
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.509, %for.body.503
  br label %for.inc.513

for.inc.513:                                      ; preds = %if.end.512
  %250 = load i32, i32* %j, align 4
  %inc514 = add nsw i32 %250, 1
  store i32 %inc514, i32* %j, align 4
  br label %for.cond.499

for.end.515:                                      ; preds = %for.cond.499
  br label %if.end.516

if.end.516:                                       ; preds = %for.end.515, %if.end.491
  br label %for.inc.517

for.inc.517:                                      ; preds = %if.end.516, %if.then.420, %if.then.396
  %251 = load i32, i32* %i, align 4
  %inc518 = add nsw i32 %251, 1
  store i32 %inc518, i32* %i, align 4
  br label %for.cond.386

for.end.519:                                      ; preds = %for.cond.386
  br label %did_replacement

did_replacement:                                  ; preds = %for.end.519, %if.end.377, %if.end.331
  %252 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %253 = bitcast %struct.rtx_def* %252 to i32*
  %bf.load520 = load i32, i32* %253, align 8
  %bf.clear521 = and i32 %bf.load520, 65535
  %cmp522 = icmp eq i32 %bf.clear521, 34
  br i1 %cmp522, label %if.then.524, label %if.end.536

if.then.524:                                      ; preds = %did_replacement
  store i32 0, i32* %i, align 4
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.533, %if.then.524
  %254 = load i32, i32* %i, align 4
  %cmp526 = icmp slt i32 %254, 53
  br i1 %cmp526, label %for.body.528, label %for.end.535

for.body.528:                                     ; preds = %for.cond.525
  %255 = load i64, i64* @regs_invalidated_by_call, align 8
  %256 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %256 to i64
  %shl = shl i64 1, %sh_prom
  %and529 = and i64 %255, %shl
  %tobool530 = icmp ne i64 %and529, 0
  br i1 %tobool530, label %if.then.531, label %if.end.532

if.then.531:                                      ; preds = %for.body.528
  %257 = load i32, i32* %i, align 4
  %258 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  call void @kill_value_regno(i32 %257, %struct.value_data* %258)
  br label %if.end.532

if.end.532:                                       ; preds = %if.then.531, %for.body.528
  br label %for.inc.533

for.inc.533:                                      ; preds = %if.end.532
  %259 = load i32, i32* %i, align 4
  %inc534 = add nsw i32 %259, 1
  store i32 %inc534, i32* %i, align 4
  br label %for.cond.525

for.end.535:                                      ; preds = %for.cond.525
  br label %if.end.536

if.end.536:                                       ; preds = %for.end.535, %did_replacement
  %260 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld537 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %260, i32 0, i32 1
  %arrayidx538 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld537, i32 0, i64 3
  %rtx539 = bitcast %union.rtunion_def* %arrayidx538 to %struct.rtx_def**
  %261 = load %struct.rtx_def*, %struct.rtx_def** %rtx539, align 8
  %262 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %263 = bitcast %struct.value_data* %262 to i8*
  call void @note_stores(%struct.rtx_def* %261, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @kill_set_value, i8* %263)
  %264 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool540 = icmp ne %struct.rtx_def* %264, null
  br i1 %tobool540, label %land.lhs.true.541, label %if.end.564

land.lhs.true.541:                                ; preds = %if.end.536
  %265 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld542 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx543 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld542, i32 0, i64 0
  %rtx544 = bitcast %union.rtunion_def* %arrayidx543 to %struct.rtx_def**
  %266 = load %struct.rtx_def*, %struct.rtx_def** %rtx544, align 8
  %267 = bitcast %struct.rtx_def* %266 to i32*
  %bf.load545 = load i32, i32* %267, align 8
  %bf.clear546 = and i32 %bf.load545, 65535
  %cmp547 = icmp eq i32 %bf.clear546, 61
  br i1 %cmp547, label %land.lhs.true.549, label %if.end.564

land.lhs.true.549:                                ; preds = %land.lhs.true.541
  %268 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld550 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %arrayidx551 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld550, i32 0, i64 1
  %rtx552 = bitcast %union.rtunion_def* %arrayidx551 to %struct.rtx_def**
  %269 = load %struct.rtx_def*, %struct.rtx_def** %rtx552, align 8
  %270 = bitcast %struct.rtx_def* %269 to i32*
  %bf.load553 = load i32, i32* %270, align 8
  %bf.clear554 = and i32 %bf.load553, 65535
  %cmp555 = icmp eq i32 %bf.clear554, 61
  br i1 %cmp555, label %if.then.557, label %if.end.564

if.then.557:                                      ; preds = %land.lhs.true.549
  %271 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld558 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %271, i32 0, i32 1
  %arrayidx559 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld558, i32 0, i64 0
  %rtx560 = bitcast %union.rtunion_def* %arrayidx559 to %struct.rtx_def**
  %272 = load %struct.rtx_def*, %struct.rtx_def** %rtx560, align 8
  %273 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld561 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %273, i32 0, i32 1
  %arrayidx562 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld561, i32 0, i64 1
  %rtx563 = bitcast %union.rtunion_def* %arrayidx562 to %struct.rtx_def**
  %274 = load %struct.rtx_def*, %struct.rtx_def** %rtx563, align 8
  %275 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  call void @copy_value(%struct.rtx_def* %272, %struct.rtx_def* %274, %struct.value_data* %275)
  br label %if.end.564

if.end.564:                                       ; preds = %if.then.557, %land.lhs.true.549, %land.lhs.true.541, %if.end.536
  %276 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %277 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end565 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %277, i32 0, i32 1
  %278 = load %struct.rtx_def*, %struct.rtx_def** %end565, align 8
  %cmp566 = icmp eq %struct.rtx_def* %276, %278
  br i1 %cmp566, label %if.then.568, label %if.end.569

if.then.568:                                      ; preds = %if.end.564
  br label %for.end.574

if.end.569:                                       ; preds = %if.end.564
  br label %for.inc.570

for.inc.570:                                      ; preds = %if.end.569, %if.else
  %279 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld571 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx572 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld571, i32 0, i64 2
  %rtx573 = bitcast %union.rtunion_def* %arrayidx572 to %struct.rtx_def**
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtx573, align 8
  store %struct.rtx_def* %280, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.574:                                      ; preds = %if.then.568, %if.then.4
  %281 = load i8, i8* %changed, align 1
  %tobool575 = trunc i8 %281 to i1
  ret i1 %tobool575
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare void @delete_noop_moves(%struct.rtx_def*) #2

declare %struct.rtx_def* @get_insns() #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @debug_value_data(%struct.value_data* %vd) #0 {
entry:
  %vd.addr = alloca %struct.value_data*, align 8
  %set = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  store i64 0, i64* %set, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.64, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 53
  br i1 %cmp, label %for.body, label %for.end.65

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e = getelementptr inbounds %struct.value_data, %struct.value_data* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i32 0, i64 %idxprom
  %oldest_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %oldest_regno, align 4
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end.63

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %5 to i64
  %6 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e3 = getelementptr inbounds %struct.value_data, %struct.value_data* %6, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e3, i32 0, i64 %idxprom2
  %mode = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx4, i32 0, i32 0
  %7 = load i32, i32* %mode, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.then
  %8 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %8 to i64
  %9 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e8 = getelementptr inbounds %struct.value_data, %struct.value_data* %9, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e8, i32 0, i64 %idxprom7
  %next_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx9, i32 0, i32 2
  %10 = load i32, i32* %next_regno, align 4
  %cmp10 = icmp ne i32 %10, -1
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %13 to i64
  %14 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e13 = getelementptr inbounds %struct.value_data, %struct.value_data* %14, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e13, i32 0, i64 %idxprom12
  %next_regno15 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx14, i32 0, i32 2
  %15 = load i32, i32* %next_regno15, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i32 %12, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then.6
  br label %for.inc.64

if.end.16:                                        ; preds = %if.then
  %16 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 1, %sh_prom
  %17 = load i64, i64* %set, align 8
  %or = or i64 %17, %shl
  store i64 %or, i64* %set, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %20 to i64
  %21 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e18 = getelementptr inbounds %struct.value_data, %struct.value_data* %21, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e18, i32 0, i64 %idxprom17
  %mode20 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx19, i32 0, i32 0
  %22 = load i32, i32* %mode20, align 4
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [59 x i8*], [59 x i8*]* @mode_name, i32 0, i64 %idxprom21
  %23 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %19, i8* %23)
  %24 = load i32, i32* %i, align 4
  %idxprom24 = zext i32 %24 to i64
  %25 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e25 = getelementptr inbounds %struct.value_data, %struct.value_data* %25, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e25, i32 0, i64 %idxprom24
  %next_regno27 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx26, i32 0, i32 2
  %26 = load i32, i32* %next_regno27, align 4
  store i32 %26, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.end.16
  %27 = load i32, i32* %j, align 4
  %cmp29 = icmp ne i32 %27, -1
  br i1 %cmp29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.28
  %28 = load i64, i64* %set, align 8
  %29 = load i32, i32* %j, align 4
  %sh_prom31 = zext i32 %29 to i64
  %shl32 = shl i64 1, %sh_prom31
  %and = and i64 %28, %shl32
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %for.body.30
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i32, i32* %j, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i32 0, i32 0), i32 %31)
  br label %for.end.108

if.end.35:                                        ; preds = %for.body.30
  %32 = load i32, i32* %j, align 4
  %idxprom36 = zext i32 %32 to i64
  %33 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e37 = getelementptr inbounds %struct.value_data, %struct.value_data* %33, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e37, i32 0, i64 %idxprom36
  %oldest_regno39 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx38, i32 0, i32 1
  %34 = load i32, i32* %oldest_regno39, align 4
  %35 = load i32, i32* %i, align 4
  %cmp40 = icmp ne i32 %34, %35
  br i1 %cmp40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %if.end.35
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %j, align 4
  %idxprom42 = zext i32 %38 to i64
  %39 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e43 = getelementptr inbounds %struct.value_data, %struct.value_data* %39, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e43, i32 0, i64 %idxprom42
  %oldest_regno45 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx44, i32 0, i32 1
  %40 = load i32, i32* %oldest_regno45, align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i32 %37, i32 %40)
  br label %for.end.108

if.end.47:                                        ; preds = %if.end.35
  %41 = load i32, i32* %j, align 4
  %sh_prom48 = zext i32 %41 to i64
  %shl49 = shl i64 1, %sh_prom48
  %42 = load i64, i64* %set, align 8
  %or50 = or i64 %42, %shl49
  store i64 %or50, i64* %set, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %j, align 4
  %idxprom51 = zext i32 %45 to i64
  %46 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e52 = getelementptr inbounds %struct.value_data, %struct.value_data* %46, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e52, i32 0, i64 %idxprom51
  %mode54 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx53, i32 0, i32 0
  %47 = load i32, i32* %mode54, align 4
  %idxprom55 = sext i32 %47 to i64
  %arrayidx56 = getelementptr inbounds [59 x i8*], [59 x i8*]* @mode_name, i32 0, i64 %idxprom55
  %48 = load i8*, i8** %arrayidx56, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 %44, i8* %48)
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %49 = load i32, i32* %j, align 4
  %idxprom58 = zext i32 %49 to i64
  %50 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e59 = getelementptr inbounds %struct.value_data, %struct.value_data* %50, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e59, i32 0, i64 %idxprom58
  %next_regno61 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx60, i32 0, i32 2
  %51 = load i32, i32* %next_regno61, align 4
  store i32 %51, i32* %j, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call62 = call i32 @fputc(i32 10, %struct._IO_FILE* %52)
  br label %if.end.63

if.end.63:                                        ; preds = %for.end, %for.body
  br label %for.inc.64

for.inc.64:                                       ; preds = %if.end.63, %if.end
  %53 = load i32, i32* %i, align 4
  %inc = add i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.65:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.106, %for.end.65
  %54 = load i32, i32* %i, align 4
  %cmp67 = icmp ult i32 %54, 53
  br i1 %cmp67, label %for.body.68, label %for.end.108

for.body.68:                                      ; preds = %for.cond.66
  %55 = load i64, i64* %set, align 8
  %56 = load i32, i32* %i, align 4
  %sh_prom69 = zext i32 %56 to i64
  %shl70 = shl i64 1, %sh_prom69
  %and71 = and i64 %55, %shl70
  %tobool72 = icmp ne i64 %and71, 0
  br i1 %tobool72, label %if.end.105, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.68
  %57 = load i32, i32* %i, align 4
  %idxprom73 = zext i32 %57 to i64
  %58 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e74 = getelementptr inbounds %struct.value_data, %struct.value_data* %58, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e74, i32 0, i64 %idxprom73
  %mode76 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx75, i32 0, i32 0
  %59 = load i32, i32* %mode76, align 4
  %cmp77 = icmp ne i32 %59, 0
  br i1 %cmp77, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %60 = load i32, i32* %i, align 4
  %idxprom78 = zext i32 %60 to i64
  %61 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e79 = getelementptr inbounds %struct.value_data, %struct.value_data* %61, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e79, i32 0, i64 %idxprom78
  %oldest_regno81 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx80, i32 0, i32 1
  %62 = load i32, i32* %oldest_regno81, align 4
  %63 = load i32, i32* %i, align 4
  %cmp82 = icmp ne i32 %62, %63
  br i1 %cmp82, label %if.then.89, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false
  %64 = load i32, i32* %i, align 4
  %idxprom84 = zext i32 %64 to i64
  %65 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e85 = getelementptr inbounds %struct.value_data, %struct.value_data* %65, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e85, i32 0, i64 %idxprom84
  %next_regno87 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx86, i32 0, i32 2
  %66 = load i32, i32* %next_regno87, align 4
  %cmp88 = icmp ne i32 %66, -1
  br i1 %cmp88, label %if.then.89, label %if.end.105

if.then.89:                                       ; preds = %lor.lhs.false.83, %lor.lhs.false, %land.lhs.true
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom90 = zext i32 %69 to i64
  %70 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e91 = getelementptr inbounds %struct.value_data, %struct.value_data* %70, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e91, i32 0, i64 %idxprom90
  %mode93 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx92, i32 0, i32 0
  %71 = load i32, i32* %mode93, align 4
  %idxprom94 = sext i32 %71 to i64
  %arrayidx95 = getelementptr inbounds [59 x i8*], [59 x i8*]* @mode_name, i32 0, i64 %idxprom94
  %72 = load i8*, i8** %arrayidx95, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom96 = zext i32 %73 to i64
  %74 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e97 = getelementptr inbounds %struct.value_data, %struct.value_data* %74, i32 0, i32 0
  %arrayidx98 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e97, i32 0, i64 %idxprom96
  %oldest_regno99 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx98, i32 0, i32 1
  %75 = load i32, i32* %oldest_regno99, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom100 = zext i32 %76 to i64
  %77 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e101 = getelementptr inbounds %struct.value_data, %struct.value_data* %77, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e101, i32 0, i64 %idxprom100
  %next_regno103 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx102, i32 0, i32 2
  %78 = load i32, i32* %next_regno103, align 4
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0), i32 %68, i8* %72, i32 %75, i32 %78)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.89, %lor.lhs.false.83, %for.body.68
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %79 = load i32, i32* %i, align 4
  %inc107 = add i32 %79, 1
  store i32 %inc107, i32* %i, align 4
  br label %for.cond.66

for.end.108:                                      ; preds = %if.then.33, %if.then.41, %for.cond.66
  ret void
}

declare void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) #2

; Function Attrs: nounwind uwtable
define internal void @clear_dead_regs(i64* %pset, i32 %kind, %struct.rtx_def* %notes) #0 {
entry:
  %pset.addr = alloca i64*, align 8
  %kind.addr = alloca i32, align 4
  %notes.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %nregs = alloca i32, align 4
  store i64* %pset, i64** %pset.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.rtx_def* %notes, %struct.rtx_def** %notes.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %4 = load i32, i32* %kind.addr, align 4
  %cmp = icmp eq i32 %bf.clear, %4
  br i1 %cmp, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then, label %if.end.75

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %reg, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %11 = load i32, i32* %rtuint, align 4
  store i32 %11, i32* %regno, align 4
  %12 = load i32, i32* %regno, align 4
  %cmp9 = icmp uge i32 %12, 8
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false

land.lhs.true.10:                                 ; preds = %if.then
  %13 = load i32, i32* %regno, align 4
  %cmp11 = icmp ule i32 %13, 15
  br i1 %cmp11, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10, %if.then
  %14 = load i32, i32* %regno, align 4
  %cmp12 = icmp uge i32 %14, 21
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %lor.lhs.false
  %15 = load i32, i32* %regno, align 4
  %cmp14 = icmp ule i32 %15, 28
  br i1 %cmp14, label %cond.true, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %lor.lhs.false
  %16 = load i32, i32* %regno, align 4
  %cmp16 = icmp uge i32 %16, 45
  br i1 %cmp16, label %land.lhs.true.17, label %lor.lhs.false.19

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %17 = load i32, i32* %regno, align 4
  %cmp18 = icmp ule i32 %17, 52
  br i1 %cmp18, label %cond.true, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.17, %lor.lhs.false.15
  %18 = load i32, i32* %regno, align 4
  %cmp20 = icmp uge i32 %18, 29
  br i1 %cmp20, label %land.lhs.true.21, label %cond.false

land.lhs.true.21:                                 ; preds = %lor.lhs.false.19
  %19 = load i32, i32* %regno, align 4
  %cmp22 = icmp ule i32 %19, 36
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.10
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load23 = load i32, i32* %21, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 16
  %bf.clear25 = and i32 %bf.lshr24, 255
  %idxprom = sext i32 %bf.clear25 to i64
  %arrayidx26 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx26, align 4
  %cmp27 = icmp eq i32 %22, 5
  br i1 %cmp27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %23 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load28 = load i32, i32* %24, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 16
  %bf.clear30 = and i32 %bf.lshr29, 255
  %idxprom31 = sext i32 %bf.clear30 to i64
  %arrayidx32 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom31
  %25 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp eq i32 %25, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %26 = phi i1 [ true, %cond.true ], [ %cmp33, %lor.rhs ]
  %cond = select i1 %26, i32 2, i32 1
  br label %cond.end.65

cond.false:                                       ; preds = %land.lhs.true.21, %lor.lhs.false.19
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load34 = load i32, i32* %28, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 16
  %bf.clear36 = and i32 %bf.lshr35, 255
  %cmp37 = icmp eq i32 %bf.clear36, 18
  br i1 %cmp37, label %cond.true.38, label %cond.false.41

cond.true.38:                                     ; preds = %cond.false
  %29 = load i32, i32* @target_flags, align 4
  %and = and i32 %29, 33554432
  %tobool39 = icmp ne i32 %and, 0
  %cond40 = select i1 %tobool39, i32 2, i32 3
  br label %cond.end.63

cond.false.41:                                    ; preds = %cond.false
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load42 = load i32, i32* %31, align 8
  %bf.lshr43 = lshr i32 %bf.load42, 16
  %bf.clear44 = and i32 %bf.lshr43, 255
  %cmp45 = icmp eq i32 %bf.clear44, 24
  br i1 %cmp45, label %cond.true.46, label %cond.false.50

cond.true.46:                                     ; preds = %cond.false.41
  %32 = load i32, i32* @target_flags, align 4
  %and47 = and i32 %32, 33554432
  %tobool48 = icmp ne i32 %and47, 0
  %cond49 = select i1 %tobool48, i32 4, i32 6
  br label %cond.end

cond.false.50:                                    ; preds = %cond.false.41
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load51 = load i32, i32* %34, align 8
  %bf.lshr52 = lshr i32 %bf.load51, 16
  %bf.clear53 = and i32 %bf.lshr52, 255
  %idxprom54 = sext i32 %bf.clear53 to i64
  %arrayidx55 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom54
  %35 = load i8, i8* %arrayidx55, align 1
  %conv = zext i8 %35 to i32
  %36 = load i32, i32* @target_flags, align 4
  %and56 = and i32 %36, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 8, i32 4
  %add = add nsw i32 %conv, %cond58
  %sub = sub nsw i32 %add, 1
  %37 = load i32, i32* @target_flags, align 4
  %and59 = and i32 %37, 33554432
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 8, i32 4
  %div = sdiv i32 %sub, %cond61
  br label %cond.end

cond.end:                                         ; preds = %cond.false.50, %cond.true.46
  %cond62 = phi i32 [ %cond49, %cond.true.46 ], [ %div, %cond.false.50 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end, %cond.true.38
  %cond64 = phi i32 [ %cond40, %cond.true.38 ], [ %cond62, %cond.end ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.63, %lor.end
  %cond66 = phi i32 [ %cond, %lor.end ], [ %cond64, %cond.end.63 ]
  store i32 %cond66, i32* %nregs, align 4
  %38 = load i32, i32* %regno, align 4
  %39 = load i32, i32* %nregs, align 4
  %add67 = add i32 %38, %39
  %cmp68 = icmp ugt i32 %add67, 53
  br i1 %cmp68, label %if.then.70, label %if.end

if.then.70:                                       ; preds = %cond.end.65
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.clear_dead_regs, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end.65
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %40 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %nregs, align 4
  %cmp71 = icmp sgt i32 %40, 0
  br i1 %cmp71, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* %regno, align 4
  %42 = load i32, i32* %nregs, align 4
  %add73 = add i32 %41, %42
  %sh_prom = zext i32 %add73 to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %43 = load i64*, i64** %pset.addr, align 8
  %44 = load i64, i64* %43, align 8
  %and74 = and i64 %44, %neg
  store i64 %and74, i64* %43, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.75

if.end.75:                                        ; preds = %while.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.75
  %45 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 1
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @note_sets(%struct.rtx_def* %x, %struct.rtx_def* %set, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %pset = alloca i64*, align 8
  %regno = alloca i32, align 4
  %nregs = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %pset, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  store i32 %5, i32* %regno, align 4
  %6 = load i32, i32* %regno, align 4
  %cmp1 = icmp uge i32 %6, 8
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %regno, align 4
  %cmp2 = icmp ule i32 %7, 15
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* %regno, align 4
  %cmp3 = icmp uge i32 %8, 21
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false.6

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %regno, align 4
  %cmp5 = icmp ule i32 %9, 28
  br i1 %cmp5, label %cond.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.4, %lor.lhs.false
  %10 = load i32, i32* %regno, align 4
  %cmp7 = icmp uge i32 %10, 45
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.10

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %11 = load i32, i32* %regno, align 4
  %cmp9 = icmp ule i32 %11, 52
  br i1 %cmp9, label %cond.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %12 = load i32, i32* %regno, align 4
  %cmp11 = icmp uge i32 %12, 29
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %13 = load i32, i32* %regno, align 4
  %cmp13 = icmp ule i32 %13, 36
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load14 = load i32, i32* %15, align 8
  %bf.lshr = lshr i32 %bf.load14, 16
  %bf.clear15 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear15 to i64
  %arrayidx16 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %16, 5
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load18 = load i32, i32* %18, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 16
  %bf.clear20 = and i32 %bf.lshr19, 255
  %idxprom21 = sext i32 %bf.clear20 to i64
  %arrayidx22 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom21
  %19 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp eq i32 %19, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %20 = phi i1 [ true, %cond.true ], [ %cmp23, %lor.rhs ]
  %cond = select i1 %20, i32 2, i32 1
  br label %cond.end.54

cond.false:                                       ; preds = %land.lhs.true.12, %lor.lhs.false.10
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load24 = load i32, i32* %22, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %cmp27 = icmp eq i32 %bf.clear26, 18
  br i1 %cmp27, label %cond.true.28, label %cond.false.30

cond.true.28:                                     ; preds = %cond.false
  %23 = load i32, i32* @target_flags, align 4
  %and = and i32 %23, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond29 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.52

cond.false.30:                                    ; preds = %cond.false
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load31 = load i32, i32* %25, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 16
  %bf.clear33 = and i32 %bf.lshr32, 255
  %cmp34 = icmp eq i32 %bf.clear33, 24
  br i1 %cmp34, label %cond.true.35, label %cond.false.39

cond.true.35:                                     ; preds = %cond.false.30
  %26 = load i32, i32* @target_flags, align 4
  %and36 = and i32 %26, 33554432
  %tobool37 = icmp ne i32 %and36, 0
  %cond38 = select i1 %tobool37, i32 4, i32 6
  br label %cond.end

cond.false.39:                                    ; preds = %cond.false.30
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load40 = load i32, i32* %28, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 16
  %bf.clear42 = and i32 %bf.lshr41, 255
  %idxprom43 = sext i32 %bf.clear42 to i64
  %arrayidx44 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom43
  %29 = load i8, i8* %arrayidx44, align 1
  %conv = zext i8 %29 to i32
  %30 = load i32, i32* @target_flags, align 4
  %and45 = and i32 %30, 33554432
  %tobool46 = icmp ne i32 %and45, 0
  %cond47 = select i1 %tobool46, i32 8, i32 4
  %add = add nsw i32 %conv, %cond47
  %sub = sub nsw i32 %add, 1
  %31 = load i32, i32* @target_flags, align 4
  %and48 = and i32 %31, 33554432
  %tobool49 = icmp ne i32 %and48, 0
  %cond50 = select i1 %tobool49, i32 8, i32 4
  %div = sdiv i32 %sub, %cond50
  br label %cond.end

cond.end:                                         ; preds = %cond.false.39, %cond.true.35
  %cond51 = phi i32 [ %cond38, %cond.true.35 ], [ %div, %cond.false.39 ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end, %cond.true.28
  %cond53 = phi i32 [ %cond29, %cond.true.28 ], [ %cond51, %cond.end ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end.52, %lor.end
  %cond55 = phi i32 [ %cond, %lor.end ], [ %cond53, %cond.end.52 ]
  store i32 %cond55, i32* %nregs, align 4
  %32 = load i32, i32* %regno, align 4
  %33 = load i32, i32* %nregs, align 4
  %add56 = add i32 %32, %33
  %cmp57 = icmp ugt i32 %add56, 53
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %cond.end.54
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.note_sets, i32 0, i32 0)) #5
  unreachable

if.end.60:                                        ; preds = %cond.end.54
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.60
  %34 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %nregs, align 4
  %cmp61 = icmp sgt i32 %34, 0
  br i1 %cmp61, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i32, i32* %regno, align 4
  %36 = load i32, i32* %nregs, align 4
  %add63 = add i32 %35, %36
  %sh_prom = zext i32 %add63 to i64
  %shl = shl i64 1, %sh_prom
  %37 = load i64*, i64** %pset, align 8
  %38 = load i64, i64* %37, align 8
  %or = or i64 %38, %shl
  store i64 %or, i64* %37, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

declare %struct.rtx_def* @gen_raw_REG(i32, i32) #2

declare i32 @recog_memoized_1(%struct.rtx_def*) #2

declare void @extract_insn(%struct.rtx_def*) #2

declare i32 @constrain_operands(i32) #2

declare void @preprocess_constraints() #2

; Function Attrs: nounwind uwtable
define internal void @scan_rtx(%struct.rtx_def* %insn, %struct.rtx_def** %loc, i32 %class, i32 %action, i32 %type, i32 %earlyclobber) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %class.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %earlyclobber.addr = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %earlyclobber, i32* %earlyclobber.addr, align 4
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  store i32 %bf.clear2, i32* %code, align 4
  %6 = load i32, i32* %code, align 4
  switch i32 %6, label %sw.default [
    i32 58, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 69, label %sw.bb
    i32 59, label %sw.bb
    i32 61, label %sw.bb.3
    i32 66, label %sw.bb.4
    i32 47, label %sw.bb.7
    i32 64, label %sw.bb.14
    i32 133, label %sw.bb.18
    i32 132, label %sw.bb.18
    i32 99, label %sw.bb.28
    i32 97, label %sw.bb.28
    i32 98, label %sw.bb.28
    i32 96, label %sw.bb.28
    i32 101, label %sw.bb.28
    i32 100, label %sw.bb.28
    i32 49, label %sw.bb.29
    i32 3, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %for.end.82

sw.bb.3:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %9 = load i32, i32* %class.addr, align 4
  %10 = load i32, i32* %action.addr, align 4
  %11 = load i32, i32* %type.addr, align 4
  %12 = load i32, i32* %earlyclobber.addr, align 4
  call void @scan_rtx_reg(%struct.rtx_def* %7, %struct.rtx_def** %8, i32 %9, i32 %10, i32 %11, i32 %12)
  br label %for.end.82

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %15 = load i32, i32* %action.addr, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load5 = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load5, 16
  %bf.clear6 = and i32 %bf.lshr, 255
  call void @scan_rtx_address(%struct.rtx_def* %13, %struct.rtx_def** %rtx, i32 12, i32 %15, i32 %bf.clear6)
  br label %for.end.82

sw.bb.7:                                          ; preds = %entry
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 1
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %20 = load i32, i32* %class.addr, align 4
  %21 = load i32, i32* %action.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %18, %struct.rtx_def** %rtx10, i32 %20, i32 %21, i32 0, i32 0)
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %24 = load i32, i32* %class.addr, align 4
  %25 = load i32, i32* %action.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %22, %struct.rtx_def** %rtx13, i32 %24, i32 %25, i32 1, i32 0)
  br label %for.end.82

sw.bb.14:                                         ; preds = %entry
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %28 = load i32, i32* %class.addr, align 4
  %29 = load i32, i32* %action.addr, align 4
  %30 = load i32, i32* %earlyclobber.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %26, %struct.rtx_def** %rtx17, i32 %28, i32 %29, i32 2, i32 %30)
  br label %for.end.82

sw.bb.18:                                         ; preds = %entry, %entry
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %33 = load i32, i32* %class.addr, align 4
  %34 = load i32, i32* %action.addr, align 4
  %35 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %35, 0
  %cond = select i1 %cmp, i32 0, i32 2
  %36 = load i32, i32* %earlyclobber.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %31, %struct.rtx_def** %rtx21, i32 %33, i32 %34, i32 %cond, i32 %36)
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %39 = load i32, i32* %class.addr, align 4
  %40 = load i32, i32* %action.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %37, %struct.rtx_def** %rtx24, i32 %39, i32 %40, i32 0, i32 0)
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 2
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %43 = load i32, i32* %class.addr, align 4
  %44 = load i32, i32* %action.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %41, %struct.rtx_def** %rtx27, i32 %43, i32 %44, i32 0, i32 0)
  br label %for.end.82

sw.bb.28:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 722, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.scan_rtx, i32 0, i32 0)) #5
  unreachable

sw.bb.29:                                         ; preds = %entry
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %47 = load i32, i32* %class.addr, align 4
  %48 = load i32, i32* %action.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %45, %struct.rtx_def** %rtx32, i32 %47, i32 %48, i32 1, i32 1)
  br label %for.end.82

sw.bb.33:                                         ; preds = %entry
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %51 = load i32, i32* %class.addr, align 4
  %52 = load i32, i32* %action.addr, align 4
  %53 = load i32, i32* %type.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %49, %struct.rtx_def** %rtx36, i32 %51, i32 %52, i32 %53, i32 0)
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %tobool = icmp ne %struct.rtx_def* %55, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.33
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %58 = load i32, i32* %class.addr, align 4
  %59 = load i32, i32* %action.addr, align 4
  %60 = load i32, i32* %type.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %56, %struct.rtx_def** %rtx42, i32 %58, i32 %59, i32 %60, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.33
  br label %for.end.82

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %61 = load i32, i32* %code, align 4
  %idxprom = sext i32 %61 to i64
  %arrayidx43 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %62 = load i8*, i8** %arrayidx43, align 8
  store i8* %62, i8** %fmt, align 8
  %63 = load i32, i32* %code, align 4
  %idxprom44 = sext i32 %63 to i64
  %arrayidx45 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom44
  %64 = load i8, i8* %arrayidx45, align 1
  %conv = zext i8 %64 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %sw.epilog
  %65 = load i32, i32* %i, align 4
  %cmp46 = icmp sge i32 %65, 0
  br i1 %cmp46, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %66 to i64
  %67 = load i8*, i8** %fmt, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %67, i64 %idxprom48
  %68 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %68 to i32
  %cmp51 = icmp eq i32 %conv50, 101
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %for.body
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %70 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %70 to i64
  %71 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 %idxprom54
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %72 = load i32, i32* %class.addr, align 4
  %73 = load i32, i32* %action.addr, align 4
  %74 = load i32, i32* %type.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %69, %struct.rtx_def** %rtx57, i32 %72, i32 %73, i32 %74, i32 0)
  br label %if.end.79

if.else:                                          ; preds = %for.body
  %75 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %75 to i64
  %76 = load i8*, i8** %fmt, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %76, i64 %idxprom58
  %77 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %77 to i32
  %cmp61 = icmp eq i32 %conv60, 69
  br i1 %cmp61, label %if.then.63, label %if.end.78

if.then.63:                                       ; preds = %if.else
  %78 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %78 to i64
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 %idxprom64
  %rtvec = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtvec_def**
  %80 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %80, i32 0, i32 0
  %81 = load i32, i32* %num_elem, align 4
  %sub67 = sub nsw i32 %81, 1
  store i32 %sub67, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc, %if.then.63
  %82 = load i32, i32* %j, align 4
  %cmp69 = icmp sge i32 %82, 0
  br i1 %cmp69, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.68
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %84 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %84 to i64
  %85 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %85 to i64
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 %idxprom73
  %rtvec76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtvec_def**
  %87 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec76, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %87, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom72
  %88 = load i32, i32* %class.addr, align 4
  %89 = load i32, i32* %action.addr, align 4
  %90 = load i32, i32* %type.addr, align 4
  call void @scan_rtx(%struct.rtx_def* %83, %struct.rtx_def** %arrayidx77, i32 %88, i32 %89, i32 %90, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body.71
  %91 = load i32, i32* %j, align 4
  %dec = add nsw i32 %91, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.68

for.end:                                          ; preds = %for.cond.68
  br label %if.end.78

if.end.78:                                        ; preds = %for.end, %if.else
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.53
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %92 = load i32, i32* %i, align 4
  %dec81 = add nsw i32 %92, -1
  store i32 %dec81, i32* %i, align 4
  br label %for.cond

for.end.82:                                       ; preds = %sw.bb, %sw.bb.3, %sw.bb.4, %sw.bb.7, %sw.bb.14, %sw.bb.18, %sw.bb.29, %if.end, %for.cond
  ret void
}

declare i32 @asm_noperands(%struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define internal void @scan_rtx_address(%struct.rtx_def* %insn, %struct.rtx_def** %loc, i32 %class, i32 %action, i32 %mode) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %class.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %orig_op0 = alloca %struct.rtx_def*, align 8
  %orig_op1 = alloca %struct.rtx_def*, align 8
  %code0 = alloca i32, align 4
  %code1 = alloca i32, align 4
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  %locI = alloca %struct.rtx_def**, align 8
  %locB = alloca %struct.rtx_def**, align 8
  %index_op = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load i32, i32* %action.addr, align 4
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.545

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %code, align 4
  switch i32 %5, label %sw.default [
    i32 75, label %sw.bb
    i32 99, label %sw.bb.495
    i32 98, label %sw.bb.495
    i32 101, label %sw.bb.495
    i32 97, label %sw.bb.495
    i32 96, label %sw.bb.495
    i32 100, label %sw.bb.495
    i32 66, label %sw.bb.496
    i32 61, label %sw.bb.502
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %orig_op0, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %orig_op1, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %orig_op0, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load4 = load i32, i32* %11, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  store i32 %bf.clear5, i32* %code0, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %orig_op1, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load6 = load i32, i32* %13, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  store i32 %bf.clear7, i32* %code1, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %orig_op0, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %op0, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %orig_op1, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %op1, align 8
  store %struct.rtx_def** null, %struct.rtx_def*** %locI, align 8
  store %struct.rtx_def** null, %struct.rtx_def*** %locB, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load8 = load i32, i32* %17, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 63
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %sw.bb
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %op0, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load15 = load i32, i32* %21, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  store i32 %bf.clear16, i32* %code0, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.11, %sw.bb
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load18 = load i32, i32* %23, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 63
  br i1 %cmp20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.17
  %24 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %op1, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load25 = load i32, i32* %27, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  store i32 %bf.clear26, i32* %code1, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.21, %if.end.17
  %28 = load i32, i32* %code0, align 4
  %cmp28 = icmp eq i32 %28, 78
  br i1 %cmp28, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %29 = load i32, i32* %code0, align 4
  %cmp29 = icmp eq i32 %29, 120
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %30 = load i32, i32* %code0, align 4
  %cmp31 = icmp eq i32 %30, 122
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.30
  %31 = load i32, i32* %code0, align 4
  %cmp33 = icmp eq i32 %31, 121
  br i1 %cmp33, label %if.then.36, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.32
  %32 = load i32, i32* %code1, align 4
  %cmp35 = icmp eq i32 %32, 66
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %lor.lhs.false.34, %lor.lhs.false.32, %lor.lhs.false.30, %lor.lhs.false, %if.end.27
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  store %struct.rtx_def** %rtx39, %struct.rtx_def*** %locI, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  store %struct.rtx_def** %rtx42, %struct.rtx_def*** %locB, align 8
  br label %if.end.488

if.else:                                          ; preds = %lor.lhs.false.34
  %35 = load i32, i32* %code1, align 4
  %cmp43 = icmp eq i32 %35, 78
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.else
  %36 = load i32, i32* %code1, align 4
  %cmp45 = icmp eq i32 %36, 120
  br i1 %cmp45, label %if.then.52, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.44
  %37 = load i32, i32* %code1, align 4
  %cmp47 = icmp eq i32 %37, 122
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.46
  %38 = load i32, i32* %code1, align 4
  %cmp49 = icmp eq i32 %38, 121
  br i1 %cmp49, label %if.then.52, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.48
  %39 = load i32, i32* %code0, align 4
  %cmp51 = icmp eq i32 %39, 66
  br i1 %cmp51, label %if.then.52, label %if.else.59

if.then.52:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.48, %lor.lhs.false.46, %lor.lhs.false.44, %if.else
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  store %struct.rtx_def** %rtx55, %struct.rtx_def*** %locI, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  store %struct.rtx_def** %rtx58, %struct.rtx_def*** %locB, align 8
  br label %if.end.487

if.else.59:                                       ; preds = %lor.lhs.false.50
  %42 = load i32, i32* %code0, align 4
  %cmp60 = icmp eq i32 %42, 54
  br i1 %cmp60, label %if.then.67, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.else.59
  %43 = load i32, i32* %code0, align 4
  %cmp62 = icmp eq i32 %43, 58
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.61
  %44 = load i32, i32* %code0, align 4
  %cmp64 = icmp eq i32 %44, 68
  br i1 %cmp64, label %if.then.67, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.63
  %45 = load i32, i32* %code0, align 4
  %cmp66 = icmp eq i32 %45, 67
  br i1 %cmp66, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.63, %lor.lhs.false.61, %if.else.59
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 1
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  store %struct.rtx_def** %rtx70, %struct.rtx_def*** %locB, align 8
  br label %if.end.486

if.else.71:                                       ; preds = %lor.lhs.false.65
  %47 = load i32, i32* %code1, align 4
  %cmp72 = icmp eq i32 %47, 54
  br i1 %cmp72, label %if.then.79, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.else.71
  %48 = load i32, i32* %code1, align 4
  %cmp74 = icmp eq i32 %48, 58
  br i1 %cmp74, label %if.then.79, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.73
  %49 = load i32, i32* %code1, align 4
  %cmp76 = icmp eq i32 %49, 68
  br i1 %cmp76, label %if.then.79, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.75
  %50 = load i32, i32* %code1, align 4
  %cmp78 = icmp eq i32 %50, 67
  br i1 %cmp78, label %if.then.79, label %if.else.83

if.then.79:                                       ; preds = %lor.lhs.false.77, %lor.lhs.false.75, %lor.lhs.false.73, %if.else.71
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  store %struct.rtx_def** %rtx82, %struct.rtx_def*** %locB, align 8
  br label %if.end.485

if.else.83:                                       ; preds = %lor.lhs.false.77
  %52 = load i32, i32* %code0, align 4
  %cmp84 = icmp eq i32 %52, 61
  br i1 %cmp84, label %land.lhs.true, label %if.else.462

land.lhs.true:                                    ; preds = %if.else.83
  %53 = load i32, i32* %code1, align 4
  %cmp85 = icmp eq i32 %53, 61
  br i1 %cmp85, label %if.then.86, label %if.else.462

if.then.86:                                       ; preds = %land.lhs.true
  %54 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx88 to i32*
  %55 = load i32, i32* %rtuint, align 4
  %cmp89 = icmp ult i32 %55, 7
  br i1 %cmp89, label %land.lhs.true.125, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %if.then.86
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtuint93 = bitcast %union.rtunion_def* %arrayidx92 to i32*
  %57 = load i32, i32* %rtuint93, align 4
  %cmp94 = icmp uge i32 %57, 37
  br i1 %cmp94, label %land.lhs.true.95, label %lor.lhs.false.100

land.lhs.true.95:                                 ; preds = %lor.lhs.false.90
  %58 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtuint98 = bitcast %union.rtunion_def* %arrayidx97 to i32*
  %59 = load i32, i32* %rtuint98, align 4
  %cmp99 = icmp ule i32 %59, 44
  br i1 %cmp99, label %land.lhs.true.125, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %land.lhs.true.95, %lor.lhs.false.90
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtuint103 = bitcast %union.rtunion_def* %arrayidx102 to i32*
  %61 = load i32, i32* %rtuint103, align 4
  %idxprom = zext i32 %61 to i64
  %62 = load i16*, i16** @reg_renumber, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %62, i64 %idxprom
  %63 = load i16, i16* %arrayidx104, align 2
  %conv = sext i16 %63 to i32
  %cmp105 = icmp uge i32 %conv, 37
  br i1 %cmp105, label %land.lhs.true.107, label %lor.lhs.false.116

land.lhs.true.107:                                ; preds = %lor.lhs.false.100
  %64 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtuint110 = bitcast %union.rtunion_def* %arrayidx109 to i32*
  %65 = load i32, i32* %rtuint110, align 4
  %idxprom111 = zext i32 %65 to i64
  %66 = load i16*, i16** @reg_renumber, align 8
  %arrayidx112 = getelementptr inbounds i16, i16* %66, i64 %idxprom111
  %67 = load i16, i16* %arrayidx112, align 2
  %conv113 = sext i16 %67 to i32
  %cmp114 = icmp ule i32 %conv113, 44
  br i1 %cmp114, label %land.lhs.true.125, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.107, %lor.lhs.false.100
  %68 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtuint119 = bitcast %union.rtunion_def* %arrayidx118 to i32*
  %69 = load i32, i32* %rtuint119, align 4
  %idxprom120 = zext i32 %69 to i64
  %70 = load i16*, i16** @reg_renumber, align 8
  %arrayidx121 = getelementptr inbounds i16, i16* %70, i64 %idxprom120
  %71 = load i16, i16* %arrayidx121, align 2
  %conv122 = sext i16 %71 to i32
  %cmp123 = icmp ult i32 %conv122, 7
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.183

land.lhs.true.125:                                ; preds = %lor.lhs.false.116, %land.lhs.true.107, %land.lhs.true.95, %if.then.86
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtuint128 = bitcast %union.rtunion_def* %arrayidx127 to i32*
  %73 = load i32, i32* %rtuint128, align 4
  %cmp129 = icmp ule i32 %73, 7
  br i1 %cmp129, label %if.then.182, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %land.lhs.true.125
  %74 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 0
  %rtuint134 = bitcast %union.rtunion_def* %arrayidx133 to i32*
  %75 = load i32, i32* %rtuint134, align 4
  %cmp135 = icmp eq i32 %75, 16
  br i1 %cmp135, label %if.then.182, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.131
  %76 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 0
  %rtuint140 = bitcast %union.rtunion_def* %arrayidx139 to i32*
  %77 = load i32, i32* %rtuint140, align 4
  %cmp141 = icmp eq i32 %77, 20
  br i1 %cmp141, label %if.then.182, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.137
  %78 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 0
  %rtuint146 = bitcast %union.rtunion_def* %arrayidx145 to i32*
  %79 = load i32, i32* %rtuint146, align 4
  %cmp147 = icmp uge i32 %79, 37
  br i1 %cmp147, label %land.lhs.true.149, label %lor.lhs.false.155

land.lhs.true.149:                                ; preds = %lor.lhs.false.143
  %80 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 0
  %rtuint152 = bitcast %union.rtunion_def* %arrayidx151 to i32*
  %81 = load i32, i32* %rtuint152, align 4
  %cmp153 = icmp ule i32 %81, 44
  br i1 %cmp153, label %if.then.182, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %land.lhs.true.149, %lor.lhs.false.143
  %82 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 0
  %rtuint158 = bitcast %union.rtunion_def* %arrayidx157 to i32*
  %83 = load i32, i32* %rtuint158, align 4
  %idxprom159 = zext i32 %83 to i64
  %84 = load i16*, i16** @reg_renumber, align 8
  %arrayidx160 = getelementptr inbounds i16, i16* %84, i64 %idxprom159
  %85 = load i16, i16* %arrayidx160, align 2
  %conv161 = sext i16 %85 to i32
  %cmp162 = icmp uge i32 %conv161, 37
  br i1 %cmp162, label %land.lhs.true.164, label %lor.lhs.false.173

land.lhs.true.164:                                ; preds = %lor.lhs.false.155
  %86 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld165, i32 0, i64 0
  %rtuint167 = bitcast %union.rtunion_def* %arrayidx166 to i32*
  %87 = load i32, i32* %rtuint167, align 4
  %idxprom168 = zext i32 %87 to i64
  %88 = load i16*, i16** @reg_renumber, align 8
  %arrayidx169 = getelementptr inbounds i16, i16* %88, i64 %idxprom168
  %89 = load i16, i16* %arrayidx169, align 2
  %conv170 = sext i16 %89 to i32
  %cmp171 = icmp ule i32 %conv170, 44
  br i1 %cmp171, label %if.then.182, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %land.lhs.true.164, %lor.lhs.false.155
  %90 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 0
  %rtuint176 = bitcast %union.rtunion_def* %arrayidx175 to i32*
  %91 = load i32, i32* %rtuint176, align 4
  %idxprom177 = zext i32 %91 to i64
  %92 = load i16*, i16** @reg_renumber, align 8
  %arrayidx178 = getelementptr inbounds i16, i16* %92, i64 %idxprom177
  %93 = load i16, i16* %arrayidx178, align 2
  %conv179 = sext i16 %93 to i32
  %cmp180 = icmp ule i32 %conv179, 7
  br i1 %cmp180, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %lor.lhs.false.173, %land.lhs.true.164, %land.lhs.true.149, %lor.lhs.false.137, %lor.lhs.false.131, %land.lhs.true.125
  store i32 0, i32* %index_op, align 4
  br label %if.end.453

if.else.183:                                      ; preds = %lor.lhs.false.173, %lor.lhs.false.116
  %94 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld184, i32 0, i64 0
  %rtuint186 = bitcast %union.rtunion_def* %arrayidx185 to i32*
  %95 = load i32, i32* %rtuint186, align 4
  %cmp187 = icmp ult i32 %95, 7
  br i1 %cmp187, label %land.lhs.true.228, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %if.else.183
  %96 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 0
  %rtuint192 = bitcast %union.rtunion_def* %arrayidx191 to i32*
  %97 = load i32, i32* %rtuint192, align 4
  %cmp193 = icmp uge i32 %97, 37
  br i1 %cmp193, label %land.lhs.true.195, label %lor.lhs.false.201

land.lhs.true.195:                                ; preds = %lor.lhs.false.189
  %98 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 0
  %rtuint198 = bitcast %union.rtunion_def* %arrayidx197 to i32*
  %99 = load i32, i32* %rtuint198, align 4
  %cmp199 = icmp ule i32 %99, 44
  br i1 %cmp199, label %land.lhs.true.228, label %lor.lhs.false.201

lor.lhs.false.201:                                ; preds = %land.lhs.true.195, %lor.lhs.false.189
  %100 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 0
  %rtuint204 = bitcast %union.rtunion_def* %arrayidx203 to i32*
  %101 = load i32, i32* %rtuint204, align 4
  %idxprom205 = zext i32 %101 to i64
  %102 = load i16*, i16** @reg_renumber, align 8
  %arrayidx206 = getelementptr inbounds i16, i16* %102, i64 %idxprom205
  %103 = load i16, i16* %arrayidx206, align 2
  %conv207 = sext i16 %103 to i32
  %cmp208 = icmp uge i32 %conv207, 37
  br i1 %cmp208, label %land.lhs.true.210, label %lor.lhs.false.219

land.lhs.true.210:                                ; preds = %lor.lhs.false.201
  %104 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld211, i32 0, i64 0
  %rtuint213 = bitcast %union.rtunion_def* %arrayidx212 to i32*
  %105 = load i32, i32* %rtuint213, align 4
  %idxprom214 = zext i32 %105 to i64
  %106 = load i16*, i16** @reg_renumber, align 8
  %arrayidx215 = getelementptr inbounds i16, i16* %106, i64 %idxprom214
  %107 = load i16, i16* %arrayidx215, align 2
  %conv216 = sext i16 %107 to i32
  %cmp217 = icmp ule i32 %conv216, 44
  br i1 %cmp217, label %land.lhs.true.228, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %land.lhs.true.210, %lor.lhs.false.201
  %108 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld220, i32 0, i64 0
  %rtuint222 = bitcast %union.rtunion_def* %arrayidx221 to i32*
  %109 = load i32, i32* %rtuint222, align 4
  %idxprom223 = zext i32 %109 to i64
  %110 = load i16*, i16** @reg_renumber, align 8
  %arrayidx224 = getelementptr inbounds i16, i16* %110, i64 %idxprom223
  %111 = load i16, i16* %arrayidx224, align 2
  %conv225 = sext i16 %111 to i32
  %cmp226 = icmp ult i32 %conv225, 7
  br i1 %cmp226, label %land.lhs.true.228, label %if.else.286

land.lhs.true.228:                                ; preds = %lor.lhs.false.219, %land.lhs.true.210, %land.lhs.true.195, %if.else.183
  %112 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 0
  %rtuint231 = bitcast %union.rtunion_def* %arrayidx230 to i32*
  %113 = load i32, i32* %rtuint231, align 4
  %cmp232 = icmp ule i32 %113, 7
  br i1 %cmp232, label %if.then.285, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %land.lhs.true.228
  %114 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld235 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld235, i32 0, i64 0
  %rtuint237 = bitcast %union.rtunion_def* %arrayidx236 to i32*
  %115 = load i32, i32* %rtuint237, align 4
  %cmp238 = icmp eq i32 %115, 16
  br i1 %cmp238, label %if.then.285, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %lor.lhs.false.234
  %116 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld241, i32 0, i64 0
  %rtuint243 = bitcast %union.rtunion_def* %arrayidx242 to i32*
  %117 = load i32, i32* %rtuint243, align 4
  %cmp244 = icmp eq i32 %117, 20
  br i1 %cmp244, label %if.then.285, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %lor.lhs.false.240
  %118 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 0
  %rtuint249 = bitcast %union.rtunion_def* %arrayidx248 to i32*
  %119 = load i32, i32* %rtuint249, align 4
  %cmp250 = icmp uge i32 %119, 37
  br i1 %cmp250, label %land.lhs.true.252, label %lor.lhs.false.258

land.lhs.true.252:                                ; preds = %lor.lhs.false.246
  %120 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 0
  %rtuint255 = bitcast %union.rtunion_def* %arrayidx254 to i32*
  %121 = load i32, i32* %rtuint255, align 4
  %cmp256 = icmp ule i32 %121, 44
  br i1 %cmp256, label %if.then.285, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %land.lhs.true.252, %lor.lhs.false.246
  %122 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld259 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld259, i32 0, i64 0
  %rtuint261 = bitcast %union.rtunion_def* %arrayidx260 to i32*
  %123 = load i32, i32* %rtuint261, align 4
  %idxprom262 = zext i32 %123 to i64
  %124 = load i16*, i16** @reg_renumber, align 8
  %arrayidx263 = getelementptr inbounds i16, i16* %124, i64 %idxprom262
  %125 = load i16, i16* %arrayidx263, align 2
  %conv264 = sext i16 %125 to i32
  %cmp265 = icmp uge i32 %conv264, 37
  br i1 %cmp265, label %land.lhs.true.267, label %lor.lhs.false.276

land.lhs.true.267:                                ; preds = %lor.lhs.false.258
  %126 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld268 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld268, i32 0, i64 0
  %rtuint270 = bitcast %union.rtunion_def* %arrayidx269 to i32*
  %127 = load i32, i32* %rtuint270, align 4
  %idxprom271 = zext i32 %127 to i64
  %128 = load i16*, i16** @reg_renumber, align 8
  %arrayidx272 = getelementptr inbounds i16, i16* %128, i64 %idxprom271
  %129 = load i16, i16* %arrayidx272, align 2
  %conv273 = sext i16 %129 to i32
  %cmp274 = icmp ule i32 %conv273, 44
  br i1 %cmp274, label %if.then.285, label %lor.lhs.false.276

lor.lhs.false.276:                                ; preds = %land.lhs.true.267, %lor.lhs.false.258
  %130 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 0
  %rtuint279 = bitcast %union.rtunion_def* %arrayidx278 to i32*
  %131 = load i32, i32* %rtuint279, align 4
  %idxprom280 = zext i32 %131 to i64
  %132 = load i16*, i16** @reg_renumber, align 8
  %arrayidx281 = getelementptr inbounds i16, i16* %132, i64 %idxprom280
  %133 = load i16, i16* %arrayidx281, align 2
  %conv282 = sext i16 %133 to i32
  %cmp283 = icmp ule i32 %conv282, 7
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %lor.lhs.false.276, %land.lhs.true.267, %land.lhs.true.252, %lor.lhs.false.240, %lor.lhs.false.234, %land.lhs.true.228
  store i32 1, i32* %index_op, align 4
  br label %if.end.452

if.else.286:                                      ; preds = %lor.lhs.false.276, %lor.lhs.false.219
  %134 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld287, i32 0, i64 0
  %rtuint289 = bitcast %union.rtunion_def* %arrayidx288 to i32*
  %135 = load i32, i32* %rtuint289, align 4
  %cmp290 = icmp ule i32 %135, 7
  br i1 %cmp290, label %if.then.343, label %lor.lhs.false.292

lor.lhs.false.292:                                ; preds = %if.else.286
  %136 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 0
  %rtuint295 = bitcast %union.rtunion_def* %arrayidx294 to i32*
  %137 = load i32, i32* %rtuint295, align 4
  %cmp296 = icmp eq i32 %137, 16
  br i1 %cmp296, label %if.then.343, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %lor.lhs.false.292
  %138 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld299, i32 0, i64 0
  %rtuint301 = bitcast %union.rtunion_def* %arrayidx300 to i32*
  %139 = load i32, i32* %rtuint301, align 4
  %cmp302 = icmp eq i32 %139, 20
  br i1 %cmp302, label %if.then.343, label %lor.lhs.false.304

lor.lhs.false.304:                                ; preds = %lor.lhs.false.298
  %140 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld305 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx306 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld305, i32 0, i64 0
  %rtuint307 = bitcast %union.rtunion_def* %arrayidx306 to i32*
  %141 = load i32, i32* %rtuint307, align 4
  %cmp308 = icmp uge i32 %141, 37
  br i1 %cmp308, label %land.lhs.true.310, label %lor.lhs.false.316

land.lhs.true.310:                                ; preds = %lor.lhs.false.304
  %142 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld311 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx312 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld311, i32 0, i64 0
  %rtuint313 = bitcast %union.rtunion_def* %arrayidx312 to i32*
  %143 = load i32, i32* %rtuint313, align 4
  %cmp314 = icmp ule i32 %143, 44
  br i1 %cmp314, label %if.then.343, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %land.lhs.true.310, %lor.lhs.false.304
  %144 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 0
  %rtuint319 = bitcast %union.rtunion_def* %arrayidx318 to i32*
  %145 = load i32, i32* %rtuint319, align 4
  %idxprom320 = zext i32 %145 to i64
  %146 = load i16*, i16** @reg_renumber, align 8
  %arrayidx321 = getelementptr inbounds i16, i16* %146, i64 %idxprom320
  %147 = load i16, i16* %arrayidx321, align 2
  %conv322 = sext i16 %147 to i32
  %cmp323 = icmp uge i32 %conv322, 37
  br i1 %cmp323, label %land.lhs.true.325, label %lor.lhs.false.334

land.lhs.true.325:                                ; preds = %lor.lhs.false.316
  %148 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 0
  %rtuint328 = bitcast %union.rtunion_def* %arrayidx327 to i32*
  %149 = load i32, i32* %rtuint328, align 4
  %idxprom329 = zext i32 %149 to i64
  %150 = load i16*, i16** @reg_renumber, align 8
  %arrayidx330 = getelementptr inbounds i16, i16* %150, i64 %idxprom329
  %151 = load i16, i16* %arrayidx330, align 2
  %conv331 = sext i16 %151 to i32
  %cmp332 = icmp ule i32 %conv331, 44
  br i1 %cmp332, label %if.then.343, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %land.lhs.true.325, %lor.lhs.false.316
  %152 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld335 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %arrayidx336 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld335, i32 0, i64 0
  %rtuint337 = bitcast %union.rtunion_def* %arrayidx336 to i32*
  %153 = load i32, i32* %rtuint337, align 4
  %idxprom338 = zext i32 %153 to i64
  %154 = load i16*, i16** @reg_renumber, align 8
  %arrayidx339 = getelementptr inbounds i16, i16* %154, i64 %idxprom338
  %155 = load i16, i16* %arrayidx339, align 2
  %conv340 = sext i16 %155 to i32
  %cmp341 = icmp ule i32 %conv340, 7
  br i1 %cmp341, label %if.then.343, label %if.else.344

if.then.343:                                      ; preds = %lor.lhs.false.334, %land.lhs.true.325, %land.lhs.true.310, %lor.lhs.false.298, %lor.lhs.false.292, %if.else.286
  store i32 0, i32* %index_op, align 4
  br label %if.end.451

if.else.344:                                      ; preds = %lor.lhs.false.334
  %156 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld345 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx346 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld345, i32 0, i64 0
  %rtuint347 = bitcast %union.rtunion_def* %arrayidx346 to i32*
  %157 = load i32, i32* %rtuint347, align 4
  %cmp348 = icmp ule i32 %157, 7
  br i1 %cmp348, label %if.then.401, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %if.else.344
  %158 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld351 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx352 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld351, i32 0, i64 0
  %rtuint353 = bitcast %union.rtunion_def* %arrayidx352 to i32*
  %159 = load i32, i32* %rtuint353, align 4
  %cmp354 = icmp eq i32 %159, 16
  br i1 %cmp354, label %if.then.401, label %lor.lhs.false.356

lor.lhs.false.356:                                ; preds = %lor.lhs.false.350
  %160 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld357 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx358 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld357, i32 0, i64 0
  %rtuint359 = bitcast %union.rtunion_def* %arrayidx358 to i32*
  %161 = load i32, i32* %rtuint359, align 4
  %cmp360 = icmp eq i32 %161, 20
  br i1 %cmp360, label %if.then.401, label %lor.lhs.false.362

lor.lhs.false.362:                                ; preds = %lor.lhs.false.356
  %162 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld363 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx364 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld363, i32 0, i64 0
  %rtuint365 = bitcast %union.rtunion_def* %arrayidx364 to i32*
  %163 = load i32, i32* %rtuint365, align 4
  %cmp366 = icmp uge i32 %163, 37
  br i1 %cmp366, label %land.lhs.true.368, label %lor.lhs.false.374

land.lhs.true.368:                                ; preds = %lor.lhs.false.362
  %164 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld369, i32 0, i64 0
  %rtuint371 = bitcast %union.rtunion_def* %arrayidx370 to i32*
  %165 = load i32, i32* %rtuint371, align 4
  %cmp372 = icmp ule i32 %165, 44
  br i1 %cmp372, label %if.then.401, label %lor.lhs.false.374

lor.lhs.false.374:                                ; preds = %land.lhs.true.368, %lor.lhs.false.362
  %166 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld375 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %arrayidx376 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld375, i32 0, i64 0
  %rtuint377 = bitcast %union.rtunion_def* %arrayidx376 to i32*
  %167 = load i32, i32* %rtuint377, align 4
  %idxprom378 = zext i32 %167 to i64
  %168 = load i16*, i16** @reg_renumber, align 8
  %arrayidx379 = getelementptr inbounds i16, i16* %168, i64 %idxprom378
  %169 = load i16, i16* %arrayidx379, align 2
  %conv380 = sext i16 %169 to i32
  %cmp381 = icmp uge i32 %conv380, 37
  br i1 %cmp381, label %land.lhs.true.383, label %lor.lhs.false.392

land.lhs.true.383:                                ; preds = %lor.lhs.false.374
  %170 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld384 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx385 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld384, i32 0, i64 0
  %rtuint386 = bitcast %union.rtunion_def* %arrayidx385 to i32*
  %171 = load i32, i32* %rtuint386, align 4
  %idxprom387 = zext i32 %171 to i64
  %172 = load i16*, i16** @reg_renumber, align 8
  %arrayidx388 = getelementptr inbounds i16, i16* %172, i64 %idxprom387
  %173 = load i16, i16* %arrayidx388, align 2
  %conv389 = sext i16 %173 to i32
  %cmp390 = icmp ule i32 %conv389, 44
  br i1 %cmp390, label %if.then.401, label %lor.lhs.false.392

lor.lhs.false.392:                                ; preds = %land.lhs.true.383, %lor.lhs.false.374
  %174 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld393 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx394 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld393, i32 0, i64 0
  %rtuint395 = bitcast %union.rtunion_def* %arrayidx394 to i32*
  %175 = load i32, i32* %rtuint395, align 4
  %idxprom396 = zext i32 %175 to i64
  %176 = load i16*, i16** @reg_renumber, align 8
  %arrayidx397 = getelementptr inbounds i16, i16* %176, i64 %idxprom396
  %177 = load i16, i16* %arrayidx397, align 2
  %conv398 = sext i16 %177 to i32
  %cmp399 = icmp ule i32 %conv398, 7
  br i1 %cmp399, label %if.then.401, label %if.else.402

if.then.401:                                      ; preds = %lor.lhs.false.392, %land.lhs.true.383, %land.lhs.true.368, %lor.lhs.false.356, %lor.lhs.false.350, %if.else.344
  store i32 1, i32* %index_op, align 4
  br label %if.end.450

if.else.402:                                      ; preds = %lor.lhs.false.392
  %178 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld403 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx404 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld403, i32 0, i64 0
  %rtuint405 = bitcast %union.rtunion_def* %arrayidx404 to i32*
  %179 = load i32, i32* %rtuint405, align 4
  %cmp406 = icmp ult i32 %179, 7
  br i1 %cmp406, label %if.then.447, label %lor.lhs.false.408

lor.lhs.false.408:                                ; preds = %if.else.402
  %180 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld409 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %180, i32 0, i32 1
  %arrayidx410 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld409, i32 0, i64 0
  %rtuint411 = bitcast %union.rtunion_def* %arrayidx410 to i32*
  %181 = load i32, i32* %rtuint411, align 4
  %cmp412 = icmp uge i32 %181, 37
  br i1 %cmp412, label %land.lhs.true.414, label %lor.lhs.false.420

land.lhs.true.414:                                ; preds = %lor.lhs.false.408
  %182 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld415 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx416 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld415, i32 0, i64 0
  %rtuint417 = bitcast %union.rtunion_def* %arrayidx416 to i32*
  %183 = load i32, i32* %rtuint417, align 4
  %cmp418 = icmp ule i32 %183, 44
  br i1 %cmp418, label %if.then.447, label %lor.lhs.false.420

lor.lhs.false.420:                                ; preds = %land.lhs.true.414, %lor.lhs.false.408
  %184 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld421 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx422 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld421, i32 0, i64 0
  %rtuint423 = bitcast %union.rtunion_def* %arrayidx422 to i32*
  %185 = load i32, i32* %rtuint423, align 4
  %idxprom424 = zext i32 %185 to i64
  %186 = load i16*, i16** @reg_renumber, align 8
  %arrayidx425 = getelementptr inbounds i16, i16* %186, i64 %idxprom424
  %187 = load i16, i16* %arrayidx425, align 2
  %conv426 = sext i16 %187 to i32
  %cmp427 = icmp uge i32 %conv426, 37
  br i1 %cmp427, label %land.lhs.true.429, label %lor.lhs.false.438

land.lhs.true.429:                                ; preds = %lor.lhs.false.420
  %188 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld430 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx431 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld430, i32 0, i64 0
  %rtuint432 = bitcast %union.rtunion_def* %arrayidx431 to i32*
  %189 = load i32, i32* %rtuint432, align 4
  %idxprom433 = zext i32 %189 to i64
  %190 = load i16*, i16** @reg_renumber, align 8
  %arrayidx434 = getelementptr inbounds i16, i16* %190, i64 %idxprom433
  %191 = load i16, i16* %arrayidx434, align 2
  %conv435 = sext i16 %191 to i32
  %cmp436 = icmp ule i32 %conv435, 44
  br i1 %cmp436, label %if.then.447, label %lor.lhs.false.438

lor.lhs.false.438:                                ; preds = %land.lhs.true.429, %lor.lhs.false.420
  %192 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld439 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx440 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld439, i32 0, i64 0
  %rtuint441 = bitcast %union.rtunion_def* %arrayidx440 to i32*
  %193 = load i32, i32* %rtuint441, align 4
  %idxprom442 = zext i32 %193 to i64
  %194 = load i16*, i16** @reg_renumber, align 8
  %arrayidx443 = getelementptr inbounds i16, i16* %194, i64 %idxprom442
  %195 = load i16, i16* %arrayidx443, align 2
  %conv444 = sext i16 %195 to i32
  %cmp445 = icmp ult i32 %conv444, 7
  br i1 %cmp445, label %if.then.447, label %if.else.448

if.then.447:                                      ; preds = %lor.lhs.false.438, %land.lhs.true.429, %land.lhs.true.414, %if.else.402
  store i32 1, i32* %index_op, align 4
  br label %if.end.449

if.else.448:                                      ; preds = %lor.lhs.false.438
  store i32 0, i32* %index_op, align 4
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.448, %if.then.447
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %if.then.401
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.then.343
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %if.then.285
  br label %if.end.453

if.end.453:                                       ; preds = %if.end.452, %if.then.182
  %196 = load i32, i32* %index_op, align 4
  %idxprom454 = sext i32 %196 to i64
  %197 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx456 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld455, i32 0, i64 %idxprom454
  %rtx457 = bitcast %union.rtunion_def* %arrayidx456 to %struct.rtx_def**
  store %struct.rtx_def** %rtx457, %struct.rtx_def*** %locI, align 8
  %198 = load i32, i32* %index_op, align 4
  %tobool = icmp ne i32 %198, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom458 = sext i32 %lnot.ext to i64
  %199 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld459 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx460 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld459, i32 0, i64 %idxprom458
  %rtx461 = bitcast %union.rtunion_def* %arrayidx460 to %struct.rtx_def**
  store %struct.rtx_def** %rtx461, %struct.rtx_def*** %locB, align 8
  br label %if.end.484

if.else.462:                                      ; preds = %land.lhs.true, %if.else.83
  %200 = load i32, i32* %code0, align 4
  %cmp463 = icmp eq i32 %200, 61
  br i1 %cmp463, label %if.then.465, label %if.else.472

if.then.465:                                      ; preds = %if.else.462
  %201 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld466, i32 0, i64 0
  %rtx468 = bitcast %union.rtunion_def* %arrayidx467 to %struct.rtx_def**
  store %struct.rtx_def** %rtx468, %struct.rtx_def*** %locI, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld469 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx470 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld469, i32 0, i64 1
  %rtx471 = bitcast %union.rtunion_def* %arrayidx470 to %struct.rtx_def**
  store %struct.rtx_def** %rtx471, %struct.rtx_def*** %locB, align 8
  br label %if.end.483

if.else.472:                                      ; preds = %if.else.462
  %203 = load i32, i32* %code1, align 4
  %cmp473 = icmp eq i32 %203, 61
  br i1 %cmp473, label %if.then.475, label %if.end.482

if.then.475:                                      ; preds = %if.else.472
  %204 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld476 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx477 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld476, i32 0, i64 1
  %rtx478 = bitcast %union.rtunion_def* %arrayidx477 to %struct.rtx_def**
  store %struct.rtx_def** %rtx478, %struct.rtx_def*** %locI, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld479 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %205, i32 0, i32 1
  %arrayidx480 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld479, i32 0, i64 0
  %rtx481 = bitcast %union.rtunion_def* %arrayidx480 to %struct.rtx_def**
  store %struct.rtx_def** %rtx481, %struct.rtx_def*** %locB, align 8
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.475, %if.else.472
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.482, %if.then.465
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.end.453
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.then.79
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.then.67
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %if.then.52
  br label %if.end.488

if.end.488:                                       ; preds = %if.end.487, %if.then.36
  %206 = load %struct.rtx_def**, %struct.rtx_def*** %locI, align 8
  %tobool489 = icmp ne %struct.rtx_def** %206, null
  br i1 %tobool489, label %if.then.490, label %if.end.491

if.then.490:                                      ; preds = %if.end.488
  %207 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %208 = load %struct.rtx_def**, %struct.rtx_def*** %locI, align 8
  %209 = load i32, i32* %action.addr, align 4
  %210 = load i32, i32* %mode.addr, align 4
  call void @scan_rtx_address(%struct.rtx_def* %207, %struct.rtx_def** %208, i32 10, i32 %209, i32 %210)
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.490, %if.end.488
  %211 = load %struct.rtx_def**, %struct.rtx_def*** %locB, align 8
  %tobool492 = icmp ne %struct.rtx_def** %211, null
  br i1 %tobool492, label %if.then.493, label %if.end.494

if.then.493:                                      ; preds = %if.end.491
  %212 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %213 = load %struct.rtx_def**, %struct.rtx_def*** %locB, align 8
  %214 = load i32, i32* %action.addr, align 4
  %215 = load i32, i32* %mode.addr, align 4
  call void @scan_rtx_address(%struct.rtx_def* %212, %struct.rtx_def** %213, i32 12, i32 %214, i32 %215)
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.493, %if.end.491
  br label %for.end.545

sw.bb.495:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 0, i32* %action.addr, align 4
  br label %sw.epilog

sw.bb.496:                                        ; preds = %if.end
  %216 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld497 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx498 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld497, i32 0, i64 0
  %rtx499 = bitcast %union.rtunion_def* %arrayidx498 to %struct.rtx_def**
  %218 = load i32, i32* %action.addr, align 4
  %219 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %220 = bitcast %struct.rtx_def* %219 to i32*
  %bf.load500 = load i32, i32* %220, align 8
  %bf.lshr = lshr i32 %bf.load500, 16
  %bf.clear501 = and i32 %bf.lshr, 255
  call void @scan_rtx_address(%struct.rtx_def* %216, %struct.rtx_def** %rtx499, i32 12, i32 %218, i32 %bf.clear501)
  br label %for.end.545

sw.bb.502:                                        ; preds = %if.end
  %221 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %222 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %223 = load i32, i32* %class.addr, align 4
  %224 = load i32, i32* %action.addr, align 4
  call void @scan_rtx_reg(%struct.rtx_def* %221, %struct.rtx_def** %222, i32 %223, i32 %224, i32 0, i32 0)
  br label %for.end.545

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.495
  %225 = load i32, i32* %code, align 4
  %idxprom503 = sext i32 %225 to i64
  %arrayidx504 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom503
  %226 = load i8*, i8** %arrayidx504, align 8
  store i8* %226, i8** %fmt, align 8
  %227 = load i32, i32* %code, align 4
  %idxprom505 = sext i32 %227 to i64
  %arrayidx506 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom505
  %228 = load i8, i8* %arrayidx506, align 1
  %conv507 = zext i8 %228 to i32
  %sub = sub nsw i32 %conv507, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.543, %sw.epilog
  %229 = load i32, i32* %i, align 4
  %cmp508 = icmp sge i32 %229, 0
  br i1 %cmp508, label %for.body, label %for.end.545

for.body:                                         ; preds = %for.cond
  %230 = load i32, i32* %i, align 4
  %idxprom510 = sext i32 %230 to i64
  %231 = load i8*, i8** %fmt, align 8
  %arrayidx511 = getelementptr inbounds i8, i8* %231, i64 %idxprom510
  %232 = load i8, i8* %arrayidx511, align 1
  %conv512 = sext i8 %232 to i32
  %cmp513 = icmp eq i32 %conv512, 101
  br i1 %cmp513, label %if.then.515, label %if.else.520

if.then.515:                                      ; preds = %for.body
  %233 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %234 = load i32, i32* %i, align 4
  %idxprom516 = sext i32 %234 to i64
  %235 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld517 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %235, i32 0, i32 1
  %arrayidx518 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld517, i32 0, i64 %idxprom516
  %rtx519 = bitcast %union.rtunion_def* %arrayidx518 to %struct.rtx_def**
  %236 = load i32, i32* %class.addr, align 4
  %237 = load i32, i32* %action.addr, align 4
  %238 = load i32, i32* %mode.addr, align 4
  call void @scan_rtx_address(%struct.rtx_def* %233, %struct.rtx_def** %rtx519, i32 %236, i32 %237, i32 %238)
  br label %if.end.542

if.else.520:                                      ; preds = %for.body
  %239 = load i32, i32* %i, align 4
  %idxprom521 = sext i32 %239 to i64
  %240 = load i8*, i8** %fmt, align 8
  %arrayidx522 = getelementptr inbounds i8, i8* %240, i64 %idxprom521
  %241 = load i8, i8* %arrayidx522, align 1
  %conv523 = sext i8 %241 to i32
  %cmp524 = icmp eq i32 %conv523, 69
  br i1 %cmp524, label %if.then.526, label %if.end.541

if.then.526:                                      ; preds = %if.else.520
  %242 = load i32, i32* %i, align 4
  %idxprom527 = sext i32 %242 to i64
  %243 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld528 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %arrayidx529 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld528, i32 0, i64 %idxprom527
  %rtvec = bitcast %union.rtunion_def* %arrayidx529 to %struct.rtvec_def**
  %244 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %244, i32 0, i32 0
  %245 = load i32, i32* %num_elem, align 4
  %sub530 = sub nsw i32 %245, 1
  store i32 %sub530, i32* %j, align 4
  br label %for.cond.531

for.cond.531:                                     ; preds = %for.inc, %if.then.526
  %246 = load i32, i32* %j, align 4
  %cmp532 = icmp sge i32 %246, 0
  br i1 %cmp532, label %for.body.534, label %for.end

for.body.534:                                     ; preds = %for.cond.531
  %247 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %248 = load i32, i32* %j, align 4
  %idxprom535 = sext i32 %248 to i64
  %249 = load i32, i32* %i, align 4
  %idxprom536 = sext i32 %249 to i64
  %250 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld537 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx538 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld537, i32 0, i64 %idxprom536
  %rtvec539 = bitcast %union.rtunion_def* %arrayidx538 to %struct.rtvec_def**
  %251 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec539, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %251, i32 0, i32 1
  %arrayidx540 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom535
  %252 = load i32, i32* %class.addr, align 4
  %253 = load i32, i32* %action.addr, align 4
  %254 = load i32, i32* %mode.addr, align 4
  call void @scan_rtx_address(%struct.rtx_def* %247, %struct.rtx_def** %arrayidx540, i32 %252, i32 %253, i32 %254)
  br label %for.inc

for.inc:                                          ; preds = %for.body.534
  %255 = load i32, i32* %j, align 4
  %dec = add nsw i32 %255, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.531

for.end:                                          ; preds = %for.cond.531
  br label %if.end.541

if.end.541:                                       ; preds = %for.end, %if.else.520
  br label %if.end.542

if.end.542:                                       ; preds = %if.end.541, %if.then.515
  br label %for.inc.543

for.inc.543:                                      ; preds = %if.end.542
  %256 = load i32, i32* %i, align 4
  %dec544 = add nsw i32 %256, -1
  store i32 %dec544, i32* %i, align 4
  br label %for.cond

for.end.545:                                      ; preds = %if.then, %if.end.494, %sw.bb.496, %sw.bb.502, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scan_rtx_reg(%struct.rtx_def* %insn, %struct.rtx_def** %loc, i32 %class, i32 %action, i32 %type, i32 %earlyclobber) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %class.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %earlyclobber.addr = alloca i32, align 4
  %p = alloca %struct.du_chain**, align 8
  %x = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %this_regno = alloca i32, align 4
  %this_nregs = alloca i32, align 4
  %this = alloca %struct.du_chain*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp87 = alloca i8*, align 8
  %this114 = alloca %struct.du_chain*, align 8
  %regno = alloca i32, align 4
  %nregs = alloca i32, align 4
  %exact_match = alloca i32, align 4
  %__h239 = alloca %struct.obstack*, align 8
  %__o241 = alloca %struct.obstack*, align 8
  %__len243 = alloca i32, align 4
  %tmp257 = alloca i8*, align 8
  %__o1259 = alloca %struct.obstack*, align 8
  %value261 = alloca i8*, align 8
  %tmp302 = alloca i8*, align 8
  %next = alloca %struct.du_chain*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  store i32 %earlyclobber, i32* %earlyclobber.addr, align 4
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  store i32 %5, i32* %this_regno, align 4
  %6 = load i32, i32* %this_regno, align 4
  %cmp = icmp sge i32 %6, 8
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %this_regno, align 4
  %cmp1 = icmp sle i32 %7, 15
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %this_regno, align 4
  %cmp2 = icmp sge i32 %8, 21
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false.5

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %9 = load i32, i32* %this_regno, align 4
  %cmp4 = icmp sle i32 %9, 28
  br i1 %cmp4, label %cond.true, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true.3, %lor.lhs.false
  %10 = load i32, i32* %this_regno, align 4
  %cmp6 = icmp sge i32 %10, 45
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5
  %11 = load i32, i32* %this_regno, align 4
  %cmp8 = icmp sle i32 %11, 52
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %lor.lhs.false.5
  %12 = load i32, i32* %this_regno, align 4
  %cmp10 = icmp sge i32 %12, 29
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %13 = load i32, i32* %this_regno, align 4
  %cmp12 = icmp sle i32 %13, 36
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  %14 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %15, 5
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %16 = load i32, i32* %mode, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom15
  %17 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %17, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %18 = phi i1 [ true, %cond.true ], [ %cmp17, %lor.rhs ]
  %cond = select i1 %18, i32 2, i32 1
  br label %cond.end.39

cond.false:                                       ; preds = %land.lhs.true.11, %lor.lhs.false.9
  %19 = load i32, i32* %mode, align 4
  %cmp18 = icmp eq i32 %19, 18
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.false
  %20 = load i32, i32* @target_flags, align 4
  %and = and i32 %20, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond20 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.37

cond.false.21:                                    ; preds = %cond.false
  %21 = load i32, i32* %mode, align 4
  %cmp22 = icmp eq i32 %21, 24
  br i1 %cmp22, label %cond.true.23, label %cond.false.27

cond.true.23:                                     ; preds = %cond.false.21
  %22 = load i32, i32* @target_flags, align 4
  %and24 = and i32 %22, 33554432
  %tobool25 = icmp ne i32 %and24, 0
  %cond26 = select i1 %tobool25, i32 4, i32 6
  br label %cond.end

cond.false.27:                                    ; preds = %cond.false.21
  %23 = load i32, i32* %mode, align 4
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom28
  %24 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %24 to i32
  %25 = load i32, i32* @target_flags, align 4
  %and30 = and i32 %25, 33554432
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 8, i32 4
  %add = add nsw i32 %conv, %cond32
  %sub = sub nsw i32 %add, 1
  %26 = load i32, i32* @target_flags, align 4
  %and33 = and i32 %26, 33554432
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
  store i32 %cond40, i32* %this_nregs, align 4
  %27 = load i32, i32* %action.addr, align 4
  %cmp41 = icmp eq i32 %27, 5
  br i1 %cmp41, label %if.then, label %if.end.98

if.then:                                          ; preds = %cond.end.39
  %28 = load i32, i32* %type.addr, align 4
  %cmp43 = icmp eq i32 %28, 1
  br i1 %cmp43, label %if.then.45, label %if.end.97

if.then.45:                                       ; preds = %if.then
  store %struct.obstack* @rename_obstack, %struct.obstack** %__h, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %29, %struct.obstack** %__o, align 8
  store i32 40, i32* %__len, align 4
  %30 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 4
  %31 = load i8*, i8** %chunk_limit, align 8
  %32 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 3
  %33 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %34 = load i32, i32* %__len, align 4
  %conv46 = sext i32 %34 to i64
  %cmp47 = icmp slt i64 %sub.ptr.sub, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end

if.then.49:                                       ; preds = %if.then.45
  %35 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %36 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %35, i32 %36)
  br label %if.end

if.end:                                           ; preds = %if.then.49, %if.then.45
  %37 = load i32, i32* %__len, align 4
  %38 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free50 = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 3
  %39 = load i8*, i8** %next_free50, align 8
  %idx.ext = sext i32 %37 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free50, align 8
  %40 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %40, %struct.obstack** %__o1, align 8
  %41 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %41, i32 0, i32 2
  %42 = load i8*, i8** %object_base, align 8
  store i8* %42, i8** %value, align 8
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free53 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3
  %44 = load i8*, i8** %next_free53, align 8
  %45 = load i8*, i8** %value, align 8
  %cmp54 = icmp eq i8* %44, %45
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end
  %46 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %46, i32 0, i32 10
  %bf.load57 = load i8, i8* %maybe_empty_object, align 8
  %bf.clear58 = and i8 %bf.load57, -3
  %bf.set = or i8 %bf.clear58, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end
  %47 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free60 = getelementptr inbounds %struct.obstack, %struct.obstack* %47, i32 0, i32 3
  %48 = load i8*, i8** %next_free60, align 8
  %sub.ptr.lhs.cast61 = ptrtoint i8* %48 to i64
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast61, 0
  %49 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %49, i32 0, i32 6
  %50 = load i32, i32* %alignment_mask, align 4
  %conv63 = sext i32 %50 to i64
  %add64 = add nsw i64 %sub.ptr.sub62, %conv63
  %51 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask65 = getelementptr inbounds %struct.obstack, %struct.obstack* %51, i32 0, i32 6
  %52 = load i32, i32* %alignment_mask65, align 4
  %neg = xor i32 %52, -1
  %conv66 = sext i32 %neg to i64
  %and67 = and i64 %add64, %conv66
  %add.ptr68 = getelementptr inbounds i8, i8* null, i64 %and67
  %53 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free69 = getelementptr inbounds %struct.obstack, %struct.obstack* %53, i32 0, i32 3
  store i8* %add.ptr68, i8** %next_free69, align 8
  %54 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free70 = getelementptr inbounds %struct.obstack, %struct.obstack* %54, i32 0, i32 3
  %55 = load i8*, i8** %next_free70, align 8
  %56 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %56, i32 0, i32 1
  %57 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %58 = bitcast %struct._obstack_chunk* %57 to i8*
  %sub.ptr.lhs.cast71 = ptrtoint i8* %55 to i64
  %sub.ptr.rhs.cast72 = ptrtoint i8* %58 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %59 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit74 = getelementptr inbounds %struct.obstack, %struct.obstack* %59, i32 0, i32 4
  %60 = load i8*, i8** %chunk_limit74, align 8
  %61 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk75 = getelementptr inbounds %struct.obstack, %struct.obstack* %61, i32 0, i32 1
  %62 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk75, align 8
  %63 = bitcast %struct._obstack_chunk* %62 to i8*
  %sub.ptr.lhs.cast76 = ptrtoint i8* %60 to i64
  %sub.ptr.rhs.cast77 = ptrtoint i8* %63 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %cmp79 = icmp sgt i64 %sub.ptr.sub73, %sub.ptr.sub78
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.59
  %64 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit82 = getelementptr inbounds %struct.obstack, %struct.obstack* %64, i32 0, i32 4
  %65 = load i8*, i8** %chunk_limit82, align 8
  %66 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free83 = getelementptr inbounds %struct.obstack, %struct.obstack* %66, i32 0, i32 3
  store i8* %65, i8** %next_free83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.59
  %67 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free85 = getelementptr inbounds %struct.obstack, %struct.obstack* %67, i32 0, i32 3
  %68 = load i8*, i8** %next_free85, align 8
  %69 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base86 = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 2
  store i8* %68, i8** %object_base86, align 8
  %70 = load i8*, i8** %value, align 8
  store i8* %70, i8** %tmp87
  %71 = load i8*, i8** %tmp87
  store i8* %71, i8** %tmp
  %72 = load i8*, i8** %tmp
  %73 = bitcast i8* %72 to %struct.du_chain*
  store %struct.du_chain* %73, %struct.du_chain** %this, align 8
  %74 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %next_use = getelementptr inbounds %struct.du_chain, %struct.du_chain* %74, i32 0, i32 1
  store %struct.du_chain* null, %struct.du_chain** %next_use, align 8
  %75 = load %struct.du_chain*, %struct.du_chain** @open_chains, align 8
  %76 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %next_chain = getelementptr inbounds %struct.du_chain, %struct.du_chain* %76, i32 0, i32 0
  store %struct.du_chain* %75, %struct.du_chain** %next_chain, align 8
  %77 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %78 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %loc88 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %78, i32 0, i32 3
  store %struct.rtx_def** %77, %struct.rtx_def*** %loc88, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %80 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %insn89 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %80, i32 0, i32 2
  store %struct.rtx_def* %79, %struct.rtx_def** %insn89, align 8
  %81 = load i32, i32* %class.addr, align 4
  %82 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %class90 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %82, i32 0, i32 4
  store i32 %81, i32* %class90, align 4
  %83 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %need_caller_save_reg = getelementptr inbounds %struct.du_chain, %struct.du_chain* %83, i32 0, i32 5
  %bf.load91 = load i8, i8* %need_caller_save_reg, align 4
  %bf.clear92 = and i8 %bf.load91, -2
  store i8 %bf.clear92, i8* %need_caller_save_reg, align 4
  %84 = load i32, i32* %earlyclobber.addr, align 4
  %85 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  %earlyclobber93 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %85, i32 0, i32 5
  %86 = trunc i32 %84 to i8
  %bf.load94 = load i8, i8* %earlyclobber93, align 4
  %bf.value = and i8 %86, 1
  %bf.shl = shl i8 %bf.value, 1
  %bf.clear95 = and i8 %bf.load94, -3
  %bf.set96 = or i8 %bf.clear95, %bf.shl
  store i8 %bf.set96, i8* %earlyclobber93, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %87 = load %struct.du_chain*, %struct.du_chain** %this, align 8
  store %struct.du_chain* %87, %struct.du_chain** @open_chains, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.84, %if.then
  br label %for.end

if.end.98:                                        ; preds = %cond.end.39
  %88 = load i32, i32* %type.addr, align 4
  %cmp99 = icmp eq i32 %88, 1
  br i1 %cmp99, label %land.lhs.true.101, label %lor.lhs.false.104

land.lhs.true.101:                                ; preds = %if.end.98
  %89 = load i32, i32* %action.addr, align 4
  %cmp102 = icmp ne i32 %89, 2
  br i1 %cmp102, label %if.then.110, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.lhs.true.101, %if.end.98
  %90 = load i32, i32* %type.addr, align 4
  %cmp105 = icmp ne i32 %90, 1
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.111

land.lhs.true.107:                                ; preds = %lor.lhs.false.104
  %91 = load i32, i32* %action.addr, align 4
  %cmp108 = icmp eq i32 %91, 2
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %land.lhs.true.107, %land.lhs.true.101
  br label %for.end

if.end.111:                                       ; preds = %land.lhs.true.107, %lor.lhs.false.104
  store %struct.du_chain** @open_chains, %struct.du_chain*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.365, %if.then.226, %if.end.111
  %92 = load %struct.du_chain**, %struct.du_chain*** %p, align 8
  %93 = load %struct.du_chain*, %struct.du_chain** %92, align 8
  %tobool112 = icmp ne %struct.du_chain* %93, null
  br i1 %tobool112, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %94 = load %struct.du_chain**, %struct.du_chain*** %p, align 8
  %95 = load %struct.du_chain*, %struct.du_chain** %94, align 8
  store %struct.du_chain* %95, %struct.du_chain** %this114, align 8
  %96 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc115 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %96, i32 0, i32 3
  %97 = load %struct.rtx_def**, %struct.rtx_def*** %loc115, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %97, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 1), align 8
  %cmp116 = icmp eq %struct.rtx_def* %98, %99
  br i1 %cmp116, label %if.then.118, label %if.else

if.then.118:                                      ; preds = %for.body
  %100 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %next_chain119 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %100, i32 0, i32 0
  store %struct.du_chain** %next_chain119, %struct.du_chain*** %p, align 8
  br label %if.end.365

if.else:                                          ; preds = %for.body
  %101 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc121 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %101, i32 0, i32 3
  %102 = load %struct.rtx_def**, %struct.rtx_def*** %loc121, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %102, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 0
  %rtuint124 = bitcast %union.rtunion_def* %arrayidx123 to i32*
  %104 = load i32, i32* %rtuint124, align 4
  store i32 %104, i32* %regno, align 4
  %105 = load i32, i32* %regno, align 4
  %cmp126 = icmp sge i32 %105, 8
  br i1 %cmp126, label %land.lhs.true.128, label %lor.lhs.false.131

land.lhs.true.128:                                ; preds = %if.else
  %106 = load i32, i32* %regno, align 4
  %cmp129 = icmp sle i32 %106, 15
  br i1 %cmp129, label %cond.true.149, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %land.lhs.true.128, %if.else
  %107 = load i32, i32* %regno, align 4
  %cmp132 = icmp sge i32 %107, 21
  br i1 %cmp132, label %land.lhs.true.134, label %lor.lhs.false.137

land.lhs.true.134:                                ; preds = %lor.lhs.false.131
  %108 = load i32, i32* %regno, align 4
  %cmp135 = icmp sle i32 %108, 28
  br i1 %cmp135, label %cond.true.149, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %land.lhs.true.134, %lor.lhs.false.131
  %109 = load i32, i32* %regno, align 4
  %cmp138 = icmp sge i32 %109, 45
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.143

land.lhs.true.140:                                ; preds = %lor.lhs.false.137
  %110 = load i32, i32* %regno, align 4
  %cmp141 = icmp sle i32 %110, 52
  br i1 %cmp141, label %cond.true.149, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %land.lhs.true.140, %lor.lhs.false.137
  %111 = load i32, i32* %regno, align 4
  %cmp144 = icmp sge i32 %111, 29
  br i1 %cmp144, label %land.lhs.true.146, label %cond.false.169

land.lhs.true.146:                                ; preds = %lor.lhs.false.143
  %112 = load i32, i32* %regno, align 4
  %cmp147 = icmp sle i32 %112, 36
  br i1 %cmp147, label %cond.true.149, label %cond.false.169

cond.true.149:                                    ; preds = %land.lhs.true.146, %land.lhs.true.140, %land.lhs.true.134, %land.lhs.true.128
  %113 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc150 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %113, i32 0, i32 3
  %114 = load %struct.rtx_def**, %struct.rtx_def*** %loc150, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %114, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load151 = load i32, i32* %116, align 8
  %bf.lshr152 = lshr i32 %bf.load151, 16
  %bf.clear153 = and i32 %bf.lshr152, 255
  %idxprom154 = sext i32 %bf.clear153 to i64
  %arrayidx155 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom154
  %117 = load i32, i32* %arrayidx155, align 4
  %cmp156 = icmp eq i32 %117, 5
  br i1 %cmp156, label %lor.end.167, label %lor.rhs.158

lor.rhs.158:                                      ; preds = %cond.true.149
  %118 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc159 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %118, i32 0, i32 3
  %119 = load %struct.rtx_def**, %struct.rtx_def*** %loc159, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %119, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load160 = load i32, i32* %121, align 8
  %bf.lshr161 = lshr i32 %bf.load160, 16
  %bf.clear162 = and i32 %bf.lshr161, 255
  %idxprom163 = sext i32 %bf.clear162 to i64
  %arrayidx164 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom163
  %122 = load i32, i32* %arrayidx164, align 4
  %cmp165 = icmp eq i32 %122, 6
  br label %lor.end.167

lor.end.167:                                      ; preds = %lor.rhs.158, %cond.true.149
  %123 = phi i1 [ true, %cond.true.149 ], [ %cmp165, %lor.rhs.158 ]
  %cond168 = select i1 %123, i32 2, i32 1
  br label %cond.end.212

cond.false.169:                                   ; preds = %land.lhs.true.146, %lor.lhs.false.143
  %124 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc170 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %124, i32 0, i32 3
  %125 = load %struct.rtx_def**, %struct.rtx_def*** %loc170, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %125, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load171 = load i32, i32* %127, align 8
  %bf.lshr172 = lshr i32 %bf.load171, 16
  %bf.clear173 = and i32 %bf.lshr172, 255
  %cmp174 = icmp eq i32 %bf.clear173, 18
  br i1 %cmp174, label %cond.true.176, label %cond.false.180

cond.true.176:                                    ; preds = %cond.false.169
  %128 = load i32, i32* @target_flags, align 4
  %and177 = and i32 %128, 33554432
  %tobool178 = icmp ne i32 %and177, 0
  %cond179 = select i1 %tobool178, i32 2, i32 3
  br label %cond.end.210

cond.false.180:                                   ; preds = %cond.false.169
  %129 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc181 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %129, i32 0, i32 3
  %130 = load %struct.rtx_def**, %struct.rtx_def*** %loc181, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %130, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load182 = load i32, i32* %132, align 8
  %bf.lshr183 = lshr i32 %bf.load182, 16
  %bf.clear184 = and i32 %bf.lshr183, 255
  %cmp185 = icmp eq i32 %bf.clear184, 24
  br i1 %cmp185, label %cond.true.187, label %cond.false.191

cond.true.187:                                    ; preds = %cond.false.180
  %133 = load i32, i32* @target_flags, align 4
  %and188 = and i32 %133, 33554432
  %tobool189 = icmp ne i32 %and188, 0
  %cond190 = select i1 %tobool189, i32 4, i32 6
  br label %cond.end.208

cond.false.191:                                   ; preds = %cond.false.180
  %134 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc192 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %134, i32 0, i32 3
  %135 = load %struct.rtx_def**, %struct.rtx_def*** %loc192, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %135, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load193 = load i32, i32* %137, align 8
  %bf.lshr194 = lshr i32 %bf.load193, 16
  %bf.clear195 = and i32 %bf.lshr194, 255
  %idxprom196 = sext i32 %bf.clear195 to i64
  %arrayidx197 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom196
  %138 = load i8, i8* %arrayidx197, align 1
  %conv198 = zext i8 %138 to i32
  %139 = load i32, i32* @target_flags, align 4
  %and199 = and i32 %139, 33554432
  %tobool200 = icmp ne i32 %and199, 0
  %cond201 = select i1 %tobool200, i32 8, i32 4
  %add202 = add nsw i32 %conv198, %cond201
  %sub203 = sub nsw i32 %add202, 1
  %140 = load i32, i32* @target_flags, align 4
  %and204 = and i32 %140, 33554432
  %tobool205 = icmp ne i32 %and204, 0
  %cond206 = select i1 %tobool205, i32 8, i32 4
  %div207 = sdiv i32 %sub203, %cond206
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.191, %cond.true.187
  %cond209 = phi i32 [ %cond190, %cond.true.187 ], [ %div207, %cond.false.191 ]
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.end.208, %cond.true.176
  %cond211 = phi i32 [ %cond179, %cond.true.176 ], [ %cond209, %cond.end.208 ]
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.end.210, %lor.end.167
  %cond213 = phi i32 [ %cond168, %lor.end.167 ], [ %cond211, %cond.end.210 ]
  store i32 %cond213, i32* %nregs, align 4
  %141 = load i32, i32* %regno, align 4
  %142 = load i32, i32* %this_regno, align 4
  %cmp215 = icmp eq i32 %141, %142
  br i1 %cmp215, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.212
  %143 = load i32, i32* %nregs, align 4
  %144 = load i32, i32* %this_nregs, align 4
  %cmp217 = icmp eq i32 %143, %144
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.212
  %145 = phi i1 [ false, %cond.end.212 ], [ %cmp217, %land.rhs ]
  %land.ext = zext i1 %145 to i32
  store i32 %land.ext, i32* %exact_match, align 4
  %146 = load i32, i32* %regno, align 4
  %147 = load i32, i32* %nregs, align 4
  %add219 = add nsw i32 %146, %147
  %148 = load i32, i32* %this_regno, align 4
  %cmp220 = icmp sle i32 %add219, %148
  br i1 %cmp220, label %if.then.226, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %land.end
  %149 = load i32, i32* %this_regno, align 4
  %150 = load i32, i32* %this_nregs, align 4
  %add223 = add nsw i32 %149, %150
  %151 = load i32, i32* %regno, align 4
  %cmp224 = icmp sle i32 %add223, %151
  br i1 %cmp224, label %if.then.226, label %if.end.228

if.then.226:                                      ; preds = %lor.lhs.false.222, %land.end
  %152 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %next_chain227 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %152, i32 0, i32 0
  store %struct.du_chain** %next_chain227, %struct.du_chain*** %p, align 8
  br label %for.cond

if.end.228:                                       ; preds = %lor.lhs.false.222
  %153 = load i32, i32* %action.addr, align 4
  %cmp229 = icmp eq i32 %153, 4
  br i1 %cmp229, label %if.then.231, label %if.end.315

if.then.231:                                      ; preds = %if.end.228
  %154 = load i32, i32* %exact_match, align 4
  %tobool232 = icmp ne i32 %154, 0
  br i1 %tobool232, label %if.end.234, label %if.then.233

if.then.233:                                      ; preds = %if.then.231
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 463, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.scan_rtx_reg, i32 0, i32 0)) #5
  unreachable

if.end.234:                                       ; preds = %if.then.231
  %155 = load i32, i32* %class.addr, align 4
  %cmp235 = icmp ne i32 %155, 0
  br i1 %cmp235, label %if.then.237, label %if.end.314

if.then.237:                                      ; preds = %if.end.234
  store %struct.obstack* @rename_obstack, %struct.obstack** %__h239, align 8
  %156 = load %struct.obstack*, %struct.obstack** %__h239, align 8
  store %struct.obstack* %156, %struct.obstack** %__o241, align 8
  store i32 40, i32* %__len243, align 4
  %157 = load %struct.obstack*, %struct.obstack** %__o241, align 8
  %chunk_limit244 = getelementptr inbounds %struct.obstack, %struct.obstack* %157, i32 0, i32 4
  %158 = load i8*, i8** %chunk_limit244, align 8
  %159 = load %struct.obstack*, %struct.obstack** %__o241, align 8
  %next_free245 = getelementptr inbounds %struct.obstack, %struct.obstack* %159, i32 0, i32 3
  %160 = load i8*, i8** %next_free245, align 8
  %sub.ptr.lhs.cast246 = ptrtoint i8* %158 to i64
  %sub.ptr.rhs.cast247 = ptrtoint i8* %160 to i64
  %sub.ptr.sub248 = sub i64 %sub.ptr.lhs.cast246, %sub.ptr.rhs.cast247
  %161 = load i32, i32* %__len243, align 4
  %conv249 = sext i32 %161 to i64
  %cmp250 = icmp slt i64 %sub.ptr.sub248, %conv249
  br i1 %cmp250, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %if.then.237
  %162 = load %struct.obstack*, %struct.obstack** %__o241, align 8
  %163 = load i32, i32* %__len243, align 4
  call void @_obstack_newchunk(%struct.obstack* %162, i32 %163)
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.252, %if.then.237
  %164 = load i32, i32* %__len243, align 4
  %165 = load %struct.obstack*, %struct.obstack** %__o241, align 8
  %next_free254 = getelementptr inbounds %struct.obstack, %struct.obstack* %165, i32 0, i32 3
  %166 = load i8*, i8** %next_free254, align 8
  %idx.ext255 = sext i32 %164 to i64
  %add.ptr256 = getelementptr inbounds i8, i8* %166, i64 %idx.ext255
  store i8* %add.ptr256, i8** %next_free254, align 8
  %167 = load %struct.obstack*, %struct.obstack** %__h239, align 8
  store %struct.obstack* %167, %struct.obstack** %__o1259, align 8
  %168 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %object_base262 = getelementptr inbounds %struct.obstack, %struct.obstack* %168, i32 0, i32 2
  %169 = load i8*, i8** %object_base262, align 8
  store i8* %169, i8** %value261, align 8
  %170 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %next_free263 = getelementptr inbounds %struct.obstack, %struct.obstack* %170, i32 0, i32 3
  %171 = load i8*, i8** %next_free263, align 8
  %172 = load i8*, i8** %value261, align 8
  %cmp264 = icmp eq i8* %171, %172
  br i1 %cmp264, label %if.then.266, label %if.end.271

if.then.266:                                      ; preds = %if.end.253
  %173 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %maybe_empty_object267 = getelementptr inbounds %struct.obstack, %struct.obstack* %173, i32 0, i32 10
  %bf.load268 = load i8, i8* %maybe_empty_object267, align 8
  %bf.clear269 = and i8 %bf.load268, -3
  %bf.set270 = or i8 %bf.clear269, 2
  store i8 %bf.set270, i8* %maybe_empty_object267, align 8
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.266, %if.end.253
  %174 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %next_free272 = getelementptr inbounds %struct.obstack, %struct.obstack* %174, i32 0, i32 3
  %175 = load i8*, i8** %next_free272, align 8
  %sub.ptr.lhs.cast273 = ptrtoint i8* %175 to i64
  %sub.ptr.sub274 = sub i64 %sub.ptr.lhs.cast273, 0
  %176 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %alignment_mask275 = getelementptr inbounds %struct.obstack, %struct.obstack* %176, i32 0, i32 6
  %177 = load i32, i32* %alignment_mask275, align 4
  %conv276 = sext i32 %177 to i64
  %add277 = add nsw i64 %sub.ptr.sub274, %conv276
  %178 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %alignment_mask278 = getelementptr inbounds %struct.obstack, %struct.obstack* %178, i32 0, i32 6
  %179 = load i32, i32* %alignment_mask278, align 4
  %neg279 = xor i32 %179, -1
  %conv280 = sext i32 %neg279 to i64
  %and281 = and i64 %add277, %conv280
  %add.ptr282 = getelementptr inbounds i8, i8* null, i64 %and281
  %180 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %next_free283 = getelementptr inbounds %struct.obstack, %struct.obstack* %180, i32 0, i32 3
  store i8* %add.ptr282, i8** %next_free283, align 8
  %181 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %next_free284 = getelementptr inbounds %struct.obstack, %struct.obstack* %181, i32 0, i32 3
  %182 = load i8*, i8** %next_free284, align 8
  %183 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %chunk285 = getelementptr inbounds %struct.obstack, %struct.obstack* %183, i32 0, i32 1
  %184 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk285, align 8
  %185 = bitcast %struct._obstack_chunk* %184 to i8*
  %sub.ptr.lhs.cast286 = ptrtoint i8* %182 to i64
  %sub.ptr.rhs.cast287 = ptrtoint i8* %185 to i64
  %sub.ptr.sub288 = sub i64 %sub.ptr.lhs.cast286, %sub.ptr.rhs.cast287
  %186 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %chunk_limit289 = getelementptr inbounds %struct.obstack, %struct.obstack* %186, i32 0, i32 4
  %187 = load i8*, i8** %chunk_limit289, align 8
  %188 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %chunk290 = getelementptr inbounds %struct.obstack, %struct.obstack* %188, i32 0, i32 1
  %189 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk290, align 8
  %190 = bitcast %struct._obstack_chunk* %189 to i8*
  %sub.ptr.lhs.cast291 = ptrtoint i8* %187 to i64
  %sub.ptr.rhs.cast292 = ptrtoint i8* %190 to i64
  %sub.ptr.sub293 = sub i64 %sub.ptr.lhs.cast291, %sub.ptr.rhs.cast292
  %cmp294 = icmp sgt i64 %sub.ptr.sub288, %sub.ptr.sub293
  br i1 %cmp294, label %if.then.296, label %if.end.299

if.then.296:                                      ; preds = %if.end.271
  %191 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %chunk_limit297 = getelementptr inbounds %struct.obstack, %struct.obstack* %191, i32 0, i32 4
  %192 = load i8*, i8** %chunk_limit297, align 8
  %193 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %next_free298 = getelementptr inbounds %struct.obstack, %struct.obstack* %193, i32 0, i32 3
  store i8* %192, i8** %next_free298, align 8
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.296, %if.end.271
  %194 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %next_free300 = getelementptr inbounds %struct.obstack, %struct.obstack* %194, i32 0, i32 3
  %195 = load i8*, i8** %next_free300, align 8
  %196 = load %struct.obstack*, %struct.obstack** %__o1259, align 8
  %object_base301 = getelementptr inbounds %struct.obstack, %struct.obstack* %196, i32 0, i32 2
  store i8* %195, i8** %object_base301, align 8
  %197 = load i8*, i8** %value261, align 8
  store i8* %197, i8** %tmp302
  %198 = load i8*, i8** %tmp302
  store i8* %198, i8** %tmp257
  %199 = load i8*, i8** %tmp257
  %200 = bitcast i8* %199 to %struct.du_chain*
  store %struct.du_chain* %200, %struct.du_chain** %this114, align 8
  %201 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %next_use303 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %201, i32 0, i32 1
  store %struct.du_chain* null, %struct.du_chain** %next_use303, align 8
  %202 = load %struct.du_chain**, %struct.du_chain*** %p, align 8
  %203 = load %struct.du_chain*, %struct.du_chain** %202, align 8
  %next_chain304 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %203, i32 0, i32 0
  %204 = load %struct.du_chain*, %struct.du_chain** %next_chain304, align 8
  %205 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %next_chain305 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %205, i32 0, i32 0
  store %struct.du_chain* %204, %struct.du_chain** %next_chain305, align 8
  %206 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %207 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc306 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %207, i32 0, i32 3
  store %struct.rtx_def** %206, %struct.rtx_def*** %loc306, align 8
  %208 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %209 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %insn307 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %209, i32 0, i32 2
  store %struct.rtx_def* %208, %struct.rtx_def** %insn307, align 8
  %210 = load i32, i32* %class.addr, align 4
  %211 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %class308 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %211, i32 0, i32 4
  store i32 %210, i32* %class308, align 4
  %212 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %need_caller_save_reg309 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %212, i32 0, i32 5
  %bf.load310 = load i8, i8* %need_caller_save_reg309, align 4
  %bf.clear311 = and i8 %bf.load310, -2
  store i8 %bf.clear311, i8* %need_caller_save_reg309, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.299
  %213 = load %struct.du_chain**, %struct.du_chain*** %p, align 8
  %214 = load %struct.du_chain*, %struct.du_chain** %213, align 8
  %tobool312 = icmp ne %struct.du_chain* %214, null
  br i1 %tobool312, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %215 = load %struct.du_chain**, %struct.du_chain*** %p, align 8
  %216 = load %struct.du_chain*, %struct.du_chain** %215, align 8
  %next_use313 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %216, i32 0, i32 1
  store %struct.du_chain** %next_use313, %struct.du_chain*** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %217 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %218 = load %struct.du_chain**, %struct.du_chain*** %p, align 8
  store %struct.du_chain* %217, %struct.du_chain** %218, align 8
  br label %for.end

if.end.314:                                       ; preds = %if.end.234
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.228
  %219 = load i32, i32* %action.addr, align 4
  %cmp316 = icmp ne i32 %219, 1
  br i1 %cmp316, label %if.then.320, label %lor.lhs.false.318

lor.lhs.false.318:                                ; preds = %if.end.315
  %220 = load i32, i32* %exact_match, align 4
  %tobool319 = icmp ne i32 %220, 0
  br i1 %tobool319, label %if.else.362, label %if.then.320

if.then.320:                                      ; preds = %lor.lhs.false.318, %if.end.315
  %221 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %next_chain322 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %221, i32 0, i32 0
  %222 = load %struct.du_chain*, %struct.du_chain** %next_chain322, align 8
  store %struct.du_chain* %222, %struct.du_chain** %next, align 8
  %223 = load i32, i32* %action.addr, align 4
  %cmp323 = icmp eq i32 %223, 3
  br i1 %cmp323, label %land.lhs.true.328, label %lor.lhs.false.325

lor.lhs.false.325:                                ; preds = %if.then.320
  %224 = load i32, i32* %action.addr, align 4
  %cmp326 = icmp eq i32 %224, 2
  br i1 %cmp326, label %land.lhs.true.328, label %if.else.345

land.lhs.true.328:                                ; preds = %lor.lhs.false.325, %if.then.320
  %225 = load i32, i32* %exact_match, align 4
  %tobool329 = icmp ne i32 %225, 0
  br i1 %tobool329, label %if.then.330, label %if.else.345

if.then.330:                                      ; preds = %land.lhs.true.328
  %226 = load %struct.du_chain*, %struct.du_chain** @closed_chains, align 8
  %227 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %next_chain331 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %227, i32 0, i32 0
  store %struct.du_chain* %226, %struct.du_chain** %next_chain331, align 8
  %228 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  store %struct.du_chain* %228, %struct.du_chain** @closed_chains, align 8
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool332 = icmp ne %struct._IO_FILE* %229, null
  br i1 %tobool332, label %if.then.333, label %if.end.344

if.then.333:                                      ; preds = %if.then.330
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %231 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc334 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %231, i32 0, i32 3
  %232 = load %struct.rtx_def**, %struct.rtx_def*** %loc334, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %232, align 8
  %fld335 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx336 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld335, i32 0, i64 0
  %rtuint337 = bitcast %union.rtunion_def* %arrayidx336 to i32*
  %234 = load i32, i32* %rtuint337, align 4
  %idxprom338 = zext i32 %234 to i64
  %arrayidx339 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom338
  %235 = load i8*, i8** %arrayidx339, align 8
  %236 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld340 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld340, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx341 to i32*
  %237 = load i32, i32* %rtint, align 4
  %238 = load i32, i32* %action.addr, align 4
  %idxprom342 = sext i32 %238 to i64
  %arrayidx343 = getelementptr inbounds [6 x i8*], [6 x i8*]* @scan_actions_name, i32 0, i64 %idxprom342
  %239 = load i8*, i8** %arrayidx343, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %230, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* %235, i32 %237, i8* %239)
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.333, %if.then.330
  br label %if.end.361

if.else.345:                                      ; preds = %land.lhs.true.328, %lor.lhs.false.325
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool346 = icmp ne %struct._IO_FILE* %240, null
  br i1 %tobool346, label %if.then.347, label %if.end.360

if.then.347:                                      ; preds = %if.else.345
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %242 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %loc348 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %242, i32 0, i32 3
  %243 = load %struct.rtx_def**, %struct.rtx_def*** %loc348, align 8
  %244 = load %struct.rtx_def*, %struct.rtx_def** %243, align 8
  %fld349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld349, i32 0, i64 0
  %rtuint351 = bitcast %union.rtunion_def* %arrayidx350 to i32*
  %245 = load i32, i32* %rtuint351, align 4
  %idxprom352 = zext i32 %245 to i64
  %arrayidx353 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom352
  %246 = load i8*, i8** %arrayidx353, align 8
  %247 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %247, i32 0, i32 1
  %arrayidx355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld354, i32 0, i64 0
  %rtint356 = bitcast %union.rtunion_def* %arrayidx355 to i32*
  %248 = load i32, i32* %rtint356, align 4
  %249 = load i32, i32* %action.addr, align 4
  %idxprom357 = sext i32 %249 to i64
  %arrayidx358 = getelementptr inbounds [6 x i8*], [6 x i8*]* @scan_actions_name, i32 0, i64 %idxprom357
  %250 = load i8*, i8** %arrayidx358, align 8
  %call359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %241, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i8* %246, i32 %248, i8* %250)
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.347, %if.else.345
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.end.344
  %251 = load %struct.du_chain*, %struct.du_chain** %next, align 8
  %252 = load %struct.du_chain**, %struct.du_chain*** %p, align 8
  store %struct.du_chain* %251, %struct.du_chain** %252, align 8
  br label %if.end.364

if.else.362:                                      ; preds = %lor.lhs.false.318
  %253 = load %struct.du_chain*, %struct.du_chain** %this114, align 8
  %next_chain363 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %253, i32 0, i32 0
  store %struct.du_chain** %next_chain363, %struct.du_chain*** %p, align 8
  br label %if.end.364

if.end.364:                                       ; preds = %if.else.362, %if.end.361
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.then.118
  br label %for.cond

for.end:                                          ; preds = %if.end.97, %if.then.110, %while.end, %for.cond
  ret void
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define internal void @kill_value(%struct.rtx_def* %x, %struct.value_data* %vd) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %vd.addr = alloca %struct.value_data*, align 8
  %regno = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 16
  %bf.clear8 = and i32 %bf.lshr7, 255
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %10 = load i32, i32* %rtuint, align 4
  %call = call %struct.rtx_def* @simplify_subreg(i32 %bf.clear2, %struct.rtx_def* %5, i32 %bf.clear8, i32 %10)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 61
  br i1 %cmp13, label %if.then.14, label %if.end.197

if.then.14:                                       ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtuint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %14 = load i32, i32* %rtuint17, align 4
  store i32 %14, i32* %regno, align 4
  %15 = load i32, i32* %regno, align 4
  %cmp18 = icmp uge i32 %15, 8
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.14
  %16 = load i32, i32* %regno, align 4
  %cmp19 = icmp ule i32 %16, 15
  br i1 %cmp19, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.14
  %17 = load i32, i32* %regno, align 4
  %cmp20 = icmp uge i32 %17, 21
  br i1 %cmp20, label %land.lhs.true.21, label %lor.lhs.false.23

land.lhs.true.21:                                 ; preds = %lor.lhs.false
  %18 = load i32, i32* %regno, align 4
  %cmp22 = icmp ule i32 %18, 28
  br i1 %cmp22, label %cond.true, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true.21, %lor.lhs.false
  %19 = load i32, i32* %regno, align 4
  %cmp24 = icmp uge i32 %19, 45
  br i1 %cmp24, label %land.lhs.true.25, label %lor.lhs.false.27

land.lhs.true.25:                                 ; preds = %lor.lhs.false.23
  %20 = load i32, i32* %regno, align 4
  %cmp26 = icmp ule i32 %20, 52
  br i1 %cmp26, label %cond.true, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.25, %lor.lhs.false.23
  %21 = load i32, i32* %regno, align 4
  %cmp28 = icmp uge i32 %21, 29
  br i1 %cmp28, label %land.lhs.true.29, label %cond.false

land.lhs.true.29:                                 ; preds = %lor.lhs.false.27
  %22 = load i32, i32* %regno, align 4
  %cmp30 = icmp ule i32 %22, 36
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.29, %land.lhs.true.25, %land.lhs.true.21, %land.lhs.true
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load31 = load i32, i32* %24, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 16
  %bf.clear33 = and i32 %bf.lshr32, 255
  %idxprom = sext i32 %bf.clear33 to i64
  %arrayidx34 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp eq i32 %25, 5
  br i1 %cmp35, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load36 = load i32, i32* %27, align 8
  %bf.lshr37 = lshr i32 %bf.load36, 16
  %bf.clear38 = and i32 %bf.lshr37, 255
  %idxprom39 = sext i32 %bf.clear38 to i64
  %arrayidx40 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom39
  %28 = load i32, i32* %arrayidx40, align 4
  %cmp41 = icmp eq i32 %28, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %29 = phi i1 [ true, %cond.true ], [ %cmp41, %lor.rhs ]
  %cond = select i1 %29, i32 2, i32 1
  br label %cond.end.72

cond.false:                                       ; preds = %land.lhs.true.29, %lor.lhs.false.27
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load42 = load i32, i32* %31, align 8
  %bf.lshr43 = lshr i32 %bf.load42, 16
  %bf.clear44 = and i32 %bf.lshr43, 255
  %cmp45 = icmp eq i32 %bf.clear44, 18
  br i1 %cmp45, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %cond.false
  %32 = load i32, i32* @target_flags, align 4
  %and = and i32 %32, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond47 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.70

cond.false.48:                                    ; preds = %cond.false
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load49 = load i32, i32* %34, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 16
  %bf.clear51 = and i32 %bf.lshr50, 255
  %cmp52 = icmp eq i32 %bf.clear51, 24
  br i1 %cmp52, label %cond.true.53, label %cond.false.57

cond.true.53:                                     ; preds = %cond.false.48
  %35 = load i32, i32* @target_flags, align 4
  %and54 = and i32 %35, 33554432
  %tobool55 = icmp ne i32 %and54, 0
  %cond56 = select i1 %tobool55, i32 4, i32 6
  br label %cond.end

cond.false.57:                                    ; preds = %cond.false.48
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load58 = load i32, i32* %37, align 8
  %bf.lshr59 = lshr i32 %bf.load58, 16
  %bf.clear60 = and i32 %bf.lshr59, 255
  %idxprom61 = sext i32 %bf.clear60 to i64
  %arrayidx62 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom61
  %38 = load i8, i8* %arrayidx62, align 1
  %conv = zext i8 %38 to i32
  %39 = load i32, i32* @target_flags, align 4
  %and63 = and i32 %39, 33554432
  %tobool64 = icmp ne i32 %and63, 0
  %cond65 = select i1 %tobool64, i32 8, i32 4
  %add = add nsw i32 %conv, %cond65
  %sub = sub nsw i32 %add, 1
  %40 = load i32, i32* @target_flags, align 4
  %and66 = and i32 %40, 33554432
  %tobool67 = icmp ne i32 %and66, 0
  %cond68 = select i1 %tobool67, i32 8, i32 4
  %div = sdiv i32 %sub, %cond68
  br label %cond.end

cond.end:                                         ; preds = %cond.false.57, %cond.true.53
  %cond69 = phi i32 [ %cond56, %cond.true.53 ], [ %div, %cond.false.57 ]
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.end, %cond.true.46
  %cond71 = phi i32 [ %cond47, %cond.true.46 ], [ %cond69, %cond.end ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.70, %lor.end
  %cond73 = phi i32 [ %cond, %lor.end ], [ %cond71, %cond.end.70 ]
  store i32 %cond73, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.72
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %n, align 4
  %cmp74 = icmp ult i32 %41, %42
  br i1 %cmp74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %regno, align 4
  %44 = load i32, i32* %i, align 4
  %add76 = add i32 %43, %44
  %45 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  call void @kill_value_regno(i32 %add76, %struct.value_data* %45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %47 = load i32, i32* %regno, align 4
  %48 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %max_value_regs = getelementptr inbounds %struct.value_data, %struct.value_data* %48, i32 0, i32 1
  %49 = load i32, i32* %max_value_regs, align 4
  %cmp77 = icmp ult i32 %47, %49
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %for.end
  store i32 0, i32* %j, align 4
  br label %if.end.82

if.else:                                          ; preds = %for.end
  %50 = load i32, i32* %regno, align 4
  %51 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %max_value_regs80 = getelementptr inbounds %struct.value_data, %struct.value_data* %51, i32 0, i32 1
  %52 = load i32, i32* %max_value_regs80, align 4
  %sub81 = sub i32 %50, %52
  store i32 %sub81, i32* %j, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.79
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.194, %if.end.82
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %regno, align 4
  %cmp84 = icmp ult i32 %53, %54
  br i1 %cmp84, label %for.body.86, label %for.end.196

for.body.86:                                      ; preds = %for.cond.83
  %55 = load i32, i32* %j, align 4
  %idxprom87 = zext i32 %55 to i64
  %56 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e = getelementptr inbounds %struct.value_data, %struct.value_data* %56, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i32 0, i64 %idxprom87
  %mode = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx88, i32 0, i32 0
  %57 = load i32, i32* %mode, align 4
  %cmp89 = icmp eq i32 %57, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %for.body.86
  br label %for.inc.194

if.end.92:                                        ; preds = %for.body.86
  %58 = load i32, i32* %j, align 4
  %cmp93 = icmp uge i32 %58, 8
  br i1 %cmp93, label %land.lhs.true.95, label %lor.lhs.false.98

land.lhs.true.95:                                 ; preds = %if.end.92
  %59 = load i32, i32* %j, align 4
  %cmp96 = icmp ule i32 %59, 15
  br i1 %cmp96, label %cond.true.116, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.95, %if.end.92
  %60 = load i32, i32* %j, align 4
  %cmp99 = icmp uge i32 %60, 21
  br i1 %cmp99, label %land.lhs.true.101, label %lor.lhs.false.104

land.lhs.true.101:                                ; preds = %lor.lhs.false.98
  %61 = load i32, i32* %j, align 4
  %cmp102 = icmp ule i32 %61, 28
  br i1 %cmp102, label %cond.true.116, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.lhs.true.101, %lor.lhs.false.98
  %62 = load i32, i32* %j, align 4
  %cmp105 = icmp uge i32 %62, 45
  br i1 %cmp105, label %land.lhs.true.107, label %lor.lhs.false.110

land.lhs.true.107:                                ; preds = %lor.lhs.false.104
  %63 = load i32, i32* %j, align 4
  %cmp108 = icmp ule i32 %63, 52
  br i1 %cmp108, label %cond.true.116, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.107, %lor.lhs.false.104
  %64 = load i32, i32* %j, align 4
  %cmp111 = icmp uge i32 %64, 29
  br i1 %cmp111, label %land.lhs.true.113, label %cond.false.136

land.lhs.true.113:                                ; preds = %lor.lhs.false.110
  %65 = load i32, i32* %j, align 4
  %cmp114 = icmp ule i32 %65, 36
  br i1 %cmp114, label %cond.true.116, label %cond.false.136

cond.true.116:                                    ; preds = %land.lhs.true.113, %land.lhs.true.107, %land.lhs.true.101, %land.lhs.true.95
  %66 = load i32, i32* %j, align 4
  %idxprom117 = zext i32 %66 to i64
  %67 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e118 = getelementptr inbounds %struct.value_data, %struct.value_data* %67, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e118, i32 0, i64 %idxprom117
  %mode120 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx119, i32 0, i32 0
  %68 = load i32, i32* %mode120, align 4
  %idxprom121 = sext i32 %68 to i64
  %arrayidx122 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom121
  %69 = load i32, i32* %arrayidx122, align 4
  %cmp123 = icmp eq i32 %69, 5
  br i1 %cmp123, label %lor.end.134, label %lor.rhs.125

lor.rhs.125:                                      ; preds = %cond.true.116
  %70 = load i32, i32* %j, align 4
  %idxprom126 = zext i32 %70 to i64
  %71 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e127 = getelementptr inbounds %struct.value_data, %struct.value_data* %71, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e127, i32 0, i64 %idxprom126
  %mode129 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx128, i32 0, i32 0
  %72 = load i32, i32* %mode129, align 4
  %idxprom130 = sext i32 %72 to i64
  %arrayidx131 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom130
  %73 = load i32, i32* %arrayidx131, align 4
  %cmp132 = icmp eq i32 %73, 6
  br label %lor.end.134

lor.end.134:                                      ; preds = %lor.rhs.125, %cond.true.116
  %74 = phi i1 [ true, %cond.true.116 ], [ %cmp132, %lor.rhs.125 ]
  %cond135 = select i1 %74, i32 2, i32 1
  br label %cond.end.179

cond.false.136:                                   ; preds = %land.lhs.true.113, %lor.lhs.false.110
  %75 = load i32, i32* %j, align 4
  %idxprom137 = zext i32 %75 to i64
  %76 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e138 = getelementptr inbounds %struct.value_data, %struct.value_data* %76, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e138, i32 0, i64 %idxprom137
  %mode140 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx139, i32 0, i32 0
  %77 = load i32, i32* %mode140, align 4
  %cmp141 = icmp eq i32 %77, 18
  br i1 %cmp141, label %cond.true.143, label %cond.false.147

cond.true.143:                                    ; preds = %cond.false.136
  %78 = load i32, i32* @target_flags, align 4
  %and144 = and i32 %78, 33554432
  %tobool145 = icmp ne i32 %and144, 0
  %cond146 = select i1 %tobool145, i32 2, i32 3
  br label %cond.end.177

cond.false.147:                                   ; preds = %cond.false.136
  %79 = load i32, i32* %j, align 4
  %idxprom148 = zext i32 %79 to i64
  %80 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e149 = getelementptr inbounds %struct.value_data, %struct.value_data* %80, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e149, i32 0, i64 %idxprom148
  %mode151 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx150, i32 0, i32 0
  %81 = load i32, i32* %mode151, align 4
  %cmp152 = icmp eq i32 %81, 24
  br i1 %cmp152, label %cond.true.154, label %cond.false.158

cond.true.154:                                    ; preds = %cond.false.147
  %82 = load i32, i32* @target_flags, align 4
  %and155 = and i32 %82, 33554432
  %tobool156 = icmp ne i32 %and155, 0
  %cond157 = select i1 %tobool156, i32 4, i32 6
  br label %cond.end.175

cond.false.158:                                   ; preds = %cond.false.147
  %83 = load i32, i32* %j, align 4
  %idxprom159 = zext i32 %83 to i64
  %84 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e160 = getelementptr inbounds %struct.value_data, %struct.value_data* %84, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e160, i32 0, i64 %idxprom159
  %mode162 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx161, i32 0, i32 0
  %85 = load i32, i32* %mode162, align 4
  %idxprom163 = sext i32 %85 to i64
  %arrayidx164 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom163
  %86 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %86 to i32
  %87 = load i32, i32* @target_flags, align 4
  %and166 = and i32 %87, 33554432
  %tobool167 = icmp ne i32 %and166, 0
  %cond168 = select i1 %tobool167, i32 8, i32 4
  %add169 = add nsw i32 %conv165, %cond168
  %sub170 = sub nsw i32 %add169, 1
  %88 = load i32, i32* @target_flags, align 4
  %and171 = and i32 %88, 33554432
  %tobool172 = icmp ne i32 %and171, 0
  %cond173 = select i1 %tobool172, i32 8, i32 4
  %div174 = sdiv i32 %sub170, %cond173
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.158, %cond.true.154
  %cond176 = phi i32 [ %cond157, %cond.true.154 ], [ %div174, %cond.false.158 ]
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.end.175, %cond.true.143
  %cond178 = phi i32 [ %cond146, %cond.true.143 ], [ %cond176, %cond.end.175 ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %lor.end.134
  %cond180 = phi i32 [ %cond135, %lor.end.134 ], [ %cond178, %cond.end.177 ]
  store i32 %cond180, i32* %n, align 4
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %n, align 4
  %add181 = add i32 %89, %90
  %91 = load i32, i32* %regno, align 4
  %cmp182 = icmp ugt i32 %add181, %91
  br i1 %cmp182, label %if.then.184, label %if.end.193

if.then.184:                                      ; preds = %cond.end.179
  store i32 0, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.190, %if.then.184
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %n, align 4
  %cmp186 = icmp ult i32 %92, %93
  br i1 %cmp186, label %for.body.188, label %for.end.192

for.body.188:                                     ; preds = %for.cond.185
  %94 = load i32, i32* %j, align 4
  %95 = load i32, i32* %i, align 4
  %add189 = add i32 %94, %95
  %96 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  call void @kill_value_regno(i32 %add189, %struct.value_data* %96)
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.188
  %97 = load i32, i32* %i, align 4
  %inc191 = add i32 %97, 1
  store i32 %inc191, i32* %i, align 4
  br label %for.cond.185

for.end.192:                                      ; preds = %for.cond.185
  br label %if.end.193

if.end.193:                                       ; preds = %for.end.192, %cond.end.179
  br label %for.inc.194

for.inc.194:                                      ; preds = %if.end.193, %if.then.91
  %98 = load i32, i32* %j, align 4
  %inc195 = add i32 %98, 1
  store i32 %inc195, i32* %j, align 4
  br label %for.cond.83

for.end.196:                                      ; preds = %for.cond.83
  br label %if.end.197

if.end.197:                                       ; preds = %for.end.196, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kill_clobbered_value(%struct.rtx_def* %x, %struct.rtx_def* %set, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %vd = alloca %struct.value_data*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.value_data*
  store %struct.value_data* %1, %struct.value_data** %vd, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 49
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.value_data*, %struct.value_data** %vd, align 8
  call void @kill_value(%struct.rtx_def* %4, %struct.value_data* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @kill_autoinc_value(%struct.rtx_def** %px, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %px.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %vd = alloca %struct.value_data*, align 8
  store %struct.rtx_def** %px, %struct.rtx_def*** %px.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.value_data*
  store %struct.value_data* %3, %struct.value_data** %vd, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 97
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %x, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %10 = load %struct.value_data*, %struct.value_data** %vd, align 8
  call void @kill_value(%struct.rtx_def* %9, %struct.value_data* %10)
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %12 = load i32, i32* %rtuint, align 4
  %13 = load i32, i32* @target_flags, align 4
  %and = and i32 %13, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %14 = load %struct.value_data*, %struct.value_data** %vd, align 8
  call void @set_value_regno(i32 %12, i32 %cond, %struct.value_data* %14)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @find_oldest_value_reg(i32 %class, %struct.rtx_def* %reg, %struct.value_data* %vd) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %class.addr = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %vd.addr = alloca %struct.value_data*, align 8
  %regno = alloca i32, align 4
  %mode = alloca i32, align 4
  %i = alloca i32, align 4
  %new = alloca %struct.rtx_def*, align 8
  store i32 %class, i32* %class.addr, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %regno, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %4 = load i32, i32* %mode, align 4
  %5 = load i32, i32* %regno, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e = getelementptr inbounds %struct.value_data, %struct.value_data* %6, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i32 0, i64 %idxprom
  %mode2 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx1, i32 0, i32 0
  %7 = load i32, i32* %mode2, align 4
  %cmp = icmp ne i32 %4, %7
  br i1 %cmp, label %if.then, label %if.end.136

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %regno, align 4
  %cmp3 = icmp uge i32 %8, 8
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, i32* %regno, align 4
  %cmp4 = icmp ule i32 %9, 15
  br i1 %cmp4, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %10 = load i32, i32* %regno, align 4
  %cmp5 = icmp uge i32 %10, 21
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false.8

land.lhs.true.6:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %regno, align 4
  %cmp7 = icmp ule i32 %11, 28
  br i1 %cmp7, label %cond.true, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true.6, %lor.lhs.false
  %12 = load i32, i32* %regno, align 4
  %cmp9 = icmp uge i32 %12, 45
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.12

land.lhs.true.10:                                 ; preds = %lor.lhs.false.8
  %13 = load i32, i32* %regno, align 4
  %cmp11 = icmp ule i32 %13, 52
  br i1 %cmp11, label %cond.true, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.10, %lor.lhs.false.8
  %14 = load i32, i32* %regno, align 4
  %cmp13 = icmp uge i32 %14, 29
  br i1 %cmp13, label %land.lhs.true.14, label %cond.false

land.lhs.true.14:                                 ; preds = %lor.lhs.false.12
  %15 = load i32, i32* %regno, align 4
  %cmp15 = icmp ule i32 %15, 36
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true
  %16 = load i32, i32* %mode, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp eq i32 %17, 5
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %18 = load i32, i32* %mode, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %19, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %20 = phi i1 [ true, %cond.true ], [ %cmp21, %lor.rhs ]
  %cond = select i1 %20, i32 2, i32 1
  br label %cond.end.43

cond.false:                                       ; preds = %land.lhs.true.14, %lor.lhs.false.12
  %21 = load i32, i32* %mode, align 4
  %cmp22 = icmp eq i32 %21, 18
  br i1 %cmp22, label %cond.true.23, label %cond.false.25

cond.true.23:                                     ; preds = %cond.false
  %22 = load i32, i32* @target_flags, align 4
  %and = and i32 %22, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond24 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.41

cond.false.25:                                    ; preds = %cond.false
  %23 = load i32, i32* %mode, align 4
  %cmp26 = icmp eq i32 %23, 24
  br i1 %cmp26, label %cond.true.27, label %cond.false.31

cond.true.27:                                     ; preds = %cond.false.25
  %24 = load i32, i32* @target_flags, align 4
  %and28 = and i32 %24, 33554432
  %tobool29 = icmp ne i32 %and28, 0
  %cond30 = select i1 %tobool29, i32 4, i32 6
  br label %cond.end

cond.false.31:                                    ; preds = %cond.false.25
  %25 = load i32, i32* %mode, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom32
  %26 = load i8, i8* %arrayidx33, align 1
  %conv = zext i8 %26 to i32
  %27 = load i32, i32* @target_flags, align 4
  %and34 = and i32 %27, 33554432
  %tobool35 = icmp ne i32 %and34, 0
  %cond36 = select i1 %tobool35, i32 8, i32 4
  %add = add nsw i32 %conv, %cond36
  %sub = sub nsw i32 %add, 1
  %28 = load i32, i32* @target_flags, align 4
  %and37 = and i32 %28, 33554432
  %tobool38 = icmp ne i32 %and37, 0
  %cond39 = select i1 %tobool38, i32 8, i32 4
  %div = sdiv i32 %sub, %cond39
  br label %cond.end

cond.end:                                         ; preds = %cond.false.31, %cond.true.27
  %cond40 = phi i32 [ %cond30, %cond.true.27 ], [ %div, %cond.false.31 ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end, %cond.true.23
  %cond42 = phi i32 [ %cond24, %cond.true.23 ], [ %cond40, %cond.end ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.41, %lor.end
  %cond44 = phi i32 [ %cond, %lor.end ], [ %cond42, %cond.end.41 ]
  %29 = load i32, i32* %regno, align 4
  %cmp45 = icmp uge i32 %29, 8
  br i1 %cmp45, label %land.lhs.true.47, label %lor.lhs.false.50

land.lhs.true.47:                                 ; preds = %cond.end.43
  %30 = load i32, i32* %regno, align 4
  %cmp48 = icmp ule i32 %30, 15
  br i1 %cmp48, label %cond.true.68, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.47, %cond.end.43
  %31 = load i32, i32* %regno, align 4
  %cmp51 = icmp uge i32 %31, 21
  br i1 %cmp51, label %land.lhs.true.53, label %lor.lhs.false.56

land.lhs.true.53:                                 ; preds = %lor.lhs.false.50
  %32 = load i32, i32* %regno, align 4
  %cmp54 = icmp ule i32 %32, 28
  br i1 %cmp54, label %cond.true.68, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %land.lhs.true.53, %lor.lhs.false.50
  %33 = load i32, i32* %regno, align 4
  %cmp57 = icmp uge i32 %33, 45
  br i1 %cmp57, label %land.lhs.true.59, label %lor.lhs.false.62

land.lhs.true.59:                                 ; preds = %lor.lhs.false.56
  %34 = load i32, i32* %regno, align 4
  %cmp60 = icmp ule i32 %34, 52
  br i1 %cmp60, label %cond.true.68, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %land.lhs.true.59, %lor.lhs.false.56
  %35 = load i32, i32* %regno, align 4
  %cmp63 = icmp uge i32 %35, 29
  br i1 %cmp63, label %land.lhs.true.65, label %cond.false.88

land.lhs.true.65:                                 ; preds = %lor.lhs.false.62
  %36 = load i32, i32* %regno, align 4
  %cmp66 = icmp ule i32 %36, 36
  br i1 %cmp66, label %cond.true.68, label %cond.false.88

cond.true.68:                                     ; preds = %land.lhs.true.65, %land.lhs.true.59, %land.lhs.true.53, %land.lhs.true.47
  %37 = load i32, i32* %regno, align 4
  %idxprom69 = zext i32 %37 to i64
  %38 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e70 = getelementptr inbounds %struct.value_data, %struct.value_data* %38, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e70, i32 0, i64 %idxprom69
  %mode72 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx71, i32 0, i32 0
  %39 = load i32, i32* %mode72, align 4
  %idxprom73 = sext i32 %39 to i64
  %arrayidx74 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom73
  %40 = load i32, i32* %arrayidx74, align 4
  %cmp75 = icmp eq i32 %40, 5
  br i1 %cmp75, label %lor.end.86, label %lor.rhs.77

lor.rhs.77:                                       ; preds = %cond.true.68
  %41 = load i32, i32* %regno, align 4
  %idxprom78 = zext i32 %41 to i64
  %42 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e79 = getelementptr inbounds %struct.value_data, %struct.value_data* %42, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e79, i32 0, i64 %idxprom78
  %mode81 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx80, i32 0, i32 0
  %43 = load i32, i32* %mode81, align 4
  %idxprom82 = sext i32 %43 to i64
  %arrayidx83 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom82
  %44 = load i32, i32* %arrayidx83, align 4
  %cmp84 = icmp eq i32 %44, 6
  br label %lor.end.86

lor.end.86:                                       ; preds = %lor.rhs.77, %cond.true.68
  %45 = phi i1 [ true, %cond.true.68 ], [ %cmp84, %lor.rhs.77 ]
  %cond87 = select i1 %45, i32 2, i32 1
  br label %cond.end.131

cond.false.88:                                    ; preds = %land.lhs.true.65, %lor.lhs.false.62
  %46 = load i32, i32* %regno, align 4
  %idxprom89 = zext i32 %46 to i64
  %47 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e90 = getelementptr inbounds %struct.value_data, %struct.value_data* %47, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e90, i32 0, i64 %idxprom89
  %mode92 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx91, i32 0, i32 0
  %48 = load i32, i32* %mode92, align 4
  %cmp93 = icmp eq i32 %48, 18
  br i1 %cmp93, label %cond.true.95, label %cond.false.99

cond.true.95:                                     ; preds = %cond.false.88
  %49 = load i32, i32* @target_flags, align 4
  %and96 = and i32 %49, 33554432
  %tobool97 = icmp ne i32 %and96, 0
  %cond98 = select i1 %tobool97, i32 2, i32 3
  br label %cond.end.129

cond.false.99:                                    ; preds = %cond.false.88
  %50 = load i32, i32* %regno, align 4
  %idxprom100 = zext i32 %50 to i64
  %51 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e101 = getelementptr inbounds %struct.value_data, %struct.value_data* %51, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e101, i32 0, i64 %idxprom100
  %mode103 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx102, i32 0, i32 0
  %52 = load i32, i32* %mode103, align 4
  %cmp104 = icmp eq i32 %52, 24
  br i1 %cmp104, label %cond.true.106, label %cond.false.110

cond.true.106:                                    ; preds = %cond.false.99
  %53 = load i32, i32* @target_flags, align 4
  %and107 = and i32 %53, 33554432
  %tobool108 = icmp ne i32 %and107, 0
  %cond109 = select i1 %tobool108, i32 4, i32 6
  br label %cond.end.127

cond.false.110:                                   ; preds = %cond.false.99
  %54 = load i32, i32* %regno, align 4
  %idxprom111 = zext i32 %54 to i64
  %55 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e112 = getelementptr inbounds %struct.value_data, %struct.value_data* %55, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e112, i32 0, i64 %idxprom111
  %mode114 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx113, i32 0, i32 0
  %56 = load i32, i32* %mode114, align 4
  %idxprom115 = sext i32 %56 to i64
  %arrayidx116 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom115
  %57 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %57 to i32
  %58 = load i32, i32* @target_flags, align 4
  %and118 = and i32 %58, 33554432
  %tobool119 = icmp ne i32 %and118, 0
  %cond120 = select i1 %tobool119, i32 8, i32 4
  %add121 = add nsw i32 %conv117, %cond120
  %sub122 = sub nsw i32 %add121, 1
  %59 = load i32, i32* @target_flags, align 4
  %and123 = and i32 %59, 33554432
  %tobool124 = icmp ne i32 %and123, 0
  %cond125 = select i1 %tobool124, i32 8, i32 4
  %div126 = sdiv i32 %sub122, %cond125
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.110, %cond.true.106
  %cond128 = phi i32 [ %cond109, %cond.true.106 ], [ %div126, %cond.false.110 ]
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.127, %cond.true.95
  %cond130 = phi i32 [ %cond98, %cond.true.95 ], [ %cond128, %cond.end.127 ]
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.end.129, %lor.end.86
  %cond132 = phi i32 [ %cond87, %lor.end.86 ], [ %cond130, %cond.end.129 ]
  %cmp133 = icmp sgt i32 %cond44, %cond132
  br i1 %cmp133, label %if.then.135, label %if.end

if.then.135:                                      ; preds = %cond.end.131
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %cond.end.131
  br label %if.end.136

if.end.136:                                       ; preds = %if.end, %entry
  %60 = load i32, i32* %regno, align 4
  %idxprom137 = zext i32 %60 to i64
  %61 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e138 = getelementptr inbounds %struct.value_data, %struct.value_data* %61, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e138, i32 0, i64 %idxprom137
  %oldest_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx139, i32 0, i32 1
  %62 = load i32, i32* %oldest_regno, align 4
  store i32 %62, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.136
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %regno, align 4
  %cmp140 = icmp ne i32 %63, %64
  br i1 %cmp140, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load i32, i32* %class.addr, align 4
  %idxprom142 = zext i32 %65 to i64
  %arrayidx143 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom142
  %66 = load i64, i64* %arrayidx143, align 8
  %67 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %67 to i64
  %shl = shl i64 1, %sh_prom
  %and144 = and i64 %66, %shl
  %tobool145 = icmp ne i64 %and144, 0
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.167

land.lhs.true.146:                                ; preds = %for.body
  %68 = load i32, i32* %i, align 4
  %idxprom147 = zext i32 %68 to i64
  %69 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e148 = getelementptr inbounds %struct.value_data, %struct.value_data* %69, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e148, i32 0, i64 %idxprom147
  %mode150 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx149, i32 0, i32 0
  %70 = load i32, i32* %mode150, align 4
  %71 = load i32, i32* %mode, align 4
  %cmp151 = icmp eq i32 %70, %71
  br i1 %cmp151, label %if.then.159, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %land.lhs.true.146
  %72 = load i32, i32* %i, align 4
  %idxprom154 = zext i32 %72 to i64
  %73 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e155 = getelementptr inbounds %struct.value_data, %struct.value_data* %73, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e155, i32 0, i64 %idxprom154
  %mode157 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx156, i32 0, i32 0
  %74 = load i32, i32* %mode157, align 4
  %75 = load i32, i32* %mode, align 4
  %76 = load i32, i32* %i, align 4
  %call = call zeroext i1 @mode_change_ok(i32 %74, i32 %75, i32 %76)
  br i1 %call, label %if.then.159, label %if.end.167

if.then.159:                                      ; preds = %lor.lhs.false.153, %land.lhs.true.146
  %77 = load i32, i32* %mode, align 4
  %78 = load i32, i32* %i, align 4
  %call160 = call %struct.rtx_def* @gen_rtx_fmt_i0(i32 61, i32 %77, i32 %78)
  store %struct.rtx_def* %call160, %struct.rtx_def** %new, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 1
  %rtuint163 = bitcast %union.rtunion_def* %arrayidx162 to i32*
  %80 = load i32, i32* %rtuint163, align 4
  %81 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 1
  %rtuint166 = bitcast %union.rtunion_def* %arrayidx165 to i32*
  store i32 %80, i32* %rtuint166, align 4
  %82 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  store %struct.rtx_def* %82, %struct.rtx_def** %retval
  br label %return

if.end.167:                                       ; preds = %lor.lhs.false.153, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.167
  %83 = load i32, i32* %i, align 4
  %idxprom168 = zext i32 %83 to i64
  %84 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e169 = getelementptr inbounds %struct.value_data, %struct.value_data* %84, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e169, i32 0, i64 %idxprom168
  %next_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx170, i32 0, i32 2
  %85 = load i32, i32* %next_regno, align 4
  store i32 %85, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.159, %if.then.135
  %86 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %86
}

declare i32 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mode_change_ok(i32 %orig_mode, i32 %new_mode, i32 %regno) #0 {
entry:
  %retval = alloca i1, align 1
  %orig_mode.addr = alloca i32, align 4
  %new_mode.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %orig_mode, i32* %orig_mode.addr, align 4
  store i32 %new_mode, i32* %new_mode.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %orig_mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %new_mode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval
  ret i1 %4
}

declare %struct.rtx_def* @gen_rtx_fmt_i0(i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @replace_oldest_value_addr(%struct.rtx_def** %loc, i32 %class, i32 %mode, %struct.rtx_def* %insn, %struct.value_data* %vd) #0 {
entry:
  %retval = alloca i1, align 1
  %loc.addr = alloca %struct.rtx_def**, align 8
  %class.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %vd.addr = alloca %struct.value_data*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %changed = alloca i8, align 1
  %orig_op0 = alloca %struct.rtx_def*, align 8
  %orig_op1 = alloca %struct.rtx_def*, align 8
  %code0 = alloca i32, align 4
  %code1 = alloca i32, align 4
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  %locI = alloca %struct.rtx_def**, align 8
  %locB = alloca %struct.rtx_def**, align 8
  %index_op = alloca i32, align 4
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  store i8 0, i8* %changed, align 1
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 75, label %sw.bb
    i32 99, label %sw.bb.504
    i32 98, label %sw.bb.504
    i32 101, label %sw.bb.504
    i32 97, label %sw.bb.504
    i32 96, label %sw.bb.504
    i32 100, label %sw.bb.504
    i32 66, label %sw.bb.505
    i32 61, label %sw.bb.507
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %orig_op0, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %orig_op1, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %orig_op0, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load4 = load i32, i32* %10, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  store i32 %bf.clear5, i32* %code0, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %orig_op1, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load6 = load i32, i32* %12, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  store i32 %bf.clear7, i32* %code1, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %orig_op0, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %op0, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %orig_op1, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %op1, align 8
  store %struct.rtx_def** null, %struct.rtx_def*** %locI, align 8
  store %struct.rtx_def** null, %struct.rtx_def*** %locB, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load8 = load i32, i32* %16, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp = icmp eq i32 %bf.clear9, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %op0, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load13 = load i32, i32* %20, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  store i32 %bf.clear14, i32* %code0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load15 = load i32, i32* %22, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 63
  br i1 %cmp17, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %op1, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load22 = load i32, i32* %26, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  store i32 %bf.clear23, i32* %code1, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.18, %if.end
  %27 = load i32, i32* %code0, align 4
  %cmp25 = icmp eq i32 %27, 78
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.24
  %28 = load i32, i32* %code0, align 4
  %cmp26 = icmp eq i32 %28, 120
  br i1 %cmp26, label %if.then.33, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %29 = load i32, i32* %code0, align 4
  %cmp28 = icmp eq i32 %29, 122
  br i1 %cmp28, label %if.then.33, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.27
  %30 = load i32, i32* %code0, align 4
  %cmp30 = icmp eq i32 %30, 121
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.29
  %31 = load i32, i32* %code1, align 4
  %cmp32 = icmp eq i32 %31, 66
  br i1 %cmp32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false.29, %lor.lhs.false.27, %lor.lhs.false, %if.end.24
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  store %struct.rtx_def** %rtx36, %struct.rtx_def*** %locI, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  store %struct.rtx_def** %rtx39, %struct.rtx_def*** %locB, align 8
  br label %if.end.485

if.else:                                          ; preds = %lor.lhs.false.31
  %34 = load i32, i32* %code1, align 4
  %cmp40 = icmp eq i32 %34, 78
  br i1 %cmp40, label %if.then.49, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.else
  %35 = load i32, i32* %code1, align 4
  %cmp42 = icmp eq i32 %35, 120
  br i1 %cmp42, label %if.then.49, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.41
  %36 = load i32, i32* %code1, align 4
  %cmp44 = icmp eq i32 %36, 122
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.43
  %37 = load i32, i32* %code1, align 4
  %cmp46 = icmp eq i32 %37, 121
  br i1 %cmp46, label %if.then.49, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.45
  %38 = load i32, i32* %code0, align 4
  %cmp48 = icmp eq i32 %38, 66
  br i1 %cmp48, label %if.then.49, label %if.else.56

if.then.49:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false.45, %lor.lhs.false.43, %lor.lhs.false.41, %if.else
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  store %struct.rtx_def** %rtx52, %struct.rtx_def*** %locI, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  store %struct.rtx_def** %rtx55, %struct.rtx_def*** %locB, align 8
  br label %if.end.484

if.else.56:                                       ; preds = %lor.lhs.false.47
  %41 = load i32, i32* %code0, align 4
  %cmp57 = icmp eq i32 %41, 54
  br i1 %cmp57, label %if.then.64, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.else.56
  %42 = load i32, i32* %code0, align 4
  %cmp59 = icmp eq i32 %42, 58
  br i1 %cmp59, label %if.then.64, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.58
  %43 = load i32, i32* %code0, align 4
  %cmp61 = icmp eq i32 %43, 68
  br i1 %cmp61, label %if.then.64, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.60
  %44 = load i32, i32* %code0, align 4
  %cmp63 = icmp eq i32 %44, 67
  br i1 %cmp63, label %if.then.64, label %if.else.68

if.then.64:                                       ; preds = %lor.lhs.false.62, %lor.lhs.false.60, %lor.lhs.false.58, %if.else.56
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 1
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  store %struct.rtx_def** %rtx67, %struct.rtx_def*** %locB, align 8
  br label %if.end.483

if.else.68:                                       ; preds = %lor.lhs.false.62
  %46 = load i32, i32* %code1, align 4
  %cmp69 = icmp eq i32 %46, 54
  br i1 %cmp69, label %if.then.76, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.else.68
  %47 = load i32, i32* %code1, align 4
  %cmp71 = icmp eq i32 %47, 58
  br i1 %cmp71, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.70
  %48 = load i32, i32* %code1, align 4
  %cmp73 = icmp eq i32 %48, 68
  br i1 %cmp73, label %if.then.76, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.72
  %49 = load i32, i32* %code1, align 4
  %cmp75 = icmp eq i32 %49, 67
  br i1 %cmp75, label %if.then.76, label %if.else.80

if.then.76:                                       ; preds = %lor.lhs.false.74, %lor.lhs.false.72, %lor.lhs.false.70, %if.else.68
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  store %struct.rtx_def** %rtx79, %struct.rtx_def*** %locB, align 8
  br label %if.end.482

if.else.80:                                       ; preds = %lor.lhs.false.74
  %51 = load i32, i32* %code0, align 4
  %cmp81 = icmp eq i32 %51, 61
  br i1 %cmp81, label %land.lhs.true, label %if.else.459

land.lhs.true:                                    ; preds = %if.else.80
  %52 = load i32, i32* %code1, align 4
  %cmp82 = icmp eq i32 %52, 61
  br i1 %cmp82, label %if.then.83, label %if.else.459

if.then.83:                                       ; preds = %land.lhs.true
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx85 to i32*
  %54 = load i32, i32* %rtuint, align 4
  %cmp86 = icmp ult i32 %54, 7
  br i1 %cmp86, label %land.lhs.true.122, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %if.then.83
  %55 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtuint90 = bitcast %union.rtunion_def* %arrayidx89 to i32*
  %56 = load i32, i32* %rtuint90, align 4
  %cmp91 = icmp uge i32 %56, 37
  br i1 %cmp91, label %land.lhs.true.92, label %lor.lhs.false.97

land.lhs.true.92:                                 ; preds = %lor.lhs.false.87
  %57 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtuint95 = bitcast %union.rtunion_def* %arrayidx94 to i32*
  %58 = load i32, i32* %rtuint95, align 4
  %cmp96 = icmp ule i32 %58, 44
  br i1 %cmp96, label %land.lhs.true.122, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %land.lhs.true.92, %lor.lhs.false.87
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtuint100 = bitcast %union.rtunion_def* %arrayidx99 to i32*
  %60 = load i32, i32* %rtuint100, align 4
  %idxprom = zext i32 %60 to i64
  %61 = load i16*, i16** @reg_renumber, align 8
  %arrayidx101 = getelementptr inbounds i16, i16* %61, i64 %idxprom
  %62 = load i16, i16* %arrayidx101, align 2
  %conv = sext i16 %62 to i32
  %cmp102 = icmp uge i32 %conv, 37
  br i1 %cmp102, label %land.lhs.true.104, label %lor.lhs.false.113

land.lhs.true.104:                                ; preds = %lor.lhs.false.97
  %63 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtuint107 = bitcast %union.rtunion_def* %arrayidx106 to i32*
  %64 = load i32, i32* %rtuint107, align 4
  %idxprom108 = zext i32 %64 to i64
  %65 = load i16*, i16** @reg_renumber, align 8
  %arrayidx109 = getelementptr inbounds i16, i16* %65, i64 %idxprom108
  %66 = load i16, i16* %arrayidx109, align 2
  %conv110 = sext i16 %66 to i32
  %cmp111 = icmp ule i32 %conv110, 44
  br i1 %cmp111, label %land.lhs.true.122, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.104, %lor.lhs.false.97
  %67 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtuint116 = bitcast %union.rtunion_def* %arrayidx115 to i32*
  %68 = load i32, i32* %rtuint116, align 4
  %idxprom117 = zext i32 %68 to i64
  %69 = load i16*, i16** @reg_renumber, align 8
  %arrayidx118 = getelementptr inbounds i16, i16* %69, i64 %idxprom117
  %70 = load i16, i16* %arrayidx118, align 2
  %conv119 = sext i16 %70 to i32
  %cmp120 = icmp ult i32 %conv119, 7
  br i1 %cmp120, label %land.lhs.true.122, label %if.else.180

land.lhs.true.122:                                ; preds = %lor.lhs.false.113, %land.lhs.true.104, %land.lhs.true.92, %if.then.83
  %71 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 0
  %rtuint125 = bitcast %union.rtunion_def* %arrayidx124 to i32*
  %72 = load i32, i32* %rtuint125, align 4
  %cmp126 = icmp ule i32 %72, 7
  br i1 %cmp126, label %if.then.179, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %land.lhs.true.122
  %73 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtuint131 = bitcast %union.rtunion_def* %arrayidx130 to i32*
  %74 = load i32, i32* %rtuint131, align 4
  %cmp132 = icmp eq i32 %74, 16
  br i1 %cmp132, label %if.then.179, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.128
  %75 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 0
  %rtuint137 = bitcast %union.rtunion_def* %arrayidx136 to i32*
  %76 = load i32, i32* %rtuint137, align 4
  %cmp138 = icmp eq i32 %76, 20
  br i1 %cmp138, label %if.then.179, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %lor.lhs.false.134
  %77 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtuint143 = bitcast %union.rtunion_def* %arrayidx142 to i32*
  %78 = load i32, i32* %rtuint143, align 4
  %cmp144 = icmp uge i32 %78, 37
  br i1 %cmp144, label %land.lhs.true.146, label %lor.lhs.false.152

land.lhs.true.146:                                ; preds = %lor.lhs.false.140
  %79 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 0
  %rtuint149 = bitcast %union.rtunion_def* %arrayidx148 to i32*
  %80 = load i32, i32* %rtuint149, align 4
  %cmp150 = icmp ule i32 %80, 44
  br i1 %cmp150, label %if.then.179, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %land.lhs.true.146, %lor.lhs.false.140
  %81 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 0
  %rtuint155 = bitcast %union.rtunion_def* %arrayidx154 to i32*
  %82 = load i32, i32* %rtuint155, align 4
  %idxprom156 = zext i32 %82 to i64
  %83 = load i16*, i16** @reg_renumber, align 8
  %arrayidx157 = getelementptr inbounds i16, i16* %83, i64 %idxprom156
  %84 = load i16, i16* %arrayidx157, align 2
  %conv158 = sext i16 %84 to i32
  %cmp159 = icmp uge i32 %conv158, 37
  br i1 %cmp159, label %land.lhs.true.161, label %lor.lhs.false.170

land.lhs.true.161:                                ; preds = %lor.lhs.false.152
  %85 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 0
  %rtuint164 = bitcast %union.rtunion_def* %arrayidx163 to i32*
  %86 = load i32, i32* %rtuint164, align 4
  %idxprom165 = zext i32 %86 to i64
  %87 = load i16*, i16** @reg_renumber, align 8
  %arrayidx166 = getelementptr inbounds i16, i16* %87, i64 %idxprom165
  %88 = load i16, i16* %arrayidx166, align 2
  %conv167 = sext i16 %88 to i32
  %cmp168 = icmp ule i32 %conv167, 44
  br i1 %cmp168, label %if.then.179, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %land.lhs.true.161, %lor.lhs.false.152
  %89 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 0
  %rtuint173 = bitcast %union.rtunion_def* %arrayidx172 to i32*
  %90 = load i32, i32* %rtuint173, align 4
  %idxprom174 = zext i32 %90 to i64
  %91 = load i16*, i16** @reg_renumber, align 8
  %arrayidx175 = getelementptr inbounds i16, i16* %91, i64 %idxprom174
  %92 = load i16, i16* %arrayidx175, align 2
  %conv176 = sext i16 %92 to i32
  %cmp177 = icmp ule i32 %conv176, 7
  br i1 %cmp177, label %if.then.179, label %if.else.180

if.then.179:                                      ; preds = %lor.lhs.false.170, %land.lhs.true.161, %land.lhs.true.146, %lor.lhs.false.134, %lor.lhs.false.128, %land.lhs.true.122
  store i32 0, i32* %index_op, align 4
  br label %if.end.450

if.else.180:                                      ; preds = %lor.lhs.false.170, %lor.lhs.false.113
  %93 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 0
  %rtuint183 = bitcast %union.rtunion_def* %arrayidx182 to i32*
  %94 = load i32, i32* %rtuint183, align 4
  %cmp184 = icmp ult i32 %94, 7
  br i1 %cmp184, label %land.lhs.true.225, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %if.else.180
  %95 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld187, i32 0, i64 0
  %rtuint189 = bitcast %union.rtunion_def* %arrayidx188 to i32*
  %96 = load i32, i32* %rtuint189, align 4
  %cmp190 = icmp uge i32 %96, 37
  br i1 %cmp190, label %land.lhs.true.192, label %lor.lhs.false.198

land.lhs.true.192:                                ; preds = %lor.lhs.false.186
  %97 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld193, i32 0, i64 0
  %rtuint195 = bitcast %union.rtunion_def* %arrayidx194 to i32*
  %98 = load i32, i32* %rtuint195, align 4
  %cmp196 = icmp ule i32 %98, 44
  br i1 %cmp196, label %land.lhs.true.225, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %land.lhs.true.192, %lor.lhs.false.186
  %99 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld199, i32 0, i64 0
  %rtuint201 = bitcast %union.rtunion_def* %arrayidx200 to i32*
  %100 = load i32, i32* %rtuint201, align 4
  %idxprom202 = zext i32 %100 to i64
  %101 = load i16*, i16** @reg_renumber, align 8
  %arrayidx203 = getelementptr inbounds i16, i16* %101, i64 %idxprom202
  %102 = load i16, i16* %arrayidx203, align 2
  %conv204 = sext i16 %102 to i32
  %cmp205 = icmp uge i32 %conv204, 37
  br i1 %cmp205, label %land.lhs.true.207, label %lor.lhs.false.216

land.lhs.true.207:                                ; preds = %lor.lhs.false.198
  %103 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 0
  %rtuint210 = bitcast %union.rtunion_def* %arrayidx209 to i32*
  %104 = load i32, i32* %rtuint210, align 4
  %idxprom211 = zext i32 %104 to i64
  %105 = load i16*, i16** @reg_renumber, align 8
  %arrayidx212 = getelementptr inbounds i16, i16* %105, i64 %idxprom211
  %106 = load i16, i16* %arrayidx212, align 2
  %conv213 = sext i16 %106 to i32
  %cmp214 = icmp ule i32 %conv213, 44
  br i1 %cmp214, label %land.lhs.true.225, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %land.lhs.true.207, %lor.lhs.false.198
  %107 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld217, i32 0, i64 0
  %rtuint219 = bitcast %union.rtunion_def* %arrayidx218 to i32*
  %108 = load i32, i32* %rtuint219, align 4
  %idxprom220 = zext i32 %108 to i64
  %109 = load i16*, i16** @reg_renumber, align 8
  %arrayidx221 = getelementptr inbounds i16, i16* %109, i64 %idxprom220
  %110 = load i16, i16* %arrayidx221, align 2
  %conv222 = sext i16 %110 to i32
  %cmp223 = icmp ult i32 %conv222, 7
  br i1 %cmp223, label %land.lhs.true.225, label %if.else.283

land.lhs.true.225:                                ; preds = %lor.lhs.false.216, %land.lhs.true.207, %land.lhs.true.192, %if.else.180
  %111 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld226, i32 0, i64 0
  %rtuint228 = bitcast %union.rtunion_def* %arrayidx227 to i32*
  %112 = load i32, i32* %rtuint228, align 4
  %cmp229 = icmp ule i32 %112, 7
  br i1 %cmp229, label %if.then.282, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %land.lhs.true.225
  %113 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 0
  %rtuint234 = bitcast %union.rtunion_def* %arrayidx233 to i32*
  %114 = load i32, i32* %rtuint234, align 4
  %cmp235 = icmp eq i32 %114, 16
  br i1 %cmp235, label %if.then.282, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %lor.lhs.false.231
  %115 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 0
  %rtuint240 = bitcast %union.rtunion_def* %arrayidx239 to i32*
  %116 = load i32, i32* %rtuint240, align 4
  %cmp241 = icmp eq i32 %116, 20
  br i1 %cmp241, label %if.then.282, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %lor.lhs.false.237
  %117 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 0
  %rtuint246 = bitcast %union.rtunion_def* %arrayidx245 to i32*
  %118 = load i32, i32* %rtuint246, align 4
  %cmp247 = icmp uge i32 %118, 37
  br i1 %cmp247, label %land.lhs.true.249, label %lor.lhs.false.255

land.lhs.true.249:                                ; preds = %lor.lhs.false.243
  %119 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 0
  %rtuint252 = bitcast %union.rtunion_def* %arrayidx251 to i32*
  %120 = load i32, i32* %rtuint252, align 4
  %cmp253 = icmp ule i32 %120, 44
  br i1 %cmp253, label %if.then.282, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %land.lhs.true.249, %lor.lhs.false.243
  %121 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld256 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld256, i32 0, i64 0
  %rtuint258 = bitcast %union.rtunion_def* %arrayidx257 to i32*
  %122 = load i32, i32* %rtuint258, align 4
  %idxprom259 = zext i32 %122 to i64
  %123 = load i16*, i16** @reg_renumber, align 8
  %arrayidx260 = getelementptr inbounds i16, i16* %123, i64 %idxprom259
  %124 = load i16, i16* %arrayidx260, align 2
  %conv261 = sext i16 %124 to i32
  %cmp262 = icmp uge i32 %conv261, 37
  br i1 %cmp262, label %land.lhs.true.264, label %lor.lhs.false.273

land.lhs.true.264:                                ; preds = %lor.lhs.false.255
  %125 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld265 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx266 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld265, i32 0, i64 0
  %rtuint267 = bitcast %union.rtunion_def* %arrayidx266 to i32*
  %126 = load i32, i32* %rtuint267, align 4
  %idxprom268 = zext i32 %126 to i64
  %127 = load i16*, i16** @reg_renumber, align 8
  %arrayidx269 = getelementptr inbounds i16, i16* %127, i64 %idxprom268
  %128 = load i16, i16* %arrayidx269, align 2
  %conv270 = sext i16 %128 to i32
  %cmp271 = icmp ule i32 %conv270, 44
  br i1 %cmp271, label %if.then.282, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %land.lhs.true.264, %lor.lhs.false.255
  %129 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 0
  %rtuint276 = bitcast %union.rtunion_def* %arrayidx275 to i32*
  %130 = load i32, i32* %rtuint276, align 4
  %idxprom277 = zext i32 %130 to i64
  %131 = load i16*, i16** @reg_renumber, align 8
  %arrayidx278 = getelementptr inbounds i16, i16* %131, i64 %idxprom277
  %132 = load i16, i16* %arrayidx278, align 2
  %conv279 = sext i16 %132 to i32
  %cmp280 = icmp ule i32 %conv279, 7
  br i1 %cmp280, label %if.then.282, label %if.else.283

if.then.282:                                      ; preds = %lor.lhs.false.273, %land.lhs.true.264, %land.lhs.true.249, %lor.lhs.false.237, %lor.lhs.false.231, %land.lhs.true.225
  store i32 1, i32* %index_op, align 4
  br label %if.end.449

if.else.283:                                      ; preds = %lor.lhs.false.273, %lor.lhs.false.216
  %133 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 0
  %rtuint286 = bitcast %union.rtunion_def* %arrayidx285 to i32*
  %134 = load i32, i32* %rtuint286, align 4
  %cmp287 = icmp ule i32 %134, 7
  br i1 %cmp287, label %if.then.340, label %lor.lhs.false.289

lor.lhs.false.289:                                ; preds = %if.else.283
  %135 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld290, i32 0, i64 0
  %rtuint292 = bitcast %union.rtunion_def* %arrayidx291 to i32*
  %136 = load i32, i32* %rtuint292, align 4
  %cmp293 = icmp eq i32 %136, 16
  br i1 %cmp293, label %if.then.340, label %lor.lhs.false.295

lor.lhs.false.295:                                ; preds = %lor.lhs.false.289
  %137 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld296, i32 0, i64 0
  %rtuint298 = bitcast %union.rtunion_def* %arrayidx297 to i32*
  %138 = load i32, i32* %rtuint298, align 4
  %cmp299 = icmp eq i32 %138, 20
  br i1 %cmp299, label %if.then.340, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %lor.lhs.false.295
  %139 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld302, i32 0, i64 0
  %rtuint304 = bitcast %union.rtunion_def* %arrayidx303 to i32*
  %140 = load i32, i32* %rtuint304, align 4
  %cmp305 = icmp uge i32 %140, 37
  br i1 %cmp305, label %land.lhs.true.307, label %lor.lhs.false.313

land.lhs.true.307:                                ; preds = %lor.lhs.false.301
  %141 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld308, i32 0, i64 0
  %rtuint310 = bitcast %union.rtunion_def* %arrayidx309 to i32*
  %142 = load i32, i32* %rtuint310, align 4
  %cmp311 = icmp ule i32 %142, 44
  br i1 %cmp311, label %if.then.340, label %lor.lhs.false.313

lor.lhs.false.313:                                ; preds = %land.lhs.true.307, %lor.lhs.false.301
  %143 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld314 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx315 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld314, i32 0, i64 0
  %rtuint316 = bitcast %union.rtunion_def* %arrayidx315 to i32*
  %144 = load i32, i32* %rtuint316, align 4
  %idxprom317 = zext i32 %144 to i64
  %145 = load i16*, i16** @reg_renumber, align 8
  %arrayidx318 = getelementptr inbounds i16, i16* %145, i64 %idxprom317
  %146 = load i16, i16* %arrayidx318, align 2
  %conv319 = sext i16 %146 to i32
  %cmp320 = icmp uge i32 %conv319, 37
  br i1 %cmp320, label %land.lhs.true.322, label %lor.lhs.false.331

land.lhs.true.322:                                ; preds = %lor.lhs.false.313
  %147 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %arrayidx324 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld323, i32 0, i64 0
  %rtuint325 = bitcast %union.rtunion_def* %arrayidx324 to i32*
  %148 = load i32, i32* %rtuint325, align 4
  %idxprom326 = zext i32 %148 to i64
  %149 = load i16*, i16** @reg_renumber, align 8
  %arrayidx327 = getelementptr inbounds i16, i16* %149, i64 %idxprom326
  %150 = load i16, i16* %arrayidx327, align 2
  %conv328 = sext i16 %150 to i32
  %cmp329 = icmp ule i32 %conv328, 44
  br i1 %cmp329, label %if.then.340, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %land.lhs.true.322, %lor.lhs.false.313
  %151 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld332 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx333 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld332, i32 0, i64 0
  %rtuint334 = bitcast %union.rtunion_def* %arrayidx333 to i32*
  %152 = load i32, i32* %rtuint334, align 4
  %idxprom335 = zext i32 %152 to i64
  %153 = load i16*, i16** @reg_renumber, align 8
  %arrayidx336 = getelementptr inbounds i16, i16* %153, i64 %idxprom335
  %154 = load i16, i16* %arrayidx336, align 2
  %conv337 = sext i16 %154 to i32
  %cmp338 = icmp ule i32 %conv337, 7
  br i1 %cmp338, label %if.then.340, label %if.else.341

if.then.340:                                      ; preds = %lor.lhs.false.331, %land.lhs.true.322, %land.lhs.true.307, %lor.lhs.false.295, %lor.lhs.false.289, %if.else.283
  store i32 0, i32* %index_op, align 4
  br label %if.end.448

if.else.341:                                      ; preds = %lor.lhs.false.331
  %155 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld342, i32 0, i64 0
  %rtuint344 = bitcast %union.rtunion_def* %arrayidx343 to i32*
  %156 = load i32, i32* %rtuint344, align 4
  %cmp345 = icmp ule i32 %156, 7
  br i1 %cmp345, label %if.then.398, label %lor.lhs.false.347

lor.lhs.false.347:                                ; preds = %if.else.341
  %157 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld348 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx349 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld348, i32 0, i64 0
  %rtuint350 = bitcast %union.rtunion_def* %arrayidx349 to i32*
  %158 = load i32, i32* %rtuint350, align 4
  %cmp351 = icmp eq i32 %158, 16
  br i1 %cmp351, label %if.then.398, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false.347
  %159 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld354, i32 0, i64 0
  %rtuint356 = bitcast %union.rtunion_def* %arrayidx355 to i32*
  %160 = load i32, i32* %rtuint356, align 4
  %cmp357 = icmp eq i32 %160, 20
  br i1 %cmp357, label %if.then.398, label %lor.lhs.false.359

lor.lhs.false.359:                                ; preds = %lor.lhs.false.353
  %161 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld360, i32 0, i64 0
  %rtuint362 = bitcast %union.rtunion_def* %arrayidx361 to i32*
  %162 = load i32, i32* %rtuint362, align 4
  %cmp363 = icmp uge i32 %162, 37
  br i1 %cmp363, label %land.lhs.true.365, label %lor.lhs.false.371

land.lhs.true.365:                                ; preds = %lor.lhs.false.359
  %163 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %163, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 0
  %rtuint368 = bitcast %union.rtunion_def* %arrayidx367 to i32*
  %164 = load i32, i32* %rtuint368, align 4
  %cmp369 = icmp ule i32 %164, 44
  br i1 %cmp369, label %if.then.398, label %lor.lhs.false.371

lor.lhs.false.371:                                ; preds = %land.lhs.true.365, %lor.lhs.false.359
  %165 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld372 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx373 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld372, i32 0, i64 0
  %rtuint374 = bitcast %union.rtunion_def* %arrayidx373 to i32*
  %166 = load i32, i32* %rtuint374, align 4
  %idxprom375 = zext i32 %166 to i64
  %167 = load i16*, i16** @reg_renumber, align 8
  %arrayidx376 = getelementptr inbounds i16, i16* %167, i64 %idxprom375
  %168 = load i16, i16* %arrayidx376, align 2
  %conv377 = sext i16 %168 to i32
  %cmp378 = icmp uge i32 %conv377, 37
  br i1 %cmp378, label %land.lhs.true.380, label %lor.lhs.false.389

land.lhs.true.380:                                ; preds = %lor.lhs.false.371
  %169 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld381 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld381, i32 0, i64 0
  %rtuint383 = bitcast %union.rtunion_def* %arrayidx382 to i32*
  %170 = load i32, i32* %rtuint383, align 4
  %idxprom384 = zext i32 %170 to i64
  %171 = load i16*, i16** @reg_renumber, align 8
  %arrayidx385 = getelementptr inbounds i16, i16* %171, i64 %idxprom384
  %172 = load i16, i16* %arrayidx385, align 2
  %conv386 = sext i16 %172 to i32
  %cmp387 = icmp ule i32 %conv386, 44
  br i1 %cmp387, label %if.then.398, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %land.lhs.true.380, %lor.lhs.false.371
  %173 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld390 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx391 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld390, i32 0, i64 0
  %rtuint392 = bitcast %union.rtunion_def* %arrayidx391 to i32*
  %174 = load i32, i32* %rtuint392, align 4
  %idxprom393 = zext i32 %174 to i64
  %175 = load i16*, i16** @reg_renumber, align 8
  %arrayidx394 = getelementptr inbounds i16, i16* %175, i64 %idxprom393
  %176 = load i16, i16* %arrayidx394, align 2
  %conv395 = sext i16 %176 to i32
  %cmp396 = icmp ule i32 %conv395, 7
  br i1 %cmp396, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %lor.lhs.false.389, %land.lhs.true.380, %land.lhs.true.365, %lor.lhs.false.353, %lor.lhs.false.347, %if.else.341
  store i32 1, i32* %index_op, align 4
  br label %if.end.447

if.else.399:                                      ; preds = %lor.lhs.false.389
  %177 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld400 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %arrayidx401 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld400, i32 0, i64 0
  %rtuint402 = bitcast %union.rtunion_def* %arrayidx401 to i32*
  %178 = load i32, i32* %rtuint402, align 4
  %cmp403 = icmp ult i32 %178, 7
  br i1 %cmp403, label %if.then.444, label %lor.lhs.false.405

lor.lhs.false.405:                                ; preds = %if.else.399
  %179 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld406 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx407 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld406, i32 0, i64 0
  %rtuint408 = bitcast %union.rtunion_def* %arrayidx407 to i32*
  %180 = load i32, i32* %rtuint408, align 4
  %cmp409 = icmp uge i32 %180, 37
  br i1 %cmp409, label %land.lhs.true.411, label %lor.lhs.false.417

land.lhs.true.411:                                ; preds = %lor.lhs.false.405
  %181 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld412, i32 0, i64 0
  %rtuint414 = bitcast %union.rtunion_def* %arrayidx413 to i32*
  %182 = load i32, i32* %rtuint414, align 4
  %cmp415 = icmp ule i32 %182, 44
  br i1 %cmp415, label %if.then.444, label %lor.lhs.false.417

lor.lhs.false.417:                                ; preds = %land.lhs.true.411, %lor.lhs.false.405
  %183 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx419 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld418, i32 0, i64 0
  %rtuint420 = bitcast %union.rtunion_def* %arrayidx419 to i32*
  %184 = load i32, i32* %rtuint420, align 4
  %idxprom421 = zext i32 %184 to i64
  %185 = load i16*, i16** @reg_renumber, align 8
  %arrayidx422 = getelementptr inbounds i16, i16* %185, i64 %idxprom421
  %186 = load i16, i16* %arrayidx422, align 2
  %conv423 = sext i16 %186 to i32
  %cmp424 = icmp uge i32 %conv423, 37
  br i1 %cmp424, label %land.lhs.true.426, label %lor.lhs.false.435

land.lhs.true.426:                                ; preds = %lor.lhs.false.417
  %187 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld427 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx428 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld427, i32 0, i64 0
  %rtuint429 = bitcast %union.rtunion_def* %arrayidx428 to i32*
  %188 = load i32, i32* %rtuint429, align 4
  %idxprom430 = zext i32 %188 to i64
  %189 = load i16*, i16** @reg_renumber, align 8
  %arrayidx431 = getelementptr inbounds i16, i16* %189, i64 %idxprom430
  %190 = load i16, i16* %arrayidx431, align 2
  %conv432 = sext i16 %190 to i32
  %cmp433 = icmp ule i32 %conv432, 44
  br i1 %cmp433, label %if.then.444, label %lor.lhs.false.435

lor.lhs.false.435:                                ; preds = %land.lhs.true.426, %lor.lhs.false.417
  %191 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld436 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx437 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld436, i32 0, i64 0
  %rtuint438 = bitcast %union.rtunion_def* %arrayidx437 to i32*
  %192 = load i32, i32* %rtuint438, align 4
  %idxprom439 = zext i32 %192 to i64
  %193 = load i16*, i16** @reg_renumber, align 8
  %arrayidx440 = getelementptr inbounds i16, i16* %193, i64 %idxprom439
  %194 = load i16, i16* %arrayidx440, align 2
  %conv441 = sext i16 %194 to i32
  %cmp442 = icmp ult i32 %conv441, 7
  br i1 %cmp442, label %if.then.444, label %if.else.445

if.then.444:                                      ; preds = %lor.lhs.false.435, %land.lhs.true.426, %land.lhs.true.411, %if.else.399
  store i32 1, i32* %index_op, align 4
  br label %if.end.446

if.else.445:                                      ; preds = %lor.lhs.false.435
  store i32 0, i32* %index_op, align 4
  br label %if.end.446

if.end.446:                                       ; preds = %if.else.445, %if.then.444
  br label %if.end.447

if.end.447:                                       ; preds = %if.end.446, %if.then.398
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %if.then.340
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %if.then.282
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %if.then.179
  %195 = load i32, i32* %index_op, align 4
  %idxprom451 = sext i32 %195 to i64
  %196 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld452 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx453 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld452, i32 0, i64 %idxprom451
  %rtx454 = bitcast %union.rtunion_def* %arrayidx453 to %struct.rtx_def**
  store %struct.rtx_def** %rtx454, %struct.rtx_def*** %locI, align 8
  %197 = load i32, i32* %index_op, align 4
  %tobool = icmp ne i32 %197, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom455 = sext i32 %lnot.ext to i64
  %198 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld456 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %198, i32 0, i32 1
  %arrayidx457 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld456, i32 0, i64 %idxprom455
  %rtx458 = bitcast %union.rtunion_def* %arrayidx457 to %struct.rtx_def**
  store %struct.rtx_def** %rtx458, %struct.rtx_def*** %locB, align 8
  br label %if.end.481

if.else.459:                                      ; preds = %land.lhs.true, %if.else.80
  %199 = load i32, i32* %code0, align 4
  %cmp460 = icmp eq i32 %199, 61
  br i1 %cmp460, label %if.then.462, label %if.else.469

if.then.462:                                      ; preds = %if.else.459
  %200 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld463, i32 0, i64 0
  %rtx465 = bitcast %union.rtunion_def* %arrayidx464 to %struct.rtx_def**
  store %struct.rtx_def** %rtx465, %struct.rtx_def*** %locI, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld466, i32 0, i64 1
  %rtx468 = bitcast %union.rtunion_def* %arrayidx467 to %struct.rtx_def**
  store %struct.rtx_def** %rtx468, %struct.rtx_def*** %locB, align 8
  br label %if.end.480

if.else.469:                                      ; preds = %if.else.459
  %202 = load i32, i32* %code1, align 4
  %cmp470 = icmp eq i32 %202, 61
  br i1 %cmp470, label %if.then.472, label %if.end.479

if.then.472:                                      ; preds = %if.else.469
  %203 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld473 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx474 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld473, i32 0, i64 1
  %rtx475 = bitcast %union.rtunion_def* %arrayidx474 to %struct.rtx_def**
  store %struct.rtx_def** %rtx475, %struct.rtx_def*** %locI, align 8
  %204 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld476 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx477 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld476, i32 0, i64 0
  %rtx478 = bitcast %union.rtunion_def* %arrayidx477 to %struct.rtx_def**
  store %struct.rtx_def** %rtx478, %struct.rtx_def*** %locB, align 8
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.472, %if.else.469
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.479, %if.then.462
  br label %if.end.481

if.end.481:                                       ; preds = %if.end.480, %if.end.450
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.481, %if.then.76
  br label %if.end.483

if.end.483:                                       ; preds = %if.end.482, %if.then.64
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.then.49
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.then.33
  %205 = load %struct.rtx_def**, %struct.rtx_def*** %locI, align 8
  %tobool486 = icmp ne %struct.rtx_def** %205, null
  br i1 %tobool486, label %if.then.487, label %if.end.492

if.then.487:                                      ; preds = %if.end.485
  %206 = load %struct.rtx_def**, %struct.rtx_def*** %locI, align 8
  %207 = load i32, i32* %mode.addr, align 4
  %208 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %209 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call = call zeroext i1 @replace_oldest_value_addr(%struct.rtx_def** %206, i32 10, i32 %207, %struct.rtx_def* %208, %struct.value_data* %209)
  %conv488 = zext i1 %call to i32
  %210 = load i8, i8* %changed, align 1
  %tobool489 = trunc i8 %210 to i1
  %conv490 = zext i1 %tobool489 to i32
  %or = or i32 %conv490, %conv488
  %tobool491 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool491 to i8
  store i8 %frombool, i8* %changed, align 1
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.487, %if.end.485
  %211 = load %struct.rtx_def**, %struct.rtx_def*** %locB, align 8
  %tobool493 = icmp ne %struct.rtx_def** %211, null
  br i1 %tobool493, label %if.then.494, label %if.end.502

if.then.494:                                      ; preds = %if.end.492
  %212 = load %struct.rtx_def**, %struct.rtx_def*** %locB, align 8
  %213 = load i32, i32* %mode.addr, align 4
  %214 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %215 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call495 = call zeroext i1 @replace_oldest_value_addr(%struct.rtx_def** %212, i32 12, i32 %213, %struct.rtx_def* %214, %struct.value_data* %215)
  %conv496 = zext i1 %call495 to i32
  %216 = load i8, i8* %changed, align 1
  %tobool497 = trunc i8 %216 to i1
  %conv498 = zext i1 %tobool497 to i32
  %or499 = or i32 %conv498, %conv496
  %tobool500 = icmp ne i32 %or499, 0
  %frombool501 = zext i1 %tobool500 to i8
  store i8 %frombool501, i8* %changed, align 1
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.494, %if.end.492
  %217 = load i8, i8* %changed, align 1
  %tobool503 = trunc i8 %217 to i1
  store i1 %tobool503, i1* %retval
  br label %return

sw.bb.504:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i1 false, i1* %retval
  br label %return

sw.bb.505:                                        ; preds = %entry
  %218 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %220 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call506 = call zeroext i1 @replace_oldest_value_mem(%struct.rtx_def* %218, %struct.rtx_def* %219, %struct.value_data* %220)
  store i1 %call506, i1* %retval
  br label %return

sw.bb.507:                                        ; preds = %entry
  %221 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %222 = load i32, i32* %class.addr, align 4
  %223 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %224 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call508 = call zeroext i1 @replace_oldest_value_reg(%struct.rtx_def** %221, i32 %222, %struct.rtx_def* %223, %struct.value_data* %224)
  store i1 %call508, i1* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %225 = load i32, i32* %code, align 4
  %idxprom509 = sext i32 %225 to i64
  %arrayidx510 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom509
  %226 = load i8*, i8** %arrayidx510, align 8
  store i8* %226, i8** %fmt, align 8
  %227 = load i32, i32* %code, align 4
  %idxprom511 = sext i32 %227 to i64
  %arrayidx512 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom511
  %228 = load i8, i8* %arrayidx512, align 1
  %conv513 = zext i8 %228 to i32
  %sub = sub nsw i32 %conv513, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.563, %sw.epilog
  %229 = load i32, i32* %i, align 4
  %cmp514 = icmp sge i32 %229, 0
  br i1 %cmp514, label %for.body, label %for.end.565

for.body:                                         ; preds = %for.cond
  %230 = load i32, i32* %i, align 4
  %idxprom516 = sext i32 %230 to i64
  %231 = load i8*, i8** %fmt, align 8
  %arrayidx517 = getelementptr inbounds i8, i8* %231, i64 %idxprom516
  %232 = load i8, i8* %arrayidx517, align 1
  %conv518 = sext i8 %232 to i32
  %cmp519 = icmp eq i32 %conv518, 101
  br i1 %cmp519, label %if.then.521, label %if.else.533

if.then.521:                                      ; preds = %for.body
  %233 = load i32, i32* %i, align 4
  %idxprom522 = sext i32 %233 to i64
  %234 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld523 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %234, i32 0, i32 1
  %arrayidx524 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld523, i32 0, i64 %idxprom522
  %rtx525 = bitcast %union.rtunion_def* %arrayidx524 to %struct.rtx_def**
  %235 = load i32, i32* %class.addr, align 4
  %236 = load i32, i32* %mode.addr, align 4
  %237 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %238 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call526 = call zeroext i1 @replace_oldest_value_addr(%struct.rtx_def** %rtx525, i32 %235, i32 %236, %struct.rtx_def* %237, %struct.value_data* %238)
  %conv527 = zext i1 %call526 to i32
  %239 = load i8, i8* %changed, align 1
  %tobool528 = trunc i8 %239 to i1
  %conv529 = zext i1 %tobool528 to i32
  %or530 = or i32 %conv529, %conv527
  %tobool531 = icmp ne i32 %or530, 0
  %frombool532 = zext i1 %tobool531 to i8
  store i8 %frombool532, i8* %changed, align 1
  br label %if.end.562

if.else.533:                                      ; preds = %for.body
  %240 = load i32, i32* %i, align 4
  %idxprom534 = sext i32 %240 to i64
  %241 = load i8*, i8** %fmt, align 8
  %arrayidx535 = getelementptr inbounds i8, i8* %241, i64 %idxprom534
  %242 = load i8, i8* %arrayidx535, align 1
  %conv536 = sext i8 %242 to i32
  %cmp537 = icmp eq i32 %conv536, 69
  br i1 %cmp537, label %if.then.539, label %if.end.561

if.then.539:                                      ; preds = %if.else.533
  %243 = load i32, i32* %i, align 4
  %idxprom540 = sext i32 %243 to i64
  %244 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld541 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx542 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld541, i32 0, i64 %idxprom540
  %rtvec = bitcast %union.rtunion_def* %arrayidx542 to %struct.rtvec_def**
  %245 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %245, i32 0, i32 0
  %246 = load i32, i32* %num_elem, align 4
  %sub543 = sub nsw i32 %246, 1
  store i32 %sub543, i32* %j, align 4
  br label %for.cond.544

for.cond.544:                                     ; preds = %for.inc, %if.then.539
  %247 = load i32, i32* %j, align 4
  %cmp545 = icmp sge i32 %247, 0
  br i1 %cmp545, label %for.body.547, label %for.end

for.body.547:                                     ; preds = %for.cond.544
  %248 = load i32, i32* %j, align 4
  %idxprom548 = sext i32 %248 to i64
  %249 = load i32, i32* %i, align 4
  %idxprom549 = sext i32 %249 to i64
  %250 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld550 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx551 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld550, i32 0, i64 %idxprom549
  %rtvec552 = bitcast %union.rtunion_def* %arrayidx551 to %struct.rtvec_def**
  %251 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec552, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %251, i32 0, i32 1
  %arrayidx553 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom548
  %252 = load i32, i32* %class.addr, align 4
  %253 = load i32, i32* %mode.addr, align 4
  %254 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %255 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call554 = call zeroext i1 @replace_oldest_value_addr(%struct.rtx_def** %arrayidx553, i32 %252, i32 %253, %struct.rtx_def* %254, %struct.value_data* %255)
  %conv555 = zext i1 %call554 to i32
  %256 = load i8, i8* %changed, align 1
  %tobool556 = trunc i8 %256 to i1
  %conv557 = zext i1 %tobool556 to i32
  %or558 = or i32 %conv557, %conv555
  %tobool559 = icmp ne i32 %or558, 0
  %frombool560 = zext i1 %tobool559 to i8
  store i8 %frombool560, i8* %changed, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.547
  %257 = load i32, i32* %j, align 4
  %dec = add nsw i32 %257, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.544

for.end:                                          ; preds = %for.cond.544
  br label %if.end.561

if.end.561:                                       ; preds = %for.end, %if.else.533
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.561, %if.then.521
  br label %for.inc.563

for.inc.563:                                      ; preds = %if.end.562
  %258 = load i32, i32* %i, align 4
  %dec564 = add nsw i32 %258, -1
  store i32 %dec564, i32* %i, align 4
  br label %for.cond

for.end.565:                                      ; preds = %for.cond
  %259 = load i8, i8* %changed, align 1
  %tobool566 = trunc i8 %259 to i1
  store i1 %tobool566, i1* %retval
  br label %return

return:                                           ; preds = %for.end.565, %sw.bb.507, %sw.bb.505, %sw.bb.504, %if.end.502
  %260 = load i1, i1* %retval
  ret i1 %260
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @replace_oldest_value_reg(%struct.rtx_def** %loc, i32 %class, %struct.rtx_def* %insn, %struct.value_data* %vd) #0 {
entry:
  %retval = alloca i1, align 1
  %loc.addr = alloca %struct.rtx_def**, align 8
  %class.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %vd.addr = alloca %struct.value_data*, align 8
  %new = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  %0 = load i32, i32* %class.addr, align 4
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %3 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call = call %struct.rtx_def* @find_oldest_value_reg(i32 %0, %struct.rtx_def* %2, %struct.value_data* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtint, align 4
  %9 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %11 = load i32, i32* %rtuint, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtuint7 = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %13 = load i32, i32* %rtuint7, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0), i32 %8, i32 %11, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %15, align 8
  store i1 true, i1* %retval
  br label %return

if.end.9:                                         ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.end
  %16 = load i1, i1* %retval
  ret i1 %16
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @replace_oldest_value_mem(%struct.rtx_def* %x, %struct.rtx_def* %insn, %struct.value_data* %vd) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %vd.addr = alloca %struct.value_data*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %call = call zeroext i1 @replace_oldest_value_addr(%struct.rtx_def** %rtx, i32 12, i32 %bf.clear, %struct.rtx_def* %3, %struct.value_data* %4)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define internal void @kill_value_regno(i32 %regno, %struct.value_data* %vd) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %vd.addr = alloca %struct.value_data*, align 8
  %i = alloca i32, align 4
  %next = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e = getelementptr inbounds %struct.value_data, %struct.value_data* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i32 0, i64 %idxprom
  %oldest_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx, i32 0, i32 1
  %2 = load i32, i32* %oldest_regno, align 4
  %3 = load i32, i32* %regno.addr, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %regno.addr, align 4
  %idxprom1 = zext i32 %4 to i64
  %5 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e2 = getelementptr inbounds %struct.value_data, %struct.value_data* %5, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e2, i32 0, i64 %idxprom1
  %oldest_regno4 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx3, i32 0, i32 1
  %6 = load i32, i32* %oldest_regno4, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %7 to i64
  %8 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e6 = getelementptr inbounds %struct.value_data, %struct.value_data* %8, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e6, i32 0, i64 %idxprom5
  %next_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx7, i32 0, i32 2
  %9 = load i32, i32* %next_regno, align 4
  %10 = load i32, i32* %regno.addr, align 4
  %cmp8 = icmp ne i32 %9, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %11 to i64
  %12 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e10 = getelementptr inbounds %struct.value_data, %struct.value_data* %12, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e10, i32 0, i64 %idxprom9
  %next_regno12 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx11, i32 0, i32 2
  %13 = load i32, i32* %next_regno12, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %regno.addr, align 4
  %idxprom13 = zext i32 %14 to i64
  %15 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e14 = getelementptr inbounds %struct.value_data, %struct.value_data* %15, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e14, i32 0, i64 %idxprom13
  %next_regno16 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx15, i32 0, i32 2
  %16 = load i32, i32* %next_regno16, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom17 = zext i32 %17 to i64
  %18 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e18 = getelementptr inbounds %struct.value_data, %struct.value_data* %18, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e18, i32 0, i64 %idxprom17
  %next_regno20 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx19, i32 0, i32 2
  store i32 %16, i32* %next_regno20, align 4
  br label %if.end.40

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %regno.addr, align 4
  %idxprom21 = zext i32 %19 to i64
  %20 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e22 = getelementptr inbounds %struct.value_data, %struct.value_data* %20, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e22, i32 0, i64 %idxprom21
  %next_regno24 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx23, i32 0, i32 2
  %21 = load i32, i32* %next_regno24, align 4
  store i32 %21, i32* %next, align 4
  %cmp25 = icmp ne i32 %21, -1
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.else
  %22 = load i32, i32* %next, align 4
  store i32 %22, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.34, %if.then.26
  %23 = load i32, i32* %i, align 4
  %cmp28 = icmp ne i32 %23, -1
  br i1 %cmp28, label %for.body.29, label %for.end.39

for.body.29:                                      ; preds = %for.cond.27
  %24 = load i32, i32* %next, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom30 = zext i32 %25 to i64
  %26 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e31 = getelementptr inbounds %struct.value_data, %struct.value_data* %26, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e31, i32 0, i64 %idxprom30
  %oldest_regno33 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx32, i32 0, i32 1
  store i32 %24, i32* %oldest_regno33, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.29
  %27 = load i32, i32* %i, align 4
  %idxprom35 = zext i32 %27 to i64
  %28 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e36 = getelementptr inbounds %struct.value_data, %struct.value_data* %28, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e36, i32 0, i64 %idxprom35
  %next_regno38 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx37, i32 0, i32 2
  %29 = load i32, i32* %next_regno38, align 4
  store i32 %29, i32* %i, align 4
  br label %for.cond.27

for.end.39:                                       ; preds = %for.cond.27
  br label %if.end

if.end:                                           ; preds = %for.end.39, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %for.end
  %30 = load i32, i32* %regno.addr, align 4
  %idxprom41 = zext i32 %30 to i64
  %31 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e42 = getelementptr inbounds %struct.value_data, %struct.value_data* %31, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e42, i32 0, i64 %idxprom41
  %mode = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx43, i32 0, i32 0
  store i32 0, i32* %mode, align 4
  %32 = load i32, i32* %regno.addr, align 4
  %33 = load i32, i32* %regno.addr, align 4
  %idxprom44 = zext i32 %33 to i64
  %34 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e45 = getelementptr inbounds %struct.value_data, %struct.value_data* %34, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e45, i32 0, i64 %idxprom44
  %oldest_regno47 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx46, i32 0, i32 1
  store i32 %32, i32* %oldest_regno47, align 4
  %35 = load i32, i32* %regno.addr, align 4
  %idxprom48 = zext i32 %35 to i64
  %36 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e49 = getelementptr inbounds %struct.value_data, %struct.value_data* %36, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e49, i32 0, i64 %idxprom48
  %next_regno51 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx50, i32 0, i32 2
  store i32 -1, i32* %next_regno51, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @kill_set_value(%struct.rtx_def* %x, %struct.rtx_def* %set, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %vd = alloca %struct.value_data*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.value_data*
  store %struct.value_data* %1, %struct.value_data** %vd, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 49
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.value_data*, %struct.value_data** %vd, align 8
  call void @kill_value(%struct.rtx_def* %4, %struct.value_data* %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %9 = load i32, i32* %rtuint, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load5 = load i32, i32* %11, align 8
  %bf.lshr = lshr i32 %bf.load5, 16
  %bf.clear6 = and i32 %bf.lshr, 255
  %12 = load %struct.value_data*, %struct.value_data** %vd, align 8
  call void @set_value_regno(i32 %9, i32 %bf.clear6, %struct.value_data* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_value(%struct.rtx_def* %dest, %struct.rtx_def* %src, %struct.value_data* %vd) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %vd.addr = alloca %struct.value_data*, align 8
  %dr = alloca i32, align 4
  %sr = alloca i32, align 4
  %dn = alloca i32, align 4
  %sn = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %dr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtuint3, align 4
  store i32 %3, i32* %sr, align 4
  %4 = load i32, i32* %sr, align 4
  %5 = load i32, i32* %dr, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %dr, align 4
  %cmp4 = icmp eq i32 %6, 7
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load i32, i32* @frame_pointer_needed, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.6
  %8 = load i32, i32* %dr, align 4
  %cmp7 = icmp eq i32 %8, 6
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %if.end.6
  %9 = load i32, i32* %dr, align 4
  %cmp10 = icmp uge i32 %9, 8
  br i1 %cmp10, label %land.lhs.true.11, label %lor.lhs.false

land.lhs.true.11:                                 ; preds = %if.end.9
  %10 = load i32, i32* %dr, align 4
  %cmp12 = icmp ule i32 %10, 15
  br i1 %cmp12, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.11, %if.end.9
  %11 = load i32, i32* %dr, align 4
  %cmp13 = icmp uge i32 %11, 21
  br i1 %cmp13, label %land.lhs.true.14, label %lor.lhs.false.16

land.lhs.true.14:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %dr, align 4
  %cmp15 = icmp ule i32 %12, 28
  br i1 %cmp15, label %cond.true, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.14, %lor.lhs.false
  %13 = load i32, i32* %dr, align 4
  %cmp17 = icmp uge i32 %13, 45
  br i1 %cmp17, label %land.lhs.true.18, label %lor.lhs.false.20

land.lhs.true.18:                                 ; preds = %lor.lhs.false.16
  %14 = load i32, i32* %dr, align 4
  %cmp19 = icmp ule i32 %14, 52
  br i1 %cmp19, label %cond.true, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.18, %lor.lhs.false.16
  %15 = load i32, i32* %dr, align 4
  %cmp21 = icmp uge i32 %15, 29
  br i1 %cmp21, label %land.lhs.true.22, label %cond.false

land.lhs.true.22:                                 ; preds = %lor.lhs.false.20
  %16 = load i32, i32* %dr, align 4
  %cmp23 = icmp ule i32 %16, 36
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.22, %land.lhs.true.18, %land.lhs.true.14, %land.lhs.true.11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load = load i32, i32* %18, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx24 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %19, 5
  br i1 %cmp25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load26 = load i32, i32* %21, align 8
  %bf.lshr27 = lshr i32 %bf.load26, 16
  %bf.clear28 = and i32 %bf.lshr27, 255
  %idxprom29 = sext i32 %bf.clear28 to i64
  %arrayidx30 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom29
  %22 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %22, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %23 = phi i1 [ true, %cond.true ], [ %cmp31, %lor.rhs ]
  %cond = select i1 %23, i32 2, i32 1
  br label %cond.end.63

cond.false:                                       ; preds = %land.lhs.true.22, %lor.lhs.false.20
  %24 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load32 = load i32, i32* %25, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 16
  %bf.clear34 = and i32 %bf.lshr33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 18
  br i1 %cmp35, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.false
  %26 = load i32, i32* @target_flags, align 4
  %and = and i32 %26, 33554432
  %tobool37 = icmp ne i32 %and, 0
  %cond38 = select i1 %tobool37, i32 2, i32 3
  br label %cond.end.61

cond.false.39:                                    ; preds = %cond.false
  %27 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
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
  %30 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
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

cond.end.61:                                      ; preds = %cond.end, %cond.true.36
  %cond62 = phi i32 [ %cond38, %cond.true.36 ], [ %cond60, %cond.end ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %lor.end
  %cond64 = phi i32 [ %cond, %lor.end ], [ %cond62, %cond.end.61 ]
  store i32 %cond64, i32* %dn, align 4
  %35 = load i32, i32* %sr, align 4
  %cmp65 = icmp uge i32 %35, 8
  br i1 %cmp65, label %land.lhs.true.67, label %lor.lhs.false.70

land.lhs.true.67:                                 ; preds = %cond.end.63
  %36 = load i32, i32* %sr, align 4
  %cmp68 = icmp ule i32 %36, 15
  br i1 %cmp68, label %cond.true.88, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %land.lhs.true.67, %cond.end.63
  %37 = load i32, i32* %sr, align 4
  %cmp71 = icmp uge i32 %37, 21
  br i1 %cmp71, label %land.lhs.true.73, label %lor.lhs.false.76

land.lhs.true.73:                                 ; preds = %lor.lhs.false.70
  %38 = load i32, i32* %sr, align 4
  %cmp74 = icmp ule i32 %38, 28
  br i1 %cmp74, label %cond.true.88, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.73, %lor.lhs.false.70
  %39 = load i32, i32* %sr, align 4
  %cmp77 = icmp uge i32 %39, 45
  br i1 %cmp77, label %land.lhs.true.79, label %lor.lhs.false.82

land.lhs.true.79:                                 ; preds = %lor.lhs.false.76
  %40 = load i32, i32* %sr, align 4
  %cmp80 = icmp ule i32 %40, 52
  br i1 %cmp80, label %cond.true.88, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %land.lhs.true.79, %lor.lhs.false.76
  %41 = load i32, i32* %sr, align 4
  %cmp83 = icmp uge i32 %41, 29
  br i1 %cmp83, label %land.lhs.true.85, label %cond.false.106

land.lhs.true.85:                                 ; preds = %lor.lhs.false.82
  %42 = load i32, i32* %sr, align 4
  %cmp86 = icmp ule i32 %42, 36
  br i1 %cmp86, label %cond.true.88, label %cond.false.106

cond.true.88:                                     ; preds = %land.lhs.true.85, %land.lhs.true.79, %land.lhs.true.73, %land.lhs.true.67
  %43 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load89 = load i32, i32* %44, align 8
  %bf.lshr90 = lshr i32 %bf.load89, 16
  %bf.clear91 = and i32 %bf.lshr90, 255
  %idxprom92 = sext i32 %bf.clear91 to i64
  %arrayidx93 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom92
  %45 = load i32, i32* %arrayidx93, align 4
  %cmp94 = icmp eq i32 %45, 5
  br i1 %cmp94, label %lor.end.104, label %lor.rhs.96

lor.rhs.96:                                       ; preds = %cond.true.88
  %46 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load97 = load i32, i32* %47, align 8
  %bf.lshr98 = lshr i32 %bf.load97, 16
  %bf.clear99 = and i32 %bf.lshr98, 255
  %idxprom100 = sext i32 %bf.clear99 to i64
  %arrayidx101 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom100
  %48 = load i32, i32* %arrayidx101, align 4
  %cmp102 = icmp eq i32 %48, 6
  br label %lor.end.104

lor.end.104:                                      ; preds = %lor.rhs.96, %cond.true.88
  %49 = phi i1 [ true, %cond.true.88 ], [ %cmp102, %lor.rhs.96 ]
  %cond105 = select i1 %49, i32 2, i32 1
  br label %cond.end.146

cond.false.106:                                   ; preds = %land.lhs.true.85, %lor.lhs.false.82
  %50 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load107 = load i32, i32* %51, align 8
  %bf.lshr108 = lshr i32 %bf.load107, 16
  %bf.clear109 = and i32 %bf.lshr108, 255
  %cmp110 = icmp eq i32 %bf.clear109, 18
  br i1 %cmp110, label %cond.true.112, label %cond.false.116

cond.true.112:                                    ; preds = %cond.false.106
  %52 = load i32, i32* @target_flags, align 4
  %and113 = and i32 %52, 33554432
  %tobool114 = icmp ne i32 %and113, 0
  %cond115 = select i1 %tobool114, i32 2, i32 3
  br label %cond.end.144

cond.false.116:                                   ; preds = %cond.false.106
  %53 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load117 = load i32, i32* %54, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 16
  %bf.clear119 = and i32 %bf.lshr118, 255
  %cmp120 = icmp eq i32 %bf.clear119, 24
  br i1 %cmp120, label %cond.true.122, label %cond.false.126

cond.true.122:                                    ; preds = %cond.false.116
  %55 = load i32, i32* @target_flags, align 4
  %and123 = and i32 %55, 33554432
  %tobool124 = icmp ne i32 %and123, 0
  %cond125 = select i1 %tobool124, i32 4, i32 6
  br label %cond.end.142

cond.false.126:                                   ; preds = %cond.false.116
  %56 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load127 = load i32, i32* %57, align 8
  %bf.lshr128 = lshr i32 %bf.load127, 16
  %bf.clear129 = and i32 %bf.lshr128, 255
  %idxprom130 = sext i32 %bf.clear129 to i64
  %arrayidx131 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom130
  %58 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %58 to i32
  %59 = load i32, i32* @target_flags, align 4
  %and133 = and i32 %59, 33554432
  %tobool134 = icmp ne i32 %and133, 0
  %cond135 = select i1 %tobool134, i32 8, i32 4
  %add136 = add nsw i32 %conv132, %cond135
  %sub137 = sub nsw i32 %add136, 1
  %60 = load i32, i32* @target_flags, align 4
  %and138 = and i32 %60, 33554432
  %tobool139 = icmp ne i32 %and138, 0
  %cond140 = select i1 %tobool139, i32 8, i32 4
  %div141 = sdiv i32 %sub137, %cond140
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.126, %cond.true.122
  %cond143 = phi i32 [ %cond125, %cond.true.122 ], [ %div141, %cond.false.126 ]
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.end.142, %cond.true.112
  %cond145 = phi i32 [ %cond115, %cond.true.112 ], [ %cond143, %cond.end.142 ]
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.end.144, %lor.end.104
  %cond147 = phi i32 [ %cond105, %lor.end.104 ], [ %cond145, %cond.end.144 ]
  store i32 %cond147, i32* %sn, align 4
  %61 = load i32, i32* %dr, align 4
  %62 = load i32, i32* %sr, align 4
  %cmp148 = icmp ugt i32 %61, %62
  br i1 %cmp148, label %land.lhs.true.150, label %lor.lhs.false.154

land.lhs.true.150:                                ; preds = %cond.end.146
  %63 = load i32, i32* %dr, align 4
  %64 = load i32, i32* %sr, align 4
  %65 = load i32, i32* %sn, align 4
  %add151 = add i32 %64, %65
  %cmp152 = icmp ult i32 %63, %add151
  br i1 %cmp152, label %if.then.161, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %land.lhs.true.150, %cond.end.146
  %66 = load i32, i32* %sr, align 4
  %67 = load i32, i32* %dr, align 4
  %cmp155 = icmp ugt i32 %66, %67
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.162

land.lhs.true.157:                                ; preds = %lor.lhs.false.154
  %68 = load i32, i32* %sr, align 4
  %69 = load i32, i32* %dr, align 4
  %70 = load i32, i32* %dn, align 4
  %add158 = add i32 %69, %70
  %cmp159 = icmp ult i32 %68, %add158
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %land.lhs.true.157, %land.lhs.true.150
  br label %return

if.end.162:                                       ; preds = %land.lhs.true.157, %lor.lhs.false.154
  %71 = load i32, i32* %sr, align 4
  %idxprom163 = zext i32 %71 to i64
  %72 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e = getelementptr inbounds %struct.value_data, %struct.value_data* %72, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i32 0, i64 %idxprom163
  %mode = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx164, i32 0, i32 0
  %73 = load i32, i32* %mode, align 4
  %cmp165 = icmp eq i32 %73, 0
  br i1 %cmp165, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %if.end.162
  %74 = load i32, i32* %sr, align 4
  %75 = load i32, i32* %dr, align 4
  %idxprom168 = zext i32 %75 to i64
  %76 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e169 = getelementptr inbounds %struct.value_data, %struct.value_data* %76, i32 0, i32 0
  %arrayidx170 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e169, i32 0, i64 %idxprom168
  %mode171 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx170, i32 0, i32 0
  %77 = load i32, i32* %mode171, align 4
  %78 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  call void @set_value_regno(i32 %74, i32 %77, %struct.value_data* %78)
  br label %if.end.264

if.else:                                          ; preds = %if.end.162
  %79 = load i32, i32* %sn, align 4
  %80 = load i32, i32* %sr, align 4
  %cmp172 = icmp uge i32 %80, 8
  br i1 %cmp172, label %land.lhs.true.174, label %lor.lhs.false.177

land.lhs.true.174:                                ; preds = %if.else
  %81 = load i32, i32* %sr, align 4
  %cmp175 = icmp ule i32 %81, 15
  br i1 %cmp175, label %cond.true.195, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %land.lhs.true.174, %if.else
  %82 = load i32, i32* %sr, align 4
  %cmp178 = icmp uge i32 %82, 21
  br i1 %cmp178, label %land.lhs.true.180, label %lor.lhs.false.183

land.lhs.true.180:                                ; preds = %lor.lhs.false.177
  %83 = load i32, i32* %sr, align 4
  %cmp181 = icmp ule i32 %83, 28
  br i1 %cmp181, label %cond.true.195, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %land.lhs.true.180, %lor.lhs.false.177
  %84 = load i32, i32* %sr, align 4
  %cmp184 = icmp uge i32 %84, 45
  br i1 %cmp184, label %land.lhs.true.186, label %lor.lhs.false.189

land.lhs.true.186:                                ; preds = %lor.lhs.false.183
  %85 = load i32, i32* %sr, align 4
  %cmp187 = icmp ule i32 %85, 52
  br i1 %cmp187, label %cond.true.195, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %land.lhs.true.186, %lor.lhs.false.183
  %86 = load i32, i32* %sr, align 4
  %cmp190 = icmp uge i32 %86, 29
  br i1 %cmp190, label %land.lhs.true.192, label %cond.false.215

land.lhs.true.192:                                ; preds = %lor.lhs.false.189
  %87 = load i32, i32* %sr, align 4
  %cmp193 = icmp ule i32 %87, 36
  br i1 %cmp193, label %cond.true.195, label %cond.false.215

cond.true.195:                                    ; preds = %land.lhs.true.192, %land.lhs.true.186, %land.lhs.true.180, %land.lhs.true.174
  %88 = load i32, i32* %sr, align 4
  %idxprom196 = zext i32 %88 to i64
  %89 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e197 = getelementptr inbounds %struct.value_data, %struct.value_data* %89, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e197, i32 0, i64 %idxprom196
  %mode199 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx198, i32 0, i32 0
  %90 = load i32, i32* %mode199, align 4
  %idxprom200 = sext i32 %90 to i64
  %arrayidx201 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom200
  %91 = load i32, i32* %arrayidx201, align 4
  %cmp202 = icmp eq i32 %91, 5
  br i1 %cmp202, label %lor.end.213, label %lor.rhs.204

lor.rhs.204:                                      ; preds = %cond.true.195
  %92 = load i32, i32* %sr, align 4
  %idxprom205 = zext i32 %92 to i64
  %93 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e206 = getelementptr inbounds %struct.value_data, %struct.value_data* %93, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e206, i32 0, i64 %idxprom205
  %mode208 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx207, i32 0, i32 0
  %94 = load i32, i32* %mode208, align 4
  %idxprom209 = sext i32 %94 to i64
  %arrayidx210 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom209
  %95 = load i32, i32* %arrayidx210, align 4
  %cmp211 = icmp eq i32 %95, 6
  br label %lor.end.213

lor.end.213:                                      ; preds = %lor.rhs.204, %cond.true.195
  %96 = phi i1 [ true, %cond.true.195 ], [ %cmp211, %lor.rhs.204 ]
  %cond214 = select i1 %96, i32 2, i32 1
  br label %cond.end.258

cond.false.215:                                   ; preds = %land.lhs.true.192, %lor.lhs.false.189
  %97 = load i32, i32* %sr, align 4
  %idxprom216 = zext i32 %97 to i64
  %98 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e217 = getelementptr inbounds %struct.value_data, %struct.value_data* %98, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e217, i32 0, i64 %idxprom216
  %mode219 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx218, i32 0, i32 0
  %99 = load i32, i32* %mode219, align 4
  %cmp220 = icmp eq i32 %99, 18
  br i1 %cmp220, label %cond.true.222, label %cond.false.226

cond.true.222:                                    ; preds = %cond.false.215
  %100 = load i32, i32* @target_flags, align 4
  %and223 = and i32 %100, 33554432
  %tobool224 = icmp ne i32 %and223, 0
  %cond225 = select i1 %tobool224, i32 2, i32 3
  br label %cond.end.256

cond.false.226:                                   ; preds = %cond.false.215
  %101 = load i32, i32* %sr, align 4
  %idxprom227 = zext i32 %101 to i64
  %102 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e228 = getelementptr inbounds %struct.value_data, %struct.value_data* %102, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e228, i32 0, i64 %idxprom227
  %mode230 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx229, i32 0, i32 0
  %103 = load i32, i32* %mode230, align 4
  %cmp231 = icmp eq i32 %103, 24
  br i1 %cmp231, label %cond.true.233, label %cond.false.237

cond.true.233:                                    ; preds = %cond.false.226
  %104 = load i32, i32* @target_flags, align 4
  %and234 = and i32 %104, 33554432
  %tobool235 = icmp ne i32 %and234, 0
  %cond236 = select i1 %tobool235, i32 4, i32 6
  br label %cond.end.254

cond.false.237:                                   ; preds = %cond.false.226
  %105 = load i32, i32* %sr, align 4
  %idxprom238 = zext i32 %105 to i64
  %106 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e239 = getelementptr inbounds %struct.value_data, %struct.value_data* %106, i32 0, i32 0
  %arrayidx240 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e239, i32 0, i64 %idxprom238
  %mode241 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx240, i32 0, i32 0
  %107 = load i32, i32* %mode241, align 4
  %idxprom242 = sext i32 %107 to i64
  %arrayidx243 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom242
  %108 = load i8, i8* %arrayidx243, align 1
  %conv244 = zext i8 %108 to i32
  %109 = load i32, i32* @target_flags, align 4
  %and245 = and i32 %109, 33554432
  %tobool246 = icmp ne i32 %and245, 0
  %cond247 = select i1 %tobool246, i32 8, i32 4
  %add248 = add nsw i32 %conv244, %cond247
  %sub249 = sub nsw i32 %add248, 1
  %110 = load i32, i32* @target_flags, align 4
  %and250 = and i32 %110, 33554432
  %tobool251 = icmp ne i32 %and250, 0
  %cond252 = select i1 %tobool251, i32 8, i32 4
  %div253 = sdiv i32 %sub249, %cond252
  br label %cond.end.254

cond.end.254:                                     ; preds = %cond.false.237, %cond.true.233
  %cond255 = phi i32 [ %cond236, %cond.true.233 ], [ %div253, %cond.false.237 ]
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.end.254, %cond.true.222
  %cond257 = phi i32 [ %cond225, %cond.true.222 ], [ %cond255, %cond.end.254 ]
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.end.256, %lor.end.213
  %cond259 = phi i32 [ %cond214, %lor.end.213 ], [ %cond257, %cond.end.256 ]
  %cmp260 = icmp ugt i32 %79, %cond259
  br i1 %cmp260, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %cond.end.258
  br label %return

if.end.263:                                       ; preds = %cond.end.258
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %if.then.167
  %111 = load i32, i32* %sr, align 4
  %idxprom265 = zext i32 %111 to i64
  %112 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e266 = getelementptr inbounds %struct.value_data, %struct.value_data* %112, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e266, i32 0, i64 %idxprom265
  %oldest_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx267, i32 0, i32 1
  %113 = load i32, i32* %oldest_regno, align 4
  %114 = load i32, i32* %dr, align 4
  %idxprom268 = zext i32 %114 to i64
  %115 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e269 = getelementptr inbounds %struct.value_data, %struct.value_data* %115, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e269, i32 0, i64 %idxprom268
  %oldest_regno271 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx270, i32 0, i32 1
  store i32 %113, i32* %oldest_regno271, align 4
  %116 = load i32, i32* %sr, align 4
  store i32 %116, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.264
  %117 = load i32, i32* %i, align 4
  %idxprom272 = zext i32 %117 to i64
  %118 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e273 = getelementptr inbounds %struct.value_data, %struct.value_data* %118, i32 0, i32 0
  %arrayidx274 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e273, i32 0, i64 %idxprom272
  %next_regno = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx274, i32 0, i32 2
  %119 = load i32, i32* %next_regno, align 4
  %cmp275 = icmp ne i32 %119, -1
  br i1 %cmp275, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %120 = load i32, i32* %i, align 4
  %idxprom277 = zext i32 %120 to i64
  %121 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e278 = getelementptr inbounds %struct.value_data, %struct.value_data* %121, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e278, i32 0, i64 %idxprom277
  %next_regno280 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx279, i32 0, i32 2
  %122 = load i32, i32* %next_regno280, align 4
  store i32 %122, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %123 = load i32, i32* %dr, align 4
  %124 = load i32, i32* %i, align 4
  %idxprom281 = zext i32 %124 to i64
  %125 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e282 = getelementptr inbounds %struct.value_data, %struct.value_data* %125, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e282, i32 0, i64 %idxprom281
  %next_regno284 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx283, i32 0, i32 2
  store i32 %123, i32* %next_regno284, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then.262, %if.then.161, %if.then.8, %if.then.5, %if.then
  ret void
}

declare %struct.rtx_def* @simplify_subreg(i32, %struct.rtx_def*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @set_value_regno(i32 %regno, i32 %mode, %struct.value_data* %vd) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %vd.addr = alloca %struct.value_data*, align 8
  %nregs = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.value_data* %vd, %struct.value_data** %vd.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %e = getelementptr inbounds %struct.value_data, %struct.value_data* %2, i32 0, i32 0
  %arrayidx = getelementptr inbounds [53 x %struct.value_data_entry], [53 x %struct.value_data_entry]* %e, i32 0, i64 %idxprom
  %mode1 = getelementptr inbounds %struct.value_data_entry, %struct.value_data_entry* %arrayidx, i32 0, i32 0
  store i32 %0, i32* %mode1, align 4
  %3 = load i32, i32* %regno.addr, align 4
  %cmp = icmp uge i32 %3, 8
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %regno.addr, align 4
  %cmp2 = icmp ule i32 %4, 15
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %regno.addr, align 4
  %cmp3 = icmp uge i32 %5, 21
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false.6

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %regno.addr, align 4
  %cmp5 = icmp ule i32 %6, 28
  br i1 %cmp5, label %cond.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.4, %lor.lhs.false
  %7 = load i32, i32* %regno.addr, align 4
  %cmp7 = icmp uge i32 %7, 45
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.10

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %8 = load i32, i32* %regno.addr, align 4
  %cmp9 = icmp ule i32 %8, 52
  br i1 %cmp9, label %cond.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %9 = load i32, i32* %regno.addr, align 4
  %cmp11 = icmp uge i32 %9, 29
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %10 = load i32, i32* %regno.addr, align 4
  %cmp13 = icmp ule i32 %10, 36
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true
  %11 = load i32, i32* %mode.addr, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %12, 5
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %13 = load i32, i32* %mode.addr, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp eq i32 %14, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %15 = phi i1 [ true, %cond.true ], [ %cmp19, %lor.rhs ]
  %cond = select i1 %15, i32 2, i32 1
  br label %cond.end.41

cond.false:                                       ; preds = %land.lhs.true.12, %lor.lhs.false.10
  %16 = load i32, i32* %mode.addr, align 4
  %cmp20 = icmp eq i32 %16, 18
  br i1 %cmp20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %cond.false
  %17 = load i32, i32* @target_flags, align 4
  %and = and i32 %17, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond22 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.39

cond.false.23:                                    ; preds = %cond.false
  %18 = load i32, i32* %mode.addr, align 4
  %cmp24 = icmp eq i32 %18, 24
  br i1 %cmp24, label %cond.true.25, label %cond.false.29

cond.true.25:                                     ; preds = %cond.false.23
  %19 = load i32, i32* @target_flags, align 4
  %and26 = and i32 %19, 33554432
  %tobool27 = icmp ne i32 %and26, 0
  %cond28 = select i1 %tobool27, i32 4, i32 6
  br label %cond.end

cond.false.29:                                    ; preds = %cond.false.23
  %20 = load i32, i32* %mode.addr, align 4
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom30
  %21 = load i8, i8* %arrayidx31, align 1
  %conv = zext i8 %21 to i32
  %22 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %22, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i32 8, i32 4
  %add = add nsw i32 %conv, %cond34
  %sub = sub nsw i32 %add, 1
  %23 = load i32, i32* @target_flags, align 4
  %and35 = and i32 %23, 33554432
  %tobool36 = icmp ne i32 %and35, 0
  %cond37 = select i1 %tobool36, i32 8, i32 4
  %div = sdiv i32 %sub, %cond37
  br label %cond.end

cond.end:                                         ; preds = %cond.false.29, %cond.true.25
  %cond38 = phi i32 [ %cond28, %cond.true.25 ], [ %div, %cond.false.29 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end, %cond.true.21
  %cond40 = phi i32 [ %cond22, %cond.true.21 ], [ %cond38, %cond.end ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %lor.end
  %cond42 = phi i32 [ %cond, %lor.end ], [ %cond40, %cond.end.39 ]
  store i32 %cond42, i32* %nregs, align 4
  %24 = load i32, i32* %nregs, align 4
  %25 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %max_value_regs = getelementptr inbounds %struct.value_data, %struct.value_data* %25, i32 0, i32 1
  %26 = load i32, i32* %max_value_regs, align 4
  %cmp43 = icmp ugt i32 %24, %26
  br i1 %cmp43, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.41
  %27 = load i32, i32* %nregs, align 4
  %28 = load %struct.value_data*, %struct.value_data** %vd.addr, align 8
  %max_value_regs45 = getelementptr inbounds %struct.value_data, %struct.value_data* %28, i32 0, i32 1
  store i32 %27, i32* %max_value_regs45, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.41
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
