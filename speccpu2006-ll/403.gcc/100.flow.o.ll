; ModuleID = 'flow.c'
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
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.anon.3 = type { i32, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.propagate_block_info = type { %struct.basic_block_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.rtx_def**, %struct.rtx_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32, i32, i32 }
%struct.find_regno_partial_param = type { i32, %struct.rtx_def* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@warn_missing_noreturn = external global i32, align 4
@cfun = external global %struct.function*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@lang_missing_noreturn_ok_p = common global i32 (%union.tree_node*)* null, align 8
@.str = private unnamed_addr constant [62 x i8] c"function might be possible candidate for attribute `noreturn'\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"`noreturn' function does return\00", align 1
@warn_return_type = external global i32, align 4
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"control reaches end of non-void function\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"flow.c\00", align 1
@__FUNCTION__.first_insn_after_basic_block_note = private unnamed_addr constant [34 x i8] c"first_insn_after_basic_block_note\00", align 1
@life_analysis.eliminables = internal constant [4 x %struct.anon.3] [%struct.anon.3 { i32 16, i32 7 }, %struct.anon.3 { i32 16, i32 6 }, %struct.anon.3 { i32 20, i32 7 }, %struct.anon.3 { i32 20, i32 6 }], align 16
@elim_reg_set = internal global i64 0, align 8
@optimize = external global i32, align 4
@reload_completed = external global i32, align 4
@regs_ever_live = external global [53 x i8], align 16
@__FUNCTION__.update_life_info = private unnamed_addr constant [17 x i8] c"update_life_info\00", align 1
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@reg_n_info = common global %struct.varray_head_tag* null, align 8
@regs_live_at_setjmp = common global %struct.bitmap_head_def* null, align 8
@rtx_class = external constant [153 x i8], align 16
@const_tiny_rtx = external global [3 x [59 x %struct.rtx_def*]], align 16
@flow_obstack = external global %struct.obstack, align 8
@max_regno = common global i32 0, align 4
@current_function_decl = external global %union.tree_node*, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Attempt to delete prologue/epilogue insn:\00", align 1
@__FUNCTION__.propagate_one_insn = private unnamed_addr constant [19 x i8] c"propagate_one_insn\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@regs_invalidated_by_call = external global i64, align 8
@reg_raw_mode = external global [53 x i32], align 16
@global_regs = external global [53 x i8], align 16
@fixed_regs = external global [53 x i8], align 16
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c" (nil)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@reg_names = external global [53 x i8*], align 16
@stderr = external global %struct._IO_FILE*, align 8
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@flow2_completed = common global i32 0, align 4
@regset_bytes = common global i32 0, align 4
@regset_size = common global i32 0, align 4
@regs_may_share = common global %struct.rtx_def* null, align 8
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"live_at_start mismatch in bb %d, aborting\0ANew:\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Old:\0A\00", align 1
@__FUNCTION__.verify_local_live_at_start = private unnamed_addr constant [27 x i8] c"verify_local_live_at_start\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Register %d died unexpectedly.\0A\00", align 1
@__FUNCTION__.verify_wide_reg = private unnamed_addr constant [16 x i8] c"verify_wide_reg\00", align 1
@mode_bitsize = external constant [59 x i16], align 16
@.str.11 = private unnamed_addr constant [27 x i8] c"Dead jumptable %i removed\0A\00", align 1
@current_function_sp_is_unchanging = external global i32, align 4
@flag_omit_frame_pointer = external global i32, align 4
@frame_pointer_needed = external global i32, align 4
@flag_pic = external global i32, align 4
@__FUNCTION__.mark_reg = private unnamed_addr constant [9 x i8] c"mark_reg\00", align 1
@call_used_regs = external global [53 x i8], align 16
@in_ssa_form = external global i32, align 4
@__FUNCTION__.mark_set_regs = private unnamed_addr constant [14 x i8] c"mark_set_regs\00", align 1
@optimize_size = external global i32, align 4
@flag_branch_probabilities = external global i32, align 4
@__FUNCTION__.mark_used_regs = private unnamed_addr constant [15 x i8] c"mark_used_regs\00", align 1

; Function Attrs: nounwind uwtable
define void @check_function_return_warnings() #0 {
entry:
  %max_uid = alloca i32, align 4
  %0 = load i32, i32* @warn_missing_noreturn, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %decl = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 6
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %volatile_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 11
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %if.end, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  %cmp = icmp eq %struct.edge_def* %3, null
  br i1 %cmp, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %4 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** @lang_missing_noreturn_ok_p, align 8
  %tobool4 = icmp ne i32 (%union.tree_node*)* %4, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %5 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** @lang_missing_noreturn_ok_p, align 8
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %decl6 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 6
  %7 = load %union.tree_node*, %union.tree_node** %decl6, align 8
  %call = call i32 %5(%union.tree_node* %7)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.5
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %land.lhs.true.3, %land.lhs.true.2, %land.lhs.true, %entry
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %decl8 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 6
  %9 = load %union.tree_node*, %union.tree_node** %decl8, align 8
  %common9 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %volatile_flag10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 2
  %bf.load11 = load i32, i32* %volatile_flag10, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 11
  %bf.clear13 = and i32 %bf.lshr12, 1
  %tobool14 = icmp ne i32 %bf.clear13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else

land.lhs.true.15:                                 ; preds = %if.end
  %10 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  %cmp16 = icmp ne %struct.edge_def* %10, null
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true.15
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.38

if.else:                                          ; preds = %land.lhs.true.15, %if.end
  %11 = load i32, i32* @warn_return_type, align 4
  %tobool18 = icmp ne i32 %11, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.37

land.lhs.true.19:                                 ; preds = %if.else
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %x_clobber_return_insn = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 31
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x_clobber_return_insn, align 8
  %cmp20 = icmp ne %struct.rtx_def* %13, null
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.37

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %14 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  %cmp22 = icmp ne %struct.edge_def* %14, null
  br i1 %cmp22, label %if.then.23, label %if.end.37

if.then.23:                                       ; preds = %land.lhs.true.21
  %call24 = call i32 @get_max_uid()
  store i32 %call24, i32* %max_uid, align 4
  %15 = load %struct.function*, %struct.function** @cfun, align 8
  %x_clobber_return_insn25 = getelementptr inbounds %struct.function, %struct.function* %15, i32 0, i32 31
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x_clobber_return_insn25, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %17 = load i32, i32* %rtint, align 4
  %18 = load i32, i32* %max_uid, align 4
  %cmp26 = icmp slt i32 %17, %18
  br i1 %cmp26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %if.then.23
  %19 = load %struct.function*, %struct.function** @cfun, align 8
  %x_clobber_return_insn28 = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 31
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x_clobber_return_insn28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %21 = load i32, i32* %rtint31, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx32 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx32, align 8
  %cmp33 = icmp ne %struct.basic_block_def* %23, null
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.27
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.23
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.21, %land.lhs.true.19, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.17
  ret void
}

declare void @warning(i8*, ...) #1

declare i32 @get_max_uid() #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %block) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %block.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 36
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 37
  br i1 %cmp6, label %land.lhs.true, label %if.then.10

land.lhs.true:                                    ; preds = %if.end.3
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %10 = load i32, i32* %rtint, align 4
  %cmp9 = icmp eq i32 %10, -80
  br i1 %cmp9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true, %if.end.3
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 400, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.first_insn_after_basic_block_note, i32 0, i32 0)) #5
  unreachable

if.end.11:                                        ; preds = %land.lhs.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 2
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %13
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @life_analysis(%struct.rtx_def* %f, %struct._IO_FILE* %file, i32 %flags) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i64 0, i64* @elim_reg_set, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.anon.3], [4 x %struct.anon.3]* @life_analysis.eliminables, i32 0, i64 %idxprom
  %from = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %from, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 1, %sh_prom
  %3 = load i64, i64* @elim_reg_set, align 8
  %or = or i64 %3, %shl
  store i64 %or, i64* @elim_reg_set, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* @optimize, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %6 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, -99
  store i32 %and, i32* %flags.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %7 = load i32, i32* @reload_completed, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %flags.addr, align 4
  %and3 = and i32 %8, -69
  store i32 %and3, i32* %flags.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %9 = load i32, i32* @optimize, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end.4
  %10 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %10, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  call void @init_alias_analysis()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end.4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @delete_noop_moves(%struct.rtx_def* %11)
  %call = call zeroext i1 @purge_all_dead_edges(i32 0)
  %12 = load i32, i32* @reload_completed, align 4
  %tobool10 = icmp ne i32 %12, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @notice_stack_pointer_modification(%struct.rtx_def* %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  call void @allocate_reg_life_data()
  call void @allocate_bb_life_data()
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 8), align 8
  call void @mark_regs_live_at_end(%struct.bitmap_head_def* %14)
  %15 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %15, 4
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @regs_ever_live, i32 0, i32 0), i8 0, i64 53, i32 16, i1 false)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %16 = load i32, i32* %flags.addr, align 4
  call void @update_life_info(%struct.simple_bitmap_def* null, i32 1, i32 %16)
  %17 = load i32, i32* @optimize, align 4
  %tobool17 = icmp ne i32 %17, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %if.end.16
  %18 = load i32, i32* %flags.addr, align 4
  %and19 = and i32 %18, 16
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  call void @end_alias_analysis()
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.18, %if.end.16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool23 = icmp ne %struct._IO_FILE* %19, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @dump_flow_info(%struct._IO_FILE* %20)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  call void @free_basic_block_vars(i32 1)
  call void @delete_dead_jumptables()
  ret void
}

declare void @init_alias_analysis() #1

; Function Attrs: nounwind uwtable
define void @delete_noop_moves(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %new_libcall_insn = alloca %struct.rtx_def*, align 8
  %retval_note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.48

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
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 0
  %6 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp4 = icmp ne %struct.rtx_def* %7, %10
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 2
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %next, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom9 = sext i32 %bf.clear to i64
  %arrayidx10 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %conv = sext i8 %15 to i32
  %cmp11 = icmp eq i32 %conv, 105
  br i1 %cmp11, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %for.body.5
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i32 @noop_move_p(%struct.rtx_def* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.46

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call13 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %17, i32 7, %struct.rtx_def* null)
  store %struct.rtx_def* %call13, %struct.rtx_def** %note, align 8
  %tobool14 = icmp ne %struct.rtx_def* %call13, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %if.then
  %18 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp19 = icmp ne %struct.rtx_def* %19, %20
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %land.lhs.true.15
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call22 = call %struct.rtx_def* @next_real_insn(%struct.rtx_def* %21)
  store %struct.rtx_def* %call22, %struct.rtx_def** %new_libcall_insn, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %call26 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %23, i32 6, %struct.rtx_def* null)
  store %struct.rtx_def* %call26, %struct.rtx_def** %retval_note, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %new_libcall_insn, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 6
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %call33 = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 7, %struct.rtx_def* %25, %struct.rtx_def* %27)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %new_libcall_insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 6
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  store %struct.rtx_def* %call33, %struct.rtx_def** %rtx36, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %new_libcall_insn, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %retval_note, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  store %struct.rtx_def* %29, %struct.rtx_def** %rtx39, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %land.lhs.true.15, %if.then
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load40 = load i32, i32* %32, align 8
  %bf.clear41 = and i32 %bf.load40, -65536
  %bf.set = or i32 %bf.clear41, 37
  store i32 %bf.set, i32* %32, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx43 to i32*
  store i32 -99, i32* %rtint, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx45 to i8**
  store i8* null, i8** %rtstr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.end, %land.lhs.true, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %35 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  ret void
}

declare zeroext i1 @purge_all_dead_edges(i32) #1

; Function Attrs: nounwind uwtable
define internal void @notice_stack_pointer_modification(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 56
  %1 = bitcast i24* %calls_alloca to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @current_function_sp_is_unchanging, align 4
  %2 = load i32, i32* @current_function_sp_is_unchanging, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool2 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %idxprom = sext i32 %bf.clear4 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @note_stores(%struct.rtx_def* %9, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @notice_stack_pointer_modification_1, i8* null)
  %10 = load i32, i32* @current_function_sp_is_unchanging, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.6
  br label %for.end

if.end.10:                                        ; preds = %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 2
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.9, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @allocate_reg_life_data() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 @max_reg_num()
  store i32 %call, i32* @max_regno, align 4
  %0 = load i32, i32* @max_regno, align 4
  %conv = sext i32 %0 to i64
  call void @allocate_reg_info(i64 %conv, i32 0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @max_regno, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %5 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %5, i32 0, i32 3
  store i32 0, i32* %sets, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %reg4 = bitcast %union.varray_data_tag* %data3 to [1 x %struct.reg_info_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg4, i32 0, i64 %idxprom2
  %8 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx5, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %8, i32 0, i32 4
  store i32 0, i32* %refs, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %reg8 = bitcast %union.varray_data_tag* %data7 to [1 x %struct.reg_info_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg8, i32 0, i64 %idxprom6
  %11 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx9, align 8
  %deaths = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %11, i32 0, i32 6
  store i32 0, i32* %deaths, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %reg12 = bitcast %union.varray_data_tag* %data11 to [1 x %struct.reg_info_def*]*
  %arrayidx13 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg12, i32 0, i64 %idxprom10
  %14 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx13, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %14, i32 0, i32 8
  store i32 0, i32* %calls_crossed, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data15 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %reg16 = bitcast %union.varray_data_tag* %data15 to [1 x %struct.reg_info_def*]*
  %arrayidx17 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg16, i32 0, i64 %idxprom14
  %17 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx17, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %17, i32 0, i32 7
  store i32 0, i32* %live_length, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data19 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %reg20 = bitcast %union.varray_data_tag* %data19 to [1 x %struct.reg_info_def*]*
  %arrayidx21 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg20, i32 0, i64 %idxprom18
  %20 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx21, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %20, i32 0, i32 9
  store i32 -1, i32* %basic_block, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @allocate_bb_life_data() #0 {
entry:
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp37 = alloca i8*, align 8
  %__h39 = alloca %struct.obstack*, align 8
  %__o41 = alloca %struct.obstack*, align 8
  %__len43 = alloca i32, align 4
  %tmp57 = alloca i8*, align 8
  %__o159 = alloca %struct.obstack*, align 8
  %value61 = alloca i8*, align 8
  %tmp102 = alloca i8*, align 8
  %__h105 = alloca %struct.obstack*, align 8
  %__o107 = alloca %struct.obstack*, align 8
  %__len109 = alloca i32, align 4
  %tmp123 = alloca i8*, align 8
  %__o1125 = alloca %struct.obstack*, align 8
  %value127 = alloca i8*, align 8
  %tmp168 = alloca i8*, align 8
  %__h171 = alloca %struct.obstack*, align 8
  %__o173 = alloca %struct.obstack*, align 8
  %__len175 = alloca i32, align 4
  %tmp189 = alloca i8*, align 8
  %__o1191 = alloca %struct.obstack*, align 8
  %value193 = alloca i8*, align 8
  %tmp234 = alloca i8*, align 8
  %__h237 = alloca %struct.obstack*, align 8
  %__o239 = alloca %struct.obstack*, align 8
  %__len241 = alloca i32, align 4
  %tmp255 = alloca i8*, align 8
  %__o1257 = alloca %struct.obstack*, align 8
  %value259 = alloca i8*, align 8
  %tmp300 = alloca i8*, align 8
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
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h, align 8
  %5 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %5, %struct.obstack** %__o, align 8
  store i32 24, i32* %__len, align 4
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 4
  %7 = load i8*, i8** %chunk_limit, align 8
  %8 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %8, i32 0, i32 3
  %9 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load i32, i32* %__len, align 4
  %conv = sext i32 %10 to i64
  %cmp2 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %12 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %__len, align 4
  %14 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free4 = getelementptr inbounds %struct.obstack, %struct.obstack* %14, i32 0, i32 3
  %15 = load i8*, i8** %next_free4, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free4, align 8
  %16 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %16, %struct.obstack** %__o1, align 8
  %17 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %17, i32 0, i32 2
  %18 = load i8*, i8** %object_base, align 8
  store i8* %18, i8** %value, align 8
  %19 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 3
  %20 = load i8*, i8** %next_free7, align 8
  %21 = load i8*, i8** %value, align 8
  %cmp8 = icmp eq i8* %20, %21
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %22 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %22, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %23 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free12 = getelementptr inbounds %struct.obstack, %struct.obstack* %23, i32 0, i32 3
  %24 = load i8*, i8** %next_free12, align 8
  %sub.ptr.lhs.cast13 = ptrtoint i8* %24 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast13, 0
  %25 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %25, i32 0, i32 6
  %26 = load i32, i32* %alignment_mask, align 4
  %conv15 = sext i32 %26 to i64
  %add = add nsw i64 %sub.ptr.sub14, %conv15
  %27 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask16 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 6
  %28 = load i32, i32* %alignment_mask16, align 4
  %neg = xor i32 %28, -1
  %conv17 = sext i32 %neg to i64
  %and = and i64 %add, %conv17
  %add.ptr18 = getelementptr inbounds i8, i8* null, i64 %and
  %29 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %29, i32 0, i32 3
  store i8* %add.ptr18, i8** %next_free19, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free20 = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 3
  %31 = load i8*, i8** %next_free20, align 8
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 1
  %33 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %34 = bitcast %struct._obstack_chunk* %33 to i8*
  %sub.ptr.lhs.cast21 = ptrtoint i8* %31 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %34 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit24 = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 4
  %36 = load i8*, i8** %chunk_limit24, align 8
  %37 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk25 = getelementptr inbounds %struct.obstack, %struct.obstack* %37, i32 0, i32 1
  %38 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk25, align 8
  %39 = bitcast %struct._obstack_chunk* %38 to i8*
  %sub.ptr.lhs.cast26 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %39 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %cmp29 = icmp sgt i64 %sub.ptr.sub23, %sub.ptr.sub28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.11
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit32 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 4
  %41 = load i8*, i8** %chunk_limit32, align 8
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free33 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  store i8* %41, i8** %next_free33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.11
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free35 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3
  %44 = load i8*, i8** %next_free35, align 8
  %45 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base36 = getelementptr inbounds %struct.obstack, %struct.obstack* %45, i32 0, i32 2
  store i8* %44, i8** %object_base36, align 8
  %46 = load i8*, i8** %value, align 8
  store i8* %46, i8** %tmp37
  %47 = load i8*, i8** %tmp37
  store i8* %47, i8** %tmp
  %48 = load i8*, i8** %tmp
  %49 = bitcast i8* %48 to %struct.bitmap_head_def*
  %call = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %49)
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 8
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %global_live_at_start, align 8
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h39, align 8
  %51 = load %struct.obstack*, %struct.obstack** %__h39, align 8
  store %struct.obstack* %51, %struct.obstack** %__o41, align 8
  store i32 24, i32* %__len43, align 4
  %52 = load %struct.obstack*, %struct.obstack** %__o41, align 8
  %chunk_limit44 = getelementptr inbounds %struct.obstack, %struct.obstack* %52, i32 0, i32 4
  %53 = load i8*, i8** %chunk_limit44, align 8
  %54 = load %struct.obstack*, %struct.obstack** %__o41, align 8
  %next_free45 = getelementptr inbounds %struct.obstack, %struct.obstack* %54, i32 0, i32 3
  %55 = load i8*, i8** %next_free45, align 8
  %sub.ptr.lhs.cast46 = ptrtoint i8* %53 to i64
  %sub.ptr.rhs.cast47 = ptrtoint i8* %55 to i64
  %sub.ptr.sub48 = sub i64 %sub.ptr.lhs.cast46, %sub.ptr.rhs.cast47
  %56 = load i32, i32* %__len43, align 4
  %conv49 = sext i32 %56 to i64
  %cmp50 = icmp slt i64 %sub.ptr.sub48, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.34
  %57 = load %struct.obstack*, %struct.obstack** %__o41, align 8
  %58 = load i32, i32* %__len43, align 4
  call void @_obstack_newchunk(%struct.obstack* %57, i32 %58)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.34
  %59 = load i32, i32* %__len43, align 4
  %60 = load %struct.obstack*, %struct.obstack** %__o41, align 8
  %next_free54 = getelementptr inbounds %struct.obstack, %struct.obstack* %60, i32 0, i32 3
  %61 = load i8*, i8** %next_free54, align 8
  %idx.ext55 = sext i32 %59 to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %61, i64 %idx.ext55
  store i8* %add.ptr56, i8** %next_free54, align 8
  %62 = load %struct.obstack*, %struct.obstack** %__h39, align 8
  store %struct.obstack* %62, %struct.obstack** %__o159, align 8
  %63 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %object_base62 = getelementptr inbounds %struct.obstack, %struct.obstack* %63, i32 0, i32 2
  %64 = load i8*, i8** %object_base62, align 8
  store i8* %64, i8** %value61, align 8
  %65 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %next_free63 = getelementptr inbounds %struct.obstack, %struct.obstack* %65, i32 0, i32 3
  %66 = load i8*, i8** %next_free63, align 8
  %67 = load i8*, i8** %value61, align 8
  %cmp64 = icmp eq i8* %66, %67
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %if.end.53
  %68 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %maybe_empty_object67 = getelementptr inbounds %struct.obstack, %struct.obstack* %68, i32 0, i32 10
  %bf.load68 = load i8, i8* %maybe_empty_object67, align 8
  %bf.clear69 = and i8 %bf.load68, -3
  %bf.set70 = or i8 %bf.clear69, 2
  store i8 %bf.set70, i8* %maybe_empty_object67, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.end.53
  %69 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %next_free72 = getelementptr inbounds %struct.obstack, %struct.obstack* %69, i32 0, i32 3
  %70 = load i8*, i8** %next_free72, align 8
  %sub.ptr.lhs.cast73 = ptrtoint i8* %70 to i64
  %sub.ptr.sub74 = sub i64 %sub.ptr.lhs.cast73, 0
  %71 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %alignment_mask75 = getelementptr inbounds %struct.obstack, %struct.obstack* %71, i32 0, i32 6
  %72 = load i32, i32* %alignment_mask75, align 4
  %conv76 = sext i32 %72 to i64
  %add77 = add nsw i64 %sub.ptr.sub74, %conv76
  %73 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %alignment_mask78 = getelementptr inbounds %struct.obstack, %struct.obstack* %73, i32 0, i32 6
  %74 = load i32, i32* %alignment_mask78, align 4
  %neg79 = xor i32 %74, -1
  %conv80 = sext i32 %neg79 to i64
  %and81 = and i64 %add77, %conv80
  %add.ptr82 = getelementptr inbounds i8, i8* null, i64 %and81
  %75 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %next_free83 = getelementptr inbounds %struct.obstack, %struct.obstack* %75, i32 0, i32 3
  store i8* %add.ptr82, i8** %next_free83, align 8
  %76 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %next_free84 = getelementptr inbounds %struct.obstack, %struct.obstack* %76, i32 0, i32 3
  %77 = load i8*, i8** %next_free84, align 8
  %78 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %chunk85 = getelementptr inbounds %struct.obstack, %struct.obstack* %78, i32 0, i32 1
  %79 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk85, align 8
  %80 = bitcast %struct._obstack_chunk* %79 to i8*
  %sub.ptr.lhs.cast86 = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast87 = ptrtoint i8* %80 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %81 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %chunk_limit89 = getelementptr inbounds %struct.obstack, %struct.obstack* %81, i32 0, i32 4
  %82 = load i8*, i8** %chunk_limit89, align 8
  %83 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %chunk90 = getelementptr inbounds %struct.obstack, %struct.obstack* %83, i32 0, i32 1
  %84 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk90, align 8
  %85 = bitcast %struct._obstack_chunk* %84 to i8*
  %sub.ptr.lhs.cast91 = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast92 = ptrtoint i8* %85 to i64
  %sub.ptr.sub93 = sub i64 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  %cmp94 = icmp sgt i64 %sub.ptr.sub88, %sub.ptr.sub93
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %if.end.71
  %86 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %chunk_limit97 = getelementptr inbounds %struct.obstack, %struct.obstack* %86, i32 0, i32 4
  %87 = load i8*, i8** %chunk_limit97, align 8
  %88 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %next_free98 = getelementptr inbounds %struct.obstack, %struct.obstack* %88, i32 0, i32 3
  store i8* %87, i8** %next_free98, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %if.end.71
  %89 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %next_free100 = getelementptr inbounds %struct.obstack, %struct.obstack* %89, i32 0, i32 3
  %90 = load i8*, i8** %next_free100, align 8
  %91 = load %struct.obstack*, %struct.obstack** %__o159, align 8
  %object_base101 = getelementptr inbounds %struct.obstack, %struct.obstack* %91, i32 0, i32 2
  store i8* %90, i8** %object_base101, align 8
  %92 = load i8*, i8** %value61, align 8
  store i8* %92, i8** %tmp102
  %93 = load i8*, i8** %tmp102
  store i8* %93, i8** %tmp57
  %94 = load i8*, i8** %tmp57
  %95 = bitcast i8* %94 to %struct.bitmap_head_def*
  %call103 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %95)
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %96, i32 0, i32 9
  store %struct.bitmap_head_def* %call103, %struct.bitmap_head_def** %global_live_at_end, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %97 = load i32, i32* %i, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h105, align 8
  %98 = load %struct.obstack*, %struct.obstack** %__h105, align 8
  store %struct.obstack* %98, %struct.obstack** %__o107, align 8
  store i32 24, i32* %__len109, align 4
  %99 = load %struct.obstack*, %struct.obstack** %__o107, align 8
  %chunk_limit110 = getelementptr inbounds %struct.obstack, %struct.obstack* %99, i32 0, i32 4
  %100 = load i8*, i8** %chunk_limit110, align 8
  %101 = load %struct.obstack*, %struct.obstack** %__o107, align 8
  %next_free111 = getelementptr inbounds %struct.obstack, %struct.obstack* %101, i32 0, i32 3
  %102 = load i8*, i8** %next_free111, align 8
  %sub.ptr.lhs.cast112 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast113 = ptrtoint i8* %102 to i64
  %sub.ptr.sub114 = sub i64 %sub.ptr.lhs.cast112, %sub.ptr.rhs.cast113
  %103 = load i32, i32* %__len109, align 4
  %conv115 = sext i32 %103 to i64
  %cmp116 = icmp slt i64 %sub.ptr.sub114, %conv115
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %for.end
  %104 = load %struct.obstack*, %struct.obstack** %__o107, align 8
  %105 = load i32, i32* %__len109, align 4
  call void @_obstack_newchunk(%struct.obstack* %104, i32 %105)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %for.end
  %106 = load i32, i32* %__len109, align 4
  %107 = load %struct.obstack*, %struct.obstack** %__o107, align 8
  %next_free120 = getelementptr inbounds %struct.obstack, %struct.obstack* %107, i32 0, i32 3
  %108 = load i8*, i8** %next_free120, align 8
  %idx.ext121 = sext i32 %106 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %108, i64 %idx.ext121
  store i8* %add.ptr122, i8** %next_free120, align 8
  %109 = load %struct.obstack*, %struct.obstack** %__h105, align 8
  store %struct.obstack* %109, %struct.obstack** %__o1125, align 8
  %110 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %object_base128 = getelementptr inbounds %struct.obstack, %struct.obstack* %110, i32 0, i32 2
  %111 = load i8*, i8** %object_base128, align 8
  store i8* %111, i8** %value127, align 8
  %112 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %next_free129 = getelementptr inbounds %struct.obstack, %struct.obstack* %112, i32 0, i32 3
  %113 = load i8*, i8** %next_free129, align 8
  %114 = load i8*, i8** %value127, align 8
  %cmp130 = icmp eq i8* %113, %114
  br i1 %cmp130, label %if.then.132, label %if.end.137

if.then.132:                                      ; preds = %if.end.119
  %115 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %maybe_empty_object133 = getelementptr inbounds %struct.obstack, %struct.obstack* %115, i32 0, i32 10
  %bf.load134 = load i8, i8* %maybe_empty_object133, align 8
  %bf.clear135 = and i8 %bf.load134, -3
  %bf.set136 = or i8 %bf.clear135, 2
  store i8 %bf.set136, i8* %maybe_empty_object133, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.132, %if.end.119
  %116 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %next_free138 = getelementptr inbounds %struct.obstack, %struct.obstack* %116, i32 0, i32 3
  %117 = load i8*, i8** %next_free138, align 8
  %sub.ptr.lhs.cast139 = ptrtoint i8* %117 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast139, 0
  %118 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %alignment_mask141 = getelementptr inbounds %struct.obstack, %struct.obstack* %118, i32 0, i32 6
  %119 = load i32, i32* %alignment_mask141, align 4
  %conv142 = sext i32 %119 to i64
  %add143 = add nsw i64 %sub.ptr.sub140, %conv142
  %120 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %alignment_mask144 = getelementptr inbounds %struct.obstack, %struct.obstack* %120, i32 0, i32 6
  %121 = load i32, i32* %alignment_mask144, align 4
  %neg145 = xor i32 %121, -1
  %conv146 = sext i32 %neg145 to i64
  %and147 = and i64 %add143, %conv146
  %add.ptr148 = getelementptr inbounds i8, i8* null, i64 %and147
  %122 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %next_free149 = getelementptr inbounds %struct.obstack, %struct.obstack* %122, i32 0, i32 3
  store i8* %add.ptr148, i8** %next_free149, align 8
  %123 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %next_free150 = getelementptr inbounds %struct.obstack, %struct.obstack* %123, i32 0, i32 3
  %124 = load i8*, i8** %next_free150, align 8
  %125 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %chunk151 = getelementptr inbounds %struct.obstack, %struct.obstack* %125, i32 0, i32 1
  %126 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk151, align 8
  %127 = bitcast %struct._obstack_chunk* %126 to i8*
  %sub.ptr.lhs.cast152 = ptrtoint i8* %124 to i64
  %sub.ptr.rhs.cast153 = ptrtoint i8* %127 to i64
  %sub.ptr.sub154 = sub i64 %sub.ptr.lhs.cast152, %sub.ptr.rhs.cast153
  %128 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %chunk_limit155 = getelementptr inbounds %struct.obstack, %struct.obstack* %128, i32 0, i32 4
  %129 = load i8*, i8** %chunk_limit155, align 8
  %130 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %chunk156 = getelementptr inbounds %struct.obstack, %struct.obstack* %130, i32 0, i32 1
  %131 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk156, align 8
  %132 = bitcast %struct._obstack_chunk* %131 to i8*
  %sub.ptr.lhs.cast157 = ptrtoint i8* %129 to i64
  %sub.ptr.rhs.cast158 = ptrtoint i8* %132 to i64
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast158
  %cmp160 = icmp sgt i64 %sub.ptr.sub154, %sub.ptr.sub159
  br i1 %cmp160, label %if.then.162, label %if.end.165

if.then.162:                                      ; preds = %if.end.137
  %133 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %chunk_limit163 = getelementptr inbounds %struct.obstack, %struct.obstack* %133, i32 0, i32 4
  %134 = load i8*, i8** %chunk_limit163, align 8
  %135 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %next_free164 = getelementptr inbounds %struct.obstack, %struct.obstack* %135, i32 0, i32 3
  store i8* %134, i8** %next_free164, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.162, %if.end.137
  %136 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %next_free166 = getelementptr inbounds %struct.obstack, %struct.obstack* %136, i32 0, i32 3
  %137 = load i8*, i8** %next_free166, align 8
  %138 = load %struct.obstack*, %struct.obstack** %__o1125, align 8
  %object_base167 = getelementptr inbounds %struct.obstack, %struct.obstack* %138, i32 0, i32 2
  store i8* %137, i8** %object_base167, align 8
  %139 = load i8*, i8** %value127, align 8
  store i8* %139, i8** %tmp168
  %140 = load i8*, i8** %tmp168
  store i8* %140, i8** %tmp123
  %141 = load i8*, i8** %tmp123
  %142 = bitcast i8* %141 to %struct.bitmap_head_def*
  %call169 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %142)
  store %struct.bitmap_head_def* %call169, %struct.bitmap_head_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 9), align 8
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h171, align 8
  %143 = load %struct.obstack*, %struct.obstack** %__h171, align 8
  store %struct.obstack* %143, %struct.obstack** %__o173, align 8
  store i32 24, i32* %__len175, align 4
  %144 = load %struct.obstack*, %struct.obstack** %__o173, align 8
  %chunk_limit176 = getelementptr inbounds %struct.obstack, %struct.obstack* %144, i32 0, i32 4
  %145 = load i8*, i8** %chunk_limit176, align 8
  %146 = load %struct.obstack*, %struct.obstack** %__o173, align 8
  %next_free177 = getelementptr inbounds %struct.obstack, %struct.obstack* %146, i32 0, i32 3
  %147 = load i8*, i8** %next_free177, align 8
  %sub.ptr.lhs.cast178 = ptrtoint i8* %145 to i64
  %sub.ptr.rhs.cast179 = ptrtoint i8* %147 to i64
  %sub.ptr.sub180 = sub i64 %sub.ptr.lhs.cast178, %sub.ptr.rhs.cast179
  %148 = load i32, i32* %__len175, align 4
  %conv181 = sext i32 %148 to i64
  %cmp182 = icmp slt i64 %sub.ptr.sub180, %conv181
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.165
  %149 = load %struct.obstack*, %struct.obstack** %__o173, align 8
  %150 = load i32, i32* %__len175, align 4
  call void @_obstack_newchunk(%struct.obstack* %149, i32 %150)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %if.end.165
  %151 = load i32, i32* %__len175, align 4
  %152 = load %struct.obstack*, %struct.obstack** %__o173, align 8
  %next_free186 = getelementptr inbounds %struct.obstack, %struct.obstack* %152, i32 0, i32 3
  %153 = load i8*, i8** %next_free186, align 8
  %idx.ext187 = sext i32 %151 to i64
  %add.ptr188 = getelementptr inbounds i8, i8* %153, i64 %idx.ext187
  store i8* %add.ptr188, i8** %next_free186, align 8
  %154 = load %struct.obstack*, %struct.obstack** %__h171, align 8
  store %struct.obstack* %154, %struct.obstack** %__o1191, align 8
  %155 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %object_base194 = getelementptr inbounds %struct.obstack, %struct.obstack* %155, i32 0, i32 2
  %156 = load i8*, i8** %object_base194, align 8
  store i8* %156, i8** %value193, align 8
  %157 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %next_free195 = getelementptr inbounds %struct.obstack, %struct.obstack* %157, i32 0, i32 3
  %158 = load i8*, i8** %next_free195, align 8
  %159 = load i8*, i8** %value193, align 8
  %cmp196 = icmp eq i8* %158, %159
  br i1 %cmp196, label %if.then.198, label %if.end.203

if.then.198:                                      ; preds = %if.end.185
  %160 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %maybe_empty_object199 = getelementptr inbounds %struct.obstack, %struct.obstack* %160, i32 0, i32 10
  %bf.load200 = load i8, i8* %maybe_empty_object199, align 8
  %bf.clear201 = and i8 %bf.load200, -3
  %bf.set202 = or i8 %bf.clear201, 2
  store i8 %bf.set202, i8* %maybe_empty_object199, align 8
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.198, %if.end.185
  %161 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %next_free204 = getelementptr inbounds %struct.obstack, %struct.obstack* %161, i32 0, i32 3
  %162 = load i8*, i8** %next_free204, align 8
  %sub.ptr.lhs.cast205 = ptrtoint i8* %162 to i64
  %sub.ptr.sub206 = sub i64 %sub.ptr.lhs.cast205, 0
  %163 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %alignment_mask207 = getelementptr inbounds %struct.obstack, %struct.obstack* %163, i32 0, i32 6
  %164 = load i32, i32* %alignment_mask207, align 4
  %conv208 = sext i32 %164 to i64
  %add209 = add nsw i64 %sub.ptr.sub206, %conv208
  %165 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %alignment_mask210 = getelementptr inbounds %struct.obstack, %struct.obstack* %165, i32 0, i32 6
  %166 = load i32, i32* %alignment_mask210, align 4
  %neg211 = xor i32 %166, -1
  %conv212 = sext i32 %neg211 to i64
  %and213 = and i64 %add209, %conv212
  %add.ptr214 = getelementptr inbounds i8, i8* null, i64 %and213
  %167 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %next_free215 = getelementptr inbounds %struct.obstack, %struct.obstack* %167, i32 0, i32 3
  store i8* %add.ptr214, i8** %next_free215, align 8
  %168 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %next_free216 = getelementptr inbounds %struct.obstack, %struct.obstack* %168, i32 0, i32 3
  %169 = load i8*, i8** %next_free216, align 8
  %170 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %chunk217 = getelementptr inbounds %struct.obstack, %struct.obstack* %170, i32 0, i32 1
  %171 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk217, align 8
  %172 = bitcast %struct._obstack_chunk* %171 to i8*
  %sub.ptr.lhs.cast218 = ptrtoint i8* %169 to i64
  %sub.ptr.rhs.cast219 = ptrtoint i8* %172 to i64
  %sub.ptr.sub220 = sub i64 %sub.ptr.lhs.cast218, %sub.ptr.rhs.cast219
  %173 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %chunk_limit221 = getelementptr inbounds %struct.obstack, %struct.obstack* %173, i32 0, i32 4
  %174 = load i8*, i8** %chunk_limit221, align 8
  %175 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %chunk222 = getelementptr inbounds %struct.obstack, %struct.obstack* %175, i32 0, i32 1
  %176 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk222, align 8
  %177 = bitcast %struct._obstack_chunk* %176 to i8*
  %sub.ptr.lhs.cast223 = ptrtoint i8* %174 to i64
  %sub.ptr.rhs.cast224 = ptrtoint i8* %177 to i64
  %sub.ptr.sub225 = sub i64 %sub.ptr.lhs.cast223, %sub.ptr.rhs.cast224
  %cmp226 = icmp sgt i64 %sub.ptr.sub220, %sub.ptr.sub225
  br i1 %cmp226, label %if.then.228, label %if.end.231

if.then.228:                                      ; preds = %if.end.203
  %178 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %chunk_limit229 = getelementptr inbounds %struct.obstack, %struct.obstack* %178, i32 0, i32 4
  %179 = load i8*, i8** %chunk_limit229, align 8
  %180 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %next_free230 = getelementptr inbounds %struct.obstack, %struct.obstack* %180, i32 0, i32 3
  store i8* %179, i8** %next_free230, align 8
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.228, %if.end.203
  %181 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %next_free232 = getelementptr inbounds %struct.obstack, %struct.obstack* %181, i32 0, i32 3
  %182 = load i8*, i8** %next_free232, align 8
  %183 = load %struct.obstack*, %struct.obstack** %__o1191, align 8
  %object_base233 = getelementptr inbounds %struct.obstack, %struct.obstack* %183, i32 0, i32 2
  store i8* %182, i8** %object_base233, align 8
  %184 = load i8*, i8** %value193, align 8
  store i8* %184, i8** %tmp234
  %185 = load i8*, i8** %tmp234
  store i8* %185, i8** %tmp189
  %186 = load i8*, i8** %tmp189
  %187 = bitcast i8* %186 to %struct.bitmap_head_def*
  %call235 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %187)
  store %struct.bitmap_head_def* %call235, %struct.bitmap_head_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 8), align 8
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h237, align 8
  %188 = load %struct.obstack*, %struct.obstack** %__h237, align 8
  store %struct.obstack* %188, %struct.obstack** %__o239, align 8
  store i32 24, i32* %__len241, align 4
  %189 = load %struct.obstack*, %struct.obstack** %__o239, align 8
  %chunk_limit242 = getelementptr inbounds %struct.obstack, %struct.obstack* %189, i32 0, i32 4
  %190 = load i8*, i8** %chunk_limit242, align 8
  %191 = load %struct.obstack*, %struct.obstack** %__o239, align 8
  %next_free243 = getelementptr inbounds %struct.obstack, %struct.obstack* %191, i32 0, i32 3
  %192 = load i8*, i8** %next_free243, align 8
  %sub.ptr.lhs.cast244 = ptrtoint i8* %190 to i64
  %sub.ptr.rhs.cast245 = ptrtoint i8* %192 to i64
  %sub.ptr.sub246 = sub i64 %sub.ptr.lhs.cast244, %sub.ptr.rhs.cast245
  %193 = load i32, i32* %__len241, align 4
  %conv247 = sext i32 %193 to i64
  %cmp248 = icmp slt i64 %sub.ptr.sub246, %conv247
  br i1 %cmp248, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %if.end.231
  %194 = load %struct.obstack*, %struct.obstack** %__o239, align 8
  %195 = load i32, i32* %__len241, align 4
  call void @_obstack_newchunk(%struct.obstack* %194, i32 %195)
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.250, %if.end.231
  %196 = load i32, i32* %__len241, align 4
  %197 = load %struct.obstack*, %struct.obstack** %__o239, align 8
  %next_free252 = getelementptr inbounds %struct.obstack, %struct.obstack* %197, i32 0, i32 3
  %198 = load i8*, i8** %next_free252, align 8
  %idx.ext253 = sext i32 %196 to i64
  %add.ptr254 = getelementptr inbounds i8, i8* %198, i64 %idx.ext253
  store i8* %add.ptr254, i8** %next_free252, align 8
  %199 = load %struct.obstack*, %struct.obstack** %__h237, align 8
  store %struct.obstack* %199, %struct.obstack** %__o1257, align 8
  %200 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %object_base260 = getelementptr inbounds %struct.obstack, %struct.obstack* %200, i32 0, i32 2
  %201 = load i8*, i8** %object_base260, align 8
  store i8* %201, i8** %value259, align 8
  %202 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %next_free261 = getelementptr inbounds %struct.obstack, %struct.obstack* %202, i32 0, i32 3
  %203 = load i8*, i8** %next_free261, align 8
  %204 = load i8*, i8** %value259, align 8
  %cmp262 = icmp eq i8* %203, %204
  br i1 %cmp262, label %if.then.264, label %if.end.269

if.then.264:                                      ; preds = %if.end.251
  %205 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %maybe_empty_object265 = getelementptr inbounds %struct.obstack, %struct.obstack* %205, i32 0, i32 10
  %bf.load266 = load i8, i8* %maybe_empty_object265, align 8
  %bf.clear267 = and i8 %bf.load266, -3
  %bf.set268 = or i8 %bf.clear267, 2
  store i8 %bf.set268, i8* %maybe_empty_object265, align 8
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.264, %if.end.251
  %206 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %next_free270 = getelementptr inbounds %struct.obstack, %struct.obstack* %206, i32 0, i32 3
  %207 = load i8*, i8** %next_free270, align 8
  %sub.ptr.lhs.cast271 = ptrtoint i8* %207 to i64
  %sub.ptr.sub272 = sub i64 %sub.ptr.lhs.cast271, 0
  %208 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %alignment_mask273 = getelementptr inbounds %struct.obstack, %struct.obstack* %208, i32 0, i32 6
  %209 = load i32, i32* %alignment_mask273, align 4
  %conv274 = sext i32 %209 to i64
  %add275 = add nsw i64 %sub.ptr.sub272, %conv274
  %210 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %alignment_mask276 = getelementptr inbounds %struct.obstack, %struct.obstack* %210, i32 0, i32 6
  %211 = load i32, i32* %alignment_mask276, align 4
  %neg277 = xor i32 %211, -1
  %conv278 = sext i32 %neg277 to i64
  %and279 = and i64 %add275, %conv278
  %add.ptr280 = getelementptr inbounds i8, i8* null, i64 %and279
  %212 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %next_free281 = getelementptr inbounds %struct.obstack, %struct.obstack* %212, i32 0, i32 3
  store i8* %add.ptr280, i8** %next_free281, align 8
  %213 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %next_free282 = getelementptr inbounds %struct.obstack, %struct.obstack* %213, i32 0, i32 3
  %214 = load i8*, i8** %next_free282, align 8
  %215 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %chunk283 = getelementptr inbounds %struct.obstack, %struct.obstack* %215, i32 0, i32 1
  %216 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk283, align 8
  %217 = bitcast %struct._obstack_chunk* %216 to i8*
  %sub.ptr.lhs.cast284 = ptrtoint i8* %214 to i64
  %sub.ptr.rhs.cast285 = ptrtoint i8* %217 to i64
  %sub.ptr.sub286 = sub i64 %sub.ptr.lhs.cast284, %sub.ptr.rhs.cast285
  %218 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %chunk_limit287 = getelementptr inbounds %struct.obstack, %struct.obstack* %218, i32 0, i32 4
  %219 = load i8*, i8** %chunk_limit287, align 8
  %220 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %chunk288 = getelementptr inbounds %struct.obstack, %struct.obstack* %220, i32 0, i32 1
  %221 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk288, align 8
  %222 = bitcast %struct._obstack_chunk* %221 to i8*
  %sub.ptr.lhs.cast289 = ptrtoint i8* %219 to i64
  %sub.ptr.rhs.cast290 = ptrtoint i8* %222 to i64
  %sub.ptr.sub291 = sub i64 %sub.ptr.lhs.cast289, %sub.ptr.rhs.cast290
  %cmp292 = icmp sgt i64 %sub.ptr.sub286, %sub.ptr.sub291
  br i1 %cmp292, label %if.then.294, label %if.end.297

if.then.294:                                      ; preds = %if.end.269
  %223 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %chunk_limit295 = getelementptr inbounds %struct.obstack, %struct.obstack* %223, i32 0, i32 4
  %224 = load i8*, i8** %chunk_limit295, align 8
  %225 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %next_free296 = getelementptr inbounds %struct.obstack, %struct.obstack* %225, i32 0, i32 3
  store i8* %224, i8** %next_free296, align 8
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.294, %if.end.269
  %226 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %next_free298 = getelementptr inbounds %struct.obstack, %struct.obstack* %226, i32 0, i32 3
  %227 = load i8*, i8** %next_free298, align 8
  %228 = load %struct.obstack*, %struct.obstack** %__o1257, align 8
  %object_base299 = getelementptr inbounds %struct.obstack, %struct.obstack* %228, i32 0, i32 2
  store i8* %227, i8** %object_base299, align 8
  %229 = load i8*, i8** %value259, align 8
  store i8* %229, i8** %tmp300
  %230 = load i8*, i8** %tmp300
  store i8* %230, i8** %tmp255
  %231 = load i8*, i8** %tmp255
  %232 = bitcast i8* %231 to %struct.bitmap_head_def*
  %call301 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %232)
  store %struct.bitmap_head_def* %call301, %struct.bitmap_head_def** @regs_live_at_setjmp, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_regs_live_at_end(%struct.bitmap_head_def* %set) #0 {
entry:
  %set.addr = alloca %struct.bitmap_head_def*, align 8
  %i = alloca i32, align 4
  %regno = alloca i32, align 4
  %tmp = alloca %struct.rtx_def*, align 8
  store %struct.bitmap_head_def* %set, %struct.bitmap_head_def** %set.addr, align 8
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @ix86_frame_pointer_required()
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %lor.lhs.false.5, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 56
  %2 = bitcast i24* %calls_alloca to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 6
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %lor.lhs.false.5, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* @flag_omit_frame_pointer, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true.3, %land.lhs.true, %lor.lhs.false
  %4 = load i32, i32* @current_function_sp_is_unchanging, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %land.lhs.true.3, %entry
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  call void @bitmap_set_bit(%struct.bitmap_head_def* %5, i32 7)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.5
  %6 = load i32, i32* @reload_completed, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then.10

lor.lhs.false.8:                                  ; preds = %if.end
  %7 = load i32, i32* @frame_pointer_needed, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.8, %if.end
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  call void @bitmap_set_bit(%struct.bitmap_head_def* %8, i32 20)
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  call void @bitmap_set_bit(%struct.bitmap_head_def* %9, i32 6)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %lor.lhs.false.8
  %10 = load i32, i32* @target_flags, align 4
  %and = and i32 %10, 33554432
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.11
  %11 = load i32, i32* @flag_pic, align 4
  %tobool13 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool13, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.11
  %12 = phi i1 [ true, %if.end.11 ], [ %lnot, %lor.rhs ]
  %cond = select i1 %12, i32 -1, i32 3
  %cmp = icmp ne i32 %cond, -1
  br i1 %cmp, label %land.lhs.true.14, label %if.end.31

land.lhs.true.14:                                 ; preds = %lor.end
  %13 = load i32, i32* @target_flags, align 4
  %and15 = and i32 %13, 33554432
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %lor.end.20, label %lor.rhs.17

lor.rhs.17:                                       ; preds = %land.lhs.true.14
  %14 = load i32, i32* @flag_pic, align 4
  %tobool18 = icmp ne i32 %14, 0
  %lnot19 = xor i1 %tobool18, true
  br label %lor.end.20

lor.end.20:                                       ; preds = %lor.rhs.17, %land.lhs.true.14
  %15 = phi i1 [ true, %land.lhs.true.14 ], [ %lnot19, %lor.rhs.17 ]
  %cond21 = select i1 %15, i32 -1, i32 3
  %idxprom = zext i32 %cond21 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %16 to i32
  %tobool22 = icmp ne i32 %conv, 0
  br i1 %tobool22, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %lor.end.20
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  %18 = load i32, i32* @target_flags, align 4
  %and24 = and i32 %18, 33554432
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %lor.end.29, label %lor.rhs.26

lor.rhs.26:                                       ; preds = %if.then.23
  %19 = load i32, i32* @flag_pic, align 4
  %tobool27 = icmp ne i32 %19, 0
  %lnot28 = xor i1 %tobool27, true
  br label %lor.end.29

lor.end.29:                                       ; preds = %lor.rhs.26, %if.then.23
  %20 = phi i1 [ true, %if.then.23 ], [ %lnot28, %lor.rhs.26 ]
  %cond30 = select i1 %20, i32 -1, i32 3
  call void @bitmap_set_bit(%struct.bitmap_head_def* %17, i32 %cond30)
  br label %if.end.31

if.end.31:                                        ; preds = %lor.end.29, %lor.end.20, %lor.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.31
  %21 = load i32, i32* %i, align 4
  %cmp32 = icmp ult i32 %21, 53
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom34 = zext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom34
  %23 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %23 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.body
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  %25 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %24, i32 %25)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* @reload_completed, align 4
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %if.then.41, label %if.end.58

if.then.41:                                       ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.55, %if.then.41
  %28 = load i32, i32* %i, align 4
  %cmp43 = icmp ult i32 %28, 53
  br i1 %cmp43, label %for.body.45, label %for.end.57

for.body.45:                                      ; preds = %for.cond.42
  %29 = load i32, i32* %i, align 4
  %idxprom46 = zext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %idxprom46
  %30 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %30 to i32
  %tobool49 = icmp ne i32 %conv48, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.54

land.lhs.true.50:                                 ; preds = %for.body.45
  %31 = load i64, i64* @regs_invalidated_by_call, align 8
  %32 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %32 to i64
  %shl = shl i64 1, %sh_prom
  %and51 = and i64 %31, %shl
  %tobool52 = icmp ne i64 %and51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %land.lhs.true.50
  %33 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  %34 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %33, i32 %34)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true.50, %for.body.45
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %35 = load i32, i32* %i, align 4
  %inc56 = add i32 %35, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.42

for.end.57:                                       ; preds = %for.cond.42
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %for.end
  %36 = load i32, i32* @reload_completed, align 4
  %tobool59 = icmp ne i32 %36, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.77

land.lhs.true.60:                                 ; preds = %if.end.58
  %37 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_eh_return = getelementptr inbounds %struct.function, %struct.function* %37, i32 0, i32 56
  %38 = bitcast i24* %calls_eh_return to i32*
  %bf.load61 = load i32, i32* %38, align 8
  %bf.lshr62 = lshr i32 %bf.load61, 7
  %bf.clear63 = and i32 %bf.lshr62, 1
  %tobool64 = icmp ne i32 %bf.clear63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.77

if.then.65:                                       ; preds = %land.lhs.true.60
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.74, %if.then.65
  %39 = load i32, i32* %i, align 4
  %cmp67 = icmp ult i32 %39, 2
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond.66
  %40 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.cond.66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond69 = phi i32 [ %40, %cond.true ], [ -1, %cond.false ]
  store i32 %cond69, i32* %regno, align 4
  %41 = load i32, i32* %regno, align 4
  %cmp70 = icmp eq i32 %41, -1
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %cond.end
  br label %for.end.76

if.end.73:                                        ; preds = %cond.end
  %42 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  %43 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %42, i32 %43)
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %44 = load i32, i32* %i, align 4
  %inc75 = add i32 %44, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond.66

for.end.76:                                       ; preds = %if.then.72
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %land.lhs.true.60, %if.end.58
  %45 = load i32, i32* @reload_completed, align 4
  %tobool78 = icmp ne i32 %45, 0
  br i1 %tobool78, label %if.end.98, label %land.lhs.true.79

land.lhs.true.79:                                 ; preds = %if.end.77
  %46 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_eh_return80 = getelementptr inbounds %struct.function, %struct.function* %46, i32 0, i32 56
  %47 = bitcast i24* %calls_eh_return80 to i32*
  %bf.load81 = load i32, i32* %47, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 7
  %bf.clear83 = and i32 %bf.lshr82, 1
  %tobool84 = icmp ne i32 %bf.clear83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.98

if.then.85:                                       ; preds = %land.lhs.true.79
  %48 = load i32, i32* @target_flags, align 4
  %and86 = and i32 %48, 33554432
  %tobool87 = icmp ne i32 %and86, 0
  %cond88 = select i1 %tobool87, i32 5, i32 4
  %call89 = call %struct.rtx_def* @gen_rtx_REG(i32 %cond88, i32 2)
  store %struct.rtx_def* %call89, %struct.rtx_def** %tmp, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %tobool90 = icmp ne %struct.rtx_def* %49, null
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.97

land.lhs.true.91:                                 ; preds = %if.then.85
  %50 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load92 = load i32, i32* %51, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 61
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %land.lhs.true.91
  %52 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %53 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  %54 = bitcast %struct.bitmap_head_def* %53 to i8*
  call void @mark_reg(%struct.rtx_def* %52, i8* %54)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %land.lhs.true.91, %if.then.85
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %land.lhs.true.79, %if.end.77
  %55 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set.addr, align 8
  %56 = bitcast %struct.bitmap_head_def* %55 to i8*
  call void @diddle_return_value(void (%struct.rtx_def*, i8*)* @mark_reg, i8* %56)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @update_life_info(%struct.simple_bitmap_def* %blocks, i32 %extent, i32 %prop_flags) #0 {
entry:
  %blocks.addr = alloca %struct.simple_bitmap_def*, align 8
  %extent.addr = alloca i32, align 4
  %prop_flags.addr = alloca i32, align 4
  %tmp = alloca %struct.bitmap_head_def*, align 8
  %tmp_head = alloca %struct.bitmap_head_def, align 8
  %i = alloca i32, align 4
  %stabilized_prop_flags = alloca i32, align 4
  %changed = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  %bb59 = alloca %struct.basic_block_def*, align 8
  %bb84 = alloca %struct.basic_block_def*, align 8
  %ptr_108 = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_111 = alloca i32, align 4
  %word_num_113 = alloca i32, align 4
  %word_129 = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %ptr_170 = alloca %struct.bitmap_element_def*, align 8
  %indx_173 = alloca i32, align 4
  %bit_num_175 = alloca i32, align 4
  %word_num_177 = alloca i32, align 4
  %word_200 = alloca i64, align 8
  %mask_210 = alloca i64, align 8
  store %struct.simple_bitmap_def* %blocks, %struct.simple_bitmap_def** %blocks.addr, align 8
  store i32 %extent, i32* %extent.addr, align 4
  store i32 %prop_flags, i32* %prop_flags.addr, align 4
  %0 = load i32, i32* %prop_flags.addr, align 4
  store i32 %0, i32* %stabilized_prop_flags, align 4
  %call = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %tmp_head)
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %tmp, align 8
  %1 = load i32, i32* %extent.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %tobool = icmp ne %struct.simple_bitmap_def* %2, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool, %lor.rhs ]
  %cond = select i1 %3, i32 6, i32 5
  call void @timevar_push(i32 %cond)
  %4 = load i32, i32* %prop_flags.addr, align 4
  %and = and i32 %4, 32
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.end
  %5 = load i32, i32* %extent.addr, align 4
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %tobool6 = icmp ne %struct.simple_bitmap_def* %6, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 650, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.update_life_info, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %lor.end
  %7 = load i32, i32* %prop_flags.addr, align 4
  %and7 = and i32 %7, 2
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  call void @clear_log_links(%struct.simple_bitmap_def* %8)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  %9 = load i32, i32* %extent.addr, align 4
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then.12, label %if.end.35

if.then.12:                                       ; preds = %if.end.10
  br label %for.cond

for.cond:                                         ; preds = %if.end.28, %if.then.12
  store i32 0, i32* %changed, align 4
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %12 = load i32, i32* %prop_flags.addr, align 4
  %and14 = and i32 %12, 48
  call void @calculate_global_regs_live(%struct.simple_bitmap_def* %10, %struct.simple_bitmap_def* %11, i32 %and14)
  %13 = load i32, i32* %prop_flags.addr, align 4
  %and15 = and i32 %13, 40
  %cmp16 = icmp ne i32 %and15, 40
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.cond
  br label %for.end.30

if.end.18:                                        ; preds = %for.cond
  %14 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %14, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end.18
  %15 = load i32, i32* %i, align 4
  %cmp20 = icmp sge i32 %15, 0
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.19
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %18, %struct.basic_block_def** %bb, align 8
  %19 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 9
  %21 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %19, %struct.bitmap_head_def* %21)
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %24 = load i32, i32* %prop_flags.addr, align 4
  %and23 = and i32 %24, 24
  %call24 = call i32 @propagate_block(%struct.basic_block_def* %22, %struct.bitmap_head_def* %23, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, i32 %and23)
  %25 = load i32, i32* %changed, align 4
  %or = or i32 %25, %call24
  store i32 %or, i32* %changed, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %27 = load i32, i32* %stabilized_prop_flags, align 4
  %and25 = and i32 %27, -25
  store i32 %and25, i32* %stabilized_prop_flags, align 4
  %28 = load i32, i32* %changed, align 4
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %for.end
  br label %for.end.30

if.end.28:                                        ; preds = %for.end
  %call29 = call zeroext i1 @cleanup_cfg(i32 1)
  br label %for.cond

for.end.30:                                       ; preds = %if.then.27, %if.then.17
  %29 = load i32, i32* %extent.addr, align 4
  %cmp31 = icmp eq i32 %29, 2
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.end.30
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %call33 = call i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* %30, i32 1)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %for.end.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.10
  %31 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %tobool36 = icmp ne %struct.simple_bitmap_def* %31, null
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.35
  br label %do.body

do.body:                                          ; preds = %if.then.37
  store i32 0, i32* %bit_num_, align 4
  %32 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %32, i32 0, i32 1
  %33 = load i32, i32* %size, align 4
  store i32 %33, i32* %size_, align 4
  %34 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %34, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.76, %do.body
  %35 = load i32, i32* %word_num_, align 4
  %36 = load i32, i32* %size_, align 4
  %cmp43 = icmp ult i32 %35, %36
  br i1 %cmp43, label %for.body.44, label %for.end.78

for.body.44:                                      ; preds = %for.cond.42
  %37 = load i32, i32* %word_num_, align 4
  %idxprom46 = zext i32 %37 to i64
  %38 = load i64*, i64** %ptr_, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %38, i64 %idxprom46
  %39 = load i64, i64* %arrayidx47, align 8
  store i64 %39, i64* %word_, align 8
  %40 = load i64, i64* %word_, align 8
  %cmp48 = icmp ne i64 %40, 0
  br i1 %cmp48, label %if.then.49, label %if.end.75

if.then.49:                                       ; preds = %for.body.44
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.73, %if.then.49
  %41 = load i32, i32* %bit_num_, align 4
  %cmp51 = icmp ult i32 %41, 64
  br i1 %cmp51, label %for.body.52, label %for.end.74

for.body.52:                                      ; preds = %for.cond.50
  %42 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %42 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %43 = load i64, i64* %word_, align 8
  %44 = load i64, i64* %_mask, align 8
  %and54 = and i64 %43, %44
  %cmp55 = icmp ne i64 %and54, 0
  br i1 %cmp55, label %if.then.56, label %if.end.72

if.then.56:                                       ; preds = %for.body.52
  %45 = load i64, i64* %_mask, align 8
  %neg = xor i64 %45, -1
  %46 = load i64, i64* %word_, align 8
  %and57 = and i64 %46, %neg
  store i64 %and57, i64* %word_, align 8
  %47 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %47, 64
  %48 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %48
  store i32 %add, i32* %i, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %49 to i64
  %50 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data61 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %50, i32 0, i32 4
  %bb62 = bitcast %union.varray_data_tag* %data61 to [1 x %struct.basic_block_def*]*
  %arrayidx63 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb62, i32 0, i64 %idxprom60
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx63, align 8
  store %struct.basic_block_def* %51, %struct.basic_block_def** %bb59, align 8
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb59, align 8
  %global_live_at_end64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 9
  %54 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end64, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %52, %struct.bitmap_head_def* %54)
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %bb59, align 8
  %56 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %57 = load i32, i32* %stabilized_prop_flags, align 4
  %call65 = call i32 @propagate_block(%struct.basic_block_def* %55, %struct.bitmap_head_def* %56, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, i32 %57)
  %58 = load i32, i32* %extent.addr, align 4
  %cmp66 = icmp eq i32 %58, 0
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.56
  %59 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %bb59, align 8
  call void @verify_local_live_at_start(%struct.bitmap_head_def* %59, %struct.basic_block_def* %60)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.then.56
  %61 = load i64, i64* %word_, align 8
  %cmp69 = icmp eq i64 %61, 0
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  br label %for.end.74

if.end.71:                                        ; preds = %if.end.68
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %for.body.52
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %62 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %62, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.50

for.end.74:                                       ; preds = %if.then.70, %for.cond.50
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %for.body.44
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %63 = load i32, i32* %word_num_, align 4
  %inc77 = add i32 %63, 1
  store i32 %inc77, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.42

for.end.78:                                       ; preds = %for.cond.42
  br label %do.end

do.end:                                           ; preds = %for.end.78
  br label %if.end.97

if.else:                                          ; preds = %if.end.35
  %64 = load i32, i32* @n_basic_blocks, align 4
  %sub79 = sub nsw i32 %64, 1
  store i32 %sub79, i32* %i, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.94, %if.else
  %65 = load i32, i32* %i, align 4
  %cmp81 = icmp sge i32 %65, 0
  br i1 %cmp81, label %for.body.82, label %for.end.96

for.body.82:                                      ; preds = %for.cond.80
  %66 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %66 to i64
  %67 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data86 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %67, i32 0, i32 4
  %bb87 = bitcast %union.varray_data_tag* %data86 to [1 x %struct.basic_block_def*]*
  %arrayidx88 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb87, i32 0, i64 %idxprom85
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx88, align 8
  store %struct.basic_block_def* %68, %struct.basic_block_def** %bb84, align 8
  %69 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %bb84, align 8
  %global_live_at_end89 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 9
  %71 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end89, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %69, %struct.bitmap_head_def* %71)
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %bb84, align 8
  %73 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %74 = load i32, i32* %stabilized_prop_flags, align 4
  %call90 = call i32 @propagate_block(%struct.basic_block_def* %72, %struct.bitmap_head_def* %73, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, i32 %74)
  %75 = load i32, i32* %extent.addr, align 4
  %cmp91 = icmp eq i32 %75, 0
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %for.body.82
  %76 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %bb84, align 8
  call void @verify_local_live_at_start(%struct.bitmap_head_def* %76, %struct.basic_block_def* %77)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %for.body.82
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %78 = load i32, i32* %i, align 4
  %dec95 = add nsw i32 %78, -1
  store i32 %dec95, i32* %i, align 4
  br label %for.cond.80

for.end.96:                                       ; preds = %for.cond.80
  br label %if.end.97

if.end.97:                                        ; preds = %for.end.96, %do.end
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.97
  %79 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %tobool99 = icmp ne %struct.bitmap_head_def* %79, null
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %do.body.98
  %80 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %80)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %tmp, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %do.body.98
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  %81 = load i32, i32* %prop_flags.addr, align 4
  %and103 = and i32 %81, 4
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.252

if.then.105:                                      ; preds = %do.end.102
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  %82 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 9), align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %82, i32 0, i32 0
  %83 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %83, %struct.bitmap_element_def** %ptr_108, align 8
  store i32 0, i32* %indx_, align 4
  store i32 53, i32* %bit_num_111, align 4
  store i32 0, i32* %word_num_113, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.106
  %84 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %cmp114 = icmp ne %struct.bitmap_element_def* %84, null
  br i1 %cmp114, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %85 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %85, i32 0, i32 2
  %86 = load i32, i32* %indx, align 4
  %87 = load i32, i32* %indx_, align 4
  %cmp115 = icmp ult i32 %86, %87
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %88 = phi i1 [ false, %while.cond ], [ %cmp115, %land.rhs ]
  br i1 %88, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %89 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %89, i32 0, i32 0
  %90 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %90, %struct.bitmap_element_def** %ptr_108, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %91 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %cmp116 = icmp ne %struct.bitmap_element_def* %91, null
  br i1 %cmp116, label %land.lhs.true.117, label %if.end.121

land.lhs.true.117:                                ; preds = %while.end
  %92 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %indx118 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %92, i32 0, i32 2
  %93 = load i32, i32* %indx118, align 4
  %94 = load i32, i32* %indx_, align 4
  %cmp119 = icmp ne i32 %93, %94
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.117
  store i32 0, i32* %bit_num_111, align 4
  store i32 0, i32* %word_num_113, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %land.lhs.true.117, %while.end
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.164, %if.end.121
  %95 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %cmp123 = icmp ne %struct.bitmap_element_def* %95, null
  br i1 %cmp123, label %for.body.124, label %for.end.166

for.body.124:                                     ; preds = %for.cond.122
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.161, %for.body.124
  %96 = load i32, i32* %word_num_113, align 4
  %cmp126 = icmp ult i32 %96, 2
  br i1 %cmp126, label %for.body.127, label %for.end.163

for.body.127:                                     ; preds = %for.cond.125
  %97 = load i32, i32* %word_num_113, align 4
  %idxprom130 = zext i32 %97 to i64
  %98 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %98, i32 0, i32 3
  %arrayidx131 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom130
  %99 = load i64, i64* %arrayidx131, align 8
  store i64 %99, i64* %word_129, align 8
  %100 = load i64, i64* %word_129, align 8
  %cmp132 = icmp ne i64 %100, 0
  br i1 %cmp132, label %if.then.133, label %if.end.160

if.then.133:                                      ; preds = %for.body.127
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.157, %if.then.133
  %101 = load i32, i32* %bit_num_111, align 4
  %cmp135 = icmp ult i32 %101, 64
  br i1 %cmp135, label %for.body.136, label %for.end.159

for.body.136:                                     ; preds = %for.cond.134
  %102 = load i32, i32* %bit_num_111, align 4
  %sh_prom138 = zext i32 %102 to i64
  %shl139 = shl i64 1, %sh_prom138
  store i64 %shl139, i64* %mask_, align 8
  %103 = load i64, i64* %word_129, align 8
  %104 = load i64, i64* %mask_, align 8
  %and140 = and i64 %103, %104
  %cmp141 = icmp ne i64 %and140, 0
  br i1 %cmp141, label %if.then.142, label %if.end.156

if.then.142:                                      ; preds = %for.body.136
  %105 = load i64, i64* %mask_, align 8
  %neg143 = xor i64 %105, -1
  %106 = load i64, i64* %word_129, align 8
  %and144 = and i64 %106, %neg143
  store i64 %and144, i64* %word_129, align 8
  %107 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %indx145 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %107, i32 0, i32 2
  %108 = load i32, i32* %indx145, align 4
  %mul146 = mul i32 %108, 128
  %109 = load i32, i32* %word_num_113, align 4
  %mul147 = mul i32 %109, 64
  %add148 = add i32 %mul146, %mul147
  %110 = load i32, i32* %bit_num_111, align 4
  %add149 = add i32 %add148, %110
  store i32 %add149, i32* %i, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %111 to i64
  %112 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data151 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %112, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data151 to [1 x %struct.reg_info_def*]*
  %arrayidx152 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom150
  %113 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx152, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %113, i32 0, i32 9
  store i32 -2, i32* %basic_block, align 4
  %114 = load i64, i64* %word_129, align 8
  %cmp153 = icmp eq i64 %114, 0
  br i1 %cmp153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.then.142
  br label %for.end.159

if.end.155:                                       ; preds = %if.then.142
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %for.body.136
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %115 = load i32, i32* %bit_num_111, align 4
  %inc158 = add i32 %115, 1
  store i32 %inc158, i32* %bit_num_111, align 4
  br label %for.cond.134

for.end.159:                                      ; preds = %if.then.154, %for.cond.134
  br label %if.end.160

if.end.160:                                       ; preds = %for.end.159, %for.body.127
  store i32 0, i32* %bit_num_111, align 4
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %116 = load i32, i32* %word_num_113, align 4
  %inc162 = add i32 %116, 1
  store i32 %inc162, i32* %word_num_113, align 4
  br label %for.cond.125

for.end.163:                                      ; preds = %for.cond.125
  store i32 0, i32* %word_num_113, align 4
  br label %for.inc.164

for.inc.164:                                      ; preds = %for.end.163
  %117 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_108, align 8
  %next165 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %117, i32 0, i32 0
  %118 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next165, align 8
  store %struct.bitmap_element_def* %118, %struct.bitmap_element_def** %ptr_108, align 8
  br label %for.cond.122

for.end.166:                                      ; preds = %for.cond.122
  br label %do.end.167

do.end.167:                                       ; preds = %for.end.166
  br label %do.body.168

do.body.168:                                      ; preds = %do.end.167
  %119 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @regs_live_at_setjmp, align 8
  %first171 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %119, i32 0, i32 0
  %120 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first171, align 8
  store %struct.bitmap_element_def* %120, %struct.bitmap_element_def** %ptr_170, align 8
  store i32 0, i32* %indx_173, align 4
  store i32 53, i32* %bit_num_175, align 4
  store i32 0, i32* %word_num_177, align 4
  br label %while.cond.178

while.cond.178:                                   ; preds = %while.body.184, %do.body.168
  %121 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %cmp179 = icmp ne %struct.bitmap_element_def* %121, null
  br i1 %cmp179, label %land.rhs.180, label %land.end.183

land.rhs.180:                                     ; preds = %while.cond.178
  %122 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %indx181 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %122, i32 0, i32 2
  %123 = load i32, i32* %indx181, align 4
  %124 = load i32, i32* %indx_173, align 4
  %cmp182 = icmp ult i32 %123, %124
  br label %land.end.183

land.end.183:                                     ; preds = %land.rhs.180, %while.cond.178
  %125 = phi i1 [ false, %while.cond.178 ], [ %cmp182, %land.rhs.180 ]
  br i1 %125, label %while.body.184, label %while.end.186

while.body.184:                                   ; preds = %land.end.183
  %126 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %next185 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %126, i32 0, i32 0
  %127 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next185, align 8
  store %struct.bitmap_element_def* %127, %struct.bitmap_element_def** %ptr_170, align 8
  br label %while.cond.178

while.end.186:                                    ; preds = %land.end.183
  %128 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %cmp187 = icmp ne %struct.bitmap_element_def* %128, null
  br i1 %cmp187, label %land.lhs.true.188, label %if.end.192

land.lhs.true.188:                                ; preds = %while.end.186
  %129 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %indx189 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %129, i32 0, i32 2
  %130 = load i32, i32* %indx189, align 4
  %131 = load i32, i32* %indx_173, align 4
  %cmp190 = icmp ne i32 %130, %131
  br i1 %cmp190, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %land.lhs.true.188
  store i32 0, i32* %bit_num_175, align 4
  store i32 0, i32* %word_num_177, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.191, %land.lhs.true.188, %while.end.186
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.248, %if.end.192
  %132 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %cmp194 = icmp ne %struct.bitmap_element_def* %132, null
  br i1 %cmp194, label %for.body.195, label %for.end.250

for.body.195:                                     ; preds = %for.cond.193
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc.245, %for.body.195
  %133 = load i32, i32* %word_num_177, align 4
  %cmp197 = icmp ult i32 %133, 2
  br i1 %cmp197, label %for.body.198, label %for.end.247

for.body.198:                                     ; preds = %for.cond.196
  %134 = load i32, i32* %word_num_177, align 4
  %idxprom201 = zext i32 %134 to i64
  %135 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %bits202 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %135, i32 0, i32 3
  %arrayidx203 = getelementptr inbounds [2 x i64], [2 x i64]* %bits202, i32 0, i64 %idxprom201
  %136 = load i64, i64* %arrayidx203, align 8
  store i64 %136, i64* %word_200, align 8
  %137 = load i64, i64* %word_200, align 8
  %cmp204 = icmp ne i64 %137, 0
  br i1 %cmp204, label %if.then.205, label %if.end.244

if.then.205:                                      ; preds = %for.body.198
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.241, %if.then.205
  %138 = load i32, i32* %bit_num_175, align 4
  %cmp207 = icmp ult i32 %138, 64
  br i1 %cmp207, label %for.body.208, label %for.end.243

for.body.208:                                     ; preds = %for.cond.206
  %139 = load i32, i32* %bit_num_175, align 4
  %sh_prom211 = zext i32 %139 to i64
  %shl212 = shl i64 1, %sh_prom211
  store i64 %shl212, i64* %mask_210, align 8
  %140 = load i64, i64* %word_200, align 8
  %141 = load i64, i64* %mask_210, align 8
  %and213 = and i64 %140, %141
  %cmp214 = icmp ne i64 %and213, 0
  br i1 %cmp214, label %if.then.215, label %if.end.240

if.then.215:                                      ; preds = %for.body.208
  %142 = load i64, i64* %mask_210, align 8
  %neg216 = xor i64 %142, -1
  %143 = load i64, i64* %word_200, align 8
  %and217 = and i64 %143, %neg216
  store i64 %and217, i64* %word_200, align 8
  %144 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %indx218 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %144, i32 0, i32 2
  %145 = load i32, i32* %indx218, align 4
  %mul219 = mul i32 %145, 128
  %146 = load i32, i32* %word_num_177, align 4
  %mul220 = mul i32 %146, 64
  %add221 = add i32 %mul219, %mul220
  %147 = load i32, i32* %bit_num_175, align 4
  %add222 = add i32 %add221, %147
  store i32 %add222, i32* %i, align 4
  %148 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %148 to i64
  %149 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %149, i32 0, i32 3
  %150 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %150, i32 0, i32 12
  %151 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx224 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %151, i64 %idxprom223
  %152 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx224, align 8
  %cmp225 = icmp ne %struct.rtx_def* %152, null
  br i1 %cmp225, label %if.then.226, label %if.end.236

if.then.226:                                      ; preds = %if.then.215
  %153 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %153 to i64
  %154 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data228 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %154, i32 0, i32 4
  %reg229 = bitcast %union.varray_data_tag* %data228 to [1 x %struct.reg_info_def*]*
  %arrayidx230 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg229, i32 0, i64 %idxprom227
  %155 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx230, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %155, i32 0, i32 7
  store i32 -1, i32* %live_length, align 4
  %156 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %156 to i64
  %157 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data232 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %157, i32 0, i32 4
  %reg233 = bitcast %union.varray_data_tag* %data232 to [1 x %struct.reg_info_def*]*
  %arrayidx234 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg233, i32 0, i64 %idxprom231
  %158 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx234, align 8
  %basic_block235 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %158, i32 0, i32 9
  store i32 -1, i32* %basic_block235, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.226, %if.then.215
  %159 = load i64, i64* %word_200, align 8
  %cmp237 = icmp eq i64 %159, 0
  br i1 %cmp237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.end.236
  br label %for.end.243

if.end.239:                                       ; preds = %if.end.236
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %for.body.208
  br label %for.inc.241

for.inc.241:                                      ; preds = %if.end.240
  %160 = load i32, i32* %bit_num_175, align 4
  %inc242 = add i32 %160, 1
  store i32 %inc242, i32* %bit_num_175, align 4
  br label %for.cond.206

for.end.243:                                      ; preds = %if.then.238, %for.cond.206
  br label %if.end.244

if.end.244:                                       ; preds = %for.end.243, %for.body.198
  store i32 0, i32* %bit_num_175, align 4
  br label %for.inc.245

for.inc.245:                                      ; preds = %if.end.244
  %161 = load i32, i32* %word_num_177, align 4
  %inc246 = add i32 %161, 1
  store i32 %inc246, i32* %word_num_177, align 4
  br label %for.cond.196

for.end.247:                                      ; preds = %for.cond.196
  store i32 0, i32* %word_num_177, align 4
  br label %for.inc.248

for.inc.248:                                      ; preds = %for.end.247
  %162 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_170, align 8
  %next249 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %162, i32 0, i32 0
  %163 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next249, align 8
  store %struct.bitmap_element_def* %163, %struct.bitmap_element_def** %ptr_170, align 8
  br label %for.cond.193

for.end.250:                                      ; preds = %for.cond.193
  br label %do.end.251

do.end.251:                                       ; preds = %for.end.250
  br label %if.end.252

if.end.252:                                       ; preds = %do.end.251, %do.end.102
  %164 = load i32, i32* %extent.addr, align 4
  %cmp253 = icmp eq i32 %164, 0
  br i1 %cmp253, label %lor.end.256, label %lor.rhs.254

lor.rhs.254:                                      ; preds = %if.end.252
  %165 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %tobool255 = icmp ne %struct.simple_bitmap_def* %165, null
  br label %lor.end.256

lor.end.256:                                      ; preds = %lor.rhs.254, %if.end.252
  %166 = phi i1 [ true, %if.end.252 ], [ %tobool255, %lor.rhs.254 ]
  %cond257 = select i1 %166, i32 6, i32 5
  call void @timevar_pop(i32 %cond257)
  ret void
}

declare void @end_alias_analysis() #1

declare void @dump_flow_info(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @free_basic_block_vars(i32 %keep_head_end_p) #0 {
entry:
  %keep_head_end_p.addr = alloca i32, align 4
  store i32 %keep_head_end_p, i32* %keep_head_end_p.addr, align 4
  %0 = load i32, i32* %keep_head_end_p.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.6, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %tobool1 = icmp ne %struct.varray_head_tag* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  call void @clear_edges()
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %tobool3 = icmp ne %struct.varray_head_tag* %2, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %do.body
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %4 = bitcast %struct.varray_head_tag* %3 to i8*
  call void @free(i8* %4) #3
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @basic_block_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %if.then
  store i32 0, i32* @n_basic_blocks, align 4
  store i8* null, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 10), align 8
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 9), align 8
  store i8* null, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 8), align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @delete_dead_jumptables() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %next, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %6 = load i32, i32* %rtint, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load3 = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load3, 28
  %bf.clear4 = and i32 %bf.lshr, 1
  %cmp5 = icmp eq i32 %6, %bf.clear4
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.37

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 33
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.37

land.lhs.true.10:                                 ; preds = %land.lhs.true.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load14 = load i32, i32* %13, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 44
  br i1 %cmp16, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load20 = load i32, i32* %16, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 45
  br i1 %cmp22, label %if.then, label %if.end.37

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool23 = icmp ne %struct._IO_FILE* %17, null
  br i1 %tobool23, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtint27 = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %20 = load i32, i32* %rtint27, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i32 0, i32 0), i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 2
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %call32 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %22)
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call33 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %23)
  %24 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 2
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %next, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %lor.lhs.false, %land.lhs.true.6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %26 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @timevar_push(i32) #1

; Function Attrs: nounwind uwtable
define internal void @clear_log_links(%struct.simple_bitmap_def* %blocks) #0 {
entry:
  %blocks.addr = alloca %struct.simple_bitmap_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  store %struct.simple_bitmap_def* %blocks, %struct.simple_bitmap_def** %blocks.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %tobool = icmp ne %struct.simple_bitmap_def* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool1 = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  call void @free_INSN_LIST_list(%struct.rtx_def** %rtx)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 2
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.63

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  store i32 0, i32* %bit_num_, align 4
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4
  store i32 %9, i32* %size_, align 4
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.60, %do.body
  %11 = load i32, i32* %word_num_, align 4
  %12 = load i32, i32* %size_, align 4
  %cmp9 = icmp ult i32 %11, %12
  br i1 %cmp9, label %for.body.11, label %for.end.62

for.body.11:                                      ; preds = %for.cond.8
  %13 = load i32, i32* %word_num_, align 4
  %idxprom12 = zext i32 %13 to i64
  %14 = load i64*, i64** %ptr_, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %14, i64 %idxprom12
  %15 = load i64, i64* %arrayidx13, align 8
  store i64 %15, i64* %word_, align 8
  %16 = load i64, i64* %word_, align 8
  %cmp14 = icmp ne i64 %16, 0
  br i1 %cmp14, label %if.then.16, label %if.end.59

if.then.16:                                       ; preds = %for.body.11
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.57, %if.then.16
  %17 = load i32, i32* %bit_num_, align 4
  %cmp18 = icmp ult i32 %17, 64
  br i1 %cmp18, label %for.body.20, label %for.end.58

for.body.20:                                      ; preds = %for.cond.17
  %18 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %18 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %19 = load i64, i64* %word_, align 8
  %20 = load i64, i64* %_mask, align 8
  %and = and i64 %19, %20
  %cmp21 = icmp ne i64 %and, 0
  br i1 %cmp21, label %if.then.23, label %if.end.56

if.then.23:                                       ; preds = %for.body.20
  %21 = load i64, i64* %_mask, align 8
  %neg = xor i64 %21, -1
  %22 = load i64, i64* %word_, align 8
  %and24 = and i64 %22, %neg
  store i64 %and24, i64* %word_, align 8
  %23 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %23, 64
  %24 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %24
  store i32 %add, i32* %i, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %26, i32 0, i32 4
  %bb26 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx27 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb26, i32 0, i64 %idxprom25
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx27, align 8
  store %struct.basic_block_def* %27, %struct.basic_block_def** %bb, align 8
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 0
  %29 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %insn, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.47, %if.then.23
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 1
  %32 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 2
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %cmp32 = icmp ne %struct.rtx_def* %30, %33
  br i1 %cmp32, label %for.body.34, label %for.end.51

for.body.34:                                      ; preds = %for.cond.28
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load35 = load i32, i32* %35, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %idxprom37 = sext i32 %bf.clear36 to i64
  %arrayidx38 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom37
  %36 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %36 to i32
  %cmp40 = icmp eq i32 %conv39, 105
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %for.body.34
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 5
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  call void @free_INSN_LIST_list(%struct.rtx_def** %rtx45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %for.body.34
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 2
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %insn, align 8
  br label %for.cond.28

for.end.51:                                       ; preds = %for.cond.28
  %40 = load i64, i64* %word_, align 8
  %cmp52 = icmp eq i64 %40, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.end.51
  br label %for.end.58

if.end.55:                                        ; preds = %for.end.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.body.20
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %41 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.17

for.end.58:                                       ; preds = %if.then.54, %for.cond.17
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %for.body.11
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %42 = load i32, i32* %word_num_, align 4
  %inc61 = add i32 %42, 1
  store i32 %inc61, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.8

for.end.62:                                       ; preds = %for.cond.8
  br label %do.end

do.end:                                           ; preds = %for.end.62
  br label %if.end.63

if.end.63:                                        ; preds = %do.end, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calculate_global_regs_live(%struct.simple_bitmap_def* %blocks_in, %struct.simple_bitmap_def* %blocks_out, i32 %flags) #0 {
entry:
  %blocks_in.addr = alloca %struct.simple_bitmap_def*, align 8
  %blocks_out.addr = alloca %struct.simple_bitmap_def*, align 8
  %flags.addr = alloca i32, align 4
  %queue = alloca %struct.basic_block_def**, align 8
  %qhead = alloca %struct.basic_block_def**, align 8
  %qtail = alloca %struct.basic_block_def**, align 8
  %qend = alloca %struct.basic_block_def**, align 8
  %tmp = alloca %struct.bitmap_head_def*, align 8
  %new_live_at_end = alloca %struct.bitmap_head_def*, align 8
  %call_used = alloca %struct.bitmap_head_def*, align 8
  %tmp_head = alloca %struct.bitmap_head_def, align 8
  %call_used_head = alloca %struct.bitmap_head_def, align 8
  %new_live_at_end_head = alloca %struct.bitmap_head_def, align 8
  %i = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  %bb47 = alloca %struct.basic_block_def*, align 8
  %bb70 = alloca %struct.basic_block_def*, align 8
  %rescan = alloca i32, align 4
  %changed = alloca i32, align 4
  %bb89 = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %sb = alloca %struct.basic_block_def*, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp190 = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp226 = alloca i8*, align 8
  %__h230 = alloca %struct.obstack*, align 8
  %__o232 = alloca %struct.obstack*, align 8
  %__len234 = alloca i32, align 4
  %tmp248 = alloca i8*, align 8
  %__o1250 = alloca %struct.obstack*, align 8
  %value252 = alloca i8*, align 8
  %tmp293 = alloca i8*, align 8
  %pb = alloca %struct.basic_block_def*, align 8
  %word_num_382 = alloca i32, align 4
  %bit_num_384 = alloca i32, align 4
  %size_386 = alloca i32, align 4
  %ptr_389 = alloca i64*, align 8
  %word_397 = alloca i64, align 8
  %_mask408 = alloca i64, align 8
  %bb420 = alloca %struct.basic_block_def*, align 8
  %bb461 = alloca %struct.basic_block_def*, align 8
  store %struct.simple_bitmap_def* %blocks_in, %struct.simple_bitmap_def** %blocks_in.addr, align 8
  store %struct.simple_bitmap_def* %blocks_out, %struct.simple_bitmap_def** %blocks_out.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %tmp_head)
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %tmp, align 8
  %call7 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %new_live_at_end_head)
  store %struct.bitmap_head_def* %call7, %struct.bitmap_head_def** %new_live_at_end, align 8
  %call8 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %call_used_head)
  store %struct.bitmap_head_def* %call8, %struct.bitmap_head_def** %call_used, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %call_used, align 8
  %4 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %6, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call9 = call noalias i8* @xmalloc(i64 %mul)
  %7 = bitcast i8* %call9 to %struct.basic_block_def**
  store %struct.basic_block_def** %7, %struct.basic_block_def*** %queue, align 8
  %8 = load %struct.basic_block_def**, %struct.basic_block_def*** %queue, align 8
  store %struct.basic_block_def** %8, %struct.basic_block_def*** %qtail, align 8
  %9 = load %struct.basic_block_def**, %struct.basic_block_def*** %queue, align 8
  %10 = load i32, i32* @n_basic_blocks, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %9, i64 %idx.ext
  %add.ptr10 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %add.ptr, i64 2
  store %struct.basic_block_def** %add.ptr10, %struct.basic_block_def*** %qend, align 8
  store %struct.basic_block_def** %add.ptr10, %struct.basic_block_def*** %qhead, align 8
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_in.addr, align 8
  %tobool11 = icmp ne %struct.simple_bitmap_def* %11, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.end
  %12 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %if.then.12
  %13 = load i32, i32* %i, align 4
  %cmp14 = icmp sge i32 %13, 0
  br i1 %cmp14, label %for.body.16, label %for.end.20

for.body.16:                                      ; preds = %for.cond.13
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom17
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx18, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 10
  store i8* null, i8** %aux, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.16
  %17 = load i32, i32* %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.13

for.end.20:                                       ; preds = %for.cond.13
  br label %do.body

do.body:                                          ; preds = %for.end.20
  store i32 0, i32* %bit_num_, align 4
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_in.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %18, i32 0, i32 1
  %19 = load i32, i32* %size, align 4
  store i32 %19, i32* %size_, align 4
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_in.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %20, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.62, %do.body
  %21 = load i32, i32* %word_num_, align 4
  %22 = load i32, i32* %size_, align 4
  %cmp26 = icmp ult i32 %21, %22
  br i1 %cmp26, label %for.body.28, label %for.end.64

for.body.28:                                      ; preds = %for.cond.25
  %23 = load i32, i32* %word_num_, align 4
  %idxprom30 = zext i32 %23 to i64
  %24 = load i64*, i64** %ptr_, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %24, i64 %idxprom30
  %25 = load i64, i64* %arrayidx31, align 8
  store i64 %25, i64* %word_, align 8
  %26 = load i64, i64* %word_, align 8
  %cmp32 = icmp ne i64 %26, 0
  br i1 %cmp32, label %if.then.34, label %if.end.61

if.then.34:                                       ; preds = %for.body.28
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.58, %if.then.34
  %27 = load i32, i32* %bit_num_, align 4
  %cmp36 = icmp ult i32 %27, 64
  br i1 %cmp36, label %for.body.38, label %for.end.60

for.body.38:                                      ; preds = %for.cond.35
  %28 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %28 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %29 = load i64, i64* %word_, align 8
  %30 = load i64, i64* %_mask, align 8
  %and = and i64 %29, %30
  %cmp40 = icmp ne i64 %and, 0
  br i1 %cmp40, label %if.then.42, label %if.end.57

if.then.42:                                       ; preds = %for.body.38
  %31 = load i64, i64* %_mask, align 8
  %neg = xor i64 %31, -1
  %32 = load i64, i64* %word_, align 8
  %and43 = and i64 %32, %neg
  store i64 %and43, i64* %word_, align 8
  %33 = load i32, i32* %word_num_, align 4
  %mul44 = mul i32 %33, 64
  %34 = load i32, i32* %bit_num_, align 4
  %add45 = add i32 %mul44, %34
  store i32 %add45, i32* %i, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %35 to i64
  %36 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data49 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %36, i32 0, i32 4
  %bb50 = bitcast %union.varray_data_tag* %data49 to [1 x %struct.basic_block_def*]*
  %arrayidx51 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb50, i32 0, i64 %idxprom48
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx51, align 8
  store %struct.basic_block_def* %37, %struct.basic_block_def** %bb47, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %bb47, align 8
  %39 = load %struct.basic_block_def**, %struct.basic_block_def*** %qhead, align 8
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %39, i32 -1
  store %struct.basic_block_def** %incdec.ptr, %struct.basic_block_def*** %qhead, align 8
  store %struct.basic_block_def* %38, %struct.basic_block_def** %incdec.ptr, align 8
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %bb47, align 8
  %41 = bitcast %struct.basic_block_def* %40 to i8*
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %bb47, align 8
  %aux52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 10
  store i8* %41, i8** %aux52, align 8
  %43 = load i64, i64* %word_, align 8
  %cmp53 = icmp eq i64 %43, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.42
  br label %for.end.60

if.end.56:                                        ; preds = %if.then.42
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.body.38
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %44 = load i32, i32* %bit_num_, align 4
  %inc59 = add i32 %44, 1
  store i32 %inc59, i32* %bit_num_, align 4
  br label %for.cond.35

for.end.60:                                       ; preds = %if.then.55, %for.cond.35
  br label %if.end.61

if.end.61:                                        ; preds = %for.end.60, %for.body.28
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %45 = load i32, i32* %word_num_, align 4
  %inc63 = add i32 %45, 1
  store i32 %inc63, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.25

for.end.64:                                       ; preds = %for.cond.25
  br label %do.end

do.end:                                           ; preds = %for.end.64
  br label %if.end.80

if.else:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.77, %if.else
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* @n_basic_blocks, align 4
  %cmp66 = icmp slt i32 %46, %47
  br i1 %cmp66, label %for.body.68, label %for.end.79

for.body.68:                                      ; preds = %for.cond.65
  %48 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %48 to i64
  %49 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data72 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %49, i32 0, i32 4
  %bb73 = bitcast %union.varray_data_tag* %data72 to [1 x %struct.basic_block_def*]*
  %arrayidx74 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb73, i32 0, i64 %idxprom71
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx74, align 8
  store %struct.basic_block_def* %50, %struct.basic_block_def** %bb70, align 8
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %bb70, align 8
  %52 = load %struct.basic_block_def**, %struct.basic_block_def*** %qhead, align 8
  %incdec.ptr75 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %52, i32 -1
  store %struct.basic_block_def** %incdec.ptr75, %struct.basic_block_def*** %qhead, align 8
  store %struct.basic_block_def* %51, %struct.basic_block_def** %incdec.ptr75, align 8
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb70, align 8
  %54 = bitcast %struct.basic_block_def* %53 to i8*
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %bb70, align 8
  %aux76 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i32 0, i32 10
  store i8* %54, i8** %aux76, align 8
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.body.68
  %56 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %56, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.65

for.end.79:                                       ; preds = %for.cond.65
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %do.end
  store i8* null, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  store i8* null, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 10), align 8
  %57 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_out.addr, align 8
  %tobool81 = icmp ne %struct.simple_bitmap_def* %57, null
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.80
  %58 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_out.addr, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %58)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.80
  br label %while.cond

while.cond:                                       ; preds = %for.end.362, %if.then.342, %if.then.332, %if.then.308, %if.then.174, %if.end.83
  %59 = load %struct.basic_block_def**, %struct.basic_block_def*** %qhead, align 8
  %60 = load %struct.basic_block_def**, %struct.basic_block_def*** %qtail, align 8
  %cmp84 = icmp ne %struct.basic_block_def** %59, %60
  br i1 %cmp84, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %61 = load %struct.basic_block_def**, %struct.basic_block_def*** %qhead, align 8
  %incdec.ptr91 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %61, i32 1
  store %struct.basic_block_def** %incdec.ptr91, %struct.basic_block_def*** %qhead, align 8
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %61, align 8
  store %struct.basic_block_def* %62, %struct.basic_block_def** %bb89, align 8
  %63 = load %struct.basic_block_def**, %struct.basic_block_def*** %qhead, align 8
  %64 = load %struct.basic_block_def**, %struct.basic_block_def*** %qend, align 8
  %cmp92 = icmp eq %struct.basic_block_def** %63, %64
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %while.body
  %65 = load %struct.basic_block_def**, %struct.basic_block_def*** %queue, align 8
  store %struct.basic_block_def** %65, %struct.basic_block_def*** %qhead, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %while.body
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %aux96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i32 0, i32 10
  store i8* null, i8** %aux96, align 8
  %67 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %67)
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 5
  %69 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool97 = icmp ne %struct.edge_def* %69, null
  br i1 %tobool97, label %if.then.98, label %if.else.128

if.then.98:                                       ; preds = %if.end.95
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %succ99 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 5
  %71 = load %struct.edge_def*, %struct.edge_def** %succ99, align 8
  store %struct.edge_def* %71, %struct.edge_def** %e, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.126, %if.then.98
  %72 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool101 = icmp ne %struct.edge_def* %72, null
  br i1 %tobool101, label %for.body.102, label %for.end.127

for.body.102:                                     ; preds = %for.cond.100
  %73 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 3
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %74, %struct.basic_block_def** %sb, align 8
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags104 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 6
  %76 = load i32, i32* %flags104, align 4
  %and105 = and i32 %76, 8
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.else.110

if.then.107:                                      ; preds = %for.body.102
  %77 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %sb, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i32 0, i32 8
  %79 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %80 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %call_used, align 8
  %call108 = call i32 @bitmap_operation(%struct.bitmap_head_def* %77, %struct.bitmap_head_def* %79, %struct.bitmap_head_def* %80, i32 1)
  %81 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %82 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %83 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %call109 = call i32 @bitmap_operation(%struct.bitmap_head_def* %81, %struct.bitmap_head_def* %82, %struct.bitmap_head_def* %83, i32 2)
  br label %if.end.113

if.else.110:                                      ; preds = %for.body.102
  %84 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %85 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %sb, align 8
  %global_live_at_start111 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %86, i32 0, i32 8
  %87 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start111, align 8
  %call112 = call i32 @bitmap_operation(%struct.bitmap_head_def* %84, %struct.bitmap_head_def* %85, %struct.bitmap_head_def* %87, i32 2)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.107
  %88 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags114 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %88, i32 0, i32 6
  %89 = load i32, i32* %flags114, align 4
  %and115 = and i32 %89, 8
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.125

if.then.117:                                      ; preds = %if.end.113
  store i32 0, i32* %i, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.122, %if.then.117
  %90 = load i32, i32* %i, align 4
  %cmp119 = icmp slt i32 %90, 53
  br i1 %cmp119, label %for.body.121, label %for.end.124

for.body.121:                                     ; preds = %for.cond.118
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.121
  %91 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %91, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.118

for.end.124:                                      ; preds = %for.cond.118
  br label %if.end.125

if.end.125:                                       ; preds = %for.end.124, %if.end.113
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %92 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %92, i32 0, i32 1
  %93 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %93, %struct.edge_def** %e, align 8
  br label %for.cond.100

for.end.127:                                      ; preds = %for.cond.100
  br label %if.end.136

if.else.128:                                      ; preds = %if.end.95
  store i32 0, i32* %i, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.133, %if.else.128
  %94 = load i32, i32* %i, align 4
  %cmp130 = icmp slt i32 %94, 53
  br i1 %cmp130, label %for.body.132, label %for.end.135

for.body.132:                                     ; preds = %for.cond.129
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.132
  %95 = load i32, i32* %i, align 4
  %inc134 = add nsw i32 %95, 1
  store i32 %inc134, i32* %i, align 4
  br label %for.cond.129

for.end.135:                                      ; preds = %for.cond.129
  br label %if.end.136

if.end.136:                                       ; preds = %for.end.135, %for.end.127
  %96 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_set_bit(%struct.bitmap_head_def* %96, i32 7)
  %97 = load i32, i32* @reload_completed, align 4
  %tobool137 = icmp ne i32 %97, 0
  br i1 %tobool137, label %if.end.167, label %if.then.138

if.then.138:                                      ; preds = %if.end.136
  %98 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_set_bit(%struct.bitmap_head_def* %98, i32 20)
  %99 = load i8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 16), align 1
  %tobool139 = icmp ne i8 %99, 0
  br i1 %tobool139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.then.138
  %100 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_set_bit(%struct.bitmap_head_def* %100, i32 16)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %if.then.138
  %101 = load i32, i32* @target_flags, align 4
  %and142 = and i32 %101, 33554432
  %tobool143 = icmp ne i32 %and142, 0
  br i1 %tobool143, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.141
  %102 = load i32, i32* @flag_pic, align 4
  %tobool144 = icmp ne i32 %102, 0
  %lnot = xor i1 %tobool144, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.141
  %103 = phi i1 [ true, %if.end.141 ], [ %lnot, %lor.rhs ]
  %cond = select i1 %103, i32 -1, i32 3
  %cmp145 = icmp ne i32 %cond, -1
  br i1 %cmp145, label %land.lhs.true, label %if.end.166

land.lhs.true:                                    ; preds = %lor.end
  %104 = load i32, i32* @target_flags, align 4
  %and147 = and i32 %104, 33554432
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %lor.end.152, label %lor.rhs.149

lor.rhs.149:                                      ; preds = %land.lhs.true
  %105 = load i32, i32* @flag_pic, align 4
  %tobool150 = icmp ne i32 %105, 0
  %lnot151 = xor i1 %tobool150, true
  br label %lor.end.152

lor.end.152:                                      ; preds = %lor.rhs.149, %land.lhs.true
  %106 = phi i1 [ true, %land.lhs.true ], [ %lnot151, %lor.rhs.149 ]
  %cond153 = select i1 %106, i32 -1, i32 3
  %idxprom154 = zext i32 %cond153 to i64
  %arrayidx155 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom154
  %107 = load i8, i8* %arrayidx155, align 1
  %conv156 = sext i8 %107 to i32
  %tobool157 = icmp ne i32 %conv156, 0
  br i1 %tobool157, label %if.then.158, label %if.end.166

if.then.158:                                      ; preds = %lor.end.152
  %108 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %109 = load i32, i32* @target_flags, align 4
  %and159 = and i32 %109, 33554432
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %lor.end.164, label %lor.rhs.161

lor.rhs.161:                                      ; preds = %if.then.158
  %110 = load i32, i32* @flag_pic, align 4
  %tobool162 = icmp ne i32 %110, 0
  %lnot163 = xor i1 %tobool162, true
  br label %lor.end.164

lor.end.164:                                      ; preds = %lor.rhs.161, %if.then.158
  %111 = phi i1 [ true, %if.then.158 ], [ %lnot163, %lor.rhs.161 ]
  %cond165 = select i1 %111, i32 -1, i32 3
  call void @bitmap_set_bit(%struct.bitmap_head_def* %108, i32 %cond165)
  br label %if.end.166

if.end.166:                                       ; preds = %lor.end.164, %lor.end.152, %lor.end
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.136
  %112 = load i32, i32* @in_ssa_form, align 4
  %tobool168 = icmp ne i32 %112, 0
  br i1 %tobool168, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %if.end.167
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %114 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %115 = bitcast %struct.bitmap_head_def* %114 to i8*
  %call170 = call i32 @for_each_successor_phi(%struct.basic_block_def* %113, i32 (%struct.rtx_def*, i32, i32, i8*)* @set_phi_alternative_reg, i8* %115)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %if.end.167
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %cmp172 = icmp eq %struct.basic_block_def* %116, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.end.171
  %117 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %117, i32 0, i32 9
  %118 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %119 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %118, %struct.bitmap_head_def* %119)
  br label %while.cond

if.end.175:                                       ; preds = %if.end.171
  %120 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %local_set = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %120, i32 0, i32 6
  %121 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set, align 8
  %cmp176 = icmp eq %struct.bitmap_head_def* %121, null
  br i1 %cmp176, label %if.then.178, label %if.else.295

if.then.178:                                      ; preds = %if.end.175
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h, align 8
  %122 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %122, %struct.obstack** %__o, align 8
  store i32 24, i32* %__len, align 4
  %123 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %123, i32 0, i32 4
  %124 = load i8*, i8** %chunk_limit, align 8
  %125 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %125, i32 0, i32 3
  %126 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %124 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %126 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %127 = load i32, i32* %__len, align 4
  %conv182 = sext i32 %127 to i64
  %cmp183 = icmp slt i64 %sub.ptr.sub, %conv182
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.then.178
  %128 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %129 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %128, i32 %129)
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.185, %if.then.178
  %130 = load i32, i32* %__len, align 4
  %131 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free187 = getelementptr inbounds %struct.obstack, %struct.obstack* %131, i32 0, i32 3
  %132 = load i8*, i8** %next_free187, align 8
  %idx.ext188 = sext i32 %130 to i64
  %add.ptr189 = getelementptr inbounds i8, i8* %132, i64 %idx.ext188
  store i8* %add.ptr189, i8** %next_free187, align 8
  %133 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %133, %struct.obstack** %__o1, align 8
  %134 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %134, i32 0, i32 2
  %135 = load i8*, i8** %object_base, align 8
  store i8* %135, i8** %value, align 8
  %136 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free193 = getelementptr inbounds %struct.obstack, %struct.obstack* %136, i32 0, i32 3
  %137 = load i8*, i8** %next_free193, align 8
  %138 = load i8*, i8** %value, align 8
  %cmp194 = icmp eq i8* %137, %138
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %if.end.186
  %139 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %139, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %if.end.186
  %140 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free198 = getelementptr inbounds %struct.obstack, %struct.obstack* %140, i32 0, i32 3
  %141 = load i8*, i8** %next_free198, align 8
  %sub.ptr.lhs.cast199 = ptrtoint i8* %141 to i64
  %sub.ptr.sub200 = sub i64 %sub.ptr.lhs.cast199, 0
  %142 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %142, i32 0, i32 6
  %143 = load i32, i32* %alignment_mask, align 4
  %conv201 = sext i32 %143 to i64
  %add202 = add nsw i64 %sub.ptr.sub200, %conv201
  %144 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask203 = getelementptr inbounds %struct.obstack, %struct.obstack* %144, i32 0, i32 6
  %145 = load i32, i32* %alignment_mask203, align 4
  %neg204 = xor i32 %145, -1
  %conv205 = sext i32 %neg204 to i64
  %and206 = and i64 %add202, %conv205
  %add.ptr207 = getelementptr inbounds i8, i8* null, i64 %and206
  %146 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free208 = getelementptr inbounds %struct.obstack, %struct.obstack* %146, i32 0, i32 3
  store i8* %add.ptr207, i8** %next_free208, align 8
  %147 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free209 = getelementptr inbounds %struct.obstack, %struct.obstack* %147, i32 0, i32 3
  %148 = load i8*, i8** %next_free209, align 8
  %149 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %149, i32 0, i32 1
  %150 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %151 = bitcast %struct._obstack_chunk* %150 to i8*
  %sub.ptr.lhs.cast210 = ptrtoint i8* %148 to i64
  %sub.ptr.rhs.cast211 = ptrtoint i8* %151 to i64
  %sub.ptr.sub212 = sub i64 %sub.ptr.lhs.cast210, %sub.ptr.rhs.cast211
  %152 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit213 = getelementptr inbounds %struct.obstack, %struct.obstack* %152, i32 0, i32 4
  %153 = load i8*, i8** %chunk_limit213, align 8
  %154 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk214 = getelementptr inbounds %struct.obstack, %struct.obstack* %154, i32 0, i32 1
  %155 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk214, align 8
  %156 = bitcast %struct._obstack_chunk* %155 to i8*
  %sub.ptr.lhs.cast215 = ptrtoint i8* %153 to i64
  %sub.ptr.rhs.cast216 = ptrtoint i8* %156 to i64
  %sub.ptr.sub217 = sub i64 %sub.ptr.lhs.cast215, %sub.ptr.rhs.cast216
  %cmp218 = icmp sgt i64 %sub.ptr.sub212, %sub.ptr.sub217
  br i1 %cmp218, label %if.then.220, label %if.end.223

if.then.220:                                      ; preds = %if.end.197
  %157 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit221 = getelementptr inbounds %struct.obstack, %struct.obstack* %157, i32 0, i32 4
  %158 = load i8*, i8** %chunk_limit221, align 8
  %159 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free222 = getelementptr inbounds %struct.obstack, %struct.obstack* %159, i32 0, i32 3
  store i8* %158, i8** %next_free222, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.220, %if.end.197
  %160 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free224 = getelementptr inbounds %struct.obstack, %struct.obstack* %160, i32 0, i32 3
  %161 = load i8*, i8** %next_free224, align 8
  %162 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base225 = getelementptr inbounds %struct.obstack, %struct.obstack* %162, i32 0, i32 2
  store i8* %161, i8** %object_base225, align 8
  %163 = load i8*, i8** %value, align 8
  store i8* %163, i8** %tmp226
  %164 = load i8*, i8** %tmp226
  store i8* %164, i8** %tmp190
  %165 = load i8*, i8** %tmp190
  %166 = bitcast i8* %165 to %struct.bitmap_head_def*
  %call227 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %166)
  %167 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %local_set228 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %167, i32 0, i32 6
  store %struct.bitmap_head_def* %call227, %struct.bitmap_head_def** %local_set228, align 8
  store %struct.obstack* @flow_obstack, %struct.obstack** %__h230, align 8
  %168 = load %struct.obstack*, %struct.obstack** %__h230, align 8
  store %struct.obstack* %168, %struct.obstack** %__o232, align 8
  store i32 24, i32* %__len234, align 4
  %169 = load %struct.obstack*, %struct.obstack** %__o232, align 8
  %chunk_limit235 = getelementptr inbounds %struct.obstack, %struct.obstack* %169, i32 0, i32 4
  %170 = load i8*, i8** %chunk_limit235, align 8
  %171 = load %struct.obstack*, %struct.obstack** %__o232, align 8
  %next_free236 = getelementptr inbounds %struct.obstack, %struct.obstack* %171, i32 0, i32 3
  %172 = load i8*, i8** %next_free236, align 8
  %sub.ptr.lhs.cast237 = ptrtoint i8* %170 to i64
  %sub.ptr.rhs.cast238 = ptrtoint i8* %172 to i64
  %sub.ptr.sub239 = sub i64 %sub.ptr.lhs.cast237, %sub.ptr.rhs.cast238
  %173 = load i32, i32* %__len234, align 4
  %conv240 = sext i32 %173 to i64
  %cmp241 = icmp slt i64 %sub.ptr.sub239, %conv240
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.end.223
  %174 = load %struct.obstack*, %struct.obstack** %__o232, align 8
  %175 = load i32, i32* %__len234, align 4
  call void @_obstack_newchunk(%struct.obstack* %174, i32 %175)
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %if.end.223
  %176 = load i32, i32* %__len234, align 4
  %177 = load %struct.obstack*, %struct.obstack** %__o232, align 8
  %next_free245 = getelementptr inbounds %struct.obstack, %struct.obstack* %177, i32 0, i32 3
  %178 = load i8*, i8** %next_free245, align 8
  %idx.ext246 = sext i32 %176 to i64
  %add.ptr247 = getelementptr inbounds i8, i8* %178, i64 %idx.ext246
  store i8* %add.ptr247, i8** %next_free245, align 8
  %179 = load %struct.obstack*, %struct.obstack** %__h230, align 8
  store %struct.obstack* %179, %struct.obstack** %__o1250, align 8
  %180 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %object_base253 = getelementptr inbounds %struct.obstack, %struct.obstack* %180, i32 0, i32 2
  %181 = load i8*, i8** %object_base253, align 8
  store i8* %181, i8** %value252, align 8
  %182 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %next_free254 = getelementptr inbounds %struct.obstack, %struct.obstack* %182, i32 0, i32 3
  %183 = load i8*, i8** %next_free254, align 8
  %184 = load i8*, i8** %value252, align 8
  %cmp255 = icmp eq i8* %183, %184
  br i1 %cmp255, label %if.then.257, label %if.end.262

if.then.257:                                      ; preds = %if.end.244
  %185 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %maybe_empty_object258 = getelementptr inbounds %struct.obstack, %struct.obstack* %185, i32 0, i32 10
  %bf.load259 = load i8, i8* %maybe_empty_object258, align 8
  %bf.clear260 = and i8 %bf.load259, -3
  %bf.set261 = or i8 %bf.clear260, 2
  store i8 %bf.set261, i8* %maybe_empty_object258, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.257, %if.end.244
  %186 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %next_free263 = getelementptr inbounds %struct.obstack, %struct.obstack* %186, i32 0, i32 3
  %187 = load i8*, i8** %next_free263, align 8
  %sub.ptr.lhs.cast264 = ptrtoint i8* %187 to i64
  %sub.ptr.sub265 = sub i64 %sub.ptr.lhs.cast264, 0
  %188 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %alignment_mask266 = getelementptr inbounds %struct.obstack, %struct.obstack* %188, i32 0, i32 6
  %189 = load i32, i32* %alignment_mask266, align 4
  %conv267 = sext i32 %189 to i64
  %add268 = add nsw i64 %sub.ptr.sub265, %conv267
  %190 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %alignment_mask269 = getelementptr inbounds %struct.obstack, %struct.obstack* %190, i32 0, i32 6
  %191 = load i32, i32* %alignment_mask269, align 4
  %neg270 = xor i32 %191, -1
  %conv271 = sext i32 %neg270 to i64
  %and272 = and i64 %add268, %conv271
  %add.ptr273 = getelementptr inbounds i8, i8* null, i64 %and272
  %192 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %next_free274 = getelementptr inbounds %struct.obstack, %struct.obstack* %192, i32 0, i32 3
  store i8* %add.ptr273, i8** %next_free274, align 8
  %193 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %next_free275 = getelementptr inbounds %struct.obstack, %struct.obstack* %193, i32 0, i32 3
  %194 = load i8*, i8** %next_free275, align 8
  %195 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %chunk276 = getelementptr inbounds %struct.obstack, %struct.obstack* %195, i32 0, i32 1
  %196 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk276, align 8
  %197 = bitcast %struct._obstack_chunk* %196 to i8*
  %sub.ptr.lhs.cast277 = ptrtoint i8* %194 to i64
  %sub.ptr.rhs.cast278 = ptrtoint i8* %197 to i64
  %sub.ptr.sub279 = sub i64 %sub.ptr.lhs.cast277, %sub.ptr.rhs.cast278
  %198 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %chunk_limit280 = getelementptr inbounds %struct.obstack, %struct.obstack* %198, i32 0, i32 4
  %199 = load i8*, i8** %chunk_limit280, align 8
  %200 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %chunk281 = getelementptr inbounds %struct.obstack, %struct.obstack* %200, i32 0, i32 1
  %201 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk281, align 8
  %202 = bitcast %struct._obstack_chunk* %201 to i8*
  %sub.ptr.lhs.cast282 = ptrtoint i8* %199 to i64
  %sub.ptr.rhs.cast283 = ptrtoint i8* %202 to i64
  %sub.ptr.sub284 = sub i64 %sub.ptr.lhs.cast282, %sub.ptr.rhs.cast283
  %cmp285 = icmp sgt i64 %sub.ptr.sub279, %sub.ptr.sub284
  br i1 %cmp285, label %if.then.287, label %if.end.290

if.then.287:                                      ; preds = %if.end.262
  %203 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %chunk_limit288 = getelementptr inbounds %struct.obstack, %struct.obstack* %203, i32 0, i32 4
  %204 = load i8*, i8** %chunk_limit288, align 8
  %205 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %next_free289 = getelementptr inbounds %struct.obstack, %struct.obstack* %205, i32 0, i32 3
  store i8* %204, i8** %next_free289, align 8
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.287, %if.end.262
  %206 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %next_free291 = getelementptr inbounds %struct.obstack, %struct.obstack* %206, i32 0, i32 3
  %207 = load i8*, i8** %next_free291, align 8
  %208 = load %struct.obstack*, %struct.obstack** %__o1250, align 8
  %object_base292 = getelementptr inbounds %struct.obstack, %struct.obstack* %208, i32 0, i32 2
  store i8* %207, i8** %object_base292, align 8
  %209 = load i8*, i8** %value252, align 8
  store i8* %209, i8** %tmp293
  %210 = load i8*, i8** %tmp293
  store i8* %210, i8** %tmp248
  %211 = load i8*, i8** %tmp248
  %212 = bitcast i8* %211 to %struct.bitmap_head_def*
  %call294 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %212)
  %213 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %cond_local_set = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %213, i32 0, i32 7
  store %struct.bitmap_head_def* %call294, %struct.bitmap_head_def** %cond_local_set, align 8
  store i32 1, i32* %rescan, align 4
  br label %if.end.313

if.else.295:                                      ; preds = %if.end.175
  %214 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %214)
  %215 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %216 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_end296 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %216, i32 0, i32 9
  %217 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end296, align 8
  %218 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %call297 = call i32 @bitmap_operation(%struct.bitmap_head_def* %215, %struct.bitmap_head_def* %217, %struct.bitmap_head_def* %218, i32 1)
  store i32 %call297, i32* %rescan, align 4
  %219 = load i32, i32* %rescan, align 4
  %tobool298 = icmp ne i32 %219, 0
  br i1 %tobool298, label %if.end.302, label %if.then.299

if.then.299:                                      ; preds = %if.else.295
  %220 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %220)
  %221 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %222 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %223 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %cond_local_set300 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %223, i32 0, i32 7
  %224 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set300, align 8
  %call301 = call i32 @bitmap_operation(%struct.bitmap_head_def* %221, %struct.bitmap_head_def* %222, %struct.bitmap_head_def* %224, i32 0)
  store i32 %call301, i32* %rescan, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.299, %if.else.295
  %225 = load i32, i32* %rescan, align 4
  %tobool303 = icmp ne i32 %225, 0
  br i1 %tobool303, label %if.end.312, label %if.then.304

if.then.304:                                      ; preds = %if.end.302
  %226 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %226)
  %227 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %228 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_end305 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %228, i32 0, i32 9
  %229 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end305, align 8
  %230 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %call306 = call i32 @bitmap_operation(%struct.bitmap_head_def* %227, %struct.bitmap_head_def* %229, %struct.bitmap_head_def* %230, i32 3)
  store i32 %call306, i32* %changed, align 4
  %231 = load i32, i32* %changed, align 4
  %tobool307 = icmp ne i32 %231, 0
  br i1 %tobool307, label %if.end.309, label %if.then.308

if.then.308:                                      ; preds = %if.then.304
  br label %while.cond

if.end.309:                                       ; preds = %if.then.304
  %232 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %233 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %234 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %local_set310 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %234, i32 0, i32 6
  %235 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set310, align 8
  %call311 = call i32 @bitmap_operation(%struct.bitmap_head_def* %232, %struct.bitmap_head_def* %233, %struct.bitmap_head_def* %235, i32 1)
  store i32 %call311, i32* %rescan, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.309, %if.end.302
  br label %if.end.313

if.end.313:                                       ; preds = %if.end.312, %if.end.290
  %236 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_out.addr, align 8
  %tobool314 = icmp ne %struct.simple_bitmap_def* %236, null
  br i1 %tobool314, label %if.then.315, label %if.end.322

if.then.315:                                      ; preds = %if.end.313
  %237 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %237, i32 0, i32 11
  %238 = load i32, i32* %index, align 4
  %rem = urem i32 %238, 64
  %sh_prom316 = zext i32 %rem to i64
  %shl317 = shl i64 1, %sh_prom316
  %239 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %index318 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %239, i32 0, i32 11
  %240 = load i32, i32* %index318, align 4
  %div = udiv i32 %240, 64
  %idxprom319 = zext i32 %div to i64
  %241 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_out.addr, align 8
  %elms320 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %241, i32 0, i32 3
  %arrayidx321 = getelementptr inbounds [1 x i64], [1 x i64]* %elms320, i32 0, i64 %idxprom319
  %242 = load i64, i64* %arrayidx321, align 8
  %or = or i64 %242, %shl317
  store i64 %or, i64* %arrayidx321, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.315, %if.end.313
  %243 = load i32, i32* %rescan, align 4
  %tobool323 = icmp ne i32 %243, 0
  br i1 %tobool323, label %if.else.334, label %if.then.324

if.then.324:                                      ; preds = %if.end.322
  %244 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %245 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %246 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_end325 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %246, i32 0, i32 9
  %247 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end325, align 8
  %call326 = call i32 @bitmap_operation(%struct.bitmap_head_def* %244, %struct.bitmap_head_def* %245, %struct.bitmap_head_def* %247, i32 1)
  %248 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_end327 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %248, i32 0, i32 9
  %249 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end327, align 8
  %250 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %249, %struct.bitmap_head_def* %250)
  %251 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_start328 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %251, i32 0, i32 8
  %252 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start328, align 8
  %253 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_start329 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %253, i32 0, i32 8
  %254 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start329, align 8
  %255 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %call330 = call i32 @bitmap_operation(%struct.bitmap_head_def* %252, %struct.bitmap_head_def* %254, %struct.bitmap_head_def* %255, i32 2)
  store i32 %call330, i32* %changed, align 4
  %256 = load i32, i32* %changed, align 4
  %tobool331 = icmp ne i32 %256, 0
  br i1 %tobool331, label %if.end.333, label %if.then.332

if.then.332:                                      ; preds = %if.then.324
  br label %while.cond

if.end.333:                                       ; preds = %if.then.324
  br label %if.end.345

if.else.334:                                      ; preds = %if.end.322
  %257 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_end335 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %257, i32 0, i32 9
  %258 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end335, align 8
  %259 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %258, %struct.bitmap_head_def* %259)
  %260 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %261 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %262 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %local_set336 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %262, i32 0, i32 6
  %263 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set336, align 8
  %264 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %cond_local_set337 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %264, i32 0, i32 7
  %265 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set337, align 8
  %266 = load i32, i32* %flags.addr, align 4
  %call338 = call i32 @propagate_block(%struct.basic_block_def* %260, %struct.bitmap_head_def* %261, %struct.bitmap_head_def* %263, %struct.bitmap_head_def* %265, i32 %266)
  %267 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_start339 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %267, i32 0, i32 8
  %268 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start339, align 8
  %269 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %call340 = call i32 @bitmap_equal_p(%struct.bitmap_head_def* %268, %struct.bitmap_head_def* %269)
  %tobool341 = icmp ne i32 %call340, 0
  br i1 %tobool341, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %if.else.334
  br label %while.cond

if.end.343:                                       ; preds = %if.else.334
  %270 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %global_live_at_start344 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %270, i32 0, i32 8
  %271 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start344, align 8
  %272 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %271, %struct.bitmap_head_def* %272)
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.343, %if.end.333
  %273 = load %struct.basic_block_def*, %struct.basic_block_def** %bb89, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %273, i32 0, i32 4
  %274 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %274, %struct.edge_def** %e, align 8
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.361, %if.end.345
  %275 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool347 = icmp ne %struct.edge_def* %275, null
  br i1 %tobool347, label %for.body.348, label %for.end.362

for.body.348:                                     ; preds = %for.cond.346
  %276 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %276, i32 0, i32 2
  %277 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %277, %struct.basic_block_def** %pb, align 8
  %278 = load %struct.basic_block_def*, %struct.basic_block_def** %pb, align 8
  %aux350 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %278, i32 0, i32 10
  %279 = load i8*, i8** %aux350, align 8
  %cmp351 = icmp eq i8* %279, null
  br i1 %cmp351, label %if.then.353, label %if.end.360

if.then.353:                                      ; preds = %for.body.348
  %280 = load %struct.basic_block_def*, %struct.basic_block_def** %pb, align 8
  %281 = load %struct.basic_block_def**, %struct.basic_block_def*** %qtail, align 8
  %incdec.ptr354 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %281, i32 1
  store %struct.basic_block_def** %incdec.ptr354, %struct.basic_block_def*** %qtail, align 8
  store %struct.basic_block_def* %280, %struct.basic_block_def** %281, align 8
  %282 = load %struct.basic_block_def**, %struct.basic_block_def*** %qtail, align 8
  %283 = load %struct.basic_block_def**, %struct.basic_block_def*** %qend, align 8
  %cmp355 = icmp eq %struct.basic_block_def** %282, %283
  br i1 %cmp355, label %if.then.357, label %if.end.358

if.then.357:                                      ; preds = %if.then.353
  %284 = load %struct.basic_block_def**, %struct.basic_block_def*** %queue, align 8
  store %struct.basic_block_def** %284, %struct.basic_block_def*** %qtail, align 8
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.357, %if.then.353
  %285 = load %struct.basic_block_def*, %struct.basic_block_def** %pb, align 8
  %286 = bitcast %struct.basic_block_def* %285 to i8*
  %287 = load %struct.basic_block_def*, %struct.basic_block_def** %pb, align 8
  %aux359 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %287, i32 0, i32 10
  store i8* %286, i8** %aux359, align 8
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.358, %for.body.348
  br label %for.inc.361

for.inc.361:                                      ; preds = %if.end.360
  %288 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %288, i32 0, i32 0
  %289 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %289, %struct.edge_def** %e, align 8
  br label %for.cond.346

for.end.362:                                      ; preds = %for.cond.346
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.363

do.body.363:                                      ; preds = %while.end
  %290 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %tobool364 = icmp ne %struct.bitmap_head_def* %290, null
  br i1 %tobool364, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %do.body.363
  %291 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %291)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %tmp, align 8
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.365, %do.body.363
  br label %do.end.367

do.end.367:                                       ; preds = %if.end.366
  br label %do.body.368

do.body.368:                                      ; preds = %do.end.367
  %292 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  %tobool369 = icmp ne %struct.bitmap_head_def* %292, null
  br i1 %tobool369, label %if.then.370, label %if.end.371

if.then.370:                                      ; preds = %do.body.368
  %293 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_end, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %293)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %new_live_at_end, align 8
  br label %if.end.371

if.end.371:                                       ; preds = %if.then.370, %do.body.368
  br label %do.end.372

do.end.372:                                       ; preds = %if.end.371
  br label %do.body.373

do.body.373:                                      ; preds = %do.end.372
  %294 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %call_used, align 8
  %tobool374 = icmp ne %struct.bitmap_head_def* %294, null
  br i1 %tobool374, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %do.body.373
  %295 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %call_used, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %295)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %call_used, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %do.body.373
  br label %do.end.377

do.end.377:                                       ; preds = %if.end.376
  %296 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_out.addr, align 8
  %tobool378 = icmp ne %struct.simple_bitmap_def* %296, null
  br i1 %tobool378, label %if.then.379, label %if.else.454

if.then.379:                                      ; preds = %do.end.377
  br label %do.body.380

do.body.380:                                      ; preds = %if.then.379
  store i32 0, i32* %bit_num_384, align 4
  %297 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_out.addr, align 8
  %size387 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %297, i32 0, i32 1
  %298 = load i32, i32* %size387, align 4
  store i32 %298, i32* %size_386, align 4
  %299 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks_out.addr, align 8
  %elms390 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %299, i32 0, i32 3
  %arraydecay391 = getelementptr inbounds [1 x i64], [1 x i64]* %elms390, i32 0, i32 0
  store i64* %arraydecay391, i64** %ptr_389, align 8
  store i32 0, i32* %word_num_382, align 4
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.450, %do.body.380
  %300 = load i32, i32* %word_num_382, align 4
  %301 = load i32, i32* %size_386, align 4
  %cmp393 = icmp ult i32 %300, %301
  br i1 %cmp393, label %for.body.395, label %for.end.452

for.body.395:                                     ; preds = %for.cond.392
  %302 = load i32, i32* %word_num_382, align 4
  %idxprom398 = zext i32 %302 to i64
  %303 = load i64*, i64** %ptr_389, align 8
  %arrayidx399 = getelementptr inbounds i64, i64* %303, i64 %idxprom398
  %304 = load i64, i64* %arrayidx399, align 8
  store i64 %304, i64* %word_397, align 8
  %305 = load i64, i64* %word_397, align 8
  %cmp400 = icmp ne i64 %305, 0
  br i1 %cmp400, label %if.then.402, label %if.end.449

if.then.402:                                      ; preds = %for.body.395
  br label %for.cond.403

for.cond.403:                                     ; preds = %for.inc.446, %if.then.402
  %306 = load i32, i32* %bit_num_384, align 4
  %cmp404 = icmp ult i32 %306, 64
  br i1 %cmp404, label %for.body.406, label %for.end.448

for.body.406:                                     ; preds = %for.cond.403
  %307 = load i32, i32* %bit_num_384, align 4
  %sh_prom409 = zext i32 %307 to i64
  %shl410 = shl i64 1, %sh_prom409
  store i64 %shl410, i64* %_mask408, align 8
  %308 = load i64, i64* %word_397, align 8
  %309 = load i64, i64* %_mask408, align 8
  %and411 = and i64 %308, %309
  %cmp412 = icmp ne i64 %and411, 0
  br i1 %cmp412, label %if.then.414, label %if.end.445

if.then.414:                                      ; preds = %for.body.406
  %310 = load i64, i64* %_mask408, align 8
  %neg415 = xor i64 %310, -1
  %311 = load i64, i64* %word_397, align 8
  %and416 = and i64 %311, %neg415
  store i64 %and416, i64* %word_397, align 8
  %312 = load i32, i32* %word_num_382, align 4
  %mul417 = mul i32 %312, 64
  %313 = load i32, i32* %bit_num_384, align 4
  %add418 = add i32 %mul417, %313
  store i32 %add418, i32* %i, align 4
  %314 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %314 to i64
  %315 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data422 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %315, i32 0, i32 4
  %bb423 = bitcast %union.varray_data_tag* %data422 to [1 x %struct.basic_block_def*]*
  %arrayidx424 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb423, i32 0, i64 %idxprom421
  %316 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx424, align 8
  store %struct.basic_block_def* %316, %struct.basic_block_def** %bb420, align 8
  br label %do.body.425

do.body.425:                                      ; preds = %if.then.414
  %317 = load %struct.basic_block_def*, %struct.basic_block_def** %bb420, align 8
  %local_set426 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %317, i32 0, i32 6
  %318 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set426, align 8
  %tobool427 = icmp ne %struct.bitmap_head_def* %318, null
  br i1 %tobool427, label %if.then.428, label %if.end.431

if.then.428:                                      ; preds = %do.body.425
  %319 = load %struct.basic_block_def*, %struct.basic_block_def** %bb420, align 8
  %local_set429 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %319, i32 0, i32 6
  %320 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set429, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %320)
  %321 = load %struct.basic_block_def*, %struct.basic_block_def** %bb420, align 8
  %local_set430 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %321, i32 0, i32 6
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %local_set430, align 8
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.428, %do.body.425
  br label %do.end.432

do.end.432:                                       ; preds = %if.end.431
  br label %do.body.433

do.body.433:                                      ; preds = %do.end.432
  %322 = load %struct.basic_block_def*, %struct.basic_block_def** %bb420, align 8
  %cond_local_set434 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %322, i32 0, i32 7
  %323 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set434, align 8
  %tobool435 = icmp ne %struct.bitmap_head_def* %323, null
  br i1 %tobool435, label %if.then.436, label %if.end.439

if.then.436:                                      ; preds = %do.body.433
  %324 = load %struct.basic_block_def*, %struct.basic_block_def** %bb420, align 8
  %cond_local_set437 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %324, i32 0, i32 7
  %325 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set437, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %325)
  %326 = load %struct.basic_block_def*, %struct.basic_block_def** %bb420, align 8
  %cond_local_set438 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %326, i32 0, i32 7
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %cond_local_set438, align 8
  br label %if.end.439

if.end.439:                                       ; preds = %if.then.436, %do.body.433
  br label %do.end.440

do.end.440:                                       ; preds = %if.end.439
  %327 = load i64, i64* %word_397, align 8
  %cmp441 = icmp eq i64 %327, 0
  br i1 %cmp441, label %if.then.443, label %if.end.444

if.then.443:                                      ; preds = %do.end.440
  br label %for.end.448

if.end.444:                                       ; preds = %do.end.440
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %for.body.406
  br label %for.inc.446

for.inc.446:                                      ; preds = %if.end.445
  %328 = load i32, i32* %bit_num_384, align 4
  %inc447 = add i32 %328, 1
  store i32 %inc447, i32* %bit_num_384, align 4
  br label %for.cond.403

for.end.448:                                      ; preds = %if.then.443, %for.cond.403
  br label %if.end.449

if.end.449:                                       ; preds = %for.end.448, %for.body.395
  br label %for.inc.450

for.inc.450:                                      ; preds = %if.end.449
  %329 = load i32, i32* %word_num_382, align 4
  %inc451 = add i32 %329, 1
  store i32 %inc451, i32* %word_num_382, align 4
  store i32 0, i32* %bit_num_384, align 4
  br label %for.cond.392

for.end.452:                                      ; preds = %for.cond.392
  br label %do.end.453

do.end.453:                                       ; preds = %for.end.452
  br label %if.end.485

if.else.454:                                      ; preds = %do.end.377
  %330 = load i32, i32* @n_basic_blocks, align 4
  %sub455 = sub nsw i32 %330, 1
  store i32 %sub455, i32* %i, align 4
  br label %for.cond.456

for.cond.456:                                     ; preds = %for.inc.482, %if.else.454
  %331 = load i32, i32* %i, align 4
  %cmp457 = icmp sge i32 %331, 0
  br i1 %cmp457, label %for.body.459, label %for.end.484

for.body.459:                                     ; preds = %for.cond.456
  %332 = load i32, i32* %i, align 4
  %idxprom462 = sext i32 %332 to i64
  %333 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data463 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %333, i32 0, i32 4
  %bb464 = bitcast %union.varray_data_tag* %data463 to [1 x %struct.basic_block_def*]*
  %arrayidx465 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb464, i32 0, i64 %idxprom462
  %334 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx465, align 8
  store %struct.basic_block_def* %334, %struct.basic_block_def** %bb461, align 8
  br label %do.body.466

do.body.466:                                      ; preds = %for.body.459
  %335 = load %struct.basic_block_def*, %struct.basic_block_def** %bb461, align 8
  %local_set467 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %335, i32 0, i32 6
  %336 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set467, align 8
  %tobool468 = icmp ne %struct.bitmap_head_def* %336, null
  br i1 %tobool468, label %if.then.469, label %if.end.472

if.then.469:                                      ; preds = %do.body.466
  %337 = load %struct.basic_block_def*, %struct.basic_block_def** %bb461, align 8
  %local_set470 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %337, i32 0, i32 6
  %338 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set470, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %338)
  %339 = load %struct.basic_block_def*, %struct.basic_block_def** %bb461, align 8
  %local_set471 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %339, i32 0, i32 6
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %local_set471, align 8
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.469, %do.body.466
  br label %do.end.473

do.end.473:                                       ; preds = %if.end.472
  br label %do.body.474

do.body.474:                                      ; preds = %do.end.473
  %340 = load %struct.basic_block_def*, %struct.basic_block_def** %bb461, align 8
  %cond_local_set475 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %340, i32 0, i32 7
  %341 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set475, align 8
  %tobool476 = icmp ne %struct.bitmap_head_def* %341, null
  br i1 %tobool476, label %if.then.477, label %if.end.480

if.then.477:                                      ; preds = %do.body.474
  %342 = load %struct.basic_block_def*, %struct.basic_block_def** %bb461, align 8
  %cond_local_set478 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %342, i32 0, i32 7
  %343 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set478, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %343)
  %344 = load %struct.basic_block_def*, %struct.basic_block_def** %bb461, align 8
  %cond_local_set479 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %344, i32 0, i32 7
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %cond_local_set479, align 8
  br label %if.end.480

if.end.480:                                       ; preds = %if.then.477, %do.body.474
  br label %do.end.481

do.end.481:                                       ; preds = %if.end.480
  br label %for.inc.482

for.inc.482:                                      ; preds = %do.end.481
  %345 = load i32, i32* %i, align 4
  %dec483 = add nsw i32 %345, -1
  store i32 %dec483, i32* %i, align 4
  br label %for.cond.456

for.end.484:                                      ; preds = %for.cond.456
  br label %if.end.485

if.end.485:                                       ; preds = %for.end.484, %do.end.453
  %346 = load %struct.basic_block_def**, %struct.basic_block_def*** %queue, align 8
  %347 = bitcast %struct.basic_block_def** %346 to i8*
  call void @free(i8* %347) #3
  ret void
}

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define i32 @propagate_block(%struct.basic_block_def* %bb, %struct.bitmap_head_def* %live, %struct.bitmap_head_def* %local_set, %struct.bitmap_head_def* %cond_local_set, i32 %flags) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %live.addr = alloca %struct.bitmap_head_def*, align 8
  %local_set.addr = alloca %struct.bitmap_head_def*, align 8
  %cond_local_set.addr = alloca %struct.bitmap_head_def*, align 8
  %flags.addr = alloca i32, align 4
  %pbi = alloca %struct.propagate_block_info*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %changed = alloca i32, align 4
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.bitmap_head_def* %live, %struct.bitmap_head_def** %live.addr, align 8
  store %struct.bitmap_head_def* %local_set, %struct.bitmap_head_def** %local_set.addr, align 8
  store %struct.bitmap_head_def* %cond_local_set, %struct.bitmap_head_def** %cond_local_set.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live.addr, align 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set.addr, align 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set.addr, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %call = call %struct.propagate_block_info* @init_propagate_block_info(%struct.basic_block_def* %0, %struct.bitmap_head_def* %1, %struct.bitmap_head_def* %2, %struct.bitmap_head_def* %3, i32 %4)
  store %struct.propagate_block_info* %call, %struct.propagate_block_info** %pbi, align 8
  %5 = load i32, i32* %flags.addr, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %6, i32 0, i32 0
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %7, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %8, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i32 0, i32 2
  %10 = load i32, i32* %indx, align 4
  %11 = load i32, i32* %indx_, align 4
  %cmp1 = icmp ult i32 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i32 0, i32 0
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %14, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp2 = icmp ne %struct.bitmap_element_def* %15, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 2
  %17 = load i32, i32* %indx3, align 4
  %18 = load i32, i32* %indx_, align 4
  %cmp4 = icmp ne i32 %17, %18
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %19, null
  br i1 %cmp6, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.29, %for.body
  %20 = load i32, i32* %word_num_, align 4
  %cmp8 = icmp ult i32 %20, 2
  br i1 %cmp8, label %for.body.9, label %for.end.31

for.body.9:                                       ; preds = %for.cond.7
  %21 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %22, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %23 = load i64, i64* %arrayidx, align 8
  store i64 %23, i64* %word_, align 8
  %24 = load i64, i64* %word_, align 8
  %cmp10 = icmp ne i64 %24, 0
  br i1 %cmp10, label %if.then.11, label %if.end.28

if.then.11:                                       ; preds = %for.body.9
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %25 = load i32, i32* %bit_num_, align 4
  %cmp13 = icmp ult i32 %25, 64
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %26 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %26 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %27 = load i64, i64* %word_, align 8
  %28 = load i64, i64* %mask_, align 8
  %and15 = and i64 %27, %28
  %cmp16 = icmp ne i64 %and15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %for.body.14
  %29 = load i64, i64* %mask_, align 8
  %neg = xor i64 %29, -1
  %30 = load i64, i64* %word_, align 8
  %and18 = and i64 %30, %neg
  store i64 %and18, i64* %word_, align 8
  %31 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %31, i32 0, i32 2
  %32 = load i32, i32* %indx19, align 4
  %mul = mul i32 %32, 128
  %33 = load i32, i32* %word_num_, align 4
  %mul20 = mul i32 %33, 64
  %add = add i32 %mul, %mul20
  %34 = load i32, i32* %bit_num_, align 4
  %add21 = add i32 %add, %34
  store i32 %add21, i32* %i, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %36, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom22
  %37 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx23, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %37, i32 0, i32 9
  store i32 -2, i32* %basic_block, align 4
  %38 = load i64, i64* %word_, align 8
  %cmp24 = icmp eq i64 %38, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.17
  br label %for.end

if.end.26:                                        ; preds = %if.then.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %39 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %39, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.12

for.end:                                          ; preds = %if.then.25, %for.cond.12
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body.9
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %40 = load i32, i32* %word_num_, align 4
  %inc30 = add i32 %40, 1
  store i32 %inc30, i32* %word_num_, align 4
  br label %for.cond.7

for.end.31:                                       ; preds = %for.cond.7
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %41 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %41, i32 0, i32 0
  %42 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8
  store %struct.bitmap_element_def* %42, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.34
  br label %if.end.35

if.end.35:                                        ; preds = %do.end, %entry
  store i32 0, i32* %changed, align 4
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 1
  %44 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %insn, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.54, %if.end.35
  %45 = load i32, i32* %flags.addr, align 4
  %and37 = and i32 %45, 4
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.46

land.lhs.true.39:                                 ; preds = %for.cond.36
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load = load i32, i32* %47, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp40 = icmp eq i32 %bf.clear, 34
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.46

land.lhs.true.41:                                 ; preds = %land.lhs.true.39
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call42 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %48, i32 28, %struct.rtx_def* null)
  %tobool43 = icmp ne %struct.rtx_def* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %land.lhs.true.41
  %49 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @regs_live_at_setjmp, align 8
  %50 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @regs_live_at_setjmp, align 8
  %51 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %reg_live = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %51, i32 0, i32 1
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live, align 8
  %call45 = call i32 @bitmap_operation(%struct.bitmap_head_def* %49, %struct.bitmap_head_def* %50, %struct.bitmap_head_def* %52, i32 2)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %land.lhs.true.41, %land.lhs.true.39, %for.cond.36
  %53 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call47 = call %struct.rtx_def* @propagate_one_insn(%struct.propagate_block_info* %53, %struct.rtx_def* %54)
  store %struct.rtx_def* %call47, %struct.rtx_def** %prev, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp49 = icmp ne %struct.rtx_def* %56, %57
  %conv = zext i1 %cmp49 to i32
  %58 = load i32, i32* %changed, align 4
  %or = or i32 %58, %conv
  store i32 %or, i32* %changed, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 0
  %61 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp50 = icmp eq %struct.rtx_def* %59, %61
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.46
  br label %for.end.55

if.end.53:                                        ; preds = %if.end.46
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %62 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %insn, align 8
  br label %for.cond.36

for.end.55:                                       ; preds = %if.then.52
  %63 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  call void @free_propagate_block_info(%struct.propagate_block_info* %63)
  %64 = load i32, i32* %changed, align 4
  ret i32 %64
}

declare zeroext i1 @cleanup_cfg(i32) #1

; Function Attrs: nounwind uwtable
define i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* %blocks, i32 %kill) #0 {
entry:
  %blocks.addr = alloca %struct.simple_bitmap_def*, align 8
  %kill.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %pprev = alloca %struct.rtx_def**, align 8
  %link = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %n = alloca i32, align 4
  %next = alloca %struct.rtx_def*, align 8
  store %struct.simple_bitmap_def* %blocks, %struct.simple_bitmap_def** %blocks.addr, align 8
  store i32 %kill, i32* %kill.addr, align 4
  store i32 0, i32* %count, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.151, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end.152

for.body:                                         ; preds = %for.cond
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %tobool = icmp ne %struct.simple_bitmap_def* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %div = udiv i32 %3, 64
  %idxprom = zext i32 %div to i64
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %rem = urem i32 %6, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %5, %sh_prom
  %and = and i64 %shr, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc.151

if.end:                                           ; preds = %land.lhs.true, %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom2
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx4, align 8
  store %struct.basic_block_def* %9, %struct.basic_block_def** %bb, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load = load i32, i32* %13, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom6 = sext i32 %bf.clear to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom6
  %14 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %14 to i32
  %cmp8 = icmp eq i32 %conv, 105
  br i1 %cmp8, label %if.then.10, label %if.end.143

if.then.10:                                       ; preds = %for.cond.5
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def** %rtx, %struct.rtx_def*** %pprev, align 8
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %pprev, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %link, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then.10
  %18 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool12 = icmp ne %struct.rtx_def* %18, null
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load13 = load i32, i32* %20, align 8
  %bf.lshr = lshr i32 %bf.load13, 16
  %bf.clear14 = and i32 %bf.lshr, 255
  switch i32 %bf.clear14, label %sw.default [
    i32 1, label %sw.bb
    i32 10, label %sw.bb.133
  ]

sw.bb:                                            ; preds = %while.body
  %21 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load18 = load i32, i32* %23, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 61
  br i1 %cmp20, label %if.then.22, label %if.end.132

if.then.22:                                       ; preds = %sw.bb
  %24 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %reg, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx27 to i32*
  %27 = load i32, i32* %rtuint, align 4
  %cmp28 = icmp uge i32 %27, 53
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.22
  store i32 1, i32* %n, align 4
  br label %if.end.130

if.else:                                          ; preds = %if.then.22
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtuint33 = bitcast %union.rtunion_def* %arrayidx32 to i32*
  %29 = load i32, i32* %rtuint33, align 4
  %cmp34 = icmp uge i32 %29, 8
  br i1 %cmp34, label %land.lhs.true.36, label %lor.lhs.false

land.lhs.true.36:                                 ; preds = %if.else
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtuint39 = bitcast %union.rtunion_def* %arrayidx38 to i32*
  %31 = load i32, i32* %rtuint39, align 4
  %cmp40 = icmp ule i32 %31, 15
  br i1 %cmp40, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.36, %if.else
  %32 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtuint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %33 = load i32, i32* %rtuint44, align 4
  %cmp45 = icmp uge i32 %33, 21
  br i1 %cmp45, label %land.lhs.true.47, label %lor.lhs.false.53

land.lhs.true.47:                                 ; preds = %lor.lhs.false
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint50 = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %35 = load i32, i32* %rtuint50, align 4
  %cmp51 = icmp ule i32 %35, 28
  br i1 %cmp51, label %cond.true, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.47, %lor.lhs.false
  %36 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtuint56 = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %37 = load i32, i32* %rtuint56, align 4
  %cmp57 = icmp uge i32 %37, 45
  br i1 %cmp57, label %land.lhs.true.59, label %lor.lhs.false.65

land.lhs.true.59:                                 ; preds = %lor.lhs.false.53
  %38 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtuint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %39 = load i32, i32* %rtuint62, align 4
  %cmp63 = icmp ule i32 %39, 52
  br i1 %cmp63, label %cond.true, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.59, %lor.lhs.false.53
  %40 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtuint68 = bitcast %union.rtunion_def* %arrayidx67 to i32*
  %41 = load i32, i32* %rtuint68, align 4
  %cmp69 = icmp uge i32 %41, 29
  br i1 %cmp69, label %land.lhs.true.71, label %cond.false

land.lhs.true.71:                                 ; preds = %lor.lhs.false.65
  %42 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 0
  %rtuint74 = bitcast %union.rtunion_def* %arrayidx73 to i32*
  %43 = load i32, i32* %rtuint74, align 4
  %cmp75 = icmp ule i32 %43, 36
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.71, %land.lhs.true.59, %land.lhs.true.47, %land.lhs.true.36
  %44 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load77 = load i32, i32* %45, align 8
  %bf.lshr78 = lshr i32 %bf.load77, 16
  %bf.clear79 = and i32 %bf.lshr78, 255
  %idxprom80 = sext i32 %bf.clear79 to i64
  %arrayidx81 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom80
  %46 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp eq i32 %46, 5
  br i1 %cmp82, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %47 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load84 = load i32, i32* %48, align 8
  %bf.lshr85 = lshr i32 %bf.load84, 16
  %bf.clear86 = and i32 %bf.lshr85, 255
  %idxprom87 = sext i32 %bf.clear86 to i64
  %arrayidx88 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom87
  %49 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp eq i32 %49, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %50 = phi i1 [ true, %cond.true ], [ %cmp89, %lor.rhs ]
  %cond = select i1 %50, i32 2, i32 1
  br label %cond.end.128

cond.false:                                       ; preds = %land.lhs.true.71, %lor.lhs.false.65
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load91 = load i32, i32* %52, align 8
  %bf.lshr92 = lshr i32 %bf.load91, 16
  %bf.clear93 = and i32 %bf.lshr92, 255
  %cmp94 = icmp eq i32 %bf.clear93, 18
  br i1 %cmp94, label %cond.true.96, label %cond.false.100

cond.true.96:                                     ; preds = %cond.false
  %53 = load i32, i32* @target_flags, align 4
  %and97 = and i32 %53, 33554432
  %tobool98 = icmp ne i32 %and97, 0
  %cond99 = select i1 %tobool98, i32 2, i32 3
  br label %cond.end.126

cond.false.100:                                   ; preds = %cond.false
  %54 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load101 = load i32, i32* %55, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 16
  %bf.clear103 = and i32 %bf.lshr102, 255
  %cmp104 = icmp eq i32 %bf.clear103, 24
  br i1 %cmp104, label %cond.true.106, label %cond.false.110

cond.true.106:                                    ; preds = %cond.false.100
  %56 = load i32, i32* @target_flags, align 4
  %and107 = and i32 %56, 33554432
  %tobool108 = icmp ne i32 %and107, 0
  %cond109 = select i1 %tobool108, i32 4, i32 6
  br label %cond.end

cond.false.110:                                   ; preds = %cond.false.100
  %57 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load111 = load i32, i32* %58, align 8
  %bf.lshr112 = lshr i32 %bf.load111, 16
  %bf.clear113 = and i32 %bf.lshr112, 255
  %idxprom114 = sext i32 %bf.clear113 to i64
  %arrayidx115 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom114
  %59 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %59 to i32
  %60 = load i32, i32* @target_flags, align 4
  %and117 = and i32 %60, 33554432
  %tobool118 = icmp ne i32 %and117, 0
  %cond119 = select i1 %tobool118, i32 8, i32 4
  %add = add nsw i32 %conv116, %cond119
  %sub120 = sub nsw i32 %add, 1
  %61 = load i32, i32* @target_flags, align 4
  %and121 = and i32 %61, 33554432
  %tobool122 = icmp ne i32 %and121, 0
  %cond123 = select i1 %tobool122, i32 8, i32 4
  %div124 = sdiv i32 %sub120, %cond123
  br label %cond.end

cond.end:                                         ; preds = %cond.false.110, %cond.true.106
  %cond125 = phi i32 [ %cond109, %cond.true.106 ], [ %div124, %cond.false.110 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end, %cond.true.96
  %cond127 = phi i32 [ %cond99, %cond.true.96 ], [ %cond125, %cond.end ]
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.end.126, %lor.end
  %cond129 = phi i32 [ %cond, %lor.end ], [ %cond127, %cond.end.126 ]
  store i32 %cond129, i32* %n, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %cond.end.128, %if.then.30
  %62 = load i32, i32* %n, align 4
  %63 = load i32, i32* %count, align 4
  %add131 = add nsw i32 %63, %62
  store i32 %add131, i32* %count, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.130, %sw.bb
  br label %sw.bb.133

sw.bb.133:                                        ; preds = %while.body, %if.end.132
  %64 = load i32, i32* %kill.addr, align 4
  %tobool134 = icmp ne i32 %64, 0
  br i1 %tobool134, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %sw.bb.133
  %65 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 1
  %rtx138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx138, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %next, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  call void @free_EXPR_LIST_node(%struct.rtx_def* %67)
  %68 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %link, align 8
  %69 = load %struct.rtx_def**, %struct.rtx_def*** %pprev, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %69, align 8
  br label %sw.epilog

if.end.139:                                       ; preds = %sw.bb.133
  br label %sw.default

sw.default:                                       ; preds = %while.body, %if.end.139
  %70 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 1
  %rtx142 = bitcast %union.rtunion_def* %arrayidx141 to %struct.rtx_def**
  store %struct.rtx_def** %rtx142, %struct.rtx_def*** %pprev, align 8
  %71 = load %struct.rtx_def**, %struct.rtx_def*** %pprev, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %71, align 8
  store %struct.rtx_def* %72, %struct.rtx_def** %link, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.135
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.143

if.end.143:                                       ; preds = %while.end, %for.cond.5
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %74, i32 0, i32 1
  %75 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp144 = icmp eq %struct.rtx_def* %73, %75
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.143
  br label %for.end

if.end.147:                                       ; preds = %if.end.143
  br label %for.inc

for.inc:                                          ; preds = %if.end.147
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 2
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx150, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %insn, align 8
  br label %for.cond.5

for.end:                                          ; preds = %if.then.146
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.end, %if.then
  %78 = load i32, i32* %i, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.152:                                      ; preds = %for.cond
  %79 = load i32, i32* %count, align 4
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal void @verify_local_live_at_start(%struct.bitmap_head_def* %new_live_at_start, %struct.basic_block_def* %bb) #0 {
entry:
  %new_live_at_start.addr = alloca %struct.bitmap_head_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.bitmap_head_def* %new_live_at_start, %struct.bitmap_head_def** %new_live_at_start.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_start.addr, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %call = call i32 @bitmap_equal_p(%struct.bitmap_head_def* %1, %struct.bitmap_head_def* %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end.7, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0), i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_start.addr, align 8
  call void @debug_bitmap_file(%struct._IO_FILE* %8, %struct.bitmap_head_def* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_bb(%struct.basic_block_def* %11, %struct._IO_FILE* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then.2
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 583, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.verify_local_live_at_start, i32 0, i32 0)) #5
  unreachable

if.end.7:                                         ; preds = %if.then
  br label %if.end.51

if.else:                                          ; preds = %entry
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_start.addr, align 8
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_start.addr, align 8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_start8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 8
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start8, align 8
  %call9 = call i32 @bitmap_operation(%struct.bitmap_head_def* %13, %struct.bitmap_head_def* %14, %struct.bitmap_head_def* %16, i32 3)
  br label %do.body

do.body:                                          ; preds = %if.else
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_live_at_start.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %17, i32 0, i32 0
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %18, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %19, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %20, i32 0, i32 2
  %21 = load i32, i32* %indx, align 4
  %22 = load i32, i32* %indx_, align 4
  %cmp10 = icmp ult i32 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %24, i32 0, i32 0
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %25, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp11 = icmp ne %struct.bitmap_element_def* %26, null
  br i1 %cmp11, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %while.end
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %27, i32 0, i32 2
  %28 = load i32, i32* %indx12, align 4
  %29 = load i32, i32* %indx_, align 4
  %cmp13 = icmp ne i32 %28, %29
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %if.end.15
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp16 = icmp ne %struct.bitmap_element_def* %30, null
  br i1 %cmp16, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.45, %for.body
  %31 = load i32, i32* %word_num_, align 4
  %cmp18 = icmp ult i32 %31, 2
  br i1 %cmp18, label %for.body.19, label %for.end.47

for.body.19:                                      ; preds = %for.cond.17
  %32 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %32 to i64
  %33 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %33, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %34 = load i64, i64* %arrayidx, align 8
  store i64 %34, i64* %word_, align 8
  %35 = load i64, i64* %word_, align 8
  %cmp20 = icmp ne i64 %35, 0
  br i1 %cmp20, label %if.then.21, label %if.end.44

if.then.21:                                       ; preds = %for.body.19
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.21
  %36 = load i32, i32* %bit_num_, align 4
  %cmp23 = icmp ult i32 %36, 64
  br i1 %cmp23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.22
  %37 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %37 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %38 = load i64, i64* %word_, align 8
  %39 = load i64, i64* %mask_, align 8
  %and = and i64 %38, %39
  %cmp25 = icmp ne i64 %and, 0
  br i1 %cmp25, label %if.then.26, label %if.end.43

if.then.26:                                       ; preds = %for.body.24
  %40 = load i64, i64* %mask_, align 8
  %neg = xor i64 %40, -1
  %41 = load i64, i64* %word_, align 8
  %and27 = and i64 %41, %neg
  store i64 %and27, i64* %word_, align 8
  %42 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx28 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %42, i32 0, i32 2
  %43 = load i32, i32* %indx28, align 4
  %mul = mul i32 %43, 128
  %44 = load i32, i32* %word_num_, align 4
  %mul29 = mul i32 %44, 64
  %add = add i32 %mul, %mul29
  %45 = load i32, i32* %bit_num_, align 4
  %add30 = add i32 %add, %45
  store i32 %add30, i32* %i, align 4
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %global_live_at_start31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 8
  %47 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start31, align 8
  %48 = load i32, i32* %i, align 4
  %call32 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %47, i32 %48)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %if.then.26
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool35 = icmp ne %struct._IO_FILE* %49, null
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.34
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %51 = load i32, i32* %i, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 %51)
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_bb(%struct.basic_block_def* %52, %struct._IO_FILE* %53)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.34
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 604, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.verify_local_live_at_start, i32 0, i32 0)) #5
  unreachable

if.end.39:                                        ; preds = %if.then.26
  %54 = load i32, i32* %i, align 4
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  call void @verify_wide_reg(i32 %54, %struct.basic_block_def* %55)
  %56 = load i64, i64* %word_, align 8
  %cmp40 = icmp eq i64 %56, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  br label %for.end

if.end.42:                                        ; preds = %if.end.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %57 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.22

for.end:                                          ; preds = %if.then.41, %for.cond.22
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %for.body.19
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %58 = load i32, i32* %word_num_, align 4
  %inc46 = add i32 %58, 1
  store i32 %inc46, i32* %word_num_, align 4
  br label %for.cond.17

for.end.47:                                       ; preds = %for.cond.17
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.47
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next49 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %59, i32 0, i32 0
  %60 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next49, align 8
  store %struct.bitmap_element_def* %60, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.50
  br label %if.end.51

if.end.51:                                        ; preds = %do.end, %if.end.7
  ret void
}

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare void @timevar_pop(i32) #1

declare void @clear_edges() #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i32 @noop_move_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @next_real_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ue(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @initialize_uninitialized_subregs() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %reg = alloca i32, align 4
  %did_something = alloca i32, align 4
  %param = alloca %struct.find_regno_partial_param, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %map = alloca %struct.bitmap_head_def*, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %uid = alloca i32, align 4
  %i = alloca %struct.rtx_def*, align 8
  store i32 0, i32* %did_something, align 4
  %0 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %0, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %1 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %1, null
  br i1 %tobool, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %2 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 3
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %bb, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 8
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  store %struct.bitmap_head_def* %5, %struct.bitmap_head_def** %map, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %map, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %6, i32 0, i32 0
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %7, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 53, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %8, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i32 0, i32 2
  %10 = load i32, i32* %indx, align 4
  %11 = load i32, i32* %indx_, align 4
  %cmp1 = icmp ult i32 %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i32 0, i32 0
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %14, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp2 = icmp ne %struct.bitmap_element_def* %15, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 2
  %17 = load i32, i32* %indx3, align 4
  %18 = load i32, i32* %indx_, align 4
  %cmp4 = icmp ne i32 %17, %18
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.57, %if.end
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp6 = icmp ne %struct.bitmap_element_def* %19, null
  br i1 %cmp6, label %for.body.7, label %for.end.59

for.body.7:                                       ; preds = %for.cond.5
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.54, %for.body.7
  %20 = load i32, i32* %word_num_, align 4
  %cmp9 = icmp ult i32 %20, 2
  br i1 %cmp9, label %for.body.10, label %for.end.56

for.body.10:                                      ; preds = %for.cond.8
  %21 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %21 to i64
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %22, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %23 = load i64, i64* %arrayidx, align 8
  store i64 %23, i64* %word_, align 8
  %24 = load i64, i64* %word_, align 8
  %cmp11 = icmp ne i64 %24, 0
  br i1 %cmp11, label %if.then.12, label %if.end.53

if.then.12:                                       ; preds = %for.body.10
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.51, %if.then.12
  %25 = load i32, i32* %bit_num_, align 4
  %cmp14 = icmp ult i32 %25, 64
  br i1 %cmp14, label %for.body.15, label %for.end.52

for.body.15:                                      ; preds = %for.cond.13
  %26 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %26 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %27 = load i64, i64* %word_, align 8
  %28 = load i64, i64* %mask_, align 8
  %and = and i64 %27, %28
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.then.17, label %if.end.50

if.then.17:                                       ; preds = %for.body.15
  %29 = load i64, i64* %mask_, align 8
  %neg = xor i64 %29, -1
  %30 = load i64, i64* %word_, align 8
  %and18 = and i64 %30, %neg
  store i64 %and18, i64* %word_, align 8
  %31 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %31, i32 0, i32 2
  %32 = load i32, i32* %indx19, align 4
  %mul = mul i32 %32, 128
  %33 = load i32, i32* %word_num_, align 4
  %mul20 = mul i32 %33, 64
  %add = add i32 %mul, %mul20
  %34 = load i32, i32* %bit_num_, align 4
  %add21 = add i32 %add, %34
  store i32 %add21, i32* %reg, align 4
  %35 = load i32, i32* %reg, align 4
  %idxprom22 = sext i32 %35 to i64
  %36 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %36, i32 0, i32 4
  %reg23 = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx24 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg23, i32 0, i64 %idxprom22
  %37 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx24, align 8
  %first_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %37, i32 0, i32 0
  %38 = load i32, i32* %first_uid, align 4
  store i32 %38, i32* %uid, align 4
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %i, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.then.17
  %39 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %tobool26 = icmp ne %struct.rtx_def* %39, null
  br i1 %tobool26, label %land.rhs.27, label %land.end.30

land.rhs.27:                                      ; preds = %for.cond.25
  %40 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %41 = load i32, i32* %rtint, align 4
  %42 = load i32, i32* %uid, align 4
  %cmp29 = icmp ne i32 %41, %42
  br label %land.end.30

land.end.30:                                      ; preds = %land.rhs.27, %for.cond.25
  %43 = phi i1 [ false, %for.cond.25 ], [ %cmp29, %land.rhs.27 ]
  br i1 %43, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %land.end.30
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %44 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %i, align 8
  br label %for.cond.25

for.end:                                          ; preds = %land.end.30
  %46 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %cmp34 = icmp ne %struct.rtx_def* %46, null
  br i1 %cmp34, label %if.then.35, label %if.end.46

if.then.35:                                       ; preds = %for.end
  %47 = load i32, i32* %reg, align 4
  %regno_to_find = getelementptr inbounds %struct.find_regno_partial_param, %struct.find_regno_partial_param* %param, i32 0, i32 0
  store i32 %47, i32* %regno_to_find, align 4
  %48 = bitcast %struct.find_regno_partial_param* %param to i8*
  %call36 = call i32 @for_each_rtx(%struct.rtx_def** %i, i32 (%struct.rtx_def**, i8*)* @find_regno_partial, i8* %48)
  %retval37 = getelementptr inbounds %struct.find_regno_partial_param, %struct.find_regno_partial_param* %param, i32 0, i32 1
  %49 = load %struct.rtx_def*, %struct.rtx_def** %retval37, align 8
  %cmp38 = icmp ne %struct.rtx_def* %49, null
  br i1 %cmp38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.then.35
  %retval40 = getelementptr inbounds %struct.find_regno_partial_param, %struct.find_regno_partial_param* %param, i32 0, i32 1
  %50 = load %struct.rtx_def*, %struct.rtx_def** %retval40, align 8
  %retval41 = getelementptr inbounds %struct.find_regno_partial_param, %struct.find_regno_partial_param* %param, i32 0, i32 1
  %51 = load %struct.rtx_def*, %struct.rtx_def** %retval41, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load = load i32, i32* %52, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom42 = sext i32 %bf.clear to i64
  %arrayidx43 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom42
  %53 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx43, align 8
  %call44 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %50, %struct.rtx_def* %53)
  store %struct.rtx_def* %call44, %struct.rtx_def** %insn, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @insert_insn_on_edge(%struct.rtx_def* %54, %struct.edge_def* %55)
  store i32 1, i32* %did_something, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.39, %if.then.35
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.end
  %56 = load i64, i64* %word_, align 8
  %cmp47 = icmp eq i64 %56, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  br label %for.end.52

if.end.49:                                        ; preds = %if.end.46
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %for.body.15
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %57 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %57, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.13

for.end.52:                                       ; preds = %if.then.48, %for.cond.13
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %for.body.10
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %58 = load i32, i32* %word_num_, align 4
  %inc55 = add i32 %58, 1
  store i32 %inc55, i32* %word_num_, align 4
  br label %for.cond.8

for.end.56:                                       ; preds = %for.cond.8
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.56
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next58 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %59, i32 0, i32 0
  %60 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next58, align 8
  store %struct.bitmap_element_def* %60, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.5

for.end.59:                                       ; preds = %for.cond.5
  br label %do.end

do.end:                                           ; preds = %for.end.59
  br label %for.inc.60

for.inc.60:                                       ; preds = %do.end
  %61 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %61, i32 0, i32 1
  %62 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %62, %struct.edge_def** %e, align 8
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %63 = load i32, i32* %did_something, align 4
  %tobool62 = icmp ne i32 %63, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.end.61
  call void @commit_edge_insertions()
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %for.end.61
  %64 = load i32, i32* %did_something, align 4
  ret i32 %64
}

declare %struct.rtx_def* @get_insns() #1

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_regno_partial(%struct.rtx_def** %ptr, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %param = alloca %struct.find_regno_partial_param*, align 8
  %reg = alloca i32, align 4
  store %struct.rtx_def** %ptr, %struct.rtx_def*** %ptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.find_regno_partial_param*
  store %struct.find_regno_partial_param* %1, %struct.find_regno_partial_param** %param, align 8
  %2 = load %struct.find_regno_partial_param*, %struct.find_regno_partial_param** %param, align 8
  %regno_to_find = getelementptr inbounds %struct.find_regno_partial_param, %struct.find_regno_partial_param* %2, i32 0, i32 0
  %3 = load i32, i32* %regno_to_find, align 4
  store i32 %3, i32* %reg, align 4
  %4 = load %struct.find_regno_partial_param*, %struct.find_regno_partial_param** %param, align 8
  %retval1 = getelementptr inbounds %struct.find_regno_partial_param, %struct.find_regno_partial_param* %4, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %retval1, align 8
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %cmp = icmp eq %struct.rtx_def* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 133, label %sw.bb
    i32 132, label %sw.bb
    i32 64, label %sw.bb
    i32 63, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load2 = load i32, i32* %13, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 61
  br i1 %cmp4, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %sw.bb
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %17 = load i32, i32* %rtuint, align 4
  %18 = load i32, i32* %reg, align 4
  %cmp10 = icmp eq i32 %17, %18
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %land.lhs.true
  %19 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %22 = load %struct.find_regno_partial_param*, %struct.find_regno_partial_param** %param, align 8
  %retval15 = getelementptr inbounds %struct.find_regno_partial_param, %struct.find_regno_partial_param* %22, i32 0, i32 1
  store %struct.rtx_def* %21, %struct.rtx_def** %retval15, align 8
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end
  %23 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %23, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load21 = load i32, i32* %26, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 61
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.37

land.lhs.true.24:                                 ; preds = %sw.bb.17
  %27 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtuint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %30 = load i32, i32* %rtuint30, align 4
  %31 = load i32, i32* %reg, align 4
  %cmp31 = icmp eq i32 %30, %31
  br i1 %cmp31, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %land.lhs.true.24
  %32 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %35 = load %struct.find_regno_partial_param*, %struct.find_regno_partial_param** %param, align 8
  %retval36 = getelementptr inbounds %struct.find_regno_partial_param, %struct.find_regno_partial_param* %35, i32 0, i32 1
  store %struct.rtx_def* %34, %struct.rtx_def** %retval36, align 8
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.24, %sw.bb.17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.37, %if.end.16
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.32, %if.then.11, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) #1

declare void @commit_edge_insertions() #1

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

declare i32 @max_reg_num() #1

declare void @allocate_reg_info(i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @propagate_one_insn(%struct.propagate_block_info* %pbi, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %flags = alloca i32, align 4
  %insn_is_dead = alloca i32, align 4
  %libcall_is_dead = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %note123 = alloca %struct.rtx_def*, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %i194 = alloca i32, align 4
  %note195 = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %i290 = alloca i32, align 4
  %note291 = alloca %struct.rtx_def*, align 8
  %cond292 = alloca %struct.rtx_def*, align 8
  %ptr_357 = alloca %struct.bitmap_element_def*, align 8
  %indx_360 = alloca i32, align 4
  %bit_num_361 = alloca i32, align 4
  %word_num_362 = alloca i32, align 4
  %word_391 = alloca i64, align 8
  %mask_402 = alloca i64, align 8
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev, align 8
  %2 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags1 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %2, i32 0, i32 9
  %3 = load i32, i32* %flags1, align 4
  store i32 %3, i32* %flags, align 4
  store i32 0, i32* %insn_is_dead, align 4
  store i32 0, i32* %libcall_is_dead, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx2 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %8, i32 6, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.4, label %if.end.17

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 6
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %call11 = call i32 @insn_dead_p(%struct.propagate_block_info* %10, %struct.rtx_def* %12, i32 0, %struct.rtx_def* %14)
  store i32 %call11, i32* %insn_is_dead, align 4
  %15 = load i32, i32* %insn_is_dead, align 4
  %tobool12 = icmp ne i32 %15, 0
  br i1 %tobool12, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.then.4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %cmp13 = icmp ne %struct.rtx_def* %16, null
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %17 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call15 = call i32 @libcall_dead_p(%struct.propagate_block_info* %17, %struct.rtx_def* %18, %struct.rtx_def* %19)
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.then.4
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %if.then.4 ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, i32* %libcall_is_dead, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %land.end, %if.end
  %21 = load i32, i32* %flags, align 4
  %and18 = and i32 %21, 8
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.55

land.lhs.true.20:                                 ; preds = %if.end.17
  %22 = load i32, i32* %insn_is_dead, align 4
  %tobool21 = icmp ne i32 %22, 0
  br i1 %tobool21, label %if.then.22, label %if.end.55

if.then.22:                                       ; preds = %land.lhs.true.20
  %23 = load i32, i32* @reload_completed, align 4
  %tobool23 = icmp ne i32 %23, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.47

land.lhs.true.24:                                 ; preds = %if.then.22
  %24 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common = bitcast %union.tree_node* %24 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common25 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 2
  %bf.load26 = load i32, i32* %code, align 8
  %bf.clear27 = and i32 %bf.load26, 255
  %cmp28 = icmp eq i32 %bf.clear27, 23
  br i1 %cmp28, label %land.lhs.true.30, label %land.lhs.true.37

land.lhs.true.30:                                 ; preds = %land.lhs.true.24
  %26 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common31 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %type32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %type32, align 8
  %type33 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type33, i32 0, i32 6
  %bf.load34 = load i32, i32* %no_force_blk_flag, align 4
  %bf.lshr = lshr i32 %bf.load34, 17
  %bf.clear35 = and i32 %bf.lshr, 1
  %tobool36 = icmp ne i32 %bf.clear35, 0
  br i1 %tobool36, label %if.end.47, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %land.lhs.true.30, %land.lhs.true.24
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call38 = call i32 @prologue_epilogue_contains(%struct.rtx_def* %28)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.lhs.true.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.37
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call40 = call i32 @sibcall_epilogue_contains(%struct.rtx_def* %29)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %lor.lhs.false, %land.lhs.true.37
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call43 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %30, i32 25, %struct.rtx_def* null)
  %cmp44 = icmp eq %struct.rtx_def* %call43, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.42
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), %struct.rtx_def* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 1615, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.propagate_one_insn, i32 0, i32 0)) #5
  unreachable

if.end.47:                                        ; preds = %land.lhs.true.42, %lor.lhs.false, %land.lhs.true.30, %if.then.22
  %32 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 3
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_set_regs(%struct.propagate_block_info* %32, %struct.rtx_def* %34, %struct.rtx_def* %35)
  %36 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %cc0_live = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %36, i32 0, i32 8
  store i32 0, i32* %cc0_live, align 4
  %37 = load i32, i32* %libcall_is_dead, align 4
  %tobool51 = icmp ne i32 %37, 0
  br i1 %tobool51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.end.47
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call53 = call %struct.rtx_def* @propagate_block_delete_libcall(%struct.rtx_def* %38, %struct.rtx_def* %39)
  store %struct.rtx_def* %call53, %struct.rtx_def** %prev, align 8
  br label %if.end.54

if.else:                                          ; preds = %if.end.47
  %40 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %bb = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %40, i32 0, i32 0
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @propagate_block_delete_insn(%struct.basic_block_def* %41, %struct.rtx_def* %42)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.52
  %43 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true.20, %if.end.17
  %44 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %new_set = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %44, i32 0, i32 2
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %45)
  %46 = load i32, i32* %libcall_is_dead, align 4
  %tobool56 = icmp ne i32 %46, 0
  br i1 %tobool56, label %if.then.57, label %if.else.67

if.then.57:                                       ; preds = %if.end.55
  %47 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 3
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_set_regs(%struct.propagate_block_info* %47, %struct.rtx_def* %49, %struct.rtx_def* %50)
  %51 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %insn.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 1
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %retval
  br label %return

if.else.67:                                       ; preds = %if.end.55
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 3
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load71 = load i32, i32* %57, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 47
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.122

land.lhs.true.75:                                 ; preds = %if.else.67
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 3
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp82 = icmp eq %struct.rtx_def* %60, %61
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.122

land.lhs.true.84:                                 ; preds = %land.lhs.true.75
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 3
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 1
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load91 = load i32, i32* %65, align 8
  %bf.clear92 = and i32 %bf.load91, 65535
  %cmp93 = icmp eq i32 %bf.clear92, 75
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.122

land.lhs.true.95:                                 ; preds = %land.lhs.true.84
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 3
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 1
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 0
  %rtx104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx104, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp105 = icmp eq %struct.rtx_def* %69, %70
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.122

land.lhs.true.107:                                ; preds = %land.lhs.true.95
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 3
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 1
  %rtx113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx113, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 1
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load117 = load i32, i32* %75, align 8
  %bf.clear118 = and i32 %bf.load117, 65535
  %cmp119 = icmp eq i32 %bf.clear118, 54
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %land.lhs.true.107
  br label %if.end.351

if.else.122:                                      ; preds = %land.lhs.true.107, %land.lhs.true.95, %land.lhs.true.84, %land.lhs.true.75, %if.else.67
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load124 = load i32, i32* %77, align 8
  %bf.clear125 = and i32 %bf.load124, 65535
  %cmp126 = icmp eq i32 %bf.clear125, 34
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.185

land.lhs.true.128:                                ; preds = %if.else.122
  %78 = load i32, i32* %flags, align 4
  %and129 = and i32 %78, 4
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.185

if.then.131:                                      ; preds = %land.lhs.true.128
  br label %do.body

do.body:                                          ; preds = %if.then.131
  %79 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %79, i32 0, i32 1
  %80 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %80, i32 0, i32 0
  %81 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %81, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %82 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp132 = icmp ne %struct.bitmap_element_def* %82, null
  br i1 %cmp132, label %land.rhs.134, label %land.end.137

land.rhs.134:                                     ; preds = %while.cond
  %83 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %83, i32 0, i32 2
  %84 = load i32, i32* %indx, align 4
  %85 = load i32, i32* %indx_, align 4
  %cmp135 = icmp ult i32 %84, %85
  br label %land.end.137

land.end.137:                                     ; preds = %land.rhs.134, %while.cond
  %86 = phi i1 [ false, %while.cond ], [ %cmp135, %land.rhs.134 ]
  br i1 %86, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.137
  %87 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %87, i32 0, i32 0
  %88 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %88, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.137
  %89 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp139 = icmp ne %struct.bitmap_element_def* %89, null
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.146

land.lhs.true.141:                                ; preds = %while.end
  %90 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx142 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %90, i32 0, i32 2
  %91 = load i32, i32* %indx142, align 4
  %92 = load i32, i32* %indx_, align 4
  %cmp143 = icmp ne i32 %91, %92
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %land.lhs.true.141
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %land.lhs.true.141, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.182, %if.end.146
  %93 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp147 = icmp ne %struct.bitmap_element_def* %93, null
  br i1 %cmp147, label %for.body, label %for.end.184

for.body:                                         ; preds = %for.cond
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.179, %for.body
  %94 = load i32, i32* %word_num_, align 4
  %cmp150 = icmp ult i32 %94, 2
  br i1 %cmp150, label %for.body.152, label %for.end.181

for.body.152:                                     ; preds = %for.cond.149
  %95 = load i32, i32* %word_num_, align 4
  %idxprom153 = zext i32 %95 to i64
  %96 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %96, i32 0, i32 3
  %arrayidx154 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom153
  %97 = load i64, i64* %arrayidx154, align 8
  store i64 %97, i64* %word_, align 8
  %98 = load i64, i64* %word_, align 8
  %cmp155 = icmp ne i64 %98, 0
  br i1 %cmp155, label %if.then.157, label %if.end.178

if.then.157:                                      ; preds = %for.body.152
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc, %if.then.157
  %99 = load i32, i32* %bit_num_, align 4
  %cmp159 = icmp ult i32 %99, 64
  br i1 %cmp159, label %for.body.161, label %for.end

for.body.161:                                     ; preds = %for.cond.158
  %100 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %100 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %101 = load i64, i64* %word_, align 8
  %102 = load i64, i64* %mask_, align 8
  %and162 = and i64 %101, %102
  %cmp163 = icmp ne i64 %and162, 0
  br i1 %cmp163, label %if.then.165, label %if.end.176

if.then.165:                                      ; preds = %for.body.161
  %103 = load i64, i64* %mask_, align 8
  %neg = xor i64 %103, -1
  %104 = load i64, i64* %word_, align 8
  %and166 = and i64 %104, %neg
  store i64 %and166, i64* %word_, align 8
  %105 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx167 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %105, i32 0, i32 2
  %106 = load i32, i32* %indx167, align 4
  %mul = mul i32 %106, 128
  %107 = load i32, i32* %word_num_, align 4
  %mul168 = mul i32 %107, 64
  %add = add i32 %mul, %mul168
  %108 = load i32, i32* %bit_num_, align 4
  %add169 = add i32 %add, %108
  store i32 %add169, i32* %i, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %109 to i64
  %110 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %110, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx171 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom170
  %111 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx171, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %111, i32 0, i32 8
  %112 = load i32, i32* %calls_crossed, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %calls_crossed, align 4
  %113 = load i64, i64* %word_, align 8
  %cmp172 = icmp eq i64 %113, 0
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %if.then.165
  br label %for.end

if.end.175:                                       ; preds = %if.then.165
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %for.body.161
  br label %for.inc

for.inc:                                          ; preds = %if.end.176
  %114 = load i32, i32* %bit_num_, align 4
  %inc177 = add i32 %114, 1
  store i32 %inc177, i32* %bit_num_, align 4
  br label %for.cond.158

for.end:                                          ; preds = %if.then.174, %for.cond.158
  br label %if.end.178

if.end.178:                                       ; preds = %for.end, %for.body.152
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %115 = load i32, i32* %word_num_, align 4
  %inc180 = add i32 %115, 1
  store i32 %inc180, i32* %word_num_, align 4
  br label %for.cond.149

for.end.181:                                      ; preds = %for.cond.149
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.181
  %116 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next183 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %116, i32 0, i32 0
  %117 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next183, align 8
  store %struct.bitmap_element_def* %117, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.184:                                      ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.184
  br label %if.end.185

if.end.185:                                       ; preds = %do.end, %land.lhs.true.128, %if.else.122
  %118 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 3
  %rtx188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx188, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_set_regs(%struct.propagate_block_info* %118, %struct.rtx_def* %120, %struct.rtx_def* %121)
  %122 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load189 = load i32, i32* %123, align 8
  %bf.clear190 = and i32 %bf.load189, 65535
  %cmp191 = icmp eq i32 %bf.clear190, 34
  br i1 %cmp191, label %if.then.193, label %if.end.262

if.then.193:                                      ; preds = %if.end.185
  store %struct.rtx_def* null, %struct.rtx_def** %cond, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 3
  %rtx198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx198, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %bf.load199 = load i32, i32* %126, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %cmp201 = icmp eq i32 %bf.clear200, 38
  br i1 %cmp201, label %if.then.203, label %if.end.210

if.then.203:                                      ; preds = %if.then.193
  %127 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld204, i32 0, i64 3
  %rtx206 = bitcast %union.rtunion_def* %arrayidx205 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx206, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 0
  %rtx209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx209, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %cond, align 8
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.203, %if.then.193
  %130 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load211 = load i32, i32* %131, align 8
  %bf.lshr212 = lshr i32 %bf.load211, 26
  %bf.clear213 = and i32 %bf.lshr212, 1
  %tobool214 = icmp ne i32 %bf.clear213, 0
  br i1 %tobool214, label %if.end.216, label %if.then.215

if.then.215:                                      ; preds = %if.end.210
  %132 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %132, i32 0, i32 4
  call void @free_EXPR_LIST_list(%struct.rtx_def** %mem_set_list)
  %133 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list_len = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %133, i32 0, i32 7
  store i32 0, i32* %mem_set_list_len, align 4
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %if.end.210
  %134 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld217, i32 0, i64 7
  %rtx219 = bitcast %union.rtunion_def* %arrayidx218 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %rtx219, align 8
  store %struct.rtx_def* %135, %struct.rtx_def** %note195, align 8
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.239, %if.end.216
  %136 = load %struct.rtx_def*, %struct.rtx_def** %note195, align 8
  %tobool221 = icmp ne %struct.rtx_def* %136, null
  br i1 %tobool221, label %for.body.222, label %for.end.243

for.body.222:                                     ; preds = %for.cond.220
  %137 = load %struct.rtx_def*, %struct.rtx_def** %note195, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 0
  %rtx225 = bitcast %union.rtunion_def* %arrayidx224 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx225, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load226 = load i32, i32* %139, align 8
  %bf.clear227 = and i32 %bf.load226, 65535
  %cmp228 = icmp eq i32 %bf.clear227, 49
  br i1 %cmp228, label %if.then.230, label %if.end.238

if.then.230:                                      ; preds = %for.body.222
  %140 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %note195, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtx233 = bitcast %union.rtunion_def* %arrayidx232 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx233, align 8
  %fld234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld234, i32 0, i64 0
  %rtx236 = bitcast %union.rtunion_def* %arrayidx235 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx236, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %146 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags237 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %146, i32 0, i32 9
  %147 = load i32, i32* %flags237, align 4
  call void @mark_set_1(%struct.propagate_block_info* %140, i32 49, %struct.rtx_def* %143, %struct.rtx_def* %144, %struct.rtx_def* %145, i32 %147)
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.230, %for.body.222
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %148 = load %struct.rtx_def*, %struct.rtx_def** %note195, align 8
  %fld240 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld240, i32 0, i64 1
  %rtx242 = bitcast %union.rtunion_def* %arrayidx241 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx242, align 8
  store %struct.rtx_def* %149, %struct.rtx_def** %note195, align 8
  br label %for.cond.220

for.end.243:                                      ; preds = %for.cond.220
  store i32 0, i32* %i194, align 4
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.259, %for.end.243
  %150 = load i32, i32* %i194, align 4
  %cmp245 = icmp slt i32 %150, 53
  br i1 %cmp245, label %for.body.247, label %for.end.261

for.body.247:                                     ; preds = %for.cond.244
  %151 = load i64, i64* @regs_invalidated_by_call, align 8
  %152 = load i32, i32* %i194, align 4
  %sh_prom248 = zext i32 %152 to i64
  %shl249 = shl i64 1, %sh_prom248
  %and250 = and i64 %151, %shl249
  %tobool251 = icmp ne i64 %and250, 0
  br i1 %tobool251, label %if.then.252, label %if.end.258

if.then.252:                                      ; preds = %for.body.247
  %153 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %154 = load i32, i32* %i194, align 4
  %idxprom253 = sext i32 %154 to i64
  %arrayidx254 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom253
  %155 = load i32, i32* %arrayidx254, align 4
  %156 = load i32, i32* %i194, align 4
  %call255 = call %struct.rtx_def* @gen_rtx_REG(i32 %155, i32 %156)
  %157 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %158 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %159 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags256 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %159, i32 0, i32 9
  %160 = load i32, i32* %flags256, align 4
  %and257 = and i32 %160, -6
  call void @mark_set_1(%struct.propagate_block_info* %153, i32 49, %struct.rtx_def* %call255, %struct.rtx_def* %157, %struct.rtx_def* %158, i32 %and257)
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.252, %for.body.247
  br label %for.inc.259

for.inc.259:                                      ; preds = %if.end.258
  %161 = load i32, i32* %i194, align 4
  %inc260 = add nsw i32 %161, 1
  store i32 %inc260, i32* %i194, align 4
  br label %for.cond.244

for.end.261:                                      ; preds = %for.cond.244
  br label %if.end.262

if.end.262:                                       ; preds = %for.end.261, %if.end.185
  %162 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %cc0_live263 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %162, i32 0, i32 8
  store i32 0, i32* %cc0_live263, align 4
  %163 = load i32, i32* %insn_is_dead, align 4
  %tobool264 = icmp ne i32 %163, 0
  br i1 %tobool264, label %if.end.269, label %if.then.265

if.then.265:                                      ; preds = %if.end.262
  %164 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld266, i32 0, i64 3
  %rtx268 = bitcast %union.rtunion_def* %arrayidx267 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %rtx268, align 8
  %167 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %164, %struct.rtx_def* %166, %struct.rtx_def* null, %struct.rtx_def* %167)
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.265, %if.end.262
  %168 = load i32, i32* %flags, align 4
  %and270 = and i32 %168, 128
  %tobool271 = icmp ne i32 %and270, 0
  br i1 %tobool271, label %land.lhs.true.272, label %if.end.282

land.lhs.true.272:                                ; preds = %if.end.269
  %169 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call273 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %169, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call273, %struct.rtx_def** %note123, align 8
  %tobool274 = icmp ne %struct.rtx_def* %call273, null
  br i1 %tobool274, label %if.then.278, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %land.lhs.true.272
  %170 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call276 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %170, i32 3, %struct.rtx_def* null)
  store %struct.rtx_def* %call276, %struct.rtx_def** %note123, align 8
  %tobool277 = icmp ne %struct.rtx_def* %call276, null
  br i1 %tobool277, label %if.then.278, label %if.end.282

if.then.278:                                      ; preds = %lor.lhs.false.275, %land.lhs.true.272
  %171 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %172 = load %struct.rtx_def*, %struct.rtx_def** %note123, align 8
  %fld279 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %172, i32 0, i32 1
  %arrayidx280 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld279, i32 0, i64 0
  %rtx281 = bitcast %union.rtunion_def* %arrayidx280 to %struct.rtx_def**
  %173 = load %struct.rtx_def*, %struct.rtx_def** %rtx281, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %171, %struct.rtx_def* %173, %struct.rtx_def* null, %struct.rtx_def* %174)
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.278, %lor.lhs.false.275, %if.end.269
  %175 = load i32, i32* %insn_is_dead, align 4
  %tobool283 = icmp ne i32 %175, 0
  br i1 %tobool283, label %if.end.350, label %land.lhs.true.284

land.lhs.true.284:                                ; preds = %if.end.282
  %176 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %177 = bitcast %struct.rtx_def* %176 to i32*
  %bf.load285 = load i32, i32* %177, align 8
  %bf.clear286 = and i32 %bf.load285, 65535
  %cmp287 = icmp eq i32 %bf.clear286, 34
  br i1 %cmp287, label %if.then.289, label %if.end.350

if.then.289:                                      ; preds = %land.lhs.true.284
  store %struct.rtx_def* null, %struct.rtx_def** %cond292, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 3
  %rtx295 = bitcast %union.rtunion_def* %arrayidx294 to %struct.rtx_def**
  %179 = load %struct.rtx_def*, %struct.rtx_def** %rtx295, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load296 = load i32, i32* %180, align 8
  %bf.clear297 = and i32 %bf.load296, 65535
  %cmp298 = icmp eq i32 %bf.clear297, 38
  br i1 %cmp298, label %if.then.300, label %if.end.307

if.then.300:                                      ; preds = %if.then.289
  %181 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld301 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld301, i32 0, i64 3
  %rtx303 = bitcast %union.rtunion_def* %arrayidx302 to %struct.rtx_def**
  %182 = load %struct.rtx_def*, %struct.rtx_def** %rtx303, align 8
  %fld304 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx305 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld304, i32 0, i64 0
  %rtx306 = bitcast %union.rtunion_def* %arrayidx305 to %struct.rtx_def**
  %183 = load %struct.rtx_def*, %struct.rtx_def** %rtx306, align 8
  store %struct.rtx_def* %183, %struct.rtx_def** %cond292, align 8
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.300, %if.then.289
  %184 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld308, i32 0, i64 7
  %rtx310 = bitcast %union.rtunion_def* %arrayidx309 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %rtx310, align 8
  store %struct.rtx_def* %185, %struct.rtx_def** %note291, align 8
  br label %for.cond.311

for.cond.311:                                     ; preds = %for.inc.329, %if.end.307
  %186 = load %struct.rtx_def*, %struct.rtx_def** %note291, align 8
  %tobool312 = icmp ne %struct.rtx_def* %186, null
  br i1 %tobool312, label %for.body.313, label %for.end.333

for.body.313:                                     ; preds = %for.cond.311
  %187 = load %struct.rtx_def*, %struct.rtx_def** %note291, align 8
  %fld314 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx315 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld314, i32 0, i64 0
  %rtx316 = bitcast %union.rtunion_def* %arrayidx315 to %struct.rtx_def**
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtx316, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load317 = load i32, i32* %189, align 8
  %bf.clear318 = and i32 %bf.load317, 65535
  %cmp319 = icmp eq i32 %bf.clear318, 48
  br i1 %cmp319, label %if.then.321, label %if.end.328

if.then.321:                                      ; preds = %for.body.313
  %190 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %191 = load %struct.rtx_def*, %struct.rtx_def** %note291, align 8
  %fld322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx323 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld322, i32 0, i64 0
  %rtx324 = bitcast %union.rtunion_def* %arrayidx323 to %struct.rtx_def**
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtx324, align 8
  %fld325 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx326 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld325, i32 0, i64 0
  %rtx327 = bitcast %union.rtunion_def* %arrayidx326 to %struct.rtx_def**
  %193 = load %struct.rtx_def*, %struct.rtx_def** %rtx327, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %cond292, align 8
  %195 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %190, %struct.rtx_def* %193, %struct.rtx_def* %194, %struct.rtx_def* %195)
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.321, %for.body.313
  br label %for.inc.329

for.inc.329:                                      ; preds = %if.end.328
  %196 = load %struct.rtx_def*, %struct.rtx_def** %note291, align 8
  %fld330 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx331 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld330, i32 0, i64 1
  %rtx332 = bitcast %union.rtunion_def* %arrayidx331 to %struct.rtx_def**
  %197 = load %struct.rtx_def*, %struct.rtx_def** %rtx332, align 8
  store %struct.rtx_def* %197, %struct.rtx_def** %note291, align 8
  br label %for.cond.311

for.end.333:                                      ; preds = %for.cond.311
  %198 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live334 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %198, i32 0, i32 1
  %199 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live334, align 8
  call void @bitmap_set_bit(%struct.bitmap_head_def* %199, i32 7)
  store i32 0, i32* %i290, align 4
  br label %for.cond.335

for.cond.335:                                     ; preds = %for.inc.347, %for.end.333
  %200 = load i32, i32* %i290, align 4
  %cmp336 = icmp slt i32 %200, 53
  br i1 %cmp336, label %for.body.338, label %for.end.349

for.body.338:                                     ; preds = %for.cond.335
  %201 = load i32, i32* %i290, align 4
  %idxprom339 = sext i32 %201 to i64
  %arrayidx340 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom339
  %202 = load i8, i8* %arrayidx340, align 1
  %tobool341 = icmp ne i8 %202, 0
  br i1 %tobool341, label %if.then.342, label %if.end.346

if.then.342:                                      ; preds = %for.body.338
  %203 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %204 = load i32, i32* %i290, align 4
  %idxprom343 = sext i32 %204 to i64
  %arrayidx344 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom343
  %205 = load i32, i32* %arrayidx344, align 4
  %206 = load i32, i32* %i290, align 4
  %call345 = call %struct.rtx_def* @gen_rtx_REG(i32 %205, i32 %206)
  %207 = load %struct.rtx_def*, %struct.rtx_def** %cond292, align 8
  %208 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_reg(%struct.propagate_block_info* %203, %struct.rtx_def* %call345, %struct.rtx_def* %207, %struct.rtx_def* %208)
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.342, %for.body.338
  br label %for.inc.347

for.inc.347:                                      ; preds = %if.end.346
  %209 = load i32, i32* %i290, align 4
  %inc348 = add nsw i32 %209, 1
  store i32 %inc348, i32* %i290, align 4
  br label %for.cond.335

for.end.349:                                      ; preds = %for.cond.335
  br label %if.end.350

if.end.350:                                       ; preds = %for.end.349, %land.lhs.true.284, %if.end.282
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.then.121
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351
  %210 = load i32, i32* %flags, align 4
  %and353 = and i32 %210, 4
  %tobool354 = icmp ne i32 %and353, 0
  br i1 %tobool354, label %if.then.355, label %if.end.437

if.then.355:                                      ; preds = %if.end.352
  br label %do.body.356

do.body.356:                                      ; preds = %if.then.355
  %211 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live358 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %211, i32 0, i32 1
  %212 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live358, align 8
  %first359 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %212, i32 0, i32 0
  %213 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first359, align 8
  store %struct.bitmap_element_def* %213, %struct.bitmap_element_def** %ptr_357, align 8
  store i32 0, i32* %indx_360, align 4
  store i32 0, i32* %bit_num_361, align 4
  store i32 0, i32* %word_num_362, align 4
  br label %while.cond.363

while.cond.363:                                   ; preds = %while.body.372, %do.body.356
  %214 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %cmp364 = icmp ne %struct.bitmap_element_def* %214, null
  br i1 %cmp364, label %land.rhs.366, label %land.end.370

land.rhs.366:                                     ; preds = %while.cond.363
  %215 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %indx367 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %215, i32 0, i32 2
  %216 = load i32, i32* %indx367, align 4
  %217 = load i32, i32* %indx_360, align 4
  %cmp368 = icmp ult i32 %216, %217
  br label %land.end.370

land.end.370:                                     ; preds = %land.rhs.366, %while.cond.363
  %218 = phi i1 [ false, %while.cond.363 ], [ %cmp368, %land.rhs.366 ]
  br i1 %218, label %while.body.372, label %while.end.374

while.body.372:                                   ; preds = %land.end.370
  %219 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %next373 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %219, i32 0, i32 0
  %220 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next373, align 8
  store %struct.bitmap_element_def* %220, %struct.bitmap_element_def** %ptr_357, align 8
  br label %while.cond.363

while.end.374:                                    ; preds = %land.end.370
  %221 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %cmp375 = icmp ne %struct.bitmap_element_def* %221, null
  br i1 %cmp375, label %land.lhs.true.377, label %if.end.382

land.lhs.true.377:                                ; preds = %while.end.374
  %222 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %indx378 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %222, i32 0, i32 2
  %223 = load i32, i32* %indx378, align 4
  %224 = load i32, i32* %indx_360, align 4
  %cmp379 = icmp ne i32 %223, %224
  br i1 %cmp379, label %if.then.381, label %if.end.382

if.then.381:                                      ; preds = %land.lhs.true.377
  store i32 0, i32* %bit_num_361, align 4
  store i32 0, i32* %word_num_362, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.381, %land.lhs.true.377, %while.end.374
  br label %for.cond.383

for.cond.383:                                     ; preds = %for.inc.433, %if.end.382
  %225 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %cmp384 = icmp ne %struct.bitmap_element_def* %225, null
  br i1 %cmp384, label %for.body.386, label %for.end.435

for.body.386:                                     ; preds = %for.cond.383
  br label %for.cond.387

for.cond.387:                                     ; preds = %for.inc.430, %for.body.386
  %226 = load i32, i32* %word_num_362, align 4
  %cmp388 = icmp ult i32 %226, 2
  br i1 %cmp388, label %for.body.390, label %for.end.432

for.body.390:                                     ; preds = %for.cond.387
  %227 = load i32, i32* %word_num_362, align 4
  %idxprom392 = zext i32 %227 to i64
  %228 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %bits393 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %228, i32 0, i32 3
  %arrayidx394 = getelementptr inbounds [2 x i64], [2 x i64]* %bits393, i32 0, i64 %idxprom392
  %229 = load i64, i64* %arrayidx394, align 8
  store i64 %229, i64* %word_391, align 8
  %230 = load i64, i64* %word_391, align 8
  %cmp395 = icmp ne i64 %230, 0
  br i1 %cmp395, label %if.then.397, label %if.end.429

if.then.397:                                      ; preds = %for.body.390
  br label %for.cond.398

for.cond.398:                                     ; preds = %for.inc.426, %if.then.397
  %231 = load i32, i32* %bit_num_361, align 4
  %cmp399 = icmp ult i32 %231, 64
  br i1 %cmp399, label %for.body.401, label %for.end.428

for.body.401:                                     ; preds = %for.cond.398
  %232 = load i32, i32* %bit_num_361, align 4
  %sh_prom403 = zext i32 %232 to i64
  %shl404 = shl i64 1, %sh_prom403
  store i64 %shl404, i64* %mask_402, align 8
  %233 = load i64, i64* %word_391, align 8
  %234 = load i64, i64* %mask_402, align 8
  %and405 = and i64 %233, %234
  %cmp406 = icmp ne i64 %and405, 0
  br i1 %cmp406, label %if.then.408, label %if.end.425

if.then.408:                                      ; preds = %for.body.401
  %235 = load i64, i64* %mask_402, align 8
  %neg409 = xor i64 %235, -1
  %236 = load i64, i64* %word_391, align 8
  %and410 = and i64 %236, %neg409
  store i64 %and410, i64* %word_391, align 8
  %237 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %indx411 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %237, i32 0, i32 2
  %238 = load i32, i32* %indx411, align 4
  %mul412 = mul i32 %238, 128
  %239 = load i32, i32* %word_num_362, align 4
  %mul413 = mul i32 %239, 64
  %add414 = add i32 %mul412, %mul413
  %240 = load i32, i32* %bit_num_361, align 4
  %add415 = add i32 %add414, %240
  store i32 %add415, i32* %i, align 4
  %241 = load i32, i32* %i, align 4
  %idxprom416 = sext i32 %241 to i64
  %242 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data417 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %242, i32 0, i32 4
  %reg418 = bitcast %union.varray_data_tag* %data417 to [1 x %struct.reg_info_def*]*
  %arrayidx419 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg418, i32 0, i64 %idxprom416
  %243 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx419, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %243, i32 0, i32 7
  %244 = load i32, i32* %live_length, align 4
  %inc420 = add nsw i32 %244, 1
  store i32 %inc420, i32* %live_length, align 4
  %245 = load i64, i64* %word_391, align 8
  %cmp421 = icmp eq i64 %245, 0
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %if.then.408
  br label %for.end.428

if.end.424:                                       ; preds = %if.then.408
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %for.body.401
  br label %for.inc.426

for.inc.426:                                      ; preds = %if.end.425
  %246 = load i32, i32* %bit_num_361, align 4
  %inc427 = add i32 %246, 1
  store i32 %inc427, i32* %bit_num_361, align 4
  br label %for.cond.398

for.end.428:                                      ; preds = %if.then.423, %for.cond.398
  br label %if.end.429

if.end.429:                                       ; preds = %for.end.428, %for.body.390
  store i32 0, i32* %bit_num_361, align 4
  br label %for.inc.430

for.inc.430:                                      ; preds = %if.end.429
  %247 = load i32, i32* %word_num_362, align 4
  %inc431 = add i32 %247, 1
  store i32 %inc431, i32* %word_num_362, align 4
  br label %for.cond.387

for.end.432:                                      ; preds = %for.cond.387
  store i32 0, i32* %word_num_362, align 4
  br label %for.inc.433

for.inc.433:                                      ; preds = %for.end.432
  %248 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_357, align 8
  %next434 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %248, i32 0, i32 0
  %249 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next434, align 8
  store %struct.bitmap_element_def* %249, %struct.bitmap_element_def** %ptr_357, align 8
  br label %for.cond.383

for.end.435:                                      ; preds = %for.cond.383
  br label %do.end.436

do.end.436:                                       ; preds = %for.end.435
  br label %if.end.437

if.end.437:                                       ; preds = %do.end.436, %if.end.352
  %250 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %250, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.437, %if.then.57, %if.end.54, %if.then
  %251 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %251
}

; Function Attrs: nounwind uwtable
define internal i32 @insn_dead_p(%struct.propagate_block_info* %pbi, %struct.rtx_def* %x, i32 %call_ok, %struct.rtx_def* %notes) #0 {
entry:
  %retval = alloca i32, align 4
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %call_ok.addr = alloca i32, align 4
  %notes.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %r = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %canon_r = alloca %struct.rtx_def*, align 8
  %mem = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %call_ok, i32* %call_ok.addr, align 4
  store %struct.rtx_def* %notes, %struct.rtx_def** %notes.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %2, 47
  br i1 %cmp, label %if.then, label %if.else.224

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %r, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 50
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %8 = load i32, i32* %call_ok.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.15

if.else:                                          ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %call = call i32 @volatile_refs_p(%struct.rtx_def* %10)
  %tobool12 = icmp ne i32 %call, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load16 = load i32, i32* %12, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 66
  br i1 %cmp18, label %if.then.19, label %if.else.66

if.then.19:                                       ; preds = %if.end.15
  %13 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load20 = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load20, 27
  %bf.clear21 = and i32 %bf.lshr, 1
  %tobool22 = icmp ne i32 %bf.clear21, 0
  br i1 %tobool22, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.19
  %15 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load23 = load i32, i32* %16, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 16
  %bf.clear25 = and i32 %bf.lshr24, 255
  %cmp26 = icmp eq i32 %bf.clear25, 51
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %if.then.19
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  %17 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %call29 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %17)
  store %struct.rtx_def* %call29, %struct.rtx_def** %canon_r, align 8
  %18 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %18, i32 0, i32 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %mem_set_list, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %20 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp30 = icmp ne %struct.rtx_def* %20, null
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %call34 = call i32 @anti_dependence(%struct.rtx_def* %21, %struct.rtx_def* %23)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.62

if.then.36:                                       ; preds = %for.body
  %24 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %mem, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %canon_r, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %call46 = call i32 @rtx_equal_p(%struct.rtx_def* %27, %struct.rtx_def* %29)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %if.then.36
  %30 = load %struct.rtx_def*, %struct.rtx_def** %canon_r, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load48 = load i32, i32* %31, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 16
  %bf.clear50 = and i32 %bf.lshr49, 255
  %idxprom = sext i32 %bf.clear50 to i64
  %arrayidx51 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %32 = load i8, i8* %arrayidx51, align 1
  %conv = zext i8 %32 to i32
  %33 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load52 = load i32, i32* %34, align 8
  %bf.lshr53 = lshr i32 %bf.load52, 16
  %bf.clear54 = and i32 %bf.lshr53, 255
  %idxprom55 = sext i32 %bf.clear54 to i64
  %arrayidx56 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom55
  %35 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %35 to i32
  %cmp58 = icmp sle i32 %conv, %conv57
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true, %if.then.36
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %36 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 1
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.223

if.else.66:                                       ; preds = %if.end.15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.66
  %38 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load67 = load i32, i32* %39, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 63
  br i1 %cmp69, label %lor.end, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %while.cond
  %40 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load72 = load i32, i32* %41, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 64
  br i1 %cmp74, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.71
  %42 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load76 = load i32, i32* %43, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 133
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.71, %while.cond
  %44 = phi i1 [ true, %lor.lhs.false.71 ], [ true, %while.cond ], [ %cmp78, %lor.rhs ]
  br i1 %44, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %45 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %r, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %47 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load83 = load i32, i32* %48, align 8
  %bf.clear84 = and i32 %bf.load83, 65535
  %cmp85 = icmp eq i32 %bf.clear84, 61
  br i1 %cmp85, label %if.then.87, label %if.end.222

if.then.87:                                       ; preds = %while.end
  %49 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx89 to i32*
  %50 = load i32, i32* %rtuint, align 4
  store i32 %50, i32* %regno, align 4
  %51 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %51, i32 0, i32 1
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live, align 8
  %53 = load i32, i32* %regno, align 4
  %call90 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %52, i32 %53)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.87
  store i32 0, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.then.87
  %54 = load i32, i32* %regno, align 4
  %cmp94 = icmp slt i32 %54, 53
  br i1 %cmp94, label %if.then.96, label %if.end.183

if.then.96:                                       ; preds = %if.end.93
  %55 = load i32, i32* %regno, align 4
  %cmp97 = icmp sge i32 %55, 8
  br i1 %cmp97, label %land.lhs.true.99, label %lor.lhs.false.102

land.lhs.true.99:                                 ; preds = %if.then.96
  %56 = load i32, i32* %regno, align 4
  %cmp100 = icmp sle i32 %56, 15
  br i1 %cmp100, label %cond.true, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %land.lhs.true.99, %if.then.96
  %57 = load i32, i32* %regno, align 4
  %cmp103 = icmp sge i32 %57, 21
  br i1 %cmp103, label %land.lhs.true.105, label %lor.lhs.false.108

land.lhs.true.105:                                ; preds = %lor.lhs.false.102
  %58 = load i32, i32* %regno, align 4
  %cmp106 = icmp sle i32 %58, 28
  br i1 %cmp106, label %cond.true, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %land.lhs.true.105, %lor.lhs.false.102
  %59 = load i32, i32* %regno, align 4
  %cmp109 = icmp sge i32 %59, 45
  br i1 %cmp109, label %land.lhs.true.111, label %lor.lhs.false.114

land.lhs.true.111:                                ; preds = %lor.lhs.false.108
  %60 = load i32, i32* %regno, align 4
  %cmp112 = icmp sle i32 %60, 52
  br i1 %cmp112, label %cond.true, label %lor.lhs.false.114

lor.lhs.false.114:                                ; preds = %land.lhs.true.111, %lor.lhs.false.108
  %61 = load i32, i32* %regno, align 4
  %cmp115 = icmp sge i32 %61, 29
  br i1 %cmp115, label %land.lhs.true.117, label %cond.false

land.lhs.true.117:                                ; preds = %lor.lhs.false.114
  %62 = load i32, i32* %regno, align 4
  %cmp118 = icmp sle i32 %62, 36
  br i1 %cmp118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.117, %land.lhs.true.111, %land.lhs.true.105, %land.lhs.true.99
  %63 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load120 = load i32, i32* %64, align 8
  %bf.lshr121 = lshr i32 %bf.load120, 16
  %bf.clear122 = and i32 %bf.lshr121, 255
  %idxprom123 = sext i32 %bf.clear122 to i64
  %arrayidx124 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom123
  %65 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp eq i32 %65, 5
  br i1 %cmp125, label %lor.end.135, label %lor.rhs.127

lor.rhs.127:                                      ; preds = %cond.true
  %66 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load128 = load i32, i32* %67, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %idxprom131 = sext i32 %bf.clear130 to i64
  %arrayidx132 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom131
  %68 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp eq i32 %68, 6
  br label %lor.end.135

lor.end.135:                                      ; preds = %lor.rhs.127, %cond.true
  %69 = phi i1 [ true, %cond.true ], [ %cmp133, %lor.rhs.127 ]
  %cond = select i1 %69, i32 2, i32 1
  br label %cond.end.170

cond.false:                                       ; preds = %land.lhs.true.117, %lor.lhs.false.114
  %70 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load136 = load i32, i32* %71, align 8
  %bf.lshr137 = lshr i32 %bf.load136, 16
  %bf.clear138 = and i32 %bf.lshr137, 255
  %cmp139 = icmp eq i32 %bf.clear138, 18
  br i1 %cmp139, label %cond.true.141, label %cond.false.144

cond.true.141:                                    ; preds = %cond.false
  %72 = load i32, i32* @target_flags, align 4
  %and = and i32 %72, 33554432
  %tobool142 = icmp ne i32 %and, 0
  %cond143 = select i1 %tobool142, i32 2, i32 3
  br label %cond.end.168

cond.false.144:                                   ; preds = %cond.false
  %73 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load145 = load i32, i32* %74, align 8
  %bf.lshr146 = lshr i32 %bf.load145, 16
  %bf.clear147 = and i32 %bf.lshr146, 255
  %cmp148 = icmp eq i32 %bf.clear147, 24
  br i1 %cmp148, label %cond.true.150, label %cond.false.154

cond.true.150:                                    ; preds = %cond.false.144
  %75 = load i32, i32* @target_flags, align 4
  %and151 = and i32 %75, 33554432
  %tobool152 = icmp ne i32 %and151, 0
  %cond153 = select i1 %tobool152, i32 4, i32 6
  br label %cond.end

cond.false.154:                                   ; preds = %cond.false.144
  %76 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load155 = load i32, i32* %77, align 8
  %bf.lshr156 = lshr i32 %bf.load155, 16
  %bf.clear157 = and i32 %bf.lshr156, 255
  %idxprom158 = sext i32 %bf.clear157 to i64
  %arrayidx159 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom158
  %78 = load i8, i8* %arrayidx159, align 1
  %conv160 = zext i8 %78 to i32
  %79 = load i32, i32* @target_flags, align 4
  %and161 = and i32 %79, 33554432
  %tobool162 = icmp ne i32 %and161, 0
  %cond163 = select i1 %tobool162, i32 8, i32 4
  %add = add nsw i32 %conv160, %cond163
  %sub = sub nsw i32 %add, 1
  %80 = load i32, i32* @target_flags, align 4
  %and164 = and i32 %80, 33554432
  %tobool165 = icmp ne i32 %and164, 0
  %cond166 = select i1 %tobool165, i32 8, i32 4
  %div = sdiv i32 %sub, %cond166
  br label %cond.end

cond.end:                                         ; preds = %cond.false.154, %cond.true.150
  %cond167 = phi i32 [ %cond153, %cond.true.150 ], [ %div, %cond.false.154 ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end, %cond.true.141
  %cond169 = phi i32 [ %cond143, %cond.true.141 ], [ %cond167, %cond.end ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end.168, %lor.end.135
  %cond171 = phi i32 [ %cond, %lor.end.135 ], [ %cond169, %cond.end.168 ]
  store i32 %cond171, i32* %n, align 4
  br label %while.cond.172

while.cond.172:                                   ; preds = %if.end.181, %cond.end.170
  %81 = load i32, i32* %n, align 4
  %dec = add nsw i32 %81, -1
  store i32 %dec, i32* %n, align 4
  %cmp173 = icmp sgt i32 %dec, 0
  br i1 %cmp173, label %while.body.175, label %while.end.182

while.body.175:                                   ; preds = %while.cond.172
  %82 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live176 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %82, i32 0, i32 1
  %83 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live176, align 8
  %84 = load i32, i32* %regno, align 4
  %85 = load i32, i32* %n, align 4
  %add177 = add nsw i32 %84, %85
  %call178 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %83, i32 %add177)
  %tobool179 = icmp ne i32 %call178, 0
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %while.body.175
  store i32 0, i32* %retval
  br label %return

if.end.181:                                       ; preds = %while.body.175
  br label %while.cond.172

while.end.182:                                    ; preds = %while.cond.172
  br label %if.end.183

if.end.183:                                       ; preds = %while.end.182, %if.end.93
  %86 = load i32, i32* %regno, align 4
  %cmp184 = icmp slt i32 %86, 53
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.192

land.lhs.true.186:                                ; preds = %if.end.183
  %87 = load i32, i32* %regno, align 4
  %idxprom187 = sext i32 %87 to i64
  %arrayidx188 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom187
  %88 = load i8, i8* %arrayidx188, align 1
  %conv189 = sext i8 %88 to i32
  %tobool190 = icmp ne i32 %conv189, 0
  br i1 %tobool190, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %land.lhs.true.186
  store i32 0, i32* %retval
  br label %return

if.end.192:                                       ; preds = %land.lhs.true.186, %if.end.183
  %89 = load i32, i32* %regno, align 4
  %cmp193 = icmp eq i32 %89, 7
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.192
  store i32 0, i32* %retval
  br label %return

if.end.196:                                       ; preds = %if.end.192
  %90 = load i32, i32* %regno, align 4
  %cmp197 = icmp eq i32 %90, 20
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.204

land.lhs.true.199:                                ; preds = %if.end.196
  %91 = load i32, i32* @reload_completed, align 4
  %tobool200 = icmp ne i32 %91, 0
  br i1 %tobool200, label %lor.lhs.false.201, label %if.then.203

lor.lhs.false.201:                                ; preds = %land.lhs.true.199
  %92 = load i32, i32* @frame_pointer_needed, align 4
  %tobool202 = icmp ne i32 %92, 0
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %lor.lhs.false.201, %land.lhs.true.199
  store i32 0, i32* %retval
  br label %return

if.end.204:                                       ; preds = %lor.lhs.false.201, %if.end.196
  %93 = load i32, i32* %regno, align 4
  %cmp205 = icmp eq i32 %93, 6
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.212

land.lhs.true.207:                                ; preds = %if.end.204
  %94 = load i32, i32* @reload_completed, align 4
  %tobool208 = icmp ne i32 %94, 0
  br i1 %tobool208, label %lor.lhs.false.209, label %if.then.211

lor.lhs.false.209:                                ; preds = %land.lhs.true.207
  %95 = load i32, i32* @frame_pointer_needed, align 4
  %tobool210 = icmp ne i32 %95, 0
  br i1 %tobool210, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %lor.lhs.false.209, %land.lhs.true.207
  store i32 0, i32* %retval
  br label %return

if.end.212:                                       ; preds = %lor.lhs.false.209, %if.end.204
  %96 = load i32, i32* %regno, align 4
  %cmp213 = icmp eq i32 %96, 16
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.221

land.lhs.true.215:                                ; preds = %if.end.212
  %97 = load i32, i32* %regno, align 4
  %idxprom216 = sext i32 %97 to i64
  %arrayidx217 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom216
  %98 = load i8, i8* %arrayidx217, align 1
  %conv218 = sext i8 %98 to i32
  %tobool219 = icmp ne i32 %conv218, 0
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %land.lhs.true.215
  store i32 0, i32* %retval
  br label %return

if.end.221:                                       ; preds = %land.lhs.true.215, %if.end.212
  store i32 1, i32* %retval
  br label %return

if.end.222:                                       ; preds = %while.end
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %for.end
  br label %if.end.302

if.else.224:                                      ; preds = %entry
  %99 = load i32, i32* %code, align 4
  %cmp225 = icmp eq i32 %99, 39
  br i1 %cmp225, label %if.then.227, label %if.else.269

if.then.227:                                      ; preds = %if.else.224
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx229 to %struct.rtvec_def**
  %101 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %101, i32 0, i32 0
  %102 = load i32, i32* %num_elem, align 4
  store i32 %102, i32* %i, align 4
  %103 = load i32, i32* %i, align 4
  %dec230 = add nsw i32 %103, -1
  store i32 %dec230, i32* %i, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.266, %if.then.227
  %104 = load i32, i32* %i, align 4
  %cmp232 = icmp sge i32 %104, 0
  br i1 %cmp232, label %for.body.234, label %for.end.268

for.body.234:                                     ; preds = %for.cond.231
  %105 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %105 to i64
  %106 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld236, i32 0, i64 0
  %rtvec238 = bitcast %union.rtunion_def* %arrayidx237 to %struct.rtvec_def**
  %107 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec238, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %107, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom235
  %108 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx239, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load240 = load i32, i32* %109, align 8
  %bf.clear241 = and i32 %bf.load240, 65535
  %cmp242 = icmp ne i32 %bf.clear241, 49
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.265

land.lhs.true.244:                                ; preds = %for.body.234
  %110 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %110 to i64
  %111 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld246, i32 0, i64 0
  %rtvec248 = bitcast %union.rtunion_def* %arrayidx247 to %struct.rtvec_def**
  %112 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec248, align 8
  %elem249 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %112, i32 0, i32 1
  %arrayidx250 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem249, i32 0, i64 %idxprom245
  %113 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx250, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load251 = load i32, i32* %114, align 8
  %bf.clear252 = and i32 %bf.load251, 65535
  %cmp253 = icmp ne i32 %bf.clear252, 48
  br i1 %cmp253, label %land.lhs.true.255, label %if.end.265

land.lhs.true.255:                                ; preds = %land.lhs.true.244
  %115 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %116 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %116 to i64
  %117 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtvec259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtvec_def**
  %118 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec259, align 8
  %elem260 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %118, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem260, i32 0, i64 %idxprom256
  %119 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx261, align 8
  %120 = load i32, i32* %call_ok.addr, align 4
  %call262 = call i32 @insn_dead_p(%struct.propagate_block_info* %115, %struct.rtx_def* %119, i32 %120, %struct.rtx_def* null)
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.end.265, label %if.then.264

if.then.264:                                      ; preds = %land.lhs.true.255
  store i32 0, i32* %retval
  br label %return

if.end.265:                                       ; preds = %land.lhs.true.255, %land.lhs.true.244, %for.body.234
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265
  %121 = load i32, i32* %i, align 4
  %dec267 = add nsw i32 %121, -1
  store i32 %dec267, i32* %i, align 4
  br label %for.cond.231

for.end.268:                                      ; preds = %for.cond.231
  store i32 1, i32* %retval
  br label %return

if.else.269:                                      ; preds = %if.else.224
  %122 = load i32, i32* %code, align 4
  %cmp270 = icmp eq i32 %122, 49
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.300

land.lhs.true.272:                                ; preds = %if.else.269
  %123 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld273, i32 0, i64 0
  %rtx275 = bitcast %union.rtunion_def* %arrayidx274 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx275, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load276 = load i32, i32* %125, align 8
  %bf.clear277 = and i32 %bf.load276, 65535
  %cmp278 = icmp eq i32 %bf.clear277, 61
  br i1 %cmp278, label %land.lhs.true.280, label %if.end.300

land.lhs.true.280:                                ; preds = %land.lhs.true.272
  %126 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld281, i32 0, i64 0
  %rtx283 = bitcast %union.rtunion_def* %arrayidx282 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx283, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 0
  %rtuint286 = bitcast %union.rtunion_def* %arrayidx285 to i32*
  %128 = load i32, i32* %rtuint286, align 4
  %cmp287 = icmp uge i32 %128, 53
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.300

land.lhs.true.289:                                ; preds = %land.lhs.true.280
  %129 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live290 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %129, i32 0, i32 1
  %130 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live290, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld291 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx292 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld291, i32 0, i64 0
  %rtx293 = bitcast %union.rtunion_def* %arrayidx292 to %struct.rtx_def**
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtx293, align 8
  %fld294 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld294, i32 0, i64 0
  %rtuint296 = bitcast %union.rtunion_def* %arrayidx295 to i32*
  %133 = load i32, i32* %rtuint296, align 4
  %call297 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %130, i32 %133)
  %tobool298 = icmp ne i32 %call297, 0
  br i1 %tobool298, label %if.end.300, label %if.then.299

if.then.299:                                      ; preds = %land.lhs.true.289
  store i32 1, i32* %retval
  br label %return

if.end.300:                                       ; preds = %land.lhs.true.289, %land.lhs.true.280, %land.lhs.true.272, %if.else.269
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.end.223
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.302, %if.then.299, %for.end.268, %if.then.264, %if.end.221, %if.then.220, %if.then.211, %if.then.203, %if.then.195, %if.then.191, %if.then.180, %if.then.92, %if.then.60, %if.then.27, %if.then.13, %if.then.8
  %134 = load i32, i32* %retval
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define internal i32 @libcall_dead_p(%struct.propagate_block_info* %pbi, %struct.rtx_def* %note, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %note.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %r = alloca %struct.rtx_def*, align 8
  %call25 = alloca %struct.rtx_def*, align 8
  %call_pat = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %note, %struct.rtx_def** %note.addr, align 8
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
  store %struct.rtx_def* %cond16, %struct.rtx_def** %x, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool, label %if.then, label %if.end.93

if.then:                                          ; preds = %cond.end.15
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %r, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load20 = load i32, i32* %15, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 61
  br i1 %cmp22, label %if.then.24, label %if.end.92

if.then.24:                                       ; preds = %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %call25, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.24
  %18 = load %struct.rtx_def*, %struct.rtx_def** %call25, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp29 = icmp ne %struct.rtx_def* %18, %19
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %20 = load %struct.rtx_def*, %struct.rtx_def** %call25, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load31 = load i32, i32* %21, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp ne i32 %bf.clear32, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp33, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %call25, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 2
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %call25, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %call25, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp38 = icmp eq %struct.rtx_def* %25, %26
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %call25, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %call_pat, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %call_pat, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load44 = load i32, i32* %30, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 39
  br i1 %cmp46, label %if.then.48, label %if.end.87

if.then.48:                                       ; preds = %if.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %call_pat, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 0
  %33 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %33, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.48
  %34 = load i32, i32* %i, align 4
  %cmp51 = icmp sge i32 %34, 0
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %35 to i64
  %36 = load %struct.rtx_def*, %struct.rtx_def** %call_pat, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtvec56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtvec_def**
  %37 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec56, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %37, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom53
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx57, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load58 = load i32, i32* %39, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 47
  br i1 %cmp60, label %land.lhs.true, label %if.end.76

land.lhs.true:                                    ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %40 to i64
  %41 = load %struct.rtx_def*, %struct.rtx_def** %call_pat, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtvec65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtvec_def**
  %42 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec65, align 8
  %elem66 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %42, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem66, i32 0, i64 %idxprom62
  %43 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx67, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 1
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load71 = load i32, i32* %45, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 50
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true
  br label %for.end

if.end.76:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.76
  %46 = load i32, i32* %i, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.75, %for.cond
  %47 = load i32, i32* %i, align 4
  %cmp77 = icmp slt i32 %47, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %for.end
  %48 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %48 to i64
  %49 = load %struct.rtx_def*, %struct.rtx_def** %call_pat, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtvec84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtvec_def**
  %50 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec84, align 8
  %elem85 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %50, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem85, i32 0, i64 %idxprom81
  %51 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx86, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %call_pat, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.80, %if.end
  %52 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %call_pat, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %call25, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 6
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %call91 = call i32 @insn_dead_p(%struct.propagate_block_info* %52, %struct.rtx_def* %53, i32 1, %struct.rtx_def* %55)
  store i32 %call91, i32* %retval
  br label %return

if.end.92:                                        ; preds = %if.then
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %cond.end.15
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.end.87, %if.then.79, %if.then.40
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @prologue_epilogue_contains(%struct.rtx_def*) #1

declare i32 @sibcall_epilogue_contains(%struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @_fatal_insn(i8*, %struct.rtx_def*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @mark_set_regs(%struct.propagate_block_info* %pbi, %struct.rtx_def* %x, %struct.rtx_def* %insn) #0 {
entry:
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %sub36 = alloca %struct.rtx_def*, align 8
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %cond, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool1 = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 2
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %for.body
  %6 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load6 = load i32, i32* %10, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 38
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi %struct.rtx_def* [ %12, %cond.true ], [ null, %cond.false ]
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %14 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %14, i32 0, i32 9
  %15 = load i32, i32* %flags, align 4
  call void @mark_set_1(%struct.propagate_block_info* %6, i32 47, %struct.rtx_def* %8, %struct.rtx_def* %cond12, %struct.rtx_def* %13, i32 %15)
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %entry
  br label %retry

retry:                                            ; preds = %sw.bb.23, %if.end.16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load17 = load i32, i32* %19, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  store i32 %bf.clear18, i32* %code, align 4
  switch i32 %bf.clear18, label %sw.default.68 [
    i32 47, label %sw.bb
    i32 49, label %sw.bb
    i32 38, label %sw.bb.23
    i32 39, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %retry, %retry
  %20 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %21 = load i32, i32* %code, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %26 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags22 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %26, i32 0, i32 9
  %27 = load i32, i32* %flags22, align 4
  call void @mark_set_1(%struct.propagate_block_info* %20, i32 %21, %struct.rtx_def* %23, %struct.rtx_def* %24, %struct.rtx_def* %25, i32 %27)
  br label %sw.epilog.69

sw.bb.23:                                         ; preds = %retry
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %cond, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %x.addr, align 8
  br label %retry

sw.bb.30:                                         ; preds = %retry
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 0
  %34 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %34, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.66, %sw.bb.30
  %35 = load i32, i32* %i, align 4
  %cmp34 = icmp sge i32 %35, 0
  br i1 %cmp34, label %for.body.35, label %for.end.67

for.body.35:                                      ; preds = %for.cond.33
  %36 = load i32, i32* %i, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtvec39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtvec_def**
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec39, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx40, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %sub36, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %sub36, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load41 = load i32, i32* %41, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  store i32 %bf.clear42, i32* %code, align 4
  switch i32 %bf.clear42, label %sw.default [
    i32 38, label %sw.bb.43
    i32 47, label %sw.bb.61
    i32 49, label %sw.bb.61
  ]

sw.bb.43:                                         ; preds = %for.body.35
  %42 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %cmp44 = icmp ne %struct.rtx_def* %42, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %sw.bb.43
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 2468, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.mark_set_regs, i32 0, i32 0)) #5
  unreachable

if.end.46:                                        ; preds = %sw.bb.43
  %43 = load %struct.rtx_def*, %struct.rtx_def** %sub36, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %cond, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %sub36, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %sub36, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %sub36, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load53 = load i32, i32* %48, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp ne i32 %bf.clear54, 47
  br i1 %cmp55, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end.46
  %49 = load %struct.rtx_def*, %struct.rtx_def** %sub36, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load56 = load i32, i32* %50, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp ne i32 %bf.clear57, 49
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true
  br label %sw.epilog

if.end.60:                                        ; preds = %land.lhs.true, %if.end.46
  br label %sw.bb.61

sw.bb.61:                                         ; preds = %for.body.35, %for.body.35, %if.end.60
  %51 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %52 = load i32, i32* %code, align 4
  %53 = load %struct.rtx_def*, %struct.rtx_def** %sub36, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %57 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags65 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %57, i32 0, i32 9
  %58 = load i32, i32* %flags65, align 4
  call void @mark_set_1(%struct.propagate_block_info* %51, i32 %52, %struct.rtx_def* %54, %struct.rtx_def* %55, %struct.rtx_def* %56, i32 %58)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.61, %if.then.59
  br label %for.inc.66

for.inc.66:                                       ; preds = %sw.epilog
  %59 = load i32, i32* %i, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.33

for.end.67:                                       ; preds = %for.cond.33
  br label %sw.epilog.69

sw.default.68:                                    ; preds = %retry
  br label %sw.epilog.69

sw.epilog.69:                                     ; preds = %sw.bb, %sw.default.68, %for.end.67
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @propagate_block_delete_libcall(%struct.rtx_def* %insn, %struct.rtx_def* %note) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note.addr = alloca %struct.rtx_def*, align 8
  %first = alloca %struct.rtx_def*, align 8
  %before = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %note, %struct.rtx_def** %note.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %note.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %first, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %before, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @delete_insn_chain(%struct.rtx_def* %4, %struct.rtx_def* %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define internal void @propagate_block_delete_insn(%struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %inote = alloca %struct.rtx_def*, align 8
  %purge = alloca i8, align 1
  %label = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %diff_vec_p = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %0, i32 13, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %inote, align 8
  store i8 0, i8* %purge, align 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %inote, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %inote, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end.50

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %inote, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %label, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %7 = load i32, i32* %rtint, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load3 = load i32, i32* %9, align 8
  %bf.lshr = lshr i32 %bf.load3, 28
  %bf.clear4 = and i32 %bf.lshr, 1
  %add = add nsw i32 1, %bf.clear4
  %cmp5 = icmp eq i32 %7, %add
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call7 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %10)
  store %struct.rtx_def* %call7, %struct.rtx_def** %next, align 8
  %cmp8 = icmp ne %struct.rtx_def* %call7, null
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 33
  br i1 %cmp12, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %13 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 3
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load17 = load i32, i32* %15, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 44
  br i1 %cmp19, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load23 = load i32, i32* %18, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 45
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %lor.lhs.false, %land.lhs.true.13
  %19 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %pat, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load30 = load i32, i32* %22, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 45
  %conv = zext i1 %cmp32 to i32
  store i32 %conv, i32* %diff_vec_p, align 4
  %23 = load i32, i32* %diff_vec_p, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 %idxprom
  %rtvec = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 0
  %26 = load i32, i32* %num_elem, align 4
  store i32 %26, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %len, align 4
  %cmp35 = icmp slt i32 %27, %28
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load i32, i32* %diff_vec_p, align 4
  %idxprom38 = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 %idxprom38
  %rtvec41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec41, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom37
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 3
  %rtint48 = bitcast %union.rtunion_def* %arrayidx47 to i32*
  %35 = load i32, i32* %rtint48, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %rtint48, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call49 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %37)
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false, %land.lhs.true.9, %land.lhs.true.6, %if.then
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %land.lhs.true, %entry
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 1
  %39 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp51 = icmp eq %struct.rtx_def* %39, %40
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store i8 1, i8* %purge, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.50
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call55 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %41)
  %42 = load i8, i8* %purge, align 1
  %tobool56 = trunc i8 %42 to i1
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.54
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call58 = call zeroext i1 @purge_dead_edges(%struct.basic_block_def* %43)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.54
  ret void
}

declare void @free_EXPR_LIST_list(%struct.rtx_def**) #1

; Function Attrs: nounwind uwtable
define internal void @mark_set_1(%struct.propagate_block_info* %pbi, i32 %code, %struct.rtx_def* %reg, %struct.rtx_def* %cond, %struct.rtx_def* %insn, i32 %flags) #0 {
entry:
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %code.addr = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %cond.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %flags.addr = alloca i32, align 4
  %regno_first = alloca i32, align 4
  %regno_last = alloca i32, align 4
  %not_dead = alloca i64, align 8
  %i = alloca i32, align 4
  %outer_mode = alloca i32, align 4
  %inner_mode = alloca i32, align 4
  %some_was_live = alloca i32, align 4
  %some_was_dead = alloca i32, align 4
  %needed_regno = alloca i32, align 4
  %y = alloca %struct.rtx_def*, align 8
  %blocknum = alloca i32, align 4
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %cond, %struct.rtx_def** %cond.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 -1, i32* %regno_first, align 4
  store i32 -1, i32* %regno_last, align 4
  store i64 0, i64* %not_dead, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 39, label %sw.bb
    i32 133, label %sw.bb.17
    i32 132, label %sw.bb.17
    i32 64, label %sw.bb.17
    i32 61, label %sw.bb.41
    i32 63, label %sw.bb.125
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %3 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %3, i32 0, i32 0
  %4 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtvec3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp7 = icmp ne %struct.rtx_def* %10, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %12 = load i32, i32* %code.addr, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtvec11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtvec_def**
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec11, align 8
  %elem12 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %15, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem12, i32 0, i64 %idxprom8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %20 = load i32, i32* %flags.addr, align 4
  call void @mark_set_1(%struct.propagate_block_info* %11, i32 %12, %struct.rtx_def* %17, %struct.rtx_def* %18, %struct.rtx_def* %19, i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.614

sw.bb.17:                                         ; preds = %entry, %entry, %entry
  br label %do.body

do.body:                                          ; preds = %lor.end, %sw.bb.17
  %22 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %reg.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load21 = load i32, i32* %25, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 63
  br i1 %cmp23, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.cond
  %26 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load24 = load i32, i32* %27, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 133
  br i1 %cmp26, label %lor.end, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load28 = load i32, i32* %29, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 132
  br i1 %cmp30, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.27
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load31 = load i32, i32* %31, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.27, %lor.lhs.false, %do.cond
  %32 = phi i1 [ true, %lor.lhs.false.27 ], [ true, %lor.lhs.false ], [ true, %do.cond ], [ %cmp33, %lor.rhs ]
  br i1 %32, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load34 = load i32, i32* %34, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 66
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end
  br label %sw.epilog

if.end.38:                                        ; preds = %do.end
  %35 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %35, i32 0, i32 1
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %38 = load i32, i32* %rtuint, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %36, i32 %38)
  %conv = sext i32 %call to i64
  store i64 %conv, i64* %not_dead, align 8
  br label %sw.bb.41

sw.bb.41:                                         ; preds = %entry, %if.end.38
  %39 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtuint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %40 = load i32, i32* %rtuint44, align 4
  store i32 %40, i32* %regno_first, align 4
  store i32 %40, i32* %regno_last, align 4
  %41 = load i32, i32* %regno_first, align 4
  %cmp45 = icmp slt i32 %41, 53
  br i1 %cmp45, label %if.then.47, label %if.end.124

if.then.47:                                       ; preds = %sw.bb.41
  %42 = load i32, i32* %regno_first, align 4
  %cmp48 = icmp sge i32 %42, 8
  br i1 %cmp48, label %land.lhs.true, label %lor.lhs.false.52

land.lhs.true:                                    ; preds = %if.then.47
  %43 = load i32, i32* %regno_first, align 4
  %cmp50 = icmp sle i32 %43, 15
  br i1 %cmp50, label %cond.true, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true, %if.then.47
  %44 = load i32, i32* %regno_first, align 4
  %cmp53 = icmp sge i32 %44, 21
  br i1 %cmp53, label %land.lhs.true.55, label %lor.lhs.false.58

land.lhs.true.55:                                 ; preds = %lor.lhs.false.52
  %45 = load i32, i32* %regno_first, align 4
  %cmp56 = icmp sle i32 %45, 28
  br i1 %cmp56, label %cond.true, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %land.lhs.true.55, %lor.lhs.false.52
  %46 = load i32, i32* %regno_first, align 4
  %cmp59 = icmp sge i32 %46, 45
  br i1 %cmp59, label %land.lhs.true.61, label %lor.lhs.false.64

land.lhs.true.61:                                 ; preds = %lor.lhs.false.58
  %47 = load i32, i32* %regno_first, align 4
  %cmp62 = icmp sle i32 %47, 52
  br i1 %cmp62, label %cond.true, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true.61, %lor.lhs.false.58
  %48 = load i32, i32* %regno_first, align 4
  %cmp65 = icmp sge i32 %48, 29
  br i1 %cmp65, label %land.lhs.true.67, label %cond.false

land.lhs.true.67:                                 ; preds = %lor.lhs.false.64
  %49 = load i32, i32* %regno_first, align 4
  %cmp68 = icmp sle i32 %49, 36
  br i1 %cmp68, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.67, %land.lhs.true.61, %land.lhs.true.55, %land.lhs.true
  %50 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load70 = load i32, i32* %51, align 8
  %bf.lshr = lshr i32 %bf.load70, 16
  %bf.clear71 = and i32 %bf.lshr, 255
  %idxprom72 = sext i32 %bf.clear71 to i64
  %arrayidx73 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom72
  %52 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp eq i32 %52, 5
  br i1 %cmp74, label %lor.end.84, label %lor.rhs.76

lor.rhs.76:                                       ; preds = %cond.true
  %53 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load77 = load i32, i32* %54, align 8
  %bf.lshr78 = lshr i32 %bf.load77, 16
  %bf.clear79 = and i32 %bf.lshr78, 255
  %idxprom80 = sext i32 %bf.clear79 to i64
  %arrayidx81 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom80
  %55 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp eq i32 %55, 6
  br label %lor.end.84

lor.end.84:                                       ; preds = %lor.rhs.76, %cond.true
  %56 = phi i1 [ true, %cond.true ], [ %cmp82, %lor.rhs.76 ]
  %cond85 = select i1 %56, i32 2, i32 1
  br label %cond.end.120

cond.false:                                       ; preds = %land.lhs.true.67, %lor.lhs.false.64
  %57 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load86 = load i32, i32* %58, align 8
  %bf.lshr87 = lshr i32 %bf.load86, 16
  %bf.clear88 = and i32 %bf.lshr87, 255
  %cmp89 = icmp eq i32 %bf.clear88, 18
  br i1 %cmp89, label %cond.true.91, label %cond.false.93

cond.true.91:                                     ; preds = %cond.false
  %59 = load i32, i32* @target_flags, align 4
  %and = and i32 %59, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond92 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.118

cond.false.93:                                    ; preds = %cond.false
  %60 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load94 = load i32, i32* %61, align 8
  %bf.lshr95 = lshr i32 %bf.load94, 16
  %bf.clear96 = and i32 %bf.lshr95, 255
  %cmp97 = icmp eq i32 %bf.clear96, 24
  br i1 %cmp97, label %cond.true.99, label %cond.false.103

cond.true.99:                                     ; preds = %cond.false.93
  %62 = load i32, i32* @target_flags, align 4
  %and100 = and i32 %62, 33554432
  %tobool101 = icmp ne i32 %and100, 0
  %cond102 = select i1 %tobool101, i32 4, i32 6
  br label %cond.end

cond.false.103:                                   ; preds = %cond.false.93
  %63 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load104 = load i32, i32* %64, align 8
  %bf.lshr105 = lshr i32 %bf.load104, 16
  %bf.clear106 = and i32 %bf.lshr105, 255
  %idxprom107 = sext i32 %bf.clear106 to i64
  %arrayidx108 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom107
  %65 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %65 to i32
  %66 = load i32, i32* @target_flags, align 4
  %and110 = and i32 %66, 33554432
  %tobool111 = icmp ne i32 %and110, 0
  %cond112 = select i1 %tobool111, i32 8, i32 4
  %add = add nsw i32 %conv109, %cond112
  %sub113 = sub nsw i32 %add, 1
  %67 = load i32, i32* @target_flags, align 4
  %and114 = and i32 %67, 33554432
  %tobool115 = icmp ne i32 %and114, 0
  %cond116 = select i1 %tobool115, i32 8, i32 4
  %div = sdiv i32 %sub113, %cond116
  br label %cond.end

cond.end:                                         ; preds = %cond.false.103, %cond.true.99
  %cond117 = phi i32 [ %cond102, %cond.true.99 ], [ %div, %cond.false.103 ]
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.end, %cond.true.91
  %cond119 = phi i32 [ %cond92, %cond.true.91 ], [ %cond117, %cond.end ]
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.end.118, %lor.end.84
  %cond121 = phi i32 [ %cond85, %lor.end.84 ], [ %cond119, %cond.end.118 ]
  %sub122 = sub nsw i32 %cond121, 1
  %68 = load i32, i32* %regno_last, align 4
  %add123 = add nsw i32 %68, %sub122
  store i32 %add123, i32* %regno_last, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %cond.end.120, %sw.bb.41
  br label %sw.epilog

sw.bb.125:                                        ; preds = %entry
  %69 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load129 = load i32, i32* %71, align 8
  %bf.clear130 = and i32 %bf.load129, 65535
  %cmp131 = icmp eq i32 %bf.clear130, 61
  br i1 %cmp131, label %if.then.133, label %if.else.263

if.then.133:                                      ; preds = %sw.bb.125
  %72 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load134 = load i32, i32* %73, align 8
  %bf.lshr135 = lshr i32 %bf.load134, 16
  %bf.clear136 = and i32 %bf.lshr135, 255
  store i32 %bf.clear136, i32* %outer_mode, align 4
  %74 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtx139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx139, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load140 = load i32, i32* %76, align 8
  %bf.lshr141 = lshr i32 %bf.load140, 16
  %bf.clear142 = and i32 %bf.lshr141, 255
  store i32 %bf.clear142, i32* %inner_mode, align 4
  %77 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 0
  %rtuint148 = bitcast %union.rtunion_def* %arrayidx147 to i32*
  %79 = load i32, i32* %rtuint148, align 4
  store i32 %79, i32* %regno_first, align 4
  store i32 %79, i32* %regno_last, align 4
  %80 = load i32, i32* %regno_first, align 4
  %cmp149 = icmp slt i32 %80, 53
  br i1 %cmp149, label %if.then.151, label %if.else

if.then.151:                                      ; preds = %if.then.133
  %81 = load i32, i32* %regno_first, align 4
  %82 = load i32, i32* %inner_mode, align 4
  %83 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 1
  %rtuint154 = bitcast %union.rtunion_def* %arrayidx153 to i32*
  %84 = load i32, i32* %rtuint154, align 4
  %85 = load i32, i32* %outer_mode, align 4
  %call155 = call i32 @subreg_regno_offset(i32 %81, i32 %82, i32 %84, i32 %85)
  %86 = load i32, i32* %regno_first, align 4
  %add156 = add i32 %86, %call155
  store i32 %add156, i32* %regno_first, align 4
  %87 = load i32, i32* %regno_first, align 4
  %88 = load i32, i32* %regno_first, align 4
  %cmp157 = icmp sge i32 %88, 8
  br i1 %cmp157, label %land.lhs.true.159, label %lor.lhs.false.162

land.lhs.true.159:                                ; preds = %if.then.151
  %89 = load i32, i32* %regno_first, align 4
  %cmp160 = icmp sle i32 %89, 15
  br i1 %cmp160, label %cond.true.180, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %land.lhs.true.159, %if.then.151
  %90 = load i32, i32* %regno_first, align 4
  %cmp163 = icmp sge i32 %90, 21
  br i1 %cmp163, label %land.lhs.true.165, label %lor.lhs.false.168

land.lhs.true.165:                                ; preds = %lor.lhs.false.162
  %91 = load i32, i32* %regno_first, align 4
  %cmp166 = icmp sle i32 %91, 28
  br i1 %cmp166, label %cond.true.180, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %land.lhs.true.165, %lor.lhs.false.162
  %92 = load i32, i32* %regno_first, align 4
  %cmp169 = icmp sge i32 %92, 45
  br i1 %cmp169, label %land.lhs.true.171, label %lor.lhs.false.174

land.lhs.true.171:                                ; preds = %lor.lhs.false.168
  %93 = load i32, i32* %regno_first, align 4
  %cmp172 = icmp sle i32 %93, 52
  br i1 %cmp172, label %cond.true.180, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %land.lhs.true.171, %lor.lhs.false.168
  %94 = load i32, i32* %regno_first, align 4
  %cmp175 = icmp sge i32 %94, 29
  br i1 %cmp175, label %land.lhs.true.177, label %cond.false.192

land.lhs.true.177:                                ; preds = %lor.lhs.false.174
  %95 = load i32, i32* %regno_first, align 4
  %cmp178 = icmp sle i32 %95, 36
  br i1 %cmp178, label %cond.true.180, label %cond.false.192

cond.true.180:                                    ; preds = %land.lhs.true.177, %land.lhs.true.171, %land.lhs.true.165, %land.lhs.true.159
  %96 = load i32, i32* %outer_mode, align 4
  %idxprom181 = sext i32 %96 to i64
  %arrayidx182 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom181
  %97 = load i32, i32* %arrayidx182, align 4
  %cmp183 = icmp eq i32 %97, 5
  br i1 %cmp183, label %lor.end.190, label %lor.rhs.185

lor.rhs.185:                                      ; preds = %cond.true.180
  %98 = load i32, i32* %outer_mode, align 4
  %idxprom186 = sext i32 %98 to i64
  %arrayidx187 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom186
  %99 = load i32, i32* %arrayidx187, align 4
  %cmp188 = icmp eq i32 %99, 6
  br label %lor.end.190

lor.end.190:                                      ; preds = %lor.rhs.185, %cond.true.180
  %100 = phi i1 [ true, %cond.true.180 ], [ %cmp188, %lor.rhs.185 ]
  %cond191 = select i1 %100, i32 2, i32 1
  br label %cond.end.223

cond.false.192:                                   ; preds = %land.lhs.true.177, %lor.lhs.false.174
  %101 = load i32, i32* %outer_mode, align 4
  %cmp193 = icmp eq i32 %101, 18
  br i1 %cmp193, label %cond.true.195, label %cond.false.199

cond.true.195:                                    ; preds = %cond.false.192
  %102 = load i32, i32* @target_flags, align 4
  %and196 = and i32 %102, 33554432
  %tobool197 = icmp ne i32 %and196, 0
  %cond198 = select i1 %tobool197, i32 2, i32 3
  br label %cond.end.221

cond.false.199:                                   ; preds = %cond.false.192
  %103 = load i32, i32* %outer_mode, align 4
  %cmp200 = icmp eq i32 %103, 24
  br i1 %cmp200, label %cond.true.202, label %cond.false.206

cond.true.202:                                    ; preds = %cond.false.199
  %104 = load i32, i32* @target_flags, align 4
  %and203 = and i32 %104, 33554432
  %tobool204 = icmp ne i32 %and203, 0
  %cond205 = select i1 %tobool204, i32 4, i32 6
  br label %cond.end.219

cond.false.206:                                   ; preds = %cond.false.199
  %105 = load i32, i32* %outer_mode, align 4
  %idxprom207 = sext i32 %105 to i64
  %arrayidx208 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom207
  %106 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %106 to i32
  %107 = load i32, i32* @target_flags, align 4
  %and210 = and i32 %107, 33554432
  %tobool211 = icmp ne i32 %and210, 0
  %cond212 = select i1 %tobool211, i32 8, i32 4
  %add213 = add nsw i32 %conv209, %cond212
  %sub214 = sub nsw i32 %add213, 1
  %108 = load i32, i32* @target_flags, align 4
  %and215 = and i32 %108, 33554432
  %tobool216 = icmp ne i32 %and215, 0
  %cond217 = select i1 %tobool216, i32 8, i32 4
  %div218 = sdiv i32 %sub214, %cond217
  br label %cond.end.219

cond.end.219:                                     ; preds = %cond.false.206, %cond.true.202
  %cond220 = phi i32 [ %cond205, %cond.true.202 ], [ %div218, %cond.false.206 ]
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.end.219, %cond.true.195
  %cond222 = phi i32 [ %cond198, %cond.true.195 ], [ %cond220, %cond.end.219 ]
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.end.221, %lor.end.190
  %cond224 = phi i32 [ %cond191, %lor.end.190 ], [ %cond222, %cond.end.221 ]
  %add225 = add nsw i32 %87, %cond224
  %sub226 = sub nsw i32 %add225, 1
  store i32 %sub226, i32* %regno_last, align 4
  %109 = load i32, i32* %outer_mode, align 4
  %110 = load i32, i32* %regno_first, align 4
  %call227 = call %struct.rtx_def* @gen_rtx_REG(i32 %109, i32 %110)
  store %struct.rtx_def* %call227, %struct.rtx_def** %reg.addr, align 8
  br label %if.end.262

if.else:                                          ; preds = %if.then.133
  %111 = load i32, i32* %outer_mode, align 4
  %idxprom228 = sext i32 %111 to i64
  %arrayidx229 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom228
  %112 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %112 to i32
  %113 = load i32, i32* @target_flags, align 4
  %and231 = and i32 %113, 33554432
  %tobool232 = icmp ne i32 %and231, 0
  %cond233 = select i1 %tobool232, i32 8, i32 4
  %add234 = add nsw i32 %conv230, %cond233
  %sub235 = sub nsw i32 %add234, 1
  %114 = load i32, i32* @target_flags, align 4
  %and236 = and i32 %114, 33554432
  %tobool237 = icmp ne i32 %and236, 0
  %cond238 = select i1 %tobool237, i32 8, i32 4
  %div239 = sdiv i32 %sub235, %cond238
  %115 = load i32, i32* %inner_mode, align 4
  %idxprom240 = sext i32 %115 to i64
  %arrayidx241 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom240
  %116 = load i8, i8* %arrayidx241, align 1
  %conv242 = zext i8 %116 to i32
  %117 = load i32, i32* @target_flags, align 4
  %and243 = and i32 %117, 33554432
  %tobool244 = icmp ne i32 %and243, 0
  %cond245 = select i1 %tobool244, i32 8, i32 4
  %add246 = add nsw i32 %conv242, %cond245
  %sub247 = sub nsw i32 %add246, 1
  %118 = load i32, i32* @target_flags, align 4
  %and248 = and i32 %118, 33554432
  %tobool249 = icmp ne i32 %and248, 0
  %cond250 = select i1 %tobool249, i32 8, i32 4
  %div251 = sdiv i32 %sub247, %cond250
  %cmp252 = icmp slt i32 %div239, %div251
  br i1 %cmp252, label %if.then.254, label %if.end.258

if.then.254:                                      ; preds = %if.else
  %119 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live255 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %119, i32 0, i32 1
  %120 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live255, align 8
  %121 = load i32, i32* %regno_first, align 4
  %call256 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %120, i32 %121)
  %conv257 = sext i32 %call256 to i64
  store i64 %conv257, i64* %not_dead, align 8
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.254, %if.else
  %122 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld259 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld259, i32 0, i64 0
  %rtx261 = bitcast %union.rtunion_def* %arrayidx260 to %struct.rtx_def**
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtx261, align 8
  store %struct.rtx_def* %123, %struct.rtx_def** %reg.addr, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.258, %cond.end.223
  br label %if.end.267

if.else.263:                                      ; preds = %sw.bb.125
  %124 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld264, i32 0, i64 0
  %rtx266 = bitcast %union.rtunion_def* %arrayidx265 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx266, align 8
  store %struct.rtx_def* %125, %struct.rtx_def** %reg.addr, align 8
  br label %if.end.267

if.end.267:                                       ; preds = %if.else.263, %if.end.262
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.267, %if.end.124, %if.then.37
  %126 = load i32, i32* @optimize, align 4
  %tobool268 = icmp ne i32 %126, 0
  br i1 %tobool268, label %land.lhs.true.269, label %if.end.302

land.lhs.true.269:                                ; preds = %sw.epilog
  %127 = load i32, i32* %flags.addr, align 4
  %and270 = and i32 %127, 16
  %tobool271 = icmp ne i32 %and270, 0
  br i1 %tobool271, label %if.then.272, label %if.end.302

if.then.272:                                      ; preds = %land.lhs.true.269
  %128 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %bf.load273 = load i32, i32* %129, align 8
  %bf.clear274 = and i32 %bf.load273, 65535
  %cmp275 = icmp eq i32 %bf.clear274, 61
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.then.272
  %130 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  call void @invalidate_mems_from_set(%struct.propagate_block_info* %130, %struct.rtx_def* %131)
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %if.then.272
  %132 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool279 = icmp ne %struct.rtx_def* %132, null
  br i1 %tobool279, label %land.lhs.true.280, label %if.end.286

land.lhs.true.280:                                ; preds = %if.end.278
  %133 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load281 = load i32, i32* %134, align 8
  %bf.clear282 = and i32 %bf.load281, 65535
  %cmp283 = icmp eq i32 %bf.clear282, 66
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %land.lhs.true.280
  %135 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @invalidate_mems_from_autoinc(%struct.propagate_block_info* %135, %struct.rtx_def* %136)
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.285, %land.lhs.true.280, %if.end.278
  %137 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %138 = bitcast %struct.rtx_def* %137 to i32*
  %bf.load287 = load i32, i32* %138, align 8
  %bf.clear288 = and i32 %bf.load287, 65535
  %cmp289 = icmp eq i32 %bf.clear288, 66
  br i1 %cmp289, label %land.lhs.true.291, label %if.end.301

land.lhs.true.291:                                ; preds = %if.end.286
  %139 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call292 = call i32 @side_effects_p(%struct.rtx_def* %139)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.end.301, label %land.lhs.true.294

land.lhs.true.294:                                ; preds = %land.lhs.true.291
  %140 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %tobool295 = icmp ne %struct.rtx_def* %140, null
  br i1 %tobool295, label %if.end.301, label %land.lhs.true.296

land.lhs.true.296:                                ; preds = %land.lhs.true.294
  %141 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call297 = call i32 @reg_mentioned_p(%struct.rtx_def* %141, %struct.rtx_def* %142)
  %tobool298 = icmp ne i32 %call297, 0
  br i1 %tobool298, label %if.end.301, label %if.then.299

if.then.299:                                      ; preds = %land.lhs.true.296
  %143 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call300 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %144)
  call void @add_to_mem_set_list(%struct.propagate_block_info* %143, %struct.rtx_def* %call300)
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.299, %land.lhs.true.296, %land.lhs.true.294, %land.lhs.true.291, %if.end.286
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %land.lhs.true.269, %sw.epilog
  %145 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %146 = bitcast %struct.rtx_def* %145 to i32*
  %bf.load303 = load i32, i32* %146, align 8
  %bf.clear304 = and i32 %bf.load303, 65535
  %cmp305 = icmp eq i32 %bf.clear304, 61
  br i1 %cmp305, label %land.lhs.true.307, label %if.else.582

land.lhs.true.307:                                ; preds = %if.end.302
  %147 = load i32, i32* %regno_first, align 4
  %cmp308 = icmp eq i32 %147, 20
  br i1 %cmp308, label %land.lhs.true.310, label %land.lhs.true.314

land.lhs.true.310:                                ; preds = %land.lhs.true.307
  %148 = load i32, i32* @reload_completed, align 4
  %tobool311 = icmp ne i32 %148, 0
  br i1 %tobool311, label %lor.lhs.false.312, label %if.else.582

lor.lhs.false.312:                                ; preds = %land.lhs.true.310
  %149 = load i32, i32* @frame_pointer_needed, align 4
  %tobool313 = icmp ne i32 %149, 0
  br i1 %tobool313, label %if.else.582, label %land.lhs.true.314

land.lhs.true.314:                                ; preds = %lor.lhs.false.312, %land.lhs.true.307
  %150 = load i32, i32* %regno_first, align 4
  %cmp315 = icmp eq i32 %150, 6
  br i1 %cmp315, label %land.lhs.true.317, label %land.lhs.true.321

land.lhs.true.317:                                ; preds = %land.lhs.true.314
  %151 = load i32, i32* @reload_completed, align 4
  %tobool318 = icmp ne i32 %151, 0
  br i1 %tobool318, label %lor.lhs.false.319, label %if.else.582

lor.lhs.false.319:                                ; preds = %land.lhs.true.317
  %152 = load i32, i32* @frame_pointer_needed, align 4
  %tobool320 = icmp ne i32 %152, 0
  br i1 %tobool320, label %if.else.582, label %land.lhs.true.321

land.lhs.true.321:                                ; preds = %lor.lhs.false.319, %land.lhs.true.314
  %153 = load i32, i32* %regno_first, align 4
  %cmp322 = icmp eq i32 %153, 16
  br i1 %cmp322, label %land.lhs.true.324, label %if.then.329

land.lhs.true.324:                                ; preds = %land.lhs.true.321
  %154 = load i32, i32* %regno_first, align 4
  %idxprom325 = sext i32 %154 to i64
  %arrayidx326 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom325
  %155 = load i8, i8* %arrayidx326, align 1
  %conv327 = sext i8 %155 to i32
  %tobool328 = icmp ne i32 %conv327, 0
  br i1 %tobool328, label %if.else.582, label %if.then.329

if.then.329:                                      ; preds = %land.lhs.true.324, %land.lhs.true.321
  store i32 0, i32* %some_was_live, align 4
  store i32 0, i32* %some_was_dead, align 4
  %156 = load i32, i32* %regno_first, align 4
  store i32 %156, i32* %i, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.356, %if.then.329
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %regno_last, align 4
  %cmp331 = icmp sle i32 %157, %158
  br i1 %cmp331, label %for.body.333, label %for.end.357

for.body.333:                                     ; preds = %for.cond.330
  %159 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live334 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %159, i32 0, i32 1
  %160 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live334, align 8
  %161 = load i32, i32* %i, align 4
  %call335 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %160, i32 %161)
  store i32 %call335, i32* %needed_regno, align 4
  %162 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %local_set = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %162, i32 0, i32 5
  %163 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set, align 8
  %tobool336 = icmp ne %struct.bitmap_head_def* %163, null
  br i1 %tobool336, label %if.then.337, label %if.end.349

if.then.337:                                      ; preds = %for.body.333
  %164 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %cond_local_set = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %164, i32 0, i32 6
  %165 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set, align 8
  %166 = load i32, i32* %i, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %165, i32 %166)
  %167 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %cmp338 = icmp ne %struct.rtx_def* %167, null
  br i1 %cmp338, label %land.lhs.true.340, label %if.else.346

land.lhs.true.340:                                ; preds = %if.then.337
  %168 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %local_set341 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %168, i32 0, i32 5
  %169 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set341, align 8
  %170 = load i32, i32* %i, align 4
  %call342 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %169, i32 %170)
  %tobool343 = icmp ne i32 %call342, 0
  br i1 %tobool343, label %if.else.346, label %if.then.344

if.then.344:                                      ; preds = %land.lhs.true.340
  %171 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %cond_local_set345 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %171, i32 0, i32 6
  %172 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set345, align 8
  %173 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %172, i32 %173)
  br label %if.end.348

if.else.346:                                      ; preds = %land.lhs.true.340, %if.then.337
  %174 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %local_set347 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %174, i32 0, i32 5
  %175 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set347, align 8
  %176 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %175, i32 %176)
  br label %if.end.348

if.end.348:                                       ; preds = %if.else.346, %if.then.344
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %for.body.333
  %177 = load i32, i32* %code.addr, align 4
  %cmp350 = icmp ne i32 %177, 49
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %if.end.349
  %178 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %new_set = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %178, i32 0, i32 2
  %179 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_set, align 8
  %180 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %179, i32 %180)
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.352, %if.end.349
  %181 = load i32, i32* %needed_regno, align 4
  %182 = load i32, i32* %some_was_live, align 4
  %or = or i32 %182, %181
  store i32 %or, i32* %some_was_live, align 4
  %183 = load i32, i32* %needed_regno, align 4
  %tobool354 = icmp ne i32 %183, 0
  %lnot = xor i1 %tobool354, true
  %lnot.ext = zext i1 %lnot to i32
  %184 = load i32, i32* %some_was_dead, align 4
  %or355 = or i32 %184, %lnot.ext
  store i32 %or355, i32* %some_was_dead, align 4
  br label %for.inc.356

for.inc.356:                                      ; preds = %if.end.353
  %185 = load i32, i32* %i, align 4
  %inc = add nsw i32 %185, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.330

for.end.357:                                      ; preds = %for.cond.330
  %186 = load i32, i32* %flags.addr, align 4
  %and358 = and i32 %186, 71
  %tobool359 = icmp ne i32 %and358, 0
  br i1 %tobool359, label %if.then.360, label %if.end.562

if.then.360:                                      ; preds = %for.end.357
  %187 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %bb = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %187, i32 0, i32 0
  %188 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %188, i32 0, i32 11
  %189 = load i32, i32* %index, align 4
  store i32 %189, i32* %blocknum, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %y, align 8
  %190 = load i32, i32* %flags.addr, align 4
  %and361 = and i32 %190, 66
  %tobool362 = icmp ne i32 %and361, 0
  br i1 %tobool362, label %if.then.363, label %if.end.376

if.then.363:                                      ; preds = %if.then.360
  %191 = load i32, i32* %regno_first, align 4
  %idxprom364 = sext i32 %191 to i64
  %192 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_next_use = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %192, i32 0, i32 3
  %193 = load %struct.rtx_def**, %struct.rtx_def*** %reg_next_use, align 8
  %arrayidx365 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %193, i64 %idxprom364
  %194 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx365, align 8
  store %struct.rtx_def* %194, %struct.rtx_def** %y, align 8
  %195 = load i32, i32* %regno_first, align 4
  store i32 %195, i32* %i, align 4
  br label %for.cond.366

for.cond.366:                                     ; preds = %for.inc.373, %if.then.363
  %196 = load i32, i32* %i, align 4
  %197 = load i32, i32* %regno_last, align 4
  %cmp367 = icmp sle i32 %196, %197
  br i1 %cmp367, label %for.body.369, label %for.end.375

for.body.369:                                     ; preds = %for.cond.366
  %198 = load i32, i32* %i, align 4
  %idxprom370 = sext i32 %198 to i64
  %199 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_next_use371 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %199, i32 0, i32 3
  %200 = load %struct.rtx_def**, %struct.rtx_def*** %reg_next_use371, align 8
  %arrayidx372 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %200, i64 %idxprom370
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx372, align 8
  br label %for.inc.373

for.inc.373:                                      ; preds = %for.body.369
  %201 = load i32, i32* %i, align 4
  %inc374 = add nsw i32 %201, 1
  store i32 %inc374, i32* %i, align 4
  br label %for.cond.366

for.end.375:                                      ; preds = %for.cond.366
  br label %if.end.376

if.end.376:                                       ; preds = %for.end.375, %if.then.360
  %202 = load i32, i32* %flags.addr, align 4
  %and377 = and i32 %202, 4
  %tobool378 = icmp ne i32 %and377, 0
  br i1 %tobool378, label %if.then.379, label %if.end.468

if.then.379:                                      ; preds = %if.end.376
  %203 = load i32, i32* %regno_first, align 4
  store i32 %203, i32* %i, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.423, %if.then.379
  %204 = load i32, i32* %i, align 4
  %205 = load i32, i32* %regno_last, align 4
  %cmp381 = icmp sle i32 %204, %205
  br i1 %cmp381, label %for.body.383, label %for.end.425

for.body.383:                                     ; preds = %for.cond.380
  %206 = load i32, i32* %i, align 4
  %idxprom384 = sext i32 %206 to i64
  %207 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %207, i32 0, i32 4
  %reg385 = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx386 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg385, i32 0, i64 %idxprom384
  %208 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx386, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %208, i32 0, i32 3
  %209 = load i32, i32* %sets, align 4
  %add387 = add nsw i32 %209, 1
  store i32 %add387, i32* %sets, align 4
  %210 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %210 to i64
  %211 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data389 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %211, i32 0, i32 4
  %reg390 = bitcast %union.varray_data_tag* %data389 to [1 x %struct.reg_info_def*]*
  %arrayidx391 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg390, i32 0, i64 %idxprom388
  %212 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx391, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %212, i32 0, i32 4
  %213 = load i32, i32* %refs, align 4
  %add392 = add nsw i32 %213, 1
  store i32 %add392, i32* %refs, align 4
  %214 = load i32, i32* @optimize_size, align 4
  %tobool393 = icmp ne i32 %214, 0
  br i1 %tobool393, label %cond.true.398, label %lor.lhs.false.394

lor.lhs.false.394:                                ; preds = %for.body.383
  %215 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool395 = icmp ne i32 %215, 0
  br i1 %tobool395, label %land.lhs.true.396, label %cond.false.399

land.lhs.true.396:                                ; preds = %lor.lhs.false.394
  %216 = load i64, i64* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 13), align 8
  %tobool397 = icmp ne i64 %216, 0
  br i1 %tobool397, label %cond.false.399, label %cond.true.398

cond.true.398:                                    ; preds = %land.lhs.true.396, %for.body.383
  br label %cond.end.411

cond.false.399:                                   ; preds = %land.lhs.true.396, %lor.lhs.false.394
  %217 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %bb400 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %217, i32 0, i32 0
  %218 = load %struct.basic_block_def*, %struct.basic_block_def** %bb400, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %218, i32 0, i32 14
  %219 = load i32, i32* %frequency, align 4
  %mul = mul nsw i32 %219, 1000
  %div401 = sdiv i32 %mul, 10000
  %tobool402 = icmp ne i32 %div401, 0
  br i1 %tobool402, label %cond.true.403, label %cond.false.408

cond.true.403:                                    ; preds = %cond.false.399
  %220 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %bb404 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %220, i32 0, i32 0
  %221 = load %struct.basic_block_def*, %struct.basic_block_def** %bb404, align 8
  %frequency405 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %221, i32 0, i32 14
  %222 = load i32, i32* %frequency405, align 4
  %mul406 = mul nsw i32 %222, 1000
  %div407 = sdiv i32 %mul406, 10000
  br label %cond.end.409

cond.false.408:                                   ; preds = %cond.false.399
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.false.408, %cond.true.403
  %cond410 = phi i32 [ %div407, %cond.true.403 ], [ 1, %cond.false.408 ]
  br label %cond.end.411

cond.end.411:                                     ; preds = %cond.end.409, %cond.true.398
  %cond412 = phi i32 [ 1000, %cond.true.398 ], [ %cond410, %cond.end.409 ]
  %223 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %223 to i64
  %224 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data414 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %224, i32 0, i32 4
  %reg415 = bitcast %union.varray_data_tag* %data414 to [1 x %struct.reg_info_def*]*
  %arrayidx416 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg415, i32 0, i64 %idxprom413
  %225 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx416, align 8
  %freq = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %225, i32 0, i32 5
  %226 = load i32, i32* %freq, align 4
  %add417 = add nsw i32 %226, %cond412
  store i32 %add417, i32* %freq, align 4
  %227 = load i32, i32* %i, align 4
  %idxprom418 = sext i32 %227 to i64
  %228 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data419 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %228, i32 0, i32 4
  %reg420 = bitcast %union.varray_data_tag* %data419 to [1 x %struct.reg_info_def*]*
  %arrayidx421 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg420, i32 0, i64 %idxprom418
  %229 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx421, align 8
  %live_length = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %229, i32 0, i32 7
  %230 = load i32, i32* %live_length, align 4
  %add422 = add nsw i32 %230, 1
  store i32 %add422, i32* %live_length, align 4
  br label %for.inc.423

for.inc.423:                                      ; preds = %cond.end.411
  %231 = load i32, i32* %i, align 4
  %inc424 = add nsw i32 %231, 1
  store i32 %inc424, i32* %i, align 4
  br label %for.cond.380

for.end.425:                                      ; preds = %for.cond.380
  %232 = load i32, i32* %regno_first, align 4
  %cmp426 = icmp slt i32 %232, 53
  br i1 %cmp426, label %if.then.428, label %if.else.438

if.then.428:                                      ; preds = %for.end.425
  %233 = load i32, i32* %regno_first, align 4
  store i32 %233, i32* %i, align 4
  br label %for.cond.429

for.cond.429:                                     ; preds = %for.inc.435, %if.then.428
  %234 = load i32, i32* %i, align 4
  %235 = load i32, i32* %regno_last, align 4
  %cmp430 = icmp sle i32 %234, %235
  br i1 %cmp430, label %for.body.432, label %for.end.437

for.body.432:                                     ; preds = %for.cond.429
  %236 = load i32, i32* %i, align 4
  %idxprom433 = sext i32 %236 to i64
  %arrayidx434 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %idxprom433
  store i8 1, i8* %arrayidx434, align 1
  br label %for.inc.435

for.inc.435:                                      ; preds = %for.body.432
  %237 = load i32, i32* %i, align 4
  %inc436 = add nsw i32 %237, 1
  store i32 %inc436, i32* %i, align 4
  br label %for.cond.429

for.end.437:                                      ; preds = %for.cond.429
  br label %if.end.467

if.else.438:                                      ; preds = %for.end.425
  %238 = load i32, i32* %regno_first, align 4
  %idxprom439 = sext i32 %238 to i64
  %239 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data440 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %239, i32 0, i32 4
  %reg441 = bitcast %union.varray_data_tag* %data440 to [1 x %struct.reg_info_def*]*
  %arrayidx442 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg441, i32 0, i64 %idxprom439
  %240 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx442, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %240, i32 0, i32 9
  %241 = load i32, i32* %basic_block, align 4
  %cmp443 = icmp eq i32 %241, -1
  br i1 %cmp443, label %if.then.445, label %if.else.451

if.then.445:                                      ; preds = %if.else.438
  %242 = load i32, i32* %blocknum, align 4
  %243 = load i32, i32* %regno_first, align 4
  %idxprom446 = sext i32 %243 to i64
  %244 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data447 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %244, i32 0, i32 4
  %reg448 = bitcast %union.varray_data_tag* %data447 to [1 x %struct.reg_info_def*]*
  %arrayidx449 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg448, i32 0, i64 %idxprom446
  %245 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx449, align 8
  %basic_block450 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %245, i32 0, i32 9
  store i32 %242, i32* %basic_block450, align 4
  br label %if.end.466

if.else.451:                                      ; preds = %if.else.438
  %246 = load i32, i32* %regno_first, align 4
  %idxprom452 = sext i32 %246 to i64
  %247 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data453 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %247, i32 0, i32 4
  %reg454 = bitcast %union.varray_data_tag* %data453 to [1 x %struct.reg_info_def*]*
  %arrayidx455 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg454, i32 0, i64 %idxprom452
  %248 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx455, align 8
  %basic_block456 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %248, i32 0, i32 9
  %249 = load i32, i32* %basic_block456, align 4
  %250 = load i32, i32* %blocknum, align 4
  %cmp457 = icmp ne i32 %249, %250
  br i1 %cmp457, label %if.then.459, label %if.end.465

if.then.459:                                      ; preds = %if.else.451
  %251 = load i32, i32* %regno_first, align 4
  %idxprom460 = sext i32 %251 to i64
  %252 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data461 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %252, i32 0, i32 4
  %reg462 = bitcast %union.varray_data_tag* %data461 to [1 x %struct.reg_info_def*]*
  %arrayidx463 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg462, i32 0, i64 %idxprom460
  %253 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx463, align 8
  %basic_block464 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %253, i32 0, i32 9
  store i32 -2, i32* %basic_block464, align 4
  br label %if.end.465

if.end.465:                                       ; preds = %if.then.459, %if.else.451
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.465, %if.then.445
  br label %if.end.467

if.end.467:                                       ; preds = %if.end.466, %for.end.437
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.end.376
  %254 = load i32, i32* %some_was_dead, align 4
  %tobool469 = icmp ne i32 %254, 0
  br i1 %tobool469, label %if.else.506, label %if.then.470

if.then.470:                                      ; preds = %if.end.468
  %255 = load i32, i32* %flags.addr, align 4
  %and471 = and i32 %255, 2
  %tobool472 = icmp ne i32 %and471, 0
  br i1 %tobool472, label %if.then.473, label %if.end.505

if.then.473:                                      ; preds = %if.then.470
  %256 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %tobool474 = icmp ne %struct.rtx_def* %256, null
  br i1 %tobool474, label %land.lhs.true.475, label %if.end.504

land.lhs.true.475:                                ; preds = %if.then.473
  %257 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld476 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx477 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld476, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx477 to i32*
  %258 = load i32, i32* %rtint, align 4
  %idxprom478 = sext i32 %258 to i64
  %259 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data479 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %259, i32 0, i32 4
  %bb480 = bitcast %union.varray_data_tag* %data479 to [1 x %struct.basic_block_def*]*
  %arrayidx481 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb480, i32 0, i64 %idxprom478
  %260 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx481, align 8
  %index482 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %260, i32 0, i32 11
  %261 = load i32, i32* %index482, align 4
  %add483 = add nsw i32 %261, 0
  %262 = load i32, i32* %blocknum, align 4
  %cmp484 = icmp eq i32 %add483, %262
  br i1 %cmp484, label %land.lhs.true.486, label %if.end.504

land.lhs.true.486:                                ; preds = %land.lhs.true.475
  %263 = load i32, i32* %regno_first, align 4
  %cmp487 = icmp sge i32 %263, 53
  br i1 %cmp487, label %if.then.496, label %lor.lhs.false.489

lor.lhs.false.489:                                ; preds = %land.lhs.true.486
  %264 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld490 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %264, i32 0, i32 1
  %arrayidx491 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld490, i32 0, i64 3
  %rtx492 = bitcast %union.rtunion_def* %arrayidx491 to %struct.rtx_def**
  %265 = load %struct.rtx_def*, %struct.rtx_def** %rtx492, align 8
  %call493 = call i32 @asm_noperands(%struct.rtx_def* %265)
  %cmp494 = icmp slt i32 %call493, 0
  br i1 %cmp494, label %if.then.496, label %if.end.504

if.then.496:                                      ; preds = %lor.lhs.false.489, %land.lhs.true.486
  %266 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %267 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld497 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx498 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld497, i32 0, i64 5
  %rtx499 = bitcast %union.rtunion_def* %arrayidx498 to %struct.rtx_def**
  %268 = load %struct.rtx_def*, %struct.rtx_def** %rtx499, align 8
  %call500 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %266, %struct.rtx_def* %268)
  %269 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld501 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %269, i32 0, i32 1
  %arrayidx502 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld501, i32 0, i64 5
  %rtx503 = bitcast %union.rtunion_def* %arrayidx502 to %struct.rtx_def**
  store %struct.rtx_def* %call500, %struct.rtx_def** %rtx503, align 8
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.496, %lor.lhs.false.489, %land.lhs.true.475, %if.then.473
  br label %if.end.505

if.end.505:                                       ; preds = %if.end.504, %if.then.470
  br label %if.end.561

if.else.506:                                      ; preds = %if.end.468
  %270 = load i64, i64* %not_dead, align 8
  %tobool507 = icmp ne i64 %270, 0
  br i1 %tobool507, label %if.then.508, label %if.else.509

if.then.508:                                      ; preds = %if.else.506
  br label %if.end.560

if.else.509:                                      ; preds = %if.else.506
  %271 = load i32, i32* %some_was_live, align 4
  %tobool510 = icmp ne i32 %271, 0
  br i1 %tobool510, label %if.else.532, label %if.then.511

if.then.511:                                      ; preds = %if.else.509
  %272 = load i32, i32* %flags.addr, align 4
  %and512 = and i32 %272, 4
  %tobool513 = icmp ne i32 %and512, 0
  br i1 %tobool513, label %if.then.514, label %if.end.520

if.then.514:                                      ; preds = %if.then.511
  %273 = load i32, i32* %regno_first, align 4
  %idxprom515 = sext i32 %273 to i64
  %274 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data516 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %274, i32 0, i32 4
  %reg517 = bitcast %union.varray_data_tag* %data516 to [1 x %struct.reg_info_def*]*
  %arrayidx518 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg517, i32 0, i64 %idxprom515
  %275 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx518, align 8
  %deaths = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %275, i32 0, i32 6
  %276 = load i32, i32* %deaths, align 4
  %add519 = add nsw i32 %276, 1
  store i32 %add519, i32* %deaths, align 4
  br label %if.end.520

if.end.520:                                       ; preds = %if.then.514, %if.then.511
  %277 = load i32, i32* %flags.addr, align 4
  %and521 = and i32 %277, 1
  %tobool522 = icmp ne i32 %and521, 0
  br i1 %tobool522, label %if.then.523, label %if.end.531

if.then.523:                                      ; preds = %if.end.520
  %278 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %279 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld524 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx525 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld524, i32 0, i64 6
  %rtx526 = bitcast %union.rtunion_def* %arrayidx525 to %struct.rtx_def**
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtx526, align 8
  %call527 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 10, %struct.rtx_def* %278, %struct.rtx_def* %280)
  %281 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld528 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %281, i32 0, i32 1
  %arrayidx529 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld528, i32 0, i64 6
  %rtx530 = bitcast %union.rtunion_def* %arrayidx529 to %struct.rtx_def**
  store %struct.rtx_def* %call527, %struct.rtx_def** %rtx530, align 8
  br label %if.end.531

if.end.531:                                       ; preds = %if.then.523, %if.end.520
  br label %if.end.559

if.else.532:                                      ; preds = %if.else.509
  %282 = load i32, i32* %flags.addr, align 4
  %and533 = and i32 %282, 1
  %tobool534 = icmp ne i32 %and533, 0
  br i1 %tobool534, label %if.then.535, label %if.end.558

if.then.535:                                      ; preds = %if.else.532
  %283 = load i32, i32* %regno_first, align 4
  store i32 %283, i32* %i, align 4
  br label %for.cond.536

for.cond.536:                                     ; preds = %for.inc.555, %if.then.535
  %284 = load i32, i32* %i, align 4
  %285 = load i32, i32* %regno_last, align 4
  %cmp537 = icmp sle i32 %284, %285
  br i1 %cmp537, label %for.body.539, label %for.end.557

for.body.539:                                     ; preds = %for.cond.536
  %286 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live540 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %286, i32 0, i32 1
  %287 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live540, align 8
  %288 = load i32, i32* %i, align 4
  %call541 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %287, i32 %288)
  %tobool542 = icmp ne i32 %call541, 0
  br i1 %tobool542, label %if.end.554, label %if.then.543

if.then.543:                                      ; preds = %for.body.539
  %289 = load i32, i32* %i, align 4
  %idxprom544 = sext i32 %289 to i64
  %arrayidx545 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom544
  %290 = load i32, i32* %arrayidx545, align 4
  %291 = load i32, i32* %i, align 4
  %call546 = call %struct.rtx_def* @gen_rtx_REG(i32 %290, i32 %291)
  %292 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld547 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx548 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld547, i32 0, i64 6
  %rtx549 = bitcast %union.rtunion_def* %arrayidx548 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rtx549, align 8
  %call550 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 10, %struct.rtx_def* %call546, %struct.rtx_def* %293)
  %294 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %294, i32 0, i32 1
  %arrayidx552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld551, i32 0, i64 6
  %rtx553 = bitcast %union.rtunion_def* %arrayidx552 to %struct.rtx_def**
  store %struct.rtx_def* %call550, %struct.rtx_def** %rtx553, align 8
  br label %if.end.554

if.end.554:                                       ; preds = %if.then.543, %for.body.539
  br label %for.inc.555

for.inc.555:                                      ; preds = %if.end.554
  %295 = load i32, i32* %i, align 4
  %inc556 = add nsw i32 %295, 1
  store i32 %inc556, i32* %i, align 4
  br label %for.cond.536

for.end.557:                                      ; preds = %for.cond.536
  br label %if.end.558

if.end.558:                                       ; preds = %for.end.557, %if.else.532
  br label %if.end.559

if.end.559:                                       ; preds = %if.end.558, %if.end.531
  br label %if.end.560

if.end.560:                                       ; preds = %if.end.559, %if.then.508
  br label %if.end.561

if.end.561:                                       ; preds = %if.end.560, %if.end.505
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.561, %for.end.357
  %296 = load i32, i32* %some_was_live, align 4
  %tobool563 = icmp ne i32 %296, 0
  br i1 %tobool563, label %land.lhs.true.564, label %if.end.581

land.lhs.true.564:                                ; preds = %if.end.562
  %297 = load i32, i32* %regno_first, align 4
  %cmp565 = icmp ne i32 %297, 7
  br i1 %cmp565, label %if.then.567, label %if.end.581

if.then.567:                                      ; preds = %land.lhs.true.564
  %298 = load i32, i32* %regno_first, align 4
  store i32 %298, i32* %i, align 4
  br label %for.cond.568

for.cond.568:                                     ; preds = %for.inc.578, %if.then.567
  %299 = load i32, i32* %i, align 4
  %300 = load i32, i32* %regno_last, align 4
  %cmp569 = icmp sle i32 %299, %300
  br i1 %cmp569, label %for.body.571, label %for.end.580

for.body.571:                                     ; preds = %for.cond.568
  %301 = load i64, i64* %not_dead, align 8
  %302 = load i32, i32* %i, align 4
  %303 = load i32, i32* %regno_first, align 4
  %sub572 = sub nsw i32 %302, %303
  %sh_prom = zext i32 %sub572 to i64
  %shl = shl i64 1, %sh_prom
  %and573 = and i64 %301, %shl
  %tobool574 = icmp ne i64 %and573, 0
  br i1 %tobool574, label %if.end.577, label %if.then.575

if.then.575:                                      ; preds = %for.body.571
  %304 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live576 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %304, i32 0, i32 1
  %305 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live576, align 8
  %306 = load i32, i32* %i, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %305, i32 %306)
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.575, %for.body.571
  br label %for.inc.578

for.inc.578:                                      ; preds = %if.end.577
  %307 = load i32, i32* %i, align 4
  %inc579 = add nsw i32 %307, 1
  store i32 %inc579, i32* %i, align 4
  br label %for.cond.568

for.end.580:                                      ; preds = %for.cond.568
  br label %if.end.581

if.end.581:                                       ; preds = %for.end.580, %land.lhs.true.564, %if.end.562
  br label %if.end.614

if.else.582:                                      ; preds = %land.lhs.true.324, %lor.lhs.false.319, %land.lhs.true.317, %lor.lhs.false.312, %land.lhs.true.310, %if.end.302
  %308 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %309 = bitcast %struct.rtx_def* %308 to i32*
  %bf.load583 = load i32, i32* %309, align 8
  %bf.clear584 = and i32 %bf.load583, 65535
  %cmp585 = icmp eq i32 %bf.clear584, 61
  br i1 %cmp585, label %if.then.587, label %if.else.595

if.then.587:                                      ; preds = %if.else.582
  %310 = load i32, i32* %flags.addr, align 4
  %and588 = and i32 %310, 66
  %tobool589 = icmp ne i32 %and588, 0
  br i1 %tobool589, label %if.then.590, label %if.end.594

if.then.590:                                      ; preds = %if.then.587
  %311 = load i32, i32* %regno_first, align 4
  %idxprom591 = sext i32 %311 to i64
  %312 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_next_use592 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %312, i32 0, i32 3
  %313 = load %struct.rtx_def**, %struct.rtx_def*** %reg_next_use592, align 8
  %arrayidx593 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %313, i64 %idxprom591
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx593, align 8
  br label %if.end.594

if.end.594:                                       ; preds = %if.then.590, %if.then.587
  br label %if.end.613

if.else.595:                                      ; preds = %if.else.582
  %314 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %315 = bitcast %struct.rtx_def* %314 to i32*
  %bf.load596 = load i32, i32* %315, align 8
  %bf.clear597 = and i32 %bf.load596, 65535
  %cmp598 = icmp eq i32 %bf.clear597, 62
  br i1 %cmp598, label %if.then.600, label %if.end.612

if.then.600:                                      ; preds = %if.else.595
  %316 = load i32, i32* %flags.addr, align 4
  %and601 = and i32 %316, 1
  %tobool602 = icmp ne i32 %and601, 0
  br i1 %tobool602, label %if.then.603, label %if.end.611

if.then.603:                                      ; preds = %if.then.600
  %317 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %318 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld604 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %318, i32 0, i32 1
  %arrayidx605 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld604, i32 0, i64 6
  %rtx606 = bitcast %union.rtunion_def* %arrayidx605 to %struct.rtx_def**
  %319 = load %struct.rtx_def*, %struct.rtx_def** %rtx606, align 8
  %call607 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 10, %struct.rtx_def* %317, %struct.rtx_def* %319)
  %320 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld608 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %320, i32 0, i32 1
  %arrayidx609 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld608, i32 0, i64 6
  %rtx610 = bitcast %union.rtunion_def* %arrayidx609 to %struct.rtx_def**
  store %struct.rtx_def* %call607, %struct.rtx_def** %rtx610, align 8
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.603, %if.then.600
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.else.595
  br label %if.end.613

if.end.613:                                       ; preds = %if.end.612, %if.end.594
  br label %if.end.614

if.end.614:                                       ; preds = %for.end, %if.end.613, %if.end.581
  ret void
}

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mark_used_regs(%struct.propagate_block_info* %pbi, %struct.rtx_def* %x, %struct.rtx_def* %cond, %struct.rtx_def* %insn) #0 {
entry:
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %cond.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %regno = alloca i32, align 4
  %flags = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %testreg = alloca %struct.rtx_def*, align 8
  %mark_dest = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j260 = alloca i32, align 4
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %cond, %struct.rtx_def** %cond.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags1 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %0, i32 0, i32 9
  %1 = load i32, i32* %flags1, align 4
  store i32 %1, i32* %flags, align 4
  br label %retry

retry:                                            ; preds = %if.then.244, %if.end.215, %if.then.62, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %retry
  br label %for.end.284

if.end:                                           ; preds = %retry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %5 = load i32, i32* %code, align 4
  switch i32 %5, label %sw.default [
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 59, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 49, label %sw.bb.2
    i32 66, label %sw.bb.13
    i32 63, label %sw.bb.55
    i32 61, label %sw.bb.64
    i32 47, label %sw.bb.65
    i32 41, label %sw.bb.186
    i32 43, label %sw.bb.186
    i32 52, label %sw.bb.186
    i32 40, label %sw.bb.186
    i32 38, label %sw.bb.211
    i32 152, label %sw.bb.225
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %for.end.284

sw.bb.2:                                          ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load3 = load i32, i32* %8, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp = icmp eq i32 %bf.clear4, 66
  br i1 %cmp, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %sw.bb.2
  %9 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %9, %struct.rtx_def* %12, %struct.rtx_def* %13, %struct.rtx_def* %14)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.5, %sw.bb.2
  br label %for.end.284

sw.bb.13:                                         ; preds = %if.end
  %15 = load i32, i32* @optimize, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %sw.bb.13
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 16
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %if.then.16, label %if.end.54

if.then.16:                                       ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load20 = load i32, i32* %19, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 68
  br i1 %cmp22, label %land.lhs.true.23, label %if.else

land.lhs.true.23:                                 ; preds = %if.then.16
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load27 = load i32, i32* %22, align 8
  %bf.lshr = lshr i32 %bf.load27, 26
  %bf.clear28 = and i32 %bf.lshr, 1
  %tobool29 = icmp ne i32 %bf.clear28, 0
  br i1 %tobool29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true.23
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true.23, %if.then.16
  %23 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %23, i32 0, i32 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %mem_set_list, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.else
  %25 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool31 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %next, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @anti_dependence(%struct.rtx_def* %29, %struct.rtx_def* %30)
  %tobool38 = icmp ne i32 %call, 0
  br i1 %tobool38, label %if.then.39, label %if.else.48

if.then.39:                                       ; preds = %while.body
  %31 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool40 = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool40, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %if.then.39
  %32 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  store %struct.rtx_def* %32, %struct.rtx_def** %rtx44, align 8
  br label %if.end.47

if.else.45:                                       ; preds = %if.then.39
  %34 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %35 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list46 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %35, i32 0, i32 4
  store %struct.rtx_def* %34, %struct.rtx_def** %mem_set_list46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.41
  %36 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @free_EXPR_LIST_node(%struct.rtx_def* %36)
  %37 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list_len = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %37, i32 0, i32 7
  %38 = load i32, i32* %mem_set_list_len, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %mem_set_list_len, align 4
  br label %if.end.49

if.else.48:                                       ; preds = %while.body
  %39 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %prev, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.48, %if.end.47
  %40 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.50

if.end.50:                                        ; preds = %while.end, %if.then.30
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool51 = icmp ne %struct.rtx_def* %41, null
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %42 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @invalidate_mems_from_autoinc(%struct.propagate_block_info* %42, %struct.rtx_def* %43)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %land.lhs.true, %sw.bb.13
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %x.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load59 = load i32, i32* %47, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp ne i32 %bf.clear60, 61
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %sw.bb.55
  br label %retry

if.end.63:                                        ; preds = %sw.bb.55
  br label %sw.bb.64

sw.bb.64:                                         ; preds = %if.end, %if.end.63
  %48 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_reg(%struct.propagate_block_info* %48, %struct.rtx_def* %49, %struct.rtx_def* %50, %struct.rtx_def* %51)
  br label %for.end.284

sw.bb.65:                                         ; preds = %if.end
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %testreg, align 8
  store i32 0, i32* %mark_dest, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load69 = load i32, i32* %55, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 66
  br i1 %cmp71, label %if.then.72, label %if.end.79

if.then.72:                                       ; preds = %sw.bb.65
  %56 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %56, %struct.rtx_def* %58, %struct.rtx_def* %59, %struct.rtx_def* %60)
  %61 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 1
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %61, %struct.rtx_def* %63, %struct.rtx_def* %64, %struct.rtx_def* %65)
  br label %for.end.284

if.end.79:                                        ; preds = %sw.bb.65
  br label %while.cond.80

while.cond.80:                                    ; preds = %if.end.131, %if.end.79
  %66 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load81 = load i32, i32* %67, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 64
  br i1 %cmp83, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond.80
  %68 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load84 = load i32, i32* %69, align 8
  %bf.clear85 = and i32 %bf.load84, 65535
  %cmp86 = icmp eq i32 %bf.clear85, 133
  br i1 %cmp86, label %lor.end, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false
  %70 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load88 = load i32, i32* %71, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 132
  br i1 %cmp90, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.87
  %72 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load91 = load i32, i32* %73, align 8
  %bf.clear92 = and i32 %bf.load91, 65535
  %cmp93 = icmp eq i32 %bf.clear92, 63
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.87, %lor.lhs.false, %while.cond.80
  %74 = phi i1 [ true, %lor.lhs.false.87 ], [ true, %lor.lhs.false ], [ true, %while.cond.80 ], [ %cmp93, %lor.rhs ]
  br i1 %74, label %while.body.94, label %while.end.135

while.body.94:                                    ; preds = %lor.end
  %75 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load95 = load i32, i32* %76, align 8
  %bf.clear96 = and i32 %bf.load95, 65535
  %cmp97 = icmp eq i32 %bf.clear96, 63
  br i1 %cmp97, label %land.lhs.true.98, label %if.else.130

land.lhs.true.98:                                 ; preds = %while.body.94
  %77 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load102 = load i32, i32* %79, align 8
  %bf.lshr103 = lshr i32 %bf.load102, 16
  %bf.clear104 = and i32 %bf.lshr103, 255
  %idxprom = sext i32 %bf.clear104 to i64
  %arrayidx105 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %80 = load i8, i8* %arrayidx105, align 1
  %conv = zext i8 %80 to i32
  %81 = load i32, i32* @target_flags, align 4
  %and106 = and i32 %81, 33554432
  %tobool107 = icmp ne i32 %and106, 0
  %cond108 = select i1 %tobool107, i32 8, i32 4
  %add = add nsw i32 %conv, %cond108
  %sub = sub nsw i32 %add, 1
  %82 = load i32, i32* @target_flags, align 4
  %and109 = and i32 %82, 33554432
  %tobool110 = icmp ne i32 %and109, 0
  %cond111 = select i1 %tobool110, i32 8, i32 4
  %div = sdiv i32 %sub, %cond111
  %83 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load112 = load i32, i32* %84, align 8
  %bf.lshr113 = lshr i32 %bf.load112, 16
  %bf.clear114 = and i32 %bf.lshr113, 255
  %idxprom115 = sext i32 %bf.clear114 to i64
  %arrayidx116 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom115
  %85 = load i8, i8* %arrayidx116, align 1
  %conv117 = zext i8 %85 to i32
  %86 = load i32, i32* @target_flags, align 4
  %and118 = and i32 %86, 33554432
  %tobool119 = icmp ne i32 %and118, 0
  %cond120 = select i1 %tobool119, i32 8, i32 4
  %add121 = add nsw i32 %conv117, %cond120
  %sub122 = sub nsw i32 %add121, 1
  %87 = load i32, i32* @target_flags, align 4
  %and123 = and i32 %87, 33554432
  %tobool124 = icmp ne i32 %and123, 0
  %cond125 = select i1 %tobool124, i32 8, i32 4
  %div126 = sdiv i32 %sub122, %cond125
  %cmp127 = icmp sgt i32 %div, %div126
  br i1 %cmp127, label %if.else.130, label %if.then.129

if.then.129:                                      ; preds = %land.lhs.true.98
  br label %if.end.131

if.else.130:                                      ; preds = %land.lhs.true.98, %while.body.94
  store i32 1, i32* %mark_dest, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.130, %if.then.129
  %88 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 0
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %testreg, align 8
  br label %while.cond.80

while.end.135:                                    ; preds = %lor.end
  %90 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load136 = load i32, i32* %91, align 8
  %bf.clear137 = and i32 %bf.load136, 65535
  %cmp138 = icmp eq i32 %bf.clear137, 39
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.146

land.lhs.true.140:                                ; preds = %while.end.135
  %92 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load141 = load i32, i32* %93, align 8
  %bf.lshr142 = lshr i32 %bf.load141, 16
  %bf.clear143 = and i32 %bf.lshr142, 255
  %cmp144 = icmp eq i32 %bf.clear143, 51
  br i1 %cmp144, label %if.then.175, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %land.lhs.true.140, %while.end.135
  %94 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load147 = load i32, i32* %95, align 8
  %bf.clear148 = and i32 %bf.load147, 65535
  %cmp149 = icmp eq i32 %bf.clear148, 61
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.185

land.lhs.true.151:                                ; preds = %lor.lhs.false.146
  %96 = load %struct.rtx_def*, %struct.rtx_def** %testreg, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx153 to i32*
  %97 = load i32, i32* %rtuint, align 4
  store i32 %97, i32* %regno, align 4
  %98 = load i32, i32* %regno, align 4
  %cmp154 = icmp eq i32 %98, 20
  br i1 %cmp154, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.151
  %99 = load i32, i32* @reload_completed, align 4
  %tobool156 = icmp ne i32 %99, 0
  br i1 %tobool156, label %lor.rhs.157, label %lor.end.159

lor.rhs.157:                                      ; preds = %land.rhs
  %100 = load i32, i32* @frame_pointer_needed, align 4
  %tobool158 = icmp ne i32 %100, 0
  br label %lor.end.159

lor.end.159:                                      ; preds = %lor.rhs.157, %land.rhs
  %101 = phi i1 [ true, %land.rhs ], [ %tobool158, %lor.rhs.157 ]
  br label %land.end

land.end:                                         ; preds = %lor.end.159, %land.lhs.true.151
  %102 = phi i1 [ false, %land.lhs.true.151 ], [ %101, %lor.end.159 ]
  %lnot = xor i1 %102, true
  br i1 %lnot, label %land.lhs.true.160, label %if.end.185

land.lhs.true.160:                                ; preds = %land.end
  %103 = load i32, i32* %regno, align 4
  %cmp161 = icmp eq i32 %103, 6
  br i1 %cmp161, label %land.lhs.true.163, label %land.lhs.true.167

land.lhs.true.163:                                ; preds = %land.lhs.true.160
  %104 = load i32, i32* @reload_completed, align 4
  %tobool164 = icmp ne i32 %104, 0
  br i1 %tobool164, label %lor.lhs.false.165, label %if.end.185

lor.lhs.false.165:                                ; preds = %land.lhs.true.163
  %105 = load i32, i32* @frame_pointer_needed, align 4
  %tobool166 = icmp ne i32 %105, 0
  br i1 %tobool166, label %if.end.185, label %land.lhs.true.167

land.lhs.true.167:                                ; preds = %lor.lhs.false.165, %land.lhs.true.160
  %106 = load i32, i32* %regno, align 4
  %cmp168 = icmp eq i32 %106, 16
  br i1 %cmp168, label %land.lhs.true.170, label %if.then.175

land.lhs.true.170:                                ; preds = %land.lhs.true.167
  %107 = load i32, i32* %regno, align 4
  %idxprom171 = sext i32 %107 to i64
  %arrayidx172 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom171
  %108 = load i8, i8* %arrayidx172, align 1
  %conv173 = sext i8 %108 to i32
  %tobool174 = icmp ne i32 %conv173, 0
  br i1 %tobool174, label %if.end.185, label %if.then.175

if.then.175:                                      ; preds = %land.lhs.true.170, %land.lhs.true.167, %land.lhs.true.140
  %109 = load i32, i32* %mark_dest, align 4
  %tobool176 = icmp ne i32 %109, 0
  br i1 %tobool176, label %if.then.177, label %if.end.181

if.then.177:                                      ; preds = %if.then.175
  %110 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 0
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx180, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %110, %struct.rtx_def* %112, %struct.rtx_def* %113, %struct.rtx_def* %114)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.177, %if.then.175
  %115 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 1
  %rtx184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx184, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %115, %struct.rtx_def* %117, %struct.rtx_def* %118, %struct.rtx_def* %119)
  br label %for.end.284

if.end.185:                                       ; preds = %land.lhs.true.170, %lor.lhs.false.165, %land.lhs.true.163, %land.end, %lor.lhs.false.146
  br label %sw.epilog

sw.bb.186:                                        ; preds = %if.end, %if.end, %if.end, %if.end
  %120 = load i32, i32* %code, align 4
  %cmp187 = icmp ne i32 %120, 41
  br i1 %cmp187, label %if.then.194, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %sw.bb.186
  %121 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %bf.load190 = load i32, i32* %122, align 8
  %bf.lshr191 = lshr i32 %bf.load190, 27
  %bf.clear192 = and i32 %bf.lshr191, 1
  %tobool193 = icmp ne i32 %bf.clear192, 0
  br i1 %tobool193, label %if.then.194, label %if.end.197

if.then.194:                                      ; preds = %lor.lhs.false.189, %sw.bb.186
  %123 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list195 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %123, i32 0, i32 4
  call void @free_EXPR_LIST_list(%struct.rtx_def** %mem_set_list195)
  %124 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list_len196 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %124, i32 0, i32 7
  store i32 0, i32* %mem_set_list_len196, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.194, %lor.lhs.false.189
  %125 = load i32, i32* %code, align 4
  %cmp198 = icmp eq i32 %125, 41
  br i1 %cmp198, label %if.then.200, label %if.end.210

if.then.200:                                      ; preds = %if.end.197
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.200
  %126 = load i32, i32* %j, align 4
  %127 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtvec_def**
  %128 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %128, i32 0, i32 0
  %129 = load i32, i32* %num_elem, align 4
  %cmp203 = icmp slt i32 %126, %129
  br i1 %cmp203, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %130 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %131 = load i32, i32* %j, align 4
  %idxprom205 = sext i32 %131 to i64
  %132 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 3
  %rtvec208 = bitcast %union.rtunion_def* %arrayidx207 to %struct.rtvec_def**
  %133 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec208, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %133, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom205
  %134 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx209, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %130, %struct.rtx_def* %134, %struct.rtx_def* %135, %struct.rtx_def* %136)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %137 = load i32, i32* %j, align 4
  %inc = add nsw i32 %137, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.210

if.end.210:                                       ; preds = %for.end, %if.end.197
  br label %sw.epilog

sw.bb.211:                                        ; preds = %if.end
  %138 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %cmp212 = icmp ne %struct.rtx_def* %138, null
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %sw.bb.211
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 3893, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.mark_used_regs, i32 0, i32 0)) #5
  unreachable

if.end.215:                                       ; preds = %sw.bb.211
  %139 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld216 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld216, i32 0, i64 0
  %rtx218 = bitcast %union.rtunion_def* %arrayidx217 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx218, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %139, %struct.rtx_def* %141, %struct.rtx_def* null, %struct.rtx_def* %142)
  %143 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 0
  %rtx221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx221, align 8
  store %struct.rtx_def* %144, %struct.rtx_def** %cond.addr, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld222, i32 0, i64 1
  %rtx224 = bitcast %union.rtunion_def* %arrayidx223 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx224, align 8
  store %struct.rtx_def* %146, %struct.rtx_def** %x.addr, align 8
  br label %retry

sw.bb.225:                                        ; preds = %if.end
  br label %for.end.284

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.210, %if.end.185, %if.end.54
  %147 = load i32, i32* %code, align 4
  %idxprom226 = sext i32 %147 to i64
  %arrayidx227 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom226
  %148 = load i8*, i8** %arrayidx227, align 8
  store i8* %148, i8** %fmt, align 8
  %149 = load i32, i32* %code, align 4
  %idxprom228 = sext i32 %149 to i64
  %arrayidx229 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom228
  %150 = load i8, i8* %arrayidx229, align 1
  %conv230 = zext i8 %150 to i32
  %sub231 = sub nsw i32 %conv230, 1
  store i32 %sub231, i32* %i, align 4
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.282, %sw.epilog
  %151 = load i32, i32* %i, align 4
  %cmp233 = icmp sge i32 %151, 0
  br i1 %cmp233, label %for.body.235, label %for.end.284

for.body.235:                                     ; preds = %for.cond.232
  %152 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %152 to i64
  %153 = load i8*, i8** %fmt, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %153, i64 %idxprom236
  %154 = load i8, i8* %arrayidx237, align 1
  %conv238 = sext i8 %154 to i32
  %cmp239 = icmp eq i32 %conv238, 101
  br i1 %cmp239, label %if.then.241, label %if.else.253

if.then.241:                                      ; preds = %for.body.235
  %155 = load i32, i32* %i, align 4
  %cmp242 = icmp eq i32 %155, 0
  br i1 %cmp242, label %if.then.244, label %if.end.248

if.then.244:                                      ; preds = %if.then.241
  %156 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld245 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx246 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld245, i32 0, i64 0
  %rtx247 = bitcast %union.rtunion_def* %arrayidx246 to %struct.rtx_def**
  %157 = load %struct.rtx_def*, %struct.rtx_def** %rtx247, align 8
  store %struct.rtx_def* %157, %struct.rtx_def** %x.addr, align 8
  br label %retry

if.end.248:                                       ; preds = %if.then.241
  %158 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %159 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %159 to i64
  %160 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 %idxprom249
  %rtx252 = bitcast %union.rtunion_def* %arrayidx251 to %struct.rtx_def**
  %161 = load %struct.rtx_def*, %struct.rtx_def** %rtx252, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %163 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %158, %struct.rtx_def* %161, %struct.rtx_def* %162, %struct.rtx_def* %163)
  br label %if.end.281

if.else.253:                                      ; preds = %for.body.235
  %164 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %164 to i64
  %165 = load i8*, i8** %fmt, align 8
  %arrayidx255 = getelementptr inbounds i8, i8* %165, i64 %idxprom254
  %166 = load i8, i8* %arrayidx255, align 1
  %conv256 = sext i8 %166 to i32
  %cmp257 = icmp eq i32 %conv256, 69
  br i1 %cmp257, label %if.then.259, label %if.end.280

if.then.259:                                      ; preds = %if.else.253
  store i32 0, i32* %j260, align 4
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.277, %if.then.259
  %167 = load i32, i32* %j260, align 4
  %168 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %168 to i64
  %169 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld263, i32 0, i64 %idxprom262
  %rtvec265 = bitcast %union.rtunion_def* %arrayidx264 to %struct.rtvec_def**
  %170 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec265, align 8
  %num_elem266 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %170, i32 0, i32 0
  %171 = load i32, i32* %num_elem266, align 4
  %cmp267 = icmp slt i32 %167, %171
  br i1 %cmp267, label %for.body.269, label %for.end.279

for.body.269:                                     ; preds = %for.cond.261
  %172 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %173 = load i32, i32* %j260, align 4
  %idxprom270 = sext i32 %173 to i64
  %174 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %174 to i64
  %175 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld272 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx273 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld272, i32 0, i64 %idxprom271
  %rtvec274 = bitcast %union.rtunion_def* %arrayidx273 to %struct.rtvec_def**
  %176 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec274, align 8
  %elem275 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %176, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem275, i32 0, i64 %idxprom270
  %177 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx276, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %cond.addr, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @mark_used_regs(%struct.propagate_block_info* %172, %struct.rtx_def* %177, %struct.rtx_def* %178, %struct.rtx_def* %179)
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.body.269
  %180 = load i32, i32* %j260, align 4
  %inc278 = add nsw i32 %180, 1
  store i32 %inc278, i32* %j260, align 4
  br label %for.cond.261

for.end.279:                                      ; preds = %for.cond.261
  br label %if.end.280

if.end.280:                                       ; preds = %for.end.279, %if.else.253
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.end.248
  br label %for.inc.282

for.inc.282:                                      ; preds = %if.end.281
  %181 = load i32, i32* %i, align 4
  %dec283 = add nsw i32 %181, -1
  store i32 %dec283, i32* %i, align 4
  br label %for.cond.232

for.end.284:                                      ; preds = %if.then, %sw.bb, %if.end.12, %sw.bb.64, %if.then.72, %if.end.181, %sw.bb.225, %for.cond.232
  ret void
}

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mark_used_reg(%struct.propagate_block_info* %pbi, %struct.rtx_def* %reg, %struct.rtx_def* %cond, %struct.rtx_def* %insn) #0 {
entry:
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %cond.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regno_first = alloca i32, align 4
  %regno_last = alloca i32, align 4
  %i = alloca i32, align 4
  %some_was_live = alloca i32, align 4
  %some_was_dead = alloca i32, align 4
  %some_not_set = alloca i32, align 4
  %needed_regno = alloca i32, align 4
  %blocknum = alloca i32, align 4
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %cond, %struct.rtx_def** %cond.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %regno_first, align 4
  store i32 %1, i32* %regno_last, align 4
  %2 = load i32, i32* %regno_first, align 4
  %cmp = icmp ult i32 %2, 53
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %regno_first, align 4
  %cmp1 = icmp uge i32 %3, 8
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, i32* %regno_first, align 4
  %cmp2 = icmp ule i32 %4, 15
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %5 = load i32, i32* %regno_first, align 4
  %cmp3 = icmp uge i32 %5, 21
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false.6

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %regno_first, align 4
  %cmp5 = icmp ule i32 %6, 28
  br i1 %cmp5, label %cond.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.4, %lor.lhs.false
  %7 = load i32, i32* %regno_first, align 4
  %cmp7 = icmp uge i32 %7, 45
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.10

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %8 = load i32, i32* %regno_first, align 4
  %cmp9 = icmp ule i32 %8, 52
  br i1 %cmp9, label %cond.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %9 = load i32, i32* %regno_first, align 4
  %cmp11 = icmp uge i32 %9, 29
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %10 = load i32, i32* %regno_first, align 4
  %cmp13 = icmp ule i32 %10, 36
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load = load i32, i32* %12, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx14 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %13 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %13, 5
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load16 = load i32, i32* %15, align 8
  %bf.lshr17 = lshr i32 %bf.load16, 16
  %bf.clear18 = and i32 %bf.lshr17, 255
  %idxprom19 = sext i32 %bf.clear18 to i64
  %arrayidx20 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom19
  %16 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %16, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %17 = phi i1 [ true, %cond.true ], [ %cmp21, %lor.rhs ]
  %cond22 = select i1 %17, i32 2, i32 1
  br label %cond.end.53

cond.false:                                       ; preds = %land.lhs.true.12, %lor.lhs.false.10
  %18 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load23 = load i32, i32* %19, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 16
  %bf.clear25 = and i32 %bf.lshr24, 255
  %cmp26 = icmp eq i32 %bf.clear25, 18
  br i1 %cmp26, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %cond.false
  %20 = load i32, i32* @target_flags, align 4
  %and = and i32 %20, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond28 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.51

cond.false.29:                                    ; preds = %cond.false
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load30 = load i32, i32* %22, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 16
  %bf.clear32 = and i32 %bf.lshr31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 24
  br i1 %cmp33, label %cond.true.34, label %cond.false.38

cond.true.34:                                     ; preds = %cond.false.29
  %23 = load i32, i32* @target_flags, align 4
  %and35 = and i32 %23, 33554432
  %tobool36 = icmp ne i32 %and35, 0
  %cond37 = select i1 %tobool36, i32 4, i32 6
  br label %cond.end

cond.false.38:                                    ; preds = %cond.false.29
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load39 = load i32, i32* %25, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 16
  %bf.clear41 = and i32 %bf.lshr40, 255
  %idxprom42 = sext i32 %bf.clear41 to i64
  %arrayidx43 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom42
  %26 = load i8, i8* %arrayidx43, align 1
  %conv = zext i8 %26 to i32
  %27 = load i32, i32* @target_flags, align 4
  %and44 = and i32 %27, 33554432
  %tobool45 = icmp ne i32 %and44, 0
  %cond46 = select i1 %tobool45, i32 8, i32 4
  %add = add nsw i32 %conv, %cond46
  %sub = sub nsw i32 %add, 1
  %28 = load i32, i32* @target_flags, align 4
  %and47 = and i32 %28, 33554432
  %tobool48 = icmp ne i32 %and47, 0
  %cond49 = select i1 %tobool48, i32 8, i32 4
  %div = sdiv i32 %sub, %cond49
  br label %cond.end

cond.end:                                         ; preds = %cond.false.38, %cond.true.34
  %cond50 = phi i32 [ %cond37, %cond.true.34 ], [ %div, %cond.false.38 ]
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.end, %cond.true.27
  %cond52 = phi i32 [ %cond28, %cond.true.27 ], [ %cond50, %cond.end ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %lor.end
  %cond54 = phi i32 [ %cond22, %lor.end ], [ %cond52, %cond.end.51 ]
  %sub55 = sub nsw i32 %cond54, 1
  %29 = load i32, i32* %regno_last, align 4
  %add56 = add i32 %29, %sub55
  store i32 %add56, i32* %regno_last, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.53, %entry
  store i32 0, i32* %some_was_dead, align 4
  store i32 0, i32* %some_was_live, align 4
  %30 = load i32, i32* %regno_first, align 4
  store i32 %30, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %regno_last, align 4
  %cmp57 = icmp ule i32 %31, %32
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %33, i32 0, i32 1
  %34 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live, align 8
  %35 = load i32, i32* %i, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %34, i32 %35)
  store i32 %call, i32* %needed_regno, align 4
  %36 = load i32, i32* %needed_regno, align 4
  %37 = load i32, i32* %some_was_live, align 4
  %or = or i32 %37, %36
  store i32 %or, i32* %some_was_live, align 4
  %38 = load i32, i32* %needed_regno, align 4
  %tobool59 = icmp ne i32 %38, 0
  %lnot = xor i1 %tobool59, true
  %lnot.ext = zext i1 %lnot to i32
  %39 = load i32, i32* %some_was_dead, align 4
  %or60 = or i32 %39, %lnot.ext
  store i32 %or60, i32* %some_was_dead, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %some_not_set, align 4
  %41 = load i32, i32* %regno_first, align 4
  store i32 %41, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.70, %for.end
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %regno_last, align 4
  %cmp62 = icmp ule i32 %42, %43
  br i1 %cmp62, label %for.body.64, label %for.end.72

for.body.64:                                      ; preds = %for.cond.61
  %44 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %new_set = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %44, i32 0, i32 2
  %45 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_set, align 8
  %46 = load i32, i32* %i, align 4
  %call65 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %45, i32 %46)
  %tobool66 = icmp ne i32 %call65, 0
  %lnot67 = xor i1 %tobool66, true
  %lnot.ext68 = zext i1 %lnot67 to i32
  %47 = load i32, i32* %some_not_set, align 4
  %or69 = or i32 %47, %lnot.ext68
  store i32 %or69, i32* %some_not_set, align 4
  br label %for.inc.70

for.inc.70:                                       ; preds = %for.body.64
  %48 = load i32, i32* %i, align 4
  %inc71 = add i32 %48, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.61

for.end.72:                                       ; preds = %for.cond.61
  %49 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %49, i32 0, i32 9
  %50 = load i32, i32* %flags, align 4
  %and73 = and i32 %50, 66
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %for.end.72
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %52 = load i32, i32* %regno_first, align 4
  %idxprom76 = zext i32 %52 to i64
  %53 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_next_use = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %53, i32 0, i32 3
  %54 = load %struct.rtx_def**, %struct.rtx_def*** %reg_next_use, align 8
  %arrayidx77 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %54, i64 %idxprom76
  store %struct.rtx_def* %51, %struct.rtx_def** %arrayidx77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %for.end.72
  %55 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags79 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %55, i32 0, i32 9
  %56 = load i32, i32* %flags79, align 4
  %and80 = and i32 %56, 4
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.163

if.then.82:                                       ; preds = %if.end.78
  %57 = load i32, i32* %regno_first, align 4
  %cmp83 = icmp ult i32 %57, 53
  br i1 %cmp83, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %if.then.82
  %58 = load i64, i64* @elim_reg_set, align 8
  %59 = load i32, i32* %regno_first, align 4
  %sh_prom = zext i32 %59 to i64
  %shl = shl i64 1, %sh_prom
  %and86 = and i64 %58, %shl
  %tobool87 = icmp ne i64 %and86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.then.94

land.lhs.true.88:                                 ; preds = %if.then.85
  %60 = load i32, i32* %regno_first, align 4
  %cmp89 = icmp eq i32 %60, 20
  br i1 %cmp89, label %if.end.104, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.88
  %61 = load i32, i32* %regno_first, align 4
  %cmp92 = icmp eq i32 %61, 16
  br i1 %cmp92, label %if.end.104, label %if.then.94

if.then.94:                                       ; preds = %lor.lhs.false.91, %if.then.85
  %62 = load i32, i32* %regno_first, align 4
  store i32 %62, i32* %i, align 4
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.101, %if.then.94
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %regno_last, align 4
  %cmp96 = icmp ule i32 %63, %64
  br i1 %cmp96, label %for.body.98, label %for.end.103

for.body.98:                                      ; preds = %for.cond.95
  %65 = load i32, i32* %i, align 4
  %idxprom99 = zext i32 %65 to i64
  %arrayidx100 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %idxprom99
  store i8 1, i8* %arrayidx100, align 1
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.98
  %66 = load i32, i32* %i, align 4
  %inc102 = add i32 %66, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.95

for.end.103:                                      ; preds = %for.cond.95
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %lor.lhs.false.91, %land.lhs.true.88
  br label %if.end.162

if.else:                                          ; preds = %if.then.82
  %67 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %bb = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %67, i32 0, i32 0
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 11
  %69 = load i32, i32* %index, align 4
  store i32 %69, i32* %blocknum, align 4
  %70 = load i32, i32* %regno_first, align 4
  %idxprom105 = zext i32 %70 to i64
  %71 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %71, i32 0, i32 4
  %reg106 = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx107 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg106, i32 0, i64 %idxprom105
  %72 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx107, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %72, i32 0, i32 9
  %73 = load i32, i32* %basic_block, align 4
  %cmp108 = icmp eq i32 %73, -1
  br i1 %cmp108, label %if.then.110, label %if.else.116

if.then.110:                                      ; preds = %if.else
  %74 = load i32, i32* %blocknum, align 4
  %75 = load i32, i32* %regno_first, align 4
  %idxprom111 = zext i32 %75 to i64
  %76 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data112 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %76, i32 0, i32 4
  %reg113 = bitcast %union.varray_data_tag* %data112 to [1 x %struct.reg_info_def*]*
  %arrayidx114 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg113, i32 0, i64 %idxprom111
  %77 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx114, align 8
  %basic_block115 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %77, i32 0, i32 9
  store i32 %74, i32* %basic_block115, align 4
  br label %if.end.131

if.else.116:                                      ; preds = %if.else
  %78 = load i32, i32* %regno_first, align 4
  %idxprom117 = zext i32 %78 to i64
  %79 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data118 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %79, i32 0, i32 4
  %reg119 = bitcast %union.varray_data_tag* %data118 to [1 x %struct.reg_info_def*]*
  %arrayidx120 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg119, i32 0, i64 %idxprom117
  %80 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx120, align 8
  %basic_block121 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %80, i32 0, i32 9
  %81 = load i32, i32* %basic_block121, align 4
  %82 = load i32, i32* %blocknum, align 4
  %cmp122 = icmp ne i32 %81, %82
  br i1 %cmp122, label %if.then.124, label %if.end.130

if.then.124:                                      ; preds = %if.else.116
  %83 = load i32, i32* %regno_first, align 4
  %idxprom125 = zext i32 %83 to i64
  %84 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data126 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %84, i32 0, i32 4
  %reg127 = bitcast %union.varray_data_tag* %data126 to [1 x %struct.reg_info_def*]*
  %arrayidx128 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg127, i32 0, i64 %idxprom125
  %85 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx128, align 8
  %basic_block129 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %85, i32 0, i32 9
  store i32 -2, i32* %basic_block129, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.124, %if.else.116
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.110
  %86 = load i32, i32* @optimize_size, align 4
  %tobool132 = icmp ne i32 %86, 0
  br i1 %tobool132, label %cond.true.137, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.end.131
  %87 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool134 = icmp ne i32 %87, 0
  br i1 %tobool134, label %land.lhs.true.135, label %cond.false.138

land.lhs.true.135:                                ; preds = %lor.lhs.false.133
  %88 = load i64, i64* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 13), align 8
  %tobool136 = icmp ne i64 %88, 0
  br i1 %tobool136, label %cond.false.138, label %cond.true.137

cond.true.137:                                    ; preds = %land.lhs.true.135, %if.end.131
  br label %cond.end.150

cond.false.138:                                   ; preds = %land.lhs.true.135, %lor.lhs.false.133
  %89 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %bb139 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %89, i32 0, i32 0
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %bb139, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %90, i32 0, i32 14
  %91 = load i32, i32* %frequency, align 4
  %mul = mul nsw i32 %91, 1000
  %div140 = sdiv i32 %mul, 10000
  %tobool141 = icmp ne i32 %div140, 0
  br i1 %tobool141, label %cond.true.142, label %cond.false.147

cond.true.142:                                    ; preds = %cond.false.138
  %92 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %bb143 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %92, i32 0, i32 0
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %bb143, align 8
  %frequency144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %93, i32 0, i32 14
  %94 = load i32, i32* %frequency144, align 4
  %mul145 = mul nsw i32 %94, 1000
  %div146 = sdiv i32 %mul145, 10000
  br label %cond.end.148

cond.false.147:                                   ; preds = %cond.false.138
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.147, %cond.true.142
  %cond149 = phi i32 [ %div146, %cond.true.142 ], [ 1, %cond.false.147 ]
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.end.148, %cond.true.137
  %cond151 = phi i32 [ 1000, %cond.true.137 ], [ %cond149, %cond.end.148 ]
  %95 = load i32, i32* %regno_first, align 4
  %idxprom152 = zext i32 %95 to i64
  %96 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data153 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %96, i32 0, i32 4
  %reg154 = bitcast %union.varray_data_tag* %data153 to [1 x %struct.reg_info_def*]*
  %arrayidx155 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg154, i32 0, i64 %idxprom152
  %97 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx155, align 8
  %freq = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %97, i32 0, i32 5
  %98 = load i32, i32* %freq, align 4
  %add156 = add nsw i32 %98, %cond151
  store i32 %add156, i32* %freq, align 4
  %99 = load i32, i32* %regno_first, align 4
  %idxprom157 = zext i32 %99 to i64
  %100 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data158 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %100, i32 0, i32 4
  %reg159 = bitcast %union.varray_data_tag* %data158 to [1 x %struct.reg_info_def*]*
  %arrayidx160 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg159, i32 0, i64 %idxprom157
  %101 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx160, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %101, i32 0, i32 4
  %102 = load i32, i32* %refs, align 4
  %inc161 = add nsw i32 %102, 1
  store i32 %inc161, i32* %refs, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %cond.end.150, %if.end.104
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.78
  %103 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags164 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %103, i32 0, i32 9
  %104 = load i32, i32* %flags164, align 4
  %and165 = and i32 %104, 5
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %land.lhs.true.167, label %if.end.239

land.lhs.true.167:                                ; preds = %if.end.163
  %105 = load i32, i32* %some_was_dead, align 4
  %tobool168 = icmp ne i32 %105, 0
  br i1 %tobool168, label %land.lhs.true.169, label %if.end.239

land.lhs.true.169:                                ; preds = %land.lhs.true.167
  %106 = load i32, i32* %some_not_set, align 4
  %tobool170 = icmp ne i32 %106, 0
  br i1 %tobool170, label %if.then.171, label %if.end.239

if.then.171:                                      ; preds = %land.lhs.true.169
  %107 = load i32, i32* %regno_first, align 4
  %108 = load i32, i32* %regno_last, align 4
  %cmp172 = icmp ne i32 %107, %108
  br i1 %cmp172, label %if.then.174, label %if.end.185

if.then.174:                                      ; preds = %if.then.171
  %109 = load i32, i32* %regno_first, align 4
  store i32 %109, i32* %i, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.182, %if.then.174
  %110 = load i32, i32* %i, align 4
  %111 = load i32, i32* %regno_last, align 4
  %cmp176 = icmp ule i32 %110, %111
  br i1 %cmp176, label %for.body.178, label %for.end.184

for.body.178:                                     ; preds = %for.cond.175
  %112 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %new_set179 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %112, i32 0, i32 2
  %113 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_set179, align 8
  %114 = load i32, i32* %i, align 4
  %call180 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %113, i32 %114)
  %115 = load i32, i32* %some_was_live, align 4
  %or181 = or i32 %115, %call180
  store i32 %or181, i32* %some_was_live, align 4
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body.178
  %116 = load i32, i32* %i, align 4
  %inc183 = add i32 %116, 1
  store i32 %inc183, i32* %i, align 4
  br label %for.cond.175

for.end.184:                                      ; preds = %for.cond.175
  br label %if.end.185

if.end.185:                                       ; preds = %for.end.184, %if.then.171
  %117 = load i32, i32* %some_was_live, align 4
  %tobool186 = icmp ne i32 %117, 0
  br i1 %tobool186, label %if.else.212, label %if.then.187

if.then.187:                                      ; preds = %if.end.185
  %118 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags188 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %118, i32 0, i32 9
  %119 = load i32, i32* %flags188, align 4
  %and189 = and i32 %119, 1
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %land.lhs.true.191, label %if.end.201

land.lhs.true.191:                                ; preds = %if.then.187
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %121 = load i32, i32* %regno_first, align 4
  %call192 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %120, i32 1, i32 %121)
  %tobool193 = icmp ne %struct.rtx_def* %call192, null
  br i1 %tobool193, label %if.end.201, label %if.then.194

if.then.194:                                      ; preds = %land.lhs.true.191
  %122 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call197 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 1, %struct.rtx_def* %122, %struct.rtx_def* %124)
  %125 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 6
  %rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**
  store %struct.rtx_def* %call197, %struct.rtx_def** %rtx200, align 8
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.194, %land.lhs.true.191, %if.then.187
  %126 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %flags202 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %126, i32 0, i32 9
  %127 = load i32, i32* %flags202, align 4
  %and203 = and i32 %127, 4
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then.205, label %if.end.211

if.then.205:                                      ; preds = %if.end.201
  %128 = load i32, i32* %regno_first, align 4
  %idxprom206 = zext i32 %128 to i64
  %129 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data207 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %129, i32 0, i32 4
  %reg208 = bitcast %union.varray_data_tag* %data207 to [1 x %struct.reg_info_def*]*
  %arrayidx209 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg208, i32 0, i64 %idxprom206
  %130 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx209, align 8
  %deaths = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %130, i32 0, i32 6
  %131 = load i32, i32* %deaths, align 4
  %inc210 = add nsw i32 %131, 1
  store i32 %inc210, i32* %deaths, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.205, %if.end.201
  br label %if.end.238

if.else.212:                                      ; preds = %if.end.185
  %132 = load i32, i32* %regno_first, align 4
  store i32 %132, i32* %i, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.235, %if.else.212
  %133 = load i32, i32* %i, align 4
  %134 = load i32, i32* %regno_last, align 4
  %cmp214 = icmp ule i32 %133, %134
  br i1 %cmp214, label %for.body.216, label %for.end.237

for.body.216:                                     ; preds = %for.cond.213
  %135 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live217 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %135, i32 0, i32 1
  %136 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live217, align 8
  %137 = load i32, i32* %i, align 4
  %call218 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %136, i32 %137)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.end.234, label %land.lhs.true.220

land.lhs.true.220:                                ; preds = %for.body.216
  %138 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %139 = load i32, i32* %i, align 4
  %call221 = call i32 @dead_or_set_regno_p(%struct.rtx_def* %138, i32 %139)
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.end.234, label %if.then.223

if.then.223:                                      ; preds = %land.lhs.true.220
  %140 = load i32, i32* %i, align 4
  %idxprom224 = zext i32 %140 to i64
  %arrayidx225 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom224
  %141 = load i32, i32* %arrayidx225, align 4
  %142 = load i32, i32* %i, align 4
  %call226 = call %struct.rtx_def* @gen_rtx_REG(i32 %141, i32 %142)
  %143 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 6
  %rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx229, align 8
  %call230 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 1, %struct.rtx_def* %call226, %struct.rtx_def* %144)
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 6
  %rtx233 = bitcast %union.rtunion_def* %arrayidx232 to %struct.rtx_def**
  store %struct.rtx_def* %call230, %struct.rtx_def** %rtx233, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.223, %land.lhs.true.220, %for.body.216
  br label %for.inc.235

for.inc.235:                                      ; preds = %if.end.234
  %146 = load i32, i32* %i, align 4
  %inc236 = add i32 %146, 1
  store i32 %inc236, i32* %i, align 4
  br label %for.cond.213

for.end.237:                                      ; preds = %for.cond.213
  br label %if.end.238

if.end.238:                                       ; preds = %for.end.237, %if.end.211
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %land.lhs.true.169, %land.lhs.true.167, %if.end.163
  %147 = load i32, i32* %regno_first, align 4
  store i32 %147, i32* %i, align 4
  br label %for.cond.240

for.cond.240:                                     ; preds = %for.inc.245, %if.end.239
  %148 = load i32, i32* %i, align 4
  %149 = load i32, i32* %regno_last, align 4
  %cmp241 = icmp ule i32 %148, %149
  br i1 %cmp241, label %for.body.243, label %for.end.247

for.body.243:                                     ; preds = %for.cond.240
  %150 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_live244 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %150, i32 0, i32 1
  %151 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %reg_live244, align 8
  %152 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %151, i32 %152)
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.243
  %153 = load i32, i32* %i, align 4
  %inc246 = add i32 %153, 1
  store i32 %inc246, i32* %i, align 4
  br label %for.cond.240

for.end.247:                                      ; preds = %for.cond.240
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.propagate_block_info* @init_propagate_block_info(%struct.basic_block_def* %bb, %struct.bitmap_head_def* %live, %struct.bitmap_head_def* %local_set, %struct.bitmap_head_def* %cond_local_set, i32 %flags) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %live.addr = alloca %struct.bitmap_head_def*, align 8
  %local_set.addr = alloca %struct.bitmap_head_def*, align 8
  %cond_local_set.addr = alloca %struct.bitmap_head_def*, align 8
  %flags.addr = alloca i32, align 4
  %pbi = alloca %struct.propagate_block_info*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %mem = alloca %struct.rtx_def*, align 8
  %canon_mem = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.bitmap_head_def* %live, %struct.bitmap_head_def** %live.addr, align 8
  store %struct.bitmap_head_def* %local_set, %struct.bitmap_head_def** %local_set.addr, align 8
  store %struct.bitmap_head_def* %cond_local_set, %struct.bitmap_head_def** %cond_local_set.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call noalias i8* @xmalloc(i64 72)
  %0 = bitcast i8* %call to %struct.propagate_block_info*
  store %struct.propagate_block_info* %0, %struct.propagate_block_info** %pbi, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %2 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %bb1 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %2, i32 0, i32 0
  store %struct.basic_block_def* %1, %struct.basic_block_def** %bb1, align 8
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live.addr, align 8
  %4 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %reg_live = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %4, i32 0, i32 1
  store %struct.bitmap_head_def* %3, %struct.bitmap_head_def** %reg_live, align 8
  %5 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %mem_set_list = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %5, i32 0, i32 4
  store %struct.rtx_def* null, %struct.rtx_def** %mem_set_list, align 8
  %6 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %mem_set_list_len = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %6, i32 0, i32 7
  store i32 0, i32* %mem_set_list_len, align 4
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %local_set.addr, align 8
  %8 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %local_set2 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %8, i32 0, i32 5
  store %struct.bitmap_head_def* %7, %struct.bitmap_head_def** %local_set2, align 8
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %cond_local_set.addr, align 8
  %10 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %cond_local_set3 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %10, i32 0, i32 6
  store %struct.bitmap_head_def* %9, %struct.bitmap_head_def** %cond_local_set3, align 8
  %11 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %cc0_live = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %11, i32 0, i32 8
  store i32 0, i32* %cc0_live, align 4
  %12 = load i32, i32* %flags.addr, align 4
  %13 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %flags4 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %13, i32 0, i32 9
  store i32 %12, i32* %flags4, align 4
  %14 = load i32, i32* %flags.addr, align 4
  %and = and i32 %14, 66
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i32 @max_reg_num()
  %conv = sext i32 %call5 to i64
  %call6 = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %15 = bitcast i8* %call6 to %struct.rtx_def**
  %16 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %reg_next_use = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %16, i32 0, i32 3
  store %struct.rtx_def** %15, %struct.rtx_def*** %reg_next_use, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %reg_next_use7 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %17, i32 0, i32 3
  store %struct.rtx_def** null, %struct.rtx_def*** %reg_next_use7, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call8 = call noalias i8* @xmalloc(i64 24)
  %18 = bitcast i8* %call8 to %struct.bitmap_head_def*
  %call9 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %18)
  %19 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %new_set = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %19, i32 0, i32 2
  store %struct.bitmap_head_def* %call9, %struct.bitmap_head_def** %new_set, align 8
  %20 = load i32, i32* @optimize, align 4
  %tobool10 = icmp ne i32 %20, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.126

land.lhs.true:                                    ; preds = %if.end
  %21 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common11 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 23
  br i1 %cmp, label %land.lhs.true.13, label %land.lhs.true.20

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %23 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common14 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %type15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %type15, align 8
  %type16 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 6
  %bf.load17 = load i32, i32* %no_force_blk_flag, align 4
  %bf.lshr = lshr i32 %bf.load17, 17
  %bf.clear18 = and i32 %bf.lshr, 1
  %tobool19 = icmp ne i32 %bf.clear18, 0
  br i1 %tobool19, label %if.end.126, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %land.lhs.true.13, %land.lhs.true
  %25 = load i32, i32* %flags.addr, align 4
  %and21 = and i32 %25, 16
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.126

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 5
  %27 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %cmp24 = icmp eq %struct.edge_def* %27, null
  br i1 %cmp24, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.23
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 5
  %29 = load %struct.edge_def*, %struct.edge_def** %succ26, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 1
  %30 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp27 = icmp eq %struct.edge_def* %30, null
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.126

land.lhs.true.29:                                 ; preds = %lor.lhs.false
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 5
  %32 = load %struct.edge_def*, %struct.edge_def** %succ30, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 3
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp31 = icmp eq %struct.basic_block_def* %33, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.126

land.lhs.true.33:                                 ; preds = %land.lhs.true.29
  %34 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_eh_return = getelementptr inbounds %struct.function, %struct.function* %34, i32 0, i32 56
  %35 = bitcast i24* %calls_eh_return to i32*
  %bf.load34 = load i32, i32* %35, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 7
  %bf.clear36 = and i32 %bf.lshr35, 1
  %tobool37 = icmp ne i32 %bf.clear36, 0
  br i1 %tobool37, label %if.end.126, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true.33, %land.lhs.true.23
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i32 0, i32 1
  %37 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.38
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 0
  %40 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp39 = icmp ne %struct.rtx_def* %38, %40
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load41 = load i32, i32* %42, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 32
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.122

land.lhs.true.45:                                 ; preds = %for.body
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load46 = load i32, i32* %44, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %idxprom = sext i32 %bf.clear47 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %45 = load i8, i8* %arrayidx, align 1
  %conv48 = sext i8 %45 to i32
  %cmp49 = icmp eq i32 %conv48, 105
  br i1 %cmp49, label %cond.true, label %cond.false.64

cond.true:                                        ; preds = %land.lhs.true.45
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load52 = load i32, i32* %48, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 47
  br i1 %cmp54, label %cond.true.56, label %cond.false

cond.true.56:                                     ; preds = %cond.true
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 3
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 3
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %call63 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %51, %struct.rtx_def* %53)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.56
  %cond = phi %struct.rtx_def* [ %50, %cond.true.56 ], [ %call63, %cond.false ]
  br label %cond.end.65

cond.false.64:                                    ; preds = %land.lhs.true.45
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.end
  %cond66 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.64 ]
  store %struct.rtx_def* %cond66, %struct.rtx_def** %set, align 8
  %tobool67 = icmp ne %struct.rtx_def* %cond66, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.122

land.lhs.true.68:                                 ; preds = %cond.end.65
  %54 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load72 = load i32, i32* %56, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 66
  br i1 %cmp74, label %if.then.76, label %if.end.122

if.then.76:                                       ; preds = %land.lhs.true.68
  %57 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %mem, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %call80 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %59)
  store %struct.rtx_def* %call80, %struct.rtx_def** %canon_mem, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %canon_mem, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load81 = load i32, i32* %61, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 26
  %bf.clear83 = and i32 %bf.lshr82, 1
  %tobool84 = icmp ne i32 %bf.clear83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.76
  br label %for.inc

if.end.86:                                        ; preds = %if.then.76
  %62 = load %struct.rtx_def*, %struct.rtx_def** %canon_mem, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp90 = icmp eq %struct.rtx_def* %63, %64
  br i1 %cmp90, label %if.then.120, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.end.86
  %65 = load %struct.rtx_def*, %struct.rtx_def** %canon_mem, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load96 = load i32, i32* %67, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 75
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.121

land.lhs.true.100:                                ; preds = %lor.lhs.false.92
  %68 = load %struct.rtx_def*, %struct.rtx_def** %canon_mem, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp107 = icmp eq %struct.rtx_def* %70, %71
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.121

land.lhs.true.109:                                ; preds = %land.lhs.true.100
  %72 = load %struct.rtx_def*, %struct.rtx_def** %canon_mem, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 1
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load116 = load i32, i32* %75, align 8
  %bf.clear117 = and i32 %bf.load116, 65535
  %cmp118 = icmp eq i32 %bf.clear117, 54
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %land.lhs.true.109, %if.end.86
  %76 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %canon_mem, align 8
  call void @add_to_mem_set_list(%struct.propagate_block_info* %76, %struct.rtx_def* %77)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.120, %land.lhs.true.109, %land.lhs.true.100, %lor.lhs.false.92
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %land.lhs.true.68, %cond.end.65, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.122, %if.then.85
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 1
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.126

if.end.126:                                       ; preds = %for.end, %land.lhs.true.33, %land.lhs.true.29, %lor.lhs.false, %land.lhs.true.20, %land.lhs.true.13, %if.end
  %80 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  ret %struct.propagate_block_info* %80
}

declare noalias i8* @xmalloc(i64) #1

declare noalias i8* @xcalloc(i64, i64) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @canon_rtx(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @add_to_mem_set_list(%struct.propagate_block_info* %pbi, %struct.rtx_def* %mem) #0 {
entry:
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %mem.addr = alloca %struct.rtx_def*, align 8
  %i = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.rtx_def*, align 8
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 51
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.37

if.end:                                           ; preds = %entry
  %2 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %2, i32 0, i32 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %mem_set_list, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %e, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %e, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %8, %struct.rtx_def* %10)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.end.26

if.then.8:                                        ; preds = %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load9 = load i32, i32* %12, align 8
  %bf.lshr10 = lshr i32 %bf.load9, 16
  %bf.clear11 = and i32 %bf.lshr10, 255
  %idxprom = sext i32 %bf.clear11 to i64
  %arrayidx12 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx12, align 1
  %conv = zext i8 %13 to i32
  %14 = load %struct.rtx_def*, %struct.rtx_def** %e, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load13 = load i32, i32* %15, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 16
  %bf.clear15 = and i32 %bf.lshr14, 255
  %idxprom16 = sext i32 %bf.clear15 to i64
  %arrayidx17 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom16
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %16 to i32
  %cmp19 = icmp sgt i32 %conv, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.then.8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  store %struct.rtx_def* %17, %struct.rtx_def** %rtx24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.then.8
  br label %if.end.37

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %19 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list_len = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %21, i32 0, i32 7
  %22 = load i32, i32* %mem_set_list_len, align 4
  %cmp30 = icmp slt i32 %22, 100
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %for.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %24 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list33 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %24, i32 0, i32 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %mem_set_list33, align 8
  %call34 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %23, %struct.rtx_def* %25)
  %26 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list35 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %26, i32 0, i32 4
  store %struct.rtx_def* %call34, %struct.rtx_def** %mem_set_list35, align 8
  %27 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list_len36 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %27, i32 0, i32 7
  %28 = load i32, i32* %mem_set_list_len36, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %mem_set_list_len36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then, %if.end.25, %if.then.32, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_propagate_block_info(%struct.propagate_block_info* %pbi) #0 {
entry:
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  %0 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %0, i32 0, i32 4
  call void @free_EXPR_LIST_list(%struct.rtx_def** %mem_set_list)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %new_set = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %1, i32 0, i32 2
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_set, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %new_set1 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %3, i32 0, i32 2
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_set1, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %4)
  %5 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %new_set2 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %5, i32 0, i32 2
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_set2, align 8
  %7 = bitcast %struct.bitmap_head_def* %6 to i8*
  call void @free(i8* %7) #3
  %8 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %new_set3 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %8, i32 0, i32 2
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %new_set3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_next_use = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %9, i32 0, i32 3
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %reg_next_use, align 8
  %tobool4 = icmp ne %struct.rtx_def** %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %do.end
  %11 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %reg_next_use6 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %11, i32 0, i32 3
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %reg_next_use6, align 8
  %13 = bitcast %struct.rtx_def** %12 to i8*
  call void @free(i8* %13) #3
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %do.end
  %14 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %15 = bitcast %struct.propagate_block_info* %14 to i8*
  call void @free(i8* %15) #3
  ret void
}

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @regno_uninitialized(i32 %regno) #0 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %cmp1 = icmp ult i32 %1, 53
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %regno.addr, align 4
  %idxprom3 = zext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %5 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %regno.addr, align 4
  %call = call zeroext i1 @ix86_function_arg_regno_p(i32 %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.7, %lor.lhs.false
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 0
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx9, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 8
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %10 = load i32, i32* %regno.addr, align 4
  %call10 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %9, i32 %10)
  store i32 %call10, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare zeroext i1 @ix86_function_arg_regno_p(i32) #1

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @regno_clobbered_at_setjmp(i32 %regno) #0 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %3 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %3, i32 0, i32 3
  %4 = load i32, i32* %sets, align 4
  %cmp1 = icmp sgt i32 %4, 1
  br i1 %cmp1, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data2 to [1 x %struct.basic_block_def*]*
  %arrayidx3 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 0
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx3, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 8
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %8 = load i32, i32* %regno.addr, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %7, i32 %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** @regs_live_at_setjmp, align 8
  %10 = load i32, i32* %regno.addr, align 4
  %call4 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %9, i32 %10)
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %11 = phi i1 [ false, %lor.lhs.false ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @find_use_as_address(%struct.rtx_def* %x, %struct.rtx_def* %reg, i64 %plusconst) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %plusconst.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %value = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i64 %plusconst, i64* %plusconst.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %fmt, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %value, align 8
  %4 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %4, 66
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx1 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx1 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %cmp2 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %8 = load i64, i64* %plusconst.addr, align 8
  %cmp4 = icmp eq i64 %8, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %10 = load i32, i32* %code, align 4
  %cmp5 = icmp eq i32 %10, 66
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.42

land.lhs.true.6:                                  ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load10 = load i32, i32* %13, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 75
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.42

land.lhs.true.13:                                 ; preds = %land.lhs.true.6
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %cmp20 = icmp eq %struct.rtx_def* %16, %17
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.42

land.lhs.true.21:                                 ; preds = %land.lhs.true.13
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load28 = load i32, i32* %21, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 54
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.42

land.lhs.true.31:                                 ; preds = %land.lhs.true.21
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx39 to i64*
  %25 = load i64, i64* %rtwint, align 8
  %26 = load i64, i64* %plusconst.addr, align 8
  %cmp40 = icmp eq i64 %25, %26
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.31
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.31, %land.lhs.true.21, %land.lhs.true.13, %land.lhs.true.6, %if.end
  %28 = load i32, i32* %code, align 4
  %cmp43 = icmp eq i32 %28, 132
  br i1 %cmp43, label %if.then.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.42
  %29 = load i32, i32* %code, align 4
  %cmp44 = icmp eq i32 %29, 133
  br i1 %cmp44, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %lor.lhs.false, %if.end.42
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call = call %struct.rtx_def* @find_use_as_address(%struct.rtx_def* %31, %struct.rtx_def* %32, i64 0)
  %cmp49 = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.45
  store %struct.rtx_def* inttoptr (i64 1 to %struct.rtx_def*), %struct.rtx_def** %retval
  br label %return

if.end.51:                                        ; preds = %if.then.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %lor.lhs.false
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %cmp53 = icmp eq %struct.rtx_def* %33, %34
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.52
  store %struct.rtx_def* inttoptr (i64 1 to %struct.rtx_def*), %struct.rtx_def** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.52
  %35 = load i32, i32* %code, align 4
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom56
  %36 = load i8, i8* %arrayidx57, align 1
  %conv = zext i8 %36 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %if.end.55
  %37 = load i32, i32* %i, align 4
  %cmp58 = icmp sge i32 %37, 0
  br i1 %cmp58, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %38 to i64
  %39 = load i8*, i8** %fmt, align 8
  %arrayidx61 = getelementptr inbounds i8, i8* %39, i64 %idxprom60
  %40 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %40 to i32
  %cmp63 = icmp eq i32 %conv62, 101
  br i1 %cmp63, label %if.then.65, label %if.else.79

if.then.65:                                       ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 %idxprom66
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %45 = load i64, i64* %plusconst.addr, align 8
  %call70 = call %struct.rtx_def* @find_use_as_address(%struct.rtx_def* %43, %struct.rtx_def* %44, i64 %45)
  store %struct.rtx_def* %call70, %struct.rtx_def** %tem, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %cmp71 = icmp eq %struct.rtx_def* %46, null
  br i1 %cmp71, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %if.then.65
  %47 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %value, align 8
  br label %if.end.78

if.else:                                          ; preds = %if.then.65
  %48 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp74 = icmp ne %struct.rtx_def* %48, null
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.else
  store %struct.rtx_def* inttoptr (i64 1 to %struct.rtx_def*), %struct.rtx_def** %retval
  br label %return

if.end.77:                                        ; preds = %if.else
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.73
  br label %if.end.111

if.else.79:                                       ; preds = %for.body
  %49 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %49 to i64
  %50 = load i8*, i8** %fmt, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %50, i64 %idxprom80
  %51 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %51 to i32
  %cmp83 = icmp eq i32 %conv82, 69
  br i1 %cmp83, label %if.then.85, label %if.end.110

if.then.85:                                       ; preds = %if.else.79
  %52 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %52 to i64
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 %idxprom86
  %rtvec = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtvec_def**
  %54 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %54, i32 0, i32 0
  %55 = load i32, i32* %num_elem, align 4
  %sub89 = sub nsw i32 %55, 1
  store i32 %sub89, i32* %j, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc, %if.then.85
  %56 = load i32, i32* %j, align 4
  %cmp91 = icmp sge i32 %56, 0
  br i1 %cmp91, label %for.body.93, label %for.end

for.body.93:                                      ; preds = %for.cond.90
  %57 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %57 to i64
  %58 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %58 to i64
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 %idxprom95
  %rtvec98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtvec_def**
  %60 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec98, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %60, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom94
  %61 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx99, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %63 = load i64, i64* %plusconst.addr, align 8
  %call100 = call %struct.rtx_def* @find_use_as_address(%struct.rtx_def* %61, %struct.rtx_def* %62, i64 %63)
  store %struct.rtx_def* %call100, %struct.rtx_def** %tem, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %cmp101 = icmp eq %struct.rtx_def* %64, null
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %for.body.93
  %65 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %65, %struct.rtx_def** %value, align 8
  br label %if.end.109

if.else.104:                                      ; preds = %for.body.93
  %66 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp105 = icmp ne %struct.rtx_def* %66, null
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.else.104
  store %struct.rtx_def* inttoptr (i64 1 to %struct.rtx_def*), %struct.rtx_def** %retval
  br label %return

if.end.108:                                       ; preds = %if.else.104
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.103
  br label %for.inc

for.inc:                                          ; preds = %if.end.109
  %67 = load i32, i32* %j, align 4
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.90

for.end:                                          ; preds = %for.cond.90
  br label %if.end.110

if.end.110:                                       ; preds = %for.end, %if.else.79
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.78
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %68 = load i32, i32* %i, align 4
  %dec113 = add nsw i32 %68, -1
  store i32 %dec113, i32* %i, align 4
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %69 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.114, %if.then.107, %if.then.76, %if.then.54, %if.then.50, %if.then.41, %if.then
  %70 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %70
}

; Function Attrs: nounwind uwtable
define void @dump_regset(%struct.bitmap_head_def* %r, %struct._IO_FILE* %outf) #0 {
entry:
  %r.addr = alloca %struct.bitmap_head_def*, align 8
  %outf.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store %struct.bitmap_head_def* %r, %struct.bitmap_head_def** %r.addr, align 8
  store %struct._IO_FILE* %outf, %struct._IO_FILE** %outf.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %r.addr, align 8
  %cmp = icmp eq %struct.bitmap_head_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %do.end

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %r.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %2, i32 0, i32 0
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %3, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp1 = icmp ne %struct.bitmap_element_def* %4, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i32 0, i32 2
  %6 = load i32, i32* %indx, align 4
  %7 = load i32, i32* %indx_, align 4
  %cmp2 = icmp ult i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i32 0, i32 0
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %10, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp3 = icmp ne %struct.bitmap_element_def* %11, null
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %while.end
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i32 0, i32 2
  %13 = load i32, i32* %indx4, align 4
  %14 = load i32, i32* %indx_, align 4
  %cmp5 = icmp ne i32 %13, %14
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %if.end.7
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp8 = icmp ne %struct.bitmap_element_def* %15, null
  br i1 %cmp8, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.35, %for.body
  %16 = load i32, i32* %word_num_, align 4
  %cmp10 = icmp ult i32 %16, 2
  br i1 %cmp10, label %for.body.11, label %for.end.37

for.body.11:                                      ; preds = %for.cond.9
  %17 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %18, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %19 = load i64, i64* %arrayidx, align 8
  store i64 %19, i64* %word_, align 8
  %20 = load i64, i64* %word_, align 8
  %cmp12 = icmp ne i64 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.end.34

if.then.13:                                       ; preds = %for.body.11
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.then.13
  %21 = load i32, i32* %bit_num_, align 4
  %cmp15 = icmp ult i32 %21, 64
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %22 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %22 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %23 = load i64, i64* %word_, align 8
  %24 = load i64, i64* %mask_, align 8
  %and = and i64 %23, %24
  %cmp17 = icmp ne i64 %and, 0
  br i1 %cmp17, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %for.body.16
  %25 = load i64, i64* %mask_, align 8
  %neg = xor i64 %25, -1
  %26 = load i64, i64* %word_, align 8
  %and19 = and i64 %26, %neg
  store i64 %and19, i64* %word_, align 8
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %27, i32 0, i32 2
  %28 = load i32, i32* %indx20, align 4
  %mul = mul i32 %28, 128
  %29 = load i32, i32* %word_num_, align 4
  %mul21 = mul i32 %29, 64
  %add = add i32 %mul, %mul21
  %30 = load i32, i32* %bit_num_, align 4
  %add22 = add i32 %add, %30
  store i32 %add22, i32* %i, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %32 = load i32, i32* %i, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %32)
  %33 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %33, 53
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.18
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %outf.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom26
  %36 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* %36)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.18
  %37 = load i64, i64* %word_, align 8
  %cmp30 = icmp eq i64 %37, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  br label %for.end

if.end.32:                                        ; preds = %if.end.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %38 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.14

for.end:                                          ; preds = %if.then.31, %for.cond.14
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %for.body.11
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %39 = load i32, i32* %word_num_, align 4
  %inc36 = add i32 %39, 1
  store i32 %inc36, i32* %word_num_, align 4
  br label %for.cond.9

for.end.37:                                       ; preds = %for.cond.9
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %40 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next39 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %40, i32 0, i32 0
  %41 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next39, align 8
  store %struct.bitmap_element_def* %41, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %if.then, %for.end.40
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @debug_regset(%struct.bitmap_head_def* %r) #0 {
entry:
  %r.addr = alloca %struct.bitmap_head_def*, align 8
  store %struct.bitmap_head_def* %r, %struct.bitmap_head_def** %r.addr, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %r.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @dump_regset(%struct.bitmap_head_def* %0, %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %2)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @recompute_reg_usage(%struct.rtx_def* %f, i32 %loop_step) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %loop_step.addr = alloca i32, align 4
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 %loop_step, i32* %loop_step.addr, align 4
  call void @allocate_reg_life_data()
  call void @update_life_info(%struct.simple_bitmap_def* null, i32 0, i32 4)
  ret void
}

declare void @free_EXPR_LIST_node(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @reg_set_to_hard_reg_set(i64* %to, %struct.bitmap_head_def* %from) #0 {
entry:
  %to.addr = alloca i64*, align 8
  %from.addr = alloca %struct.bitmap_head_def*, align 8
  %i = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store i64* %to, i64** %to.addr, align 8
  store %struct.bitmap_head_def* %from, %struct.bitmap_head_def** %from.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %from.addr, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %0, i32 0, i32 0
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp = icmp ne %struct.bitmap_element_def* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %3, i32 0, i32 2
  %4 = load i32, i32* %indx, align 4
  %5 = load i32, i32* %indx_, align 4
  %cmp1 = icmp ult i32 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i32 0, i32 0
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %8, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp2 = icmp ne %struct.bitmap_element_def* %9, null
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %10, i32 0, i32 2
  %11 = load i32, i32* %indx3, align 4
  %12 = load i32, i32* %indx_, align 4
  %cmp4 = icmp ne i32 %11, %12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp5 = icmp ne %struct.bitmap_element_def* %13, null
  br i1 %cmp5, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.30, %for.body
  %14 = load i32, i32* %word_num_, align 4
  %cmp7 = icmp ult i32 %14, 2
  br i1 %cmp7, label %for.body.8, label %for.end.32

for.body.8:                                       ; preds = %for.cond.6
  %15 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %16, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom
  %17 = load i64, i64* %arrayidx, align 8
  store i64 %17, i64* %word_, align 8
  %18 = load i64, i64* %word_, align 8
  %cmp9 = icmp ne i64 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.end.29

if.then.10:                                       ; preds = %for.body.8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then.10
  %19 = load i32, i32* %bit_num_, align 4
  %cmp12 = icmp ult i32 %19, 64
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %20 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %21 = load i64, i64* %word_, align 8
  %22 = load i64, i64* %mask_, align 8
  %and = and i64 %21, %22
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %for.body.13
  %23 = load i64, i64* %mask_, align 8
  %neg = xor i64 %23, -1
  %24 = load i64, i64* %word_, align 8
  %and16 = and i64 %24, %neg
  store i64 %and16, i64* %word_, align 8
  %25 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %25, i32 0, i32 2
  %26 = load i32, i32* %indx17, align 4
  %mul = mul i32 %26, 128
  %27 = load i32, i32* %word_num_, align 4
  %mul18 = mul i32 %27, 64
  %add = add i32 %mul, %mul18
  %28 = load i32, i32* %bit_num_, align 4
  %add19 = add i32 %add, %28
  store i32 %add19, i32* %i, align 4
  %29 = load i32, i32* %i, align 4
  %cmp20 = icmp sge i32 %29, 53
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.15
  br label %do.end

if.end.22:                                        ; preds = %if.then.15
  %30 = load i32, i32* %i, align 4
  %sh_prom23 = zext i32 %30 to i64
  %shl24 = shl i64 1, %sh_prom23
  %31 = load i64*, i64** %to.addr, align 8
  %32 = load i64, i64* %31, align 8
  %or = or i64 %32, %shl24
  store i64 %or, i64* %31, align 8
  %33 = load i64, i64* %word_, align 8
  %cmp25 = icmp eq i64 %33, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.22
  br label %for.end

if.end.27:                                        ; preds = %if.end.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %34 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.11

for.end:                                          ; preds = %if.then.26, %for.cond.11
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %for.body.8
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %35 = load i32, i32* %word_num_, align 4
  %inc31 = add i32 %35, 1
  store i32 %inc31, i32* %word_num_, align 4
  br label %for.cond.6

for.end.32:                                       ; preds = %for.cond.6
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.32
  %36 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next34 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %36, i32 0, i32 0
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next34, align 8
  store %struct.bitmap_element_def* %37, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %if.then.21, %for.end.35
  ret void
}

declare i32 @bitmap_equal_p(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

declare void @debug_bitmap_file(%struct._IO_FILE*, %struct.bitmap_head_def*) #1

declare void @dump_bb(%struct.basic_block_def*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @verify_wide_reg(i32 %regno, %struct.basic_block_def* %bb) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %head = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %r = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head1, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %head, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %end, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.16
  %4 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %8 = bitcast i32* %regno.addr to i8*
  %call = call i32 @for_each_rtx(%struct.rtx_def** %rtx, i32 (%struct.rtx_def**, i8*)* @verify_wide_reg_1, i8* %8)
  store i32 %call, i32* %r, align 4
  %9 = load i32, i32* %r, align 4
  %cmp5 = icmp eq i32 %9, 1
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  ret void

if.end:                                           ; preds = %if.then
  %10 = load i32, i32* %r, align 4
  %cmp8 = icmp eq i32 %10, 2
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  br label %while.end

if.end.11:                                        ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %while.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp13 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %while.end

if.end.16:                                        ; preds = %if.end.12
  %13 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 2
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %head, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.15, %if.then.10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %15, null
  br i1 %tobool, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %while.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %17 = load i32, i32* %regno.addr, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 %17)
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_bb(%struct.basic_block_def* %18, %struct._IO_FILE* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %while.end
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 557, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.verify_wide_reg, i32 0, i32 0)) #5
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @verify_wide_reg_1(%struct.rtx_def** %px, i8* %pregno) #0 {
entry:
  %retval = alloca i32, align 4
  %px.addr = alloca %struct.rtx_def**, align 8
  %pregno.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  store %struct.rtx_def** %px, %struct.rtx_def*** %px.addr, align 8
  store i8* %pregno, i8** %pregno.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load i8*, i8** %pregno.addr, align 8
  %3 = bitcast i8* %2 to i32*
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %regno, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtuint, align 4
  %9 = load i32, i32* %regno, align 4
  %cmp1 = icmp eq i32 %8, %9
  br i1 %cmp1, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load2 = load i32, i32* %11, align 8
  %bf.lshr = lshr i32 %bf.load2, 16
  %bf.clear3 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear3 to i64
  %arrayidx4 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %12 = load i16, i16* %arrayidx4, align 2
  %conv = zext i16 %12 to i32
  %13 = load i32, i32* @target_flags, align 4
  %and = and i32 %13, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %cmp5 = icmp sle i32 %conv, %cond
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  store i32 2, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.end, %if.then.7
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @notice_stack_pointer_modification_1(%struct.rtx_def* %x, %struct.rtx_def* %pat, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 66
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom = sext i32 %bf.clear3 to i64
  %arrayidx4 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 97
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp14 = icmp eq %struct.rtx_def* %10, %11
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7, %entry
  store i32 0, i32* @current_function_sp_is_unchanging, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.7, %land.lhs.true, %lor.lhs.false
  ret void
}

declare i32 @ix86_frame_pointer_required() #1

; Function Attrs: nounwind uwtable
define internal void @mark_reg(%struct.rtx_def* %reg, i8* %xset) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %xset.addr = alloca i8*, align 8
  %set = alloca %struct.bitmap_head_def*, align 8
  %regno = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i8* %xset, i8** %xset.addr, align 8
  %0 = load i8*, i8** %xset.addr, align 8
  %1 = bitcast i8* %0 to %struct.bitmap_head_def*
  store %struct.bitmap_head_def* %1, %struct.bitmap_head_def** %set, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %regno, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 51
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 918, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__FUNCTION__.mark_reg, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set, align 8
  %7 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %7)
  %8 = load i32, i32* %regno, align 4
  %cmp1 = icmp slt i32 %8, 53
  br i1 %cmp1, label %if.then.2, label %if.end.62

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %regno, align 4
  %cmp3 = icmp sge i32 %9, 8
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.2
  %10 = load i32, i32* %regno, align 4
  %cmp4 = icmp sle i32 %10, 15
  br i1 %cmp4, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.2
  %11 = load i32, i32* %regno, align 4
  %cmp5 = icmp sge i32 %11, 21
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false.8

land.lhs.true.6:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %regno, align 4
  %cmp7 = icmp sle i32 %12, 28
  br i1 %cmp7, label %cond.true, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true.6, %lor.lhs.false
  %13 = load i32, i32* %regno, align 4
  %cmp9 = icmp sge i32 %13, 45
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.12

land.lhs.true.10:                                 ; preds = %lor.lhs.false.8
  %14 = load i32, i32* %regno, align 4
  %cmp11 = icmp sle i32 %14, 52
  br i1 %cmp11, label %cond.true, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.10, %lor.lhs.false.8
  %15 = load i32, i32* %regno, align 4
  %cmp13 = icmp sge i32 %15, 29
  br i1 %cmp13, label %land.lhs.true.14, label %cond.false

land.lhs.true.14:                                 ; preds = %lor.lhs.false.12
  %16 = load i32, i32* %regno, align 4
  %cmp15 = icmp sle i32 %16, 36
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load16 = load i32, i32* %18, align 8
  %bf.lshr17 = lshr i32 %bf.load16, 16
  %bf.clear18 = and i32 %bf.lshr17, 255
  %idxprom = sext i32 %bf.clear18 to i64
  %arrayidx19 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %19 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp eq i32 %19, 5
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load21 = load i32, i32* %21, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 16
  %bf.clear23 = and i32 %bf.lshr22, 255
  %idxprom24 = sext i32 %bf.clear23 to i64
  %arrayidx25 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom24
  %22 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %22, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %23 = phi i1 [ true, %cond.true ], [ %cmp26, %lor.rhs ]
  %cond = select i1 %23, i32 2, i32 1
  br label %cond.end.57

cond.false:                                       ; preds = %land.lhs.true.14, %lor.lhs.false.12
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load27 = load i32, i32* %25, align 8
  %bf.lshr28 = lshr i32 %bf.load27, 16
  %bf.clear29 = and i32 %bf.lshr28, 255
  %cmp30 = icmp eq i32 %bf.clear29, 18
  br i1 %cmp30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %cond.false
  %26 = load i32, i32* @target_flags, align 4
  %and = and i32 %26, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond32 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.55

cond.false.33:                                    ; preds = %cond.false
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load34 = load i32, i32* %28, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 16
  %bf.clear36 = and i32 %bf.lshr35, 255
  %cmp37 = icmp eq i32 %bf.clear36, 24
  br i1 %cmp37, label %cond.true.38, label %cond.false.42

cond.true.38:                                     ; preds = %cond.false.33
  %29 = load i32, i32* @target_flags, align 4
  %and39 = and i32 %29, 33554432
  %tobool40 = icmp ne i32 %and39, 0
  %cond41 = select i1 %tobool40, i32 4, i32 6
  br label %cond.end

cond.false.42:                                    ; preds = %cond.false.33
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load43 = load i32, i32* %31, align 8
  %bf.lshr44 = lshr i32 %bf.load43, 16
  %bf.clear45 = and i32 %bf.lshr44, 255
  %idxprom46 = sext i32 %bf.clear45 to i64
  %arrayidx47 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom46
  %32 = load i8, i8* %arrayidx47, align 1
  %conv = zext i8 %32 to i32
  %33 = load i32, i32* @target_flags, align 4
  %and48 = and i32 %33, 33554432
  %tobool49 = icmp ne i32 %and48, 0
  %cond50 = select i1 %tobool49, i32 8, i32 4
  %add = add nsw i32 %conv, %cond50
  %sub = sub nsw i32 %add, 1
  %34 = load i32, i32* @target_flags, align 4
  %and51 = and i32 %34, 33554432
  %tobool52 = icmp ne i32 %and51, 0
  %cond53 = select i1 %tobool52, i32 8, i32 4
  %div = sdiv i32 %sub, %cond53
  br label %cond.end

cond.end:                                         ; preds = %cond.false.42, %cond.true.38
  %cond54 = phi i32 [ %cond41, %cond.true.38 ], [ %div, %cond.false.42 ]
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.end, %cond.true.31
  %cond56 = phi i32 [ %cond32, %cond.true.31 ], [ %cond54, %cond.end ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.55, %lor.end
  %cond58 = phi i32 [ %cond, %lor.end ], [ %cond56, %cond.end.55 ]
  store i32 %cond58, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.57
  %35 = load i32, i32* %n, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %n, align 4
  %cmp59 = icmp sgt i32 %dec, 0
  br i1 %cmp59, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set, align 8
  %37 = load i32, i32* %regno, align 4
  %38 = load i32, i32* %n, align 4
  %add61 = add nsw i32 %37, %38
  call void @bitmap_set_bit(%struct.bitmap_head_def* %36, i32 %add61)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.62

if.end.62:                                        ; preds = %while.end, %if.end
  ret void
}

declare void @diddle_return_value(void (%struct.rtx_def*, i8*)*, i8*) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare i32 @for_each_successor_phi(%struct.basic_block_def*, i32 (%struct.rtx_def*, i32, i32, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_phi_alternative_reg(%struct.rtx_def* %insn, i32 %dest_regno, i32 %src_regno, i8* %data) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %dest_regno.addr = alloca i32, align 4
  %src_regno.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %live = alloca %struct.bitmap_head_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %dest_regno, i32* %dest_regno.addr, align 4
  store i32 %src_regno, i32* %src_regno.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.bitmap_head_def*
  store %struct.bitmap_head_def* %1, %struct.bitmap_head_def** %live, align 8
  %2 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %3 = load i32, i32* %src_regno.addr, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %2, i32 %3)
  ret i32 0
}

declare void @delete_insn_chain(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

declare zeroext i1 @purge_dead_edges(%struct.basic_block_def*) #1

declare i32 @volatile_refs_p(%struct.rtx_def*) #1

declare i32 @anti_dependence(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @invalidate_mems_from_set(%struct.propagate_block_info* %pbi, %struct.rtx_def* %exp) #0 {
entry:
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %exp.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %exp, %struct.rtx_def** %exp.addr, align 8
  %0 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %0, i32 0, i32 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %mem_set_list, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %prev, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %next, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %call = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %5, %struct.rtx_def* %7)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then, label %if.else.11

if.then:                                          ; preds = %while.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool5 = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx9, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %12 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list10 = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %12, i32 0, i32 4
  store %struct.rtx_def* %11, %struct.rtx_def** %mem_set_list10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %13 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @free_EXPR_LIST_node(%struct.rtx_def* %13)
  %14 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %mem_set_list_len = getelementptr inbounds %struct.propagate_block_info, %struct.propagate_block_info* %14, i32 0, i32 7
  %15 = load i32, i32* %mem_set_list_len, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %mem_set_list_len, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %while.body
  %16 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %prev, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @invalidate_mems_from_autoinc(%struct.propagate_block_info* %pbi, %struct.rtx_def* %insn) #0 {
entry:
  %pbi.addr = alloca %struct.propagate_block_info*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.propagate_block_info* %pbi, %struct.propagate_block_info** %pbi.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %note, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 6
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  call void @invalidate_mems_from_set(%struct.propagate_block_info* %7, %struct.rtx_def* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @side_effects_p(%struct.rtx_def*) #1

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @bitmap_clear_bit(%struct.bitmap_head_def*, i32) #1

declare i32 @asm_noperands(%struct.rtx_def*) #1

declare %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #1

declare i32 @dead_or_set_regno_p(%struct.rtx_def*, i32) #1

declare void @free_INSN_LIST_list(%struct.rtx_def**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
