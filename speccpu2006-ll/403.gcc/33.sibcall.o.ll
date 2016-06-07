; ModuleID = 'sibcall.c'
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
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@.str = private unnamed_addr constant [10 x i8] c"sibcall.c\00", align 1
@__FUNCTION__.replace_call_placeholder = private unnamed_addr constant [25 x i8] c"replace_call_placeholder\00", align 1
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@n_basic_blocks = external global i32, align 4
@return_value_pseudo = internal global %struct.rtx_def* null, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@rtx_class = external constant [153 x i8], align 16
@cfun = external global %struct.function*, align 8
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@current_function_decl = external global %union.tree_node*, align 8
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@pic_offset_table_rtx = external global %struct.rtx_def*, align 8
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16

; Function Attrs: nounwind uwtable
define void @replace_call_placeholder(%struct.rtx_def* %insn, i32 %use) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %use.addr = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %use, i32* %use.addr, align 4
  %0 = load i32, i32* %use.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %3, %struct.rtx_def* %4)
  br label %if.end.25

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %use.addr, align 4
  %cmp4 = icmp eq i32 %5, 3
  br i1 %cmp4, label %if.then.5, label %if.else.13

if.then.5:                                        ; preds = %if.else
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 3
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call12 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %8, %struct.rtx_def* %9)
  br label %if.end.24

if.else.13:                                       ; preds = %if.else
  %10 = load i32, i32* %use.addr, align 4
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %if.then.15, label %if.else.23

if.then.15:                                       ; preds = %if.else.13
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call22 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %13, %struct.rtx_def* %14)
  br label %if.end

if.else.23:                                       ; preds = %if.else.13
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 550, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.replace_call_placeholder, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %if.then.15
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.5
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 3
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %tobool = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %if.end.25
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 3
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load = load i32, i32* %21, align 8
  %bf.clear = and i32 %bf.load, -268435457
  store i32 %bf.clear, i32* %21, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.32, %if.end.25
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @remove_insn(%struct.rtx_def* %22)
  ret void
}

declare %struct.rtx_def* @emit_insns_before(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare void @remove_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @optimize_sibling_and_tail_recursive_calls() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %alternate_exit = alloca %struct.basic_block_def*, align 8
  %no_sibcalls_this_function = alloca i8, align 1
  %successful_sibling_call = alloca i32, align 4
  %replaced_call_placeholder = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %insn4 = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %sibcall = alloca i32, align 4
  %tailrecursion = alloca i32, align 4
  %call_block = alloca %struct.basic_block_def*, align 8
  %insn197 = alloca %struct.rtx_def*, align 8
  %arg = alloca %union.tree_node*, align 8
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %alternate_exit, align 8
  store i8 0, i8* %no_sibcalls_this_function, align 1
  store i32 0, i32* %successful_sibling_call, align 4
  store i32 0, i32* %replaced_call_placeholder, align 4
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insns, align 8
  call void @find_exception_handler_labels()
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @rebuild_jump_labels(%struct.rtx_def* %0)
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call1 = call i32 @max_reg_num()
  call void @find_basic_blocks(%struct.rtx_def* %1, i32 %call1, %struct._IO_FILE* null)
  %call2 = call zeroext i1 @cleanup_cfg(i32 24)
  %2 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** @return_value_pseudo, align 8
  %3 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  store %struct.edge_def* %3, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.end
  %4 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %alternate_exit, align 8
  %cmp3 = icmp eq %struct.basic_block_def* %5, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %for.body, label %for.end.87

for.body:                                         ; preds = %land.end
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 3
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp5 = icmp ne %struct.basic_block_def* %8, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 1
  %10 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp6 = icmp ne %struct.edge_def* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc.86

if.end.8:                                         ; preds = %lor.lhs.false
  %11 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom = sext i32 %sub to i64
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %insn4, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %tobool10 = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp12 = icmp eq i32 %bf.clear, 36
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.body.11
  br label %for.inc

if.end.14:                                        ; preds = %for.body.11
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load15 = load i32, i32* %19, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 37
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  br label %for.inc

if.end.19:                                        ; preds = %if.end.14
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load20 = load i32, i32* %21, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 32
  br i1 %cmp22, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.19
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load24 = load i32, i32* %24, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 48
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.28:                                        ; preds = %land.lhs.true, %if.end.19
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load29 = load i32, i32* %26, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 32
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.78

land.lhs.true.32:                                 ; preds = %if.end.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load33 = load i32, i32* %28, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %idxprom35 = sext i32 %bf.clear34 to i64
  %arrayidx36 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom35
  %29 = load i8, i8* %arrayidx36, align 1
  %conv = sext i8 %29 to i32
  %cmp37 = icmp eq i32 %conv, 105
  br i1 %cmp37, label %cond.true, label %cond.false.54

cond.true:                                        ; preds = %land.lhs.true.32
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 3
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load42 = load i32, i32* %32, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 47
  br i1 %cmp44, label %cond.true.46, label %cond.false

cond.true.46:                                     ; preds = %cond.true
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 3
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 3
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %call53 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %35, %struct.rtx_def* %37)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.46
  %cond = phi %struct.rtx_def* [ %34, %cond.true.46 ], [ %call53, %cond.false ]
  br label %cond.end.55

cond.false.54:                                    ; preds = %land.lhs.true.32
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.end
  %cond56 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.54 ]
  store %struct.rtx_def* %cond56, %struct.rtx_def** %set, align 8
  %tobool57 = icmp ne %struct.rtx_def* %cond56, null
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.78

land.lhs.true.58:                                 ; preds = %cond.end.55
  %38 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %40 = load %struct.function*, %struct.function** @cfun, align 8
  %return_rtx = getelementptr inbounds %struct.function, %struct.function* %40, i32 0, i32 14
  %41 = load %struct.rtx_def*, %struct.rtx_def** %return_rtx, align 8
  %cmp62 = icmp eq %struct.rtx_def* %39, %41
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.78

land.lhs.true.64:                                 ; preds = %land.lhs.true.58
  %42 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 1
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load68 = load i32, i32* %44, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 61
  br i1 %cmp70, label %land.lhs.true.72, label %if.end.78

land.lhs.true.72:                                 ; preds = %land.lhs.true.64
  %45 = load %struct.rtx_def*, %struct.rtx_def** @return_value_pseudo, align 8
  %tobool73 = icmp ne %struct.rtx_def* %45, null
  br i1 %tobool73, label %if.end.78, label %if.then.74

if.then.74:                                       ; preds = %land.lhs.true.72
  %46 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 1
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** @return_value_pseudo, align 8
  br label %for.inc

if.end.78:                                        ; preds = %land.lhs.true.72, %land.lhs.true.64, %land.lhs.true.58, %cond.end.55, %if.end.28
  br label %for.end

for.inc:                                          ; preds = %if.then.74, %if.then.27, %if.then.18, %if.then.13
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 2
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %insn4, align 8
  br label %for.cond.9

for.end:                                          ; preds = %if.end.78, %for.cond.9
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn4, align 8
  %cmp82 = icmp eq %struct.rtx_def* %50, null
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %for.end
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 2
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %52, %struct.basic_block_def** %alternate_exit, align 8
  br label %if.end.85

if.else:                                          ; preds = %for.end
  store %struct.rtx_def* null, %struct.rtx_def** @return_value_pseudo, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.else, %if.then.84
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85, %if.then.7
  %53 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 0
  %54 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %54, %struct.edge_def** %e, align 8
  br label %for.cond

for.end.87:                                       ; preds = %land.end
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call88 = call i32 @sequence_uses_addressof(%struct.rtx_def* %55)
  %56 = load i8, i8* %no_sibcalls_this_function, align 1
  %tobool89 = trunc i8 %56 to i1
  %conv90 = zext i1 %tobool89 to i32
  %or = or i32 %conv90, %call88
  %tobool91 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool91 to i8
  store i8 %frombool, i8* %no_sibcalls_this_function, align 1
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %insn, align 8
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.190, %for.end.87
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool93 = icmp ne %struct.rtx_def* %58, null
  br i1 %tobool93, label %for.body.94, label %for.end.194

for.body.94:                                      ; preds = %for.cond.92
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load95 = load i32, i32* %60, align 8
  %bf.clear96 = and i32 %bf.load95, 65535
  %cmp97 = icmp eq i32 %bf.clear96, 34
  br i1 %cmp97, label %land.lhs.true.99, label %if.end.189

land.lhs.true.99:                                 ; preds = %for.body.94
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 3
  %rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx102, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load103 = load i32, i32* %63, align 8
  %bf.clear104 = and i32 %bf.load103, 65535
  %cmp105 = icmp eq i32 %bf.clear104, 141
  br i1 %cmp105, label %if.then.107, label %if.end.189

if.then.107:                                      ; preds = %land.lhs.true.99
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 3
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 1
  %rtx113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx113, align 8
  %cmp114 = icmp ne %struct.rtx_def* %66, null
  %conv115 = zext i1 %cmp114 to i32
  store i32 %conv115, i32* %sibcall, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 3
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 2
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  %cmp122 = icmp ne %struct.rtx_def* %69, null
  %conv123 = zext i1 %cmp122 to i32
  store i32 %conv123, i32* %tailrecursion, align 4
  %70 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx125 to i32*
  %71 = load i32, i32* %rtint, align 4
  %idxprom126 = sext i32 %71 to i64
  %72 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data127 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %72, i32 0, i32 4
  %bb128 = bitcast %union.varray_data_tag* %data127 to [1 x %struct.basic_block_def*]*
  %arrayidx129 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb128, i32 0, i64 %idxprom126
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx129, align 8
  store %struct.basic_block_def* %73, %struct.basic_block_def** %call_block, align 8
  %74 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %74, i32 0, i32 56
  %75 = bitcast i24* %calls_alloca to i32*
  %bf.load130 = load i32, i32* %75, align 8
  %bf.lshr = lshr i32 %bf.load130, 6
  %bf.clear131 = and i32 %bf.lshr, 1
  %tobool132 = icmp ne i32 %bf.clear131, 0
  br i1 %tobool132, label %if.then.143, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %if.then.107
  %76 = load %struct.function*, %struct.function** @cfun, align 8
  %varargs = getelementptr inbounds %struct.function, %struct.function* %76, i32 0, i32 56
  %77 = bitcast i24* %varargs to i32*
  %bf.load134 = load i32, i32* %77, align 8
  %bf.lshr135 = lshr i32 %bf.load134, 16
  %bf.clear136 = and i32 %bf.lshr135, 1
  %tobool137 = icmp ne i32 %bf.clear136, 0
  br i1 %tobool137, label %if.then.143, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %lor.lhs.false.133
  %78 = load %struct.function*, %struct.function** @cfun, align 8
  %stdarg = getelementptr inbounds %struct.function, %struct.function* %78, i32 0, i32 56
  %79 = bitcast i24* %stdarg to i32*
  %bf.load139 = load i32, i32* %79, align 8
  %bf.lshr140 = lshr i32 %bf.load139, 17
  %bf.clear141 = and i32 %bf.lshr140, 1
  %tobool142 = icmp ne i32 %bf.clear141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %lor.lhs.false.138, %lor.lhs.false.133, %if.then.107
  store i32 0, i32* %sibcall, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %lor.lhs.false.138
  %80 = load i8, i8* %no_sibcalls_this_function, align 1
  %tobool145 = trunc i8 %80 to i1
  br i1 %tobool145, label %if.then.175, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %if.end.144
  %81 = load %struct.function*, %struct.function** @cfun, align 8
  %x_frame_offset = getelementptr inbounds %struct.function, %struct.function* %81, i32 0, i32 32
  %82 = load i64, i64* %x_frame_offset, align 8
  %tobool148 = icmp ne i64 %82, 0
  br i1 %tobool148, label %if.then.175, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %lor.lhs.false.147
  %83 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_setjmp = getelementptr inbounds %struct.function, %struct.function* %83, i32 0, i32 56
  %84 = bitcast i24* %calls_setjmp to i32*
  %bf.load150 = load i32, i32* %84, align 8
  %bf.lshr151 = lshr i32 %bf.load150, 4
  %bf.clear152 = and i32 %bf.lshr151, 1
  %tobool153 = icmp ne i32 %bf.clear152, 0
  br i1 %tobool153, label %if.then.175, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false.149
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %call_block, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %85, i32 0, i32 5
  %86 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %cmp155 = icmp eq %struct.edge_def* %86, null
  br i1 %cmp155, label %if.then.175, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %lor.lhs.false.154
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %call_block, align 8
  %succ158 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %87, i32 0, i32 5
  %88 = load %struct.edge_def*, %struct.edge_def** %succ158, align 8
  %succ_next159 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %88, i32 0, i32 1
  %89 = load %struct.edge_def*, %struct.edge_def** %succ_next159, align 8
  %cmp160 = icmp ne %struct.edge_def* %89, null
  br i1 %cmp160, label %if.then.175, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %lor.lhs.false.157
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %call_block, align 8
  %succ163 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %90, i32 0, i32 5
  %91 = load %struct.edge_def*, %struct.edge_def** %succ163, align 8
  %dest164 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %91, i32 0, i32 3
  %92 = load %struct.basic_block_def*, %struct.basic_block_def** %dest164, align 8
  %cmp165 = icmp ne %struct.basic_block_def* %92, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp165, label %land.lhs.true.167, label %lor.lhs.false.172

land.lhs.true.167:                                ; preds = %lor.lhs.false.162
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %call_block, align 8
  %succ168 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %93, i32 0, i32 5
  %94 = load %struct.edge_def*, %struct.edge_def** %succ168, align 8
  %dest169 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %94, i32 0, i32 3
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %dest169, align 8
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %alternate_exit, align 8
  %cmp170 = icmp ne %struct.basic_block_def* %95, %96
  br i1 %cmp170, label %if.then.175, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %land.lhs.true.167, %lor.lhs.false.162
  %97 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %call_block, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %98, i32 0, i32 1
  %99 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call173 = call i32 @call_ends_block_p(%struct.rtx_def* %97, %struct.rtx_def* %99)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.end.176, label %if.then.175

if.then.175:                                      ; preds = %lor.lhs.false.172, %land.lhs.true.167, %lor.lhs.false.157, %lor.lhs.false.154, %lor.lhs.false.149, %lor.lhs.false.147, %if.end.144
  store i32 0, i32* %sibcall, align 4
  store i32 0, i32* %tailrecursion, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %lor.lhs.false.172
  %100 = load i32, i32* %sibcall, align 4
  %tobool177 = icmp ne i32 %100, 0
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.176
  store i32 1, i32* %successful_sibling_call, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.end.176
  store i32 1, i32* %replaced_call_placeholder, align 4
  %101 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %102 = load i32, i32* %tailrecursion, align 4
  %cmp180 = icmp ne i32 %102, 0
  br i1 %cmp180, label %cond.true.182, label %cond.false.183

cond.true.182:                                    ; preds = %if.end.179
  br label %cond.end.187

cond.false.183:                                   ; preds = %if.end.179
  %103 = load i32, i32* %sibcall, align 4
  %cmp184 = icmp ne i32 %103, 0
  %cond186 = select i1 %cmp184, i32 3, i32 1
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.183, %cond.true.182
  %cond188 = phi i32 [ 2, %cond.true.182 ], [ %cond186, %cond.false.183 ]
  call void @replace_call_placeholder(%struct.rtx_def* %101, i32 %cond188)
  br label %if.end.189

if.end.189:                                       ; preds = %cond.end.187, %land.lhs.true.99, %for.body.94
  br label %for.inc.190

for.inc.190:                                      ; preds = %if.end.189
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 2
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %insn, align 8
  br label %for.cond.92

for.end.194:                                      ; preds = %for.cond.92
  %106 = load i32, i32* %successful_sibling_call, align 4
  %tobool195 = icmp ne i32 %106, 0
  br i1 %tobool195, label %if.then.196, label %if.end.253

if.then.196:                                      ; preds = %for.end.194
  call void @purge_reg_equiv_notes()
  %call198 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call198, %struct.rtx_def** %insn197, align 8
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.214, %if.then.196
  %107 = load %struct.rtx_def*, %struct.rtx_def** %insn197, align 8
  %tobool200 = icmp ne %struct.rtx_def* %107, null
  br i1 %tobool200, label %for.body.201, label %for.end.218

for.body.201:                                     ; preds = %for.cond.199
  %108 = load %struct.rtx_def*, %struct.rtx_def** %insn197, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load202 = load i32, i32* %109, align 8
  %bf.clear203 = and i32 %bf.load202, 65535
  %idxprom204 = sext i32 %bf.clear203 to i64
  %arrayidx205 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom204
  %110 = load i8, i8* %arrayidx205, align 1
  %conv206 = sext i8 %110 to i32
  %cmp207 = icmp eq i32 %conv206, 105
  br i1 %cmp207, label %if.then.209, label %if.end.213

if.then.209:                                      ; preds = %for.body.201
  %111 = load %struct.rtx_def*, %struct.rtx_def** %insn197, align 8
  %fld210 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld210, i32 0, i64 3
  %rtx212 = bitcast %union.rtunion_def* %arrayidx211 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx212, align 8
  call void @purge_mem_unchanging_flag(%struct.rtx_def* %112)
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.209, %for.body.201
  br label %for.inc.214

for.inc.214:                                      ; preds = %if.end.213
  %113 = load %struct.rtx_def*, %struct.rtx_def** %insn197, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 2
  %rtx217 = bitcast %union.rtunion_def* %arrayidx216 to %struct.rtx_def**
  %114 = load %struct.rtx_def*, %struct.rtx_def** %rtx217, align 8
  store %struct.rtx_def* %114, %struct.rtx_def** %insn197, align 8
  br label %for.cond.199

for.end.218:                                      ; preds = %for.cond.199
  %115 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %115 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %116 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %116, %union.tree_node** %arg, align 8
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.251, %for.end.218
  %117 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %tobool220 = icmp ne %union.tree_node* %117, null
  br i1 %tobool220, label %for.body.221, label %for.end.252

for.body.221:                                     ; preds = %for.cond.219
  %118 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %decl222 = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl222, i32 0, i32 17
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool223 = icmp ne %struct.rtx_def* %119, null
  br i1 %tobool223, label %cond.true.224, label %cond.false.227

cond.true.224:                                    ; preds = %for.body.221
  %120 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %decl225 = bitcast %union.tree_node* %120 to %struct.tree_decl*
  %rtl226 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl225, i32 0, i32 17
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtl226, align 8
  br label %cond.end.230

cond.false.227:                                   ; preds = %for.body.221
  %122 = load %union.tree_node*, %union.tree_node** %arg, align 8
  call void @make_decl_rtl(%union.tree_node* %122, i8* null)
  %123 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %decl228 = bitcast %union.tree_node* %123 to %struct.tree_decl*
  %rtl229 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl228, i32 0, i32 17
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtl229, align 8
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.227, %cond.true.224
  %cond231 = phi %struct.rtx_def* [ %121, %cond.true.224 ], [ %124, %cond.false.227 ]
  %125 = bitcast %struct.rtx_def* %cond231 to i32*
  %bf.load232 = load i32, i32* %125, align 8
  %bf.clear233 = and i32 %bf.load232, 65535
  %cmp234 = icmp eq i32 %bf.clear233, 61
  br i1 %cmp234, label %if.then.236, label %if.end.250

if.then.236:                                      ; preds = %cond.end.230
  %126 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %decl237 = bitcast %union.tree_node* %126 to %struct.tree_decl*
  %rtl238 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl237, i32 0, i32 17
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtl238, align 8
  %tobool239 = icmp ne %struct.rtx_def* %127, null
  br i1 %tobool239, label %cond.true.240, label %cond.false.243

cond.true.240:                                    ; preds = %if.then.236
  %128 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %decl241 = bitcast %union.tree_node* %128 to %struct.tree_decl*
  %rtl242 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl241, i32 0, i32 17
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtl242, align 8
  br label %cond.end.246

cond.false.243:                                   ; preds = %if.then.236
  %130 = load %union.tree_node*, %union.tree_node** %arg, align 8
  call void @make_decl_rtl(%union.tree_node* %130, i8* null)
  %131 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %decl244 = bitcast %union.tree_node* %131 to %struct.tree_decl*
  %rtl245 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl244, i32 0, i32 17
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtl245, align 8
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.243, %cond.true.240
  %cond247 = phi %struct.rtx_def* [ %129, %cond.true.240 ], [ %132, %cond.false.243 ]
  %133 = bitcast %struct.rtx_def* %cond247 to i32*
  %bf.load248 = load i32, i32* %133, align 8
  %bf.clear249 = and i32 %bf.load248, -67108865
  store i32 %bf.clear249, i32* %133, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %cond.end.246, %cond.end.230
  br label %for.inc.251

for.inc.251:                                      ; preds = %if.end.250
  %134 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common = bitcast %union.tree_node* %134 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %135 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %135, %union.tree_node** %arg, align 8
  br label %for.cond.219

for.end.252:                                      ; preds = %for.cond.219
  br label %if.end.253

if.end.253:                                       ; preds = %for.end.252, %for.end.194
  %136 = load i32, i32* %replaced_call_placeholder, align 4
  %tobool254 = icmp ne i32 %136, 0
  br i1 %tobool254, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.end.253
  call void @reorder_blocks()
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.255, %if.end.253
  call void @free_basic_block_vars(i32 0)
  br label %return

return:                                           ; preds = %if.end.256, %if.then
  ret void
}

declare %struct.rtx_def* @get_insns() #1

declare void @find_exception_handler_labels() #1

declare void @rebuild_jump_labels(%struct.rtx_def*) #1

declare void @find_basic_blocks(%struct.rtx_def*, i32, %struct._IO_FILE*) #1

declare i32 @max_reg_num() #1

declare zeroext i1 @cleanup_cfg(i32) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @sequence_uses_addressof(%struct.rtx_def* %seq) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %seq, %struct.rtx_def** %seq.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

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
  br i1 %cmp, label %if.then, label %if.end.85

if.then:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 34
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 141
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %cmp18 = icmp ne %struct.rtx_def* %12, null
  br i1 %cmp18, label %land.lhs.true.20, label %if.end

land.lhs.true.20:                                 ; preds = %if.then.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 3
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %call = call i32 @sequence_uses_addressof(%struct.rtx_def* %15)
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.20, %if.then.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %cmp35 = icmp ne %struct.rtx_def* %18, null
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.47

land.lhs.true.37:                                 ; preds = %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 3
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %call44 = call i32 @sequence_uses_addressof(%struct.rtx_def* %21)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.37, %if.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 3
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 2
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %cmp54 = icmp ne %struct.rtx_def* %24, null
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.66

land.lhs.true.56:                                 ; preds = %if.end.47
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 3
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 2
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %call63 = call i32 @sequence_uses_addressof(%struct.rtx_def* %27)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %land.lhs.true.56
  store i32 1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %land.lhs.true.56, %if.end.47
  br label %if.end.84

if.else:                                          ; preds = %land.lhs.true, %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 3
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %call70 = call i32 @uses_addressof(%struct.rtx_def* %29)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 6
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %tobool75 = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool75, label %land.lhs.true.76, label %if.end.83

land.lhs.true.76:                                 ; preds = %lor.lhs.false
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 6
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  %call80 = call i32 @uses_addressof(%struct.rtx_def* %33)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.76, %if.else
  store i32 1, i32* %retval
  br label %return

if.end.83:                                        ; preds = %land.lhs.true.76, %lor.lhs.false
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.66
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.85
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 2
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.82, %if.then.65, %if.then.46, %if.then.28
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @call_ends_block_p(%struct.rtx_def* %insn, %struct.rtx_def* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %new_insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %end.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call1 = call %struct.rtx_def* @skip_copy_to_return_value(%struct.rtx_def* %4)
  store %struct.rtx_def* %call1, %struct.rtx_def** %new_insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** @return_value_pseudo, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %cmp2 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %insn.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp5 = icmp eq %struct.rtx_def* %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call8 = call %struct.rtx_def* @skip_stack_adjustment(%struct.rtx_def* %11)
  store %struct.rtx_def* %call8, %struct.rtx_def** %insn.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp9 = icmp eq %struct.rtx_def* %12, %13
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call12 = call %struct.rtx_def* @skip_use_of_return_value(%struct.rtx_def* %14, i32 49)
  store %struct.rtx_def* %call12, %struct.rtx_def** %insn.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp13 = icmp eq %struct.rtx_def* %15, %16
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call16 = call %struct.rtx_def* @skip_unreturned_value(%struct.rtx_def* %17)
  store %struct.rtx_def* %call16, %struct.rtx_def** %insn.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp17 = icmp eq %struct.rtx_def* %18, %19
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call20 = call %struct.rtx_def* @skip_use_of_return_value(%struct.rtx_def* %20, i32 48)
  store %struct.rtx_def* %call20, %struct.rtx_def** %insn.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp21 = icmp eq %struct.rtx_def* %21, %22
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store i32 1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call24 = call %struct.rtx_def* @skip_jump_insn(%struct.rtx_def* %23)
  store %struct.rtx_def* %call24, %struct.rtx_def** %insn.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %cmp25 = icmp eq %struct.rtx_def* %24, %25
  %conv = zext i1 %cmp25 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.18, %if.then.14, %if.then.10, %if.then.6, %if.then.3, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @purge_reg_equiv_notes() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.body

while.body:                                       ; preds = %for.body, %if.then
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call1 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %1, i32 3, %struct.rtx_def* null)
  store %struct.rtx_def* %call1, %struct.rtx_def** %note, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool2 = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %3, %struct.rtx_def* %4)
  br label %while.body

if.end:                                           ; preds = %while.body
  br label %while.end

while.end:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @purge_mem_unchanging_flag(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.70

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %3, 66
  br i1 %cmp1, label %if.then.2, label %if.end.35

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load3, 26
  %bf.clear4 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.then.2
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 15
  %9 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer, align 8
  %cmp5 = icmp eq %struct.rtx_def* %7, %9
  br i1 %cmp5, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load9 = load i32, i32* %12, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 75
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.34

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer19 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 15
  %17 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer19, align 8
  %cmp20 = icmp eq %struct.rtx_def* %15, %17
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.34

land.lhs.true.21:                                 ; preds = %land.lhs.true.12
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
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %land.lhs.true.21, %land.lhs.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load32 = load i32, i32* %23, align 8
  %bf.clear33 = and i32 %bf.load32, -67108865
  store i32 %bf.clear33, i32* %23, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %land.lhs.true.21, %land.lhs.true.12, %lor.lhs.false, %if.then.2
  br label %for.end.70

if.end.35:                                        ; preds = %if.end
  %24 = load i32, i32* %code, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %25 = load i8*, i8** %arrayidx36, align 8
  store i8* %25, i8** %fmt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %if.end.35
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %code, align 4
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom37
  %28 = load i8, i8* %arrayidx38, align 1
  %conv = zext i8 %28 to i32
  %cmp39 = icmp slt i32 %26, %conv
  br i1 %cmp39, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %fmt, align 8
  %30 = load i8, i8* %29, align 1
  %conv41 = sext i8 %30 to i32
  %cmp42 = icmp eq i32 %conv41, 101
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %31 to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 %idxprom45
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  call void @purge_mem_unchanging_flag(%struct.rtx_def* %33)
  br label %if.end.67

if.else:                                          ; preds = %for.body
  %34 = load i8*, i8** %fmt, align 8
  %35 = load i8, i8* %34, align 1
  %conv49 = sext i8 %35 to i32
  %cmp50 = icmp eq i32 %conv49, 69
  br i1 %cmp50, label %if.then.52, label %if.end.66

if.then.52:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.then.52
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %37 to i64
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 %idxprom54
  %rtvec = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtvec_def**
  %39 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %39, i32 0, i32 0
  %40 = load i32, i32* %num_elem, align 4
  %cmp57 = icmp slt i32 %36, %40
  br i1 %cmp57, label %for.body.59, label %for.end

for.body.59:                                      ; preds = %for.cond.53
  %41 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %41 to i64
  %42 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %42 to i64
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 %idxprom61
  %rtvec64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtvec_def**
  %44 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec64, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %44, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom60
  %45 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx65, align 8
  call void @purge_mem_unchanging_flag(%struct.rtx_def* %45)
  br label %for.inc

for.inc:                                          ; preds = %for.body.59
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %if.end.66

if.end.66:                                        ; preds = %for.end, %if.else
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.44
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %47 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %47, 1
  store i32 %inc69, i32* %i, align 4
  %48 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  br label %for.cond

for.end.70:                                       ; preds = %if.then, %if.end.34, %for.cond
  ret void
}

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare void @reorder_blocks() #1

declare void @free_basic_block_vars(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @uses_addressof(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %3, 70
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 15
  %6 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer, align 8
  %cmp2 = icmp eq %struct.rtx_def* %4, %6
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %7 = load i32, i32* %code, align 4
  %cmp5 = icmp eq i32 %7, 66
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %8 = load i32, i32* %code, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  store i8* %9, i8** %fmt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %if.end.7
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %code, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %12 to i32
  %cmp10 = icmp slt i32 %10, %conv
  br i1 %cmp10, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %fmt, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 101
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom16
  %rtx = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @uses_addressof(%struct.rtx_def* %17)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  br label %if.end.42

if.else:                                          ; preds = %for.body
  %18 = load i8*, i8** %fmt, align 8
  %19 = load i8, i8* %18, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 69
  br i1 %cmp21, label %if.then.23, label %if.end.41

if.then.23:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.then.23
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 %idxprom25
  %rtvec = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %23 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %23, i32 0, i32 0
  %24 = load i32, i32* %num_elem, align 4
  %cmp28 = icmp slt i32 %20, %24
  br i1 %cmp28, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.24
  %25 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 %idxprom32
  %rtvec35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec35, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom31
  %29 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx36, align 8
  %call37 = call i32 @uses_addressof(%struct.rtx_def* %29)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.body.30
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %if.else
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.19
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %31 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %31, 1
  store i32 %inc44, i32* %i, align 4
  %32 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.45, %if.then.39, %if.then.18, %if.then.6, %if.then.3, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @skip_copy_to_return_value(%struct.rtx_def* %orig_insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %hardret = alloca %struct.rtx_def*, align 8
  %softret = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig_insn, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %set, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @identify_call_return_value(%struct.rtx_def* %1, %struct.rtx_def** %hardret, %struct.rtx_def** %softret)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  %call1 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %3)
  store %struct.rtx_def* %call1, %struct.rtx_def** %insn, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool2 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.22

cond.true:                                        ; preds = %if.end.4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 47
  br i1 %cmp12, label %cond.true.14, label %cond.false

cond.true.14:                                     ; preds = %cond.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %call21 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %14, %struct.rtx_def* %16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.14
  %cond = phi %struct.rtx_def* [ %13, %cond.true.14 ], [ %call21, %cond.false ]
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end.4
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.end
  %cond24 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.22 ]
  store %struct.rtx_def* %cond24, %struct.rtx_def** %set, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool25 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %cond.end.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

if.end.27:                                        ; preds = %cond.end.23
  %19 = load %struct.rtx_def*, %struct.rtx_def** @return_value_pseudo, align 8
  %tobool28 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool28, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %if.end.27
  %20 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** @return_value_pseudo, align 8
  %cmp33 = icmp eq %struct.rtx_def* %21, %22
  br i1 %cmp33, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.then.29
  %23 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %softret, align 8
  %cmp38 = icmp eq %struct.rtx_def* %24, %25
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true, %if.then.29
  %27 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.27
  %28 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %30 = load %struct.function*, %struct.function** @cfun, align 8
  %return_rtx = getelementptr inbounds %struct.function, %struct.function* %30, i32 0, i32 14
  %31 = load %struct.rtx_def*, %struct.rtx_def** %return_rtx, align 8
  %cmp46 = icmp eq %struct.rtx_def* %29, %31
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.74

land.lhs.true.48:                                 ; preds = %if.end.42
  %32 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load52 = load i32, i32* %34, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 61
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.74

land.lhs.true.56:                                 ; preds = %land.lhs.true.48
  %35 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %37 = load i32, i32* %rtuint, align 4
  %38 = load %struct.rtx_def*, %struct.rtx_def** %hardret, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtuint64 = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %39 = load i32, i32* %rtuint64, align 4
  %cmp65 = icmp eq i32 %37, %39
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.74

land.lhs.true.67:                                 ; preds = %land.lhs.true.56
  %40 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 1
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %softret, align 8
  %cmp71 = icmp eq %struct.rtx_def* %41, %42
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.67
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %retval
  br label %return

if.end.74:                                        ; preds = %land.lhs.true.67, %land.lhs.true.56, %land.lhs.true.48, %if.end.42
  %44 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load78 = load i32, i32* %46, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %cmp80 = icmp eq i32 %bf.clear79, 61
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.162

land.lhs.true.82:                                 ; preds = %if.end.74
  %47 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %softret, align 8
  %cmp86 = icmp eq %struct.rtx_def* %48, %49
  br i1 %cmp86, label %if.then.88, label %if.end.162

if.then.88:                                       ; preds = %land.lhs.true.82
  %50 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %x, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call92 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %52)
  store %struct.rtx_def* %call92, %struct.rtx_def** %insn, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool93 = icmp ne %struct.rtx_def* %53, null
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.then.88
  %54 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %retval
  br label %return

if.end.95:                                        ; preds = %if.then.88
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load96 = load i32, i32* %56, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %idxprom98 = sext i32 %bf.clear97 to i64
  %arrayidx99 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom98
  %57 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %57 to i32
  %cmp101 = icmp eq i32 %conv100, 105
  br i1 %cmp101, label %cond.true.103, label %cond.false.122

cond.true.103:                                    ; preds = %if.end.95
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 3
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load107 = load i32, i32* %60, align 8
  %bf.clear108 = and i32 %bf.load107, 65535
  %cmp109 = icmp eq i32 %bf.clear108, 47
  br i1 %cmp109, label %cond.true.111, label %cond.false.115

cond.true.111:                                    ; preds = %cond.true.103
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 3
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx114, align 8
  br label %cond.end.120

cond.false.115:                                   ; preds = %cond.true.103
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 3
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  %call119 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %63, %struct.rtx_def* %65)
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.115, %cond.true.111
  %cond121 = phi %struct.rtx_def* [ %62, %cond.true.111 ], [ %call119, %cond.false.115 ]
  br label %cond.end.123

cond.false.122:                                   ; preds = %if.end.95
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.end.120
  %cond124 = phi %struct.rtx_def* [ %cond121, %cond.end.120 ], [ null, %cond.false.122 ]
  store %struct.rtx_def* %cond124, %struct.rtx_def** %set, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool125 = icmp ne %struct.rtx_def* %66, null
  br i1 %tobool125, label %if.end.127, label %if.then.126

if.then.126:                                      ; preds = %cond.end.123
  %67 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %retval
  br label %return

if.end.127:                                       ; preds = %cond.end.123
  %68 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 0
  %rtx130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx130, align 8
  %70 = load %struct.function*, %struct.function** @cfun, align 8
  %return_rtx131 = getelementptr inbounds %struct.function, %struct.function* %70, i32 0, i32 14
  %71 = load %struct.rtx_def*, %struct.rtx_def** %return_rtx131, align 8
  %cmp132 = icmp eq %struct.rtx_def* %69, %71
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.161

land.lhs.true.134:                                ; preds = %if.end.127
  %72 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 0
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load138 = load i32, i32* %74, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %cmp140 = icmp eq i32 %bf.clear139, 61
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.161

land.lhs.true.142:                                ; preds = %land.lhs.true.134
  %75 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 0
  %rtuint148 = bitcast %union.rtunion_def* %arrayidx147 to i32*
  %77 = load i32, i32* %rtuint148, align 4
  %78 = load %struct.rtx_def*, %struct.rtx_def** %hardret, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtuint151 = bitcast %union.rtunion_def* %arrayidx150 to i32*
  %79 = load i32, i32* %rtuint151, align 4
  %cmp152 = icmp eq i32 %77, %79
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.161

land.lhs.true.154:                                ; preds = %land.lhs.true.142
  %80 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 1
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp158 = icmp eq %struct.rtx_def* %81, %82
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %land.lhs.true.154
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %retval
  br label %return

if.end.161:                                       ; preds = %land.lhs.true.154, %land.lhs.true.142, %land.lhs.true.134, %if.end.127
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %land.lhs.true.82, %if.end.74
  %84 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %84, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.162, %if.then.160, %if.then.126, %if.then.94, %if.then.73, %if.end.41, %if.then.40, %if.then.26, %if.then.3, %if.then
  %85 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %85
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @skip_stack_adjustment(%struct.rtx_def* %orig_insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig_insn, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %set, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.15

cond.true:                                        ; preds = %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 47
  br i1 %cmp5, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call14 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %10, %struct.rtx_def* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi %struct.rtx_def* [ %9, %cond.true.7 ], [ %call14, %cond.false ]
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.then
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.end
  %cond17 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.15 ]
  store %struct.rtx_def* %cond17, %struct.rtx_def** %set, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.16, %entry
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool18 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool18, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool19 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.55

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load24 = load i32, i32* %17, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 75
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.55

land.lhs.true.28:                                 ; preds = %land.lhs.true.20
  %18 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp35 = icmp eq %struct.rtx_def* %20, %21
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.55

land.lhs.true.37:                                 ; preds = %land.lhs.true.28
  %22 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load44 = load i32, i32* %25, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 54
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.55

land.lhs.true.48:                                 ; preds = %land.lhs.true.37
  %26 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp52 = icmp eq %struct.rtx_def* %27, %28
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.48
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true.48, %land.lhs.true.37, %land.lhs.true.28, %land.lhs.true.20, %land.lhs.true, %if.end
  %30 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.55, %if.then.54
  %31 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %31
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @skip_use_of_return_value(%struct.rtx_def* %orig_insn, i32 %code) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig_insn.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig_insn, %struct.rtx_def** %orig_insn.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %7 = load i32, i32* %code.addr, align 4
  %cmp4 = icmp eq i32 %bf.clear3, %7
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true.1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 3
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %11 = load %struct.function*, %struct.function** @cfun, align 8
  %return_rtx = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 14
  %12 = load %struct.rtx_def*, %struct.rtx_def** %return_rtx, align 8
  %cmp12 = icmp eq %struct.rtx_def* %10, %12
  br i1 %cmp12, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 3
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp19 = icmp eq %struct.rtx_def* %15, %16
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.5
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %land.lhs.true.1, %land.lhs.true, %entry
  %18 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %19 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %19
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @skip_unreturned_value(%struct.rtx_def* %orig_insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set_insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig_insn, %struct.rtx_def** %orig_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true.1, label %if.end.71

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 49
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.71

land.lhs.true.5:                                  ; preds = %land.lhs.true.1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 3
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load12 = load i32, i32* %10, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 61
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.71

land.lhs.true.15:                                 ; preds = %land.lhs.true.5
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %14 = load i32, i32* %rtuint, align 4
  %cmp24 = icmp uge i32 %14, 53
  br i1 %cmp24, label %if.then, label %if.end.71

if.then:                                          ; preds = %land.lhs.true.15
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call25 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %15)
  store %struct.rtx_def* %call25, %struct.rtx_def** %set_insn, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %set_insn, align 8
  %tobool26 = icmp ne %struct.rtx_def* %16, null
  br i1 %tobool26, label %if.end, label %if.then.27

if.then.27:                                       ; preds = %if.then
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %18 = load %struct.rtx_def*, %struct.rtx_def** %set_insn, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load28 = load i32, i32* %19, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %idxprom = sext i32 %bf.clear29 to i64
  %arrayidx30 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx30, align 1
  %conv = sext i8 %20 to i32
  %cmp31 = icmp eq i32 %conv, 105
  br i1 %cmp31, label %cond.true, label %cond.false.48

cond.true:                                        ; preds = %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %set_insn, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load36 = load i32, i32* %23, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 47
  br i1 %cmp38, label %cond.true.40, label %cond.false

cond.true.40:                                     ; preds = %cond.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %set_insn, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %set_insn, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %set_insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 3
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %call47 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %26, %struct.rtx_def* %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.40
  %cond = phi %struct.rtx_def* [ %25, %cond.true.40 ], [ %call47, %cond.false ]
  br label %cond.end.49

cond.false.48:                                    ; preds = %if.end
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.end
  %cond50 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.48 ]
  store %struct.rtx_def* %cond50, %struct.rtx_def** %set, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool51 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool51, label %lor.lhs.false, label %if.then.69

lor.lhs.false:                                    ; preds = %cond.end.49
  %30 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 1
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 3
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %cmp61 = icmp ne %struct.rtx_def* %31, %34
  br i1 %cmp61, label %if.then.69, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %35 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %37 = load %struct.function*, %struct.function** @cfun, align 8
  %return_rtx = getelementptr inbounds %struct.function, %struct.function* %37, i32 0, i32 14
  %38 = load %struct.rtx_def*, %struct.rtx_def** %return_rtx, align 8
  %cmp67 = icmp ne %struct.rtx_def* %36, %38
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %lor.lhs.false.63, %lor.lhs.false, %cond.end.49
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %retval
  br label %return

if.end.70:                                        ; preds = %lor.lhs.false.63
  %40 = load %struct.rtx_def*, %struct.rtx_def** %set_insn, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %retval
  br label %return

if.end.71:                                        ; preds = %land.lhs.true.15, %land.lhs.true.5, %land.lhs.true.1, %land.lhs.true, %entry
  %41 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.end.70, %if.then.69, %if.then.27
  %42 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %42
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @skip_jump_insn(%struct.rtx_def* %orig_insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig_insn, %struct.rtx_def** %orig_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call2 = call i32 @any_uncondjump_p(%struct.rtx_def* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define internal i32 @identify_call_return_value(%struct.rtx_def* %cp, %struct.rtx_def** %p_hard_return, %struct.rtx_def** %p_soft_return) #0 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca %struct.rtx_def*, align 8
  %p_hard_return.addr = alloca %struct.rtx_def**, align 8
  %p_soft_return.addr = alloca %struct.rtx_def**, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %hard = alloca %struct.rtx_def*, align 8
  %soft = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %cp, %struct.rtx_def** %cp.addr, align 8
  store %struct.rtx_def** %p_hard_return, %struct.rtx_def*** %p_hard_return.addr, align 8
  store %struct.rtx_def** %p_soft_return, %struct.rtx_def*** %p_soft_return.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %cp.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.8, %while.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 34
  br i1 %cmp, label %while.body.8, label %while.end.12

while.body.8:                                     ; preds = %while.cond.7
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %insn, align 8
  br label %while.cond.7

while.end.12:                                     ; preds = %while.cond.7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 3
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load16 = load i32, i32* %12, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 47
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end.12
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load25 = load i32, i32* %16, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 50
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %hard, align 8
  br label %if.end.78

if.else:                                          ; preds = %land.lhs.true, %while.end.12
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 3
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load37 = load i32, i32* %22, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 39
  br i1 %cmp39, label %land.lhs.true.40, label %if.else.77

land.lhs.true.40:                                 ; preds = %if.else
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx46, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load47 = load i32, i32* %27, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 47
  br i1 %cmp49, label %land.lhs.true.50, label %if.else.77

land.lhs.true.50:                                 ; preds = %land.lhs.true.40
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 3
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtvec56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec56, align 8
  %elem57 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem57, i32 0, i64 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx58, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 1
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load62 = load i32, i32* %33, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 50
  br i1 %cmp64, label %if.then.65, label %if.else.77

if.then.65:                                       ; preds = %land.lhs.true.50
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 3
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtvec71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtvec_def**
  %36 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec71, align 8
  %elem72 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %36, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem72, i32 0, i64 0
  %37 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx73, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %hard, align 8
  br label %if.end

if.else.77:                                       ; preds = %land.lhs.true.50, %land.lhs.true.40, %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.65
  br label %if.end.78

if.end.78:                                        ; preds = %if.end, %if.then
  %39 = load %struct.rtx_def*, %struct.rtx_def** %hard, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load79 = load i32, i32* %40, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp ne i32 %bf.clear80, 61
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.end.78
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @skip_stack_adjustment(%struct.rtx_def* %41)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool84 = icmp ne %struct.rtx_def* %42, null
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.end.83
  store i32 0, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.83
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call87 = call %struct.rtx_def* @skip_pic_restore(%struct.rtx_def* %43)
  store %struct.rtx_def* %call87, %struct.rtx_def** %insn, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool88 = icmp ne %struct.rtx_def* %44, null
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.end.86
  store i32 0, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.end.86
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 2
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %insn, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool94 = icmp ne %struct.rtx_def* %47, null
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.90
  store i32 0, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.end.90
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load97 = load i32, i32* %49, align 8
  %bf.clear98 = and i32 %bf.load97, 65535
  %idxprom = sext i32 %bf.clear98 to i64
  %arrayidx99 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %50 = load i8, i8* %arrayidx99, align 1
  %conv = sext i8 %50 to i32
  %cmp100 = icmp eq i32 %conv, 105
  br i1 %cmp100, label %cond.true, label %cond.false.117

cond.true:                                        ; preds = %if.end.96
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 3
  %rtx104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx104, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load105 = load i32, i32* %53, align 8
  %bf.clear106 = and i32 %bf.load105, 65535
  %cmp107 = icmp eq i32 %bf.clear106, 47
  br i1 %cmp107, label %cond.true.109, label %cond.false

cond.true.109:                                    ; preds = %cond.true
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 3
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 3
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  %call116 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %56, %struct.rtx_def* %58)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.109
  %cond = phi %struct.rtx_def* [ %55, %cond.true.109 ], [ %call116, %cond.false ]
  br label %cond.end.118

cond.false.117:                                   ; preds = %if.end.96
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.end
  %cond119 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.117 ]
  store %struct.rtx_def* %cond119, %struct.rtx_def** %set, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool120 = icmp ne %struct.rtx_def* %59, null
  br i1 %tobool120, label %lor.lhs.false, label %if.then.126

lor.lhs.false:                                    ; preds = %cond.end.118
  %60 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 1
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %hard, align 8
  %cmp124 = icmp ne %struct.rtx_def* %61, %62
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %lor.lhs.false, %cond.end.118
  store i32 0, i32* %retval
  br label %return

if.end.127:                                       ; preds = %lor.lhs.false
  %63 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 0
  %rtx130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx130, align 8
  store %struct.rtx_def* %64, %struct.rtx_def** %soft, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 2
  %rtx133 = bitcast %union.rtunion_def* %arrayidx132 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx133, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %insn, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool134 = icmp ne %struct.rtx_def* %67, null
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.180

land.lhs.true.135:                                ; preds = %if.end.127
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load136 = load i32, i32* %69, align 8
  %bf.clear137 = and i32 %bf.load136, 65535
  %idxprom138 = sext i32 %bf.clear137 to i64
  %arrayidx139 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom138
  %70 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %70 to i32
  %cmp141 = icmp eq i32 %conv140, 105
  br i1 %cmp141, label %cond.true.143, label %cond.false.162

cond.true.143:                                    ; preds = %land.lhs.true.135
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 3
  %rtx146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx146, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load147 = load i32, i32* %73, align 8
  %bf.clear148 = and i32 %bf.load147, 65535
  %cmp149 = icmp eq i32 %bf.clear148, 47
  br i1 %cmp149, label %cond.true.151, label %cond.false.155

cond.true.151:                                    ; preds = %cond.true.143
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 3
  %rtx154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx154, align 8
  br label %cond.end.160

cond.false.155:                                   ; preds = %cond.true.143
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 3
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  %call159 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %76, %struct.rtx_def* %78)
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.155, %cond.true.151
  %cond161 = phi %struct.rtx_def* [ %75, %cond.true.151 ], [ %call159, %cond.false.155 ]
  br label %cond.end.163

cond.false.162:                                   ; preds = %land.lhs.true.135
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.162, %cond.end.160
  %cond164 = phi %struct.rtx_def* [ %cond161, %cond.end.160 ], [ null, %cond.false.162 ]
  store %struct.rtx_def* %cond164, %struct.rtx_def** %set, align 8
  %cmp165 = icmp ne %struct.rtx_def* %cond164, null
  br i1 %cmp165, label %land.lhs.true.167, label %if.end.180

land.lhs.true.167:                                ; preds = %cond.end.163
  %79 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 1
  %rtx170 = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx170, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %soft, align 8
  %cmp171 = icmp eq %struct.rtx_def* %80, %81
  br i1 %cmp171, label %if.then.173, label %if.end.180

if.then.173:                                      ; preds = %land.lhs.true.167
  %82 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 0
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx176, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %soft, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 2
  %rtx179 = bitcast %union.rtunion_def* %arrayidx178 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx179, align 8
  store %struct.rtx_def* %85, %struct.rtx_def** %insn, align 8
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.173, %land.lhs.true.167, %cond.end.163, %if.end.127
  %86 = load %struct.rtx_def*, %struct.rtx_def** %soft, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load181 = load i32, i32* %87, align 8
  %bf.clear182 = and i32 %bf.load181, 65535
  %cmp183 = icmp ne i32 %bf.clear182, 61
  br i1 %cmp183, label %if.then.190, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %if.end.180
  %88 = load %struct.rtx_def*, %struct.rtx_def** %soft, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx187 to i32*
  %89 = load i32, i32* %rtuint, align 4
  %cmp188 = icmp ult i32 %89, 53
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %lor.lhs.false.185, %if.end.180
  store i32 0, i32* %retval
  br label %return

if.end.191:                                       ; preds = %lor.lhs.false.185
  %90 = load %struct.rtx_def*, %struct.rtx_def** %soft, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call192 = call i32 @reg_set_between_p(%struct.rtx_def* %90, %struct.rtx_def* %91, %struct.rtx_def* null)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.191
  store i32 0, i32* %retval
  br label %return

if.end.195:                                       ; preds = %if.end.191
  %92 = load %struct.rtx_def*, %struct.rtx_def** %hard, align 8
  %93 = load %struct.rtx_def**, %struct.rtx_def*** %p_hard_return.addr, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %93, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %soft, align 8
  %95 = load %struct.rtx_def**, %struct.rtx_def*** %p_soft_return.addr, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %95, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.195, %if.then.194, %if.then.190, %if.then.126, %if.then.95, %if.then.89, %if.then.85, %if.then.82, %if.else.77
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @skip_pic_restore(%struct.rtx_def* %orig_insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig_insn.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig_insn, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %set, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.15

cond.true:                                        ; preds = %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 47
  br i1 %cmp5, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call14 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %10, %struct.rtx_def* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi %struct.rtx_def* [ %9, %cond.true.7 ], [ %call14, %cond.false ]
  br label %cond.end.16

cond.false.15:                                    ; preds = %if.then
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.end
  %cond17 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.15 ]
  store %struct.rtx_def* %cond17, %struct.rtx_def** %set, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.16, %entry
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool18 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool18, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool19 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.27

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  %cmp24 = icmp eq %struct.rtx_def* %16, %17
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.20
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.20, %land.lhs.true, %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26
  %20 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %20
}

declare i32 @reg_set_between_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @any_uncondjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
