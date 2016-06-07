; ModuleID = 'cfglayout.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
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
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.reorder_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %struct.basic_block_def*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"insn scopes\00", align 1
@insn_scopes = internal global %struct.varray_head_tag* null, align 8
@cfun = external global %struct.function*, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"cfglayout.c\00", align 1
@__FUNCTION__.verify_insn_chain = private unnamed_addr constant [18 x i8] c"verify_insn_chain\00", align 1
@__FUNCTION__.change_scope = private unnamed_addr constant [13 x i8] c"change_scope\00", align 1
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@function_tail_eff_head = internal global %struct.rtx_def* null, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@__FUNCTION__.fixup_reorder_chain = private unnamed_addr constant [20 x i8] c"fixup_reorder_chain\00", align 1
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Reordered sequence:\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" %i %sbb %i freq %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"compensation \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Emitting label for block %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @scope_to_insns_initialize() #0 {
entry:
  %block = alloca %union.tree_node*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %union.tree_node* null, %union.tree_node** %block, align 8
  %call = call i32 @get_max_uid()
  %conv = sext i32 %call to i64
  %call1 = call %struct.varray_head_tag* @varray_init(i64 %conv, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  store %struct.varray_head_tag* %call1, %struct.varray_head_tag** @insn_scopes, align 8
  %call2 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call2, %struct.rtx_def** %insn, align 8
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
  %call3 = call i32 @active_insn_p(%struct.rtx_def* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 44
  br i1 %cmp, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load13 = load i32, i32* %9, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp ne i32 %bf.clear14, 45
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.9
  %10 = load %union.tree_node*, %union.tree_node** %block, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %12 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_scopes, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %idxprom
  store %union.tree_node* %10, %union.tree_node** %arrayidx19, align 8
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true.9, %land.lhs.true, %for.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load20 = load i32, i32* %15, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 37
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.else
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 4
  %rtint27 = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %17 = load i32, i32* %rtint27, align 4
  switch i32 %17, label %sw.default [
    i32 -98, label %sw.bb
    i32 -97, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %if.then.24
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rttree = bitcast %union.rtunion_def* %arrayidx29 to %union.tree_node**
  %19 = load %union.tree_node*, %union.tree_node** %rttree, align 8
  store %union.tree_node* %19, %union.tree_node** %block, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call30 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %20)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.then.24
  %21 = load %union.tree_node*, %union.tree_node** %block, align 8
  %block32 = bitcast %union.tree_node* %21 to %struct.tree_block*
  %supercontext = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block32, i32 0, i32 4
  %22 = load %union.tree_node*, %union.tree_node** %supercontext, align 8
  store %union.tree_node* %22, %union.tree_node** %block, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call33 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %23)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.31, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %24 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

declare i32 @get_max_uid() #1

declare %struct.rtx_def* @get_insns() #1

declare i32 @active_insn_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @scope_to_insns_finalize() #0 {
entry:
  %cur_block = alloca %union.tree_node*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %this_block = alloca %union.tree_node*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %decl = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 6
  %1 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 12
  %2 = load %union.tree_node*, %union.tree_node** %initial, align 8
  store %union.tree_node* %2, %union.tree_node** %cur_block, align 8
  %3 = load %union.tree_node*, %union.tree_node** %cur_block, align 8
  call void @set_block_levels(%union.tree_node* %3, i32 0)
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtint, align 4
  %conv = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_scopes, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 0
  %8 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %conv, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %10 = load i32, i32* %rtint5, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_scopes, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx6 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %idxprom
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx6, align 8
  store %union.tree_node* %12, %union.tree_node** %this_block, align 8
  %13 = load %union.tree_node*, %union.tree_node** %this_block, align 8
  %tobool7 = icmp ne %union.tree_node* %13, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end
  br label %for.inc

if.end.9:                                         ; preds = %if.end
  %14 = load %union.tree_node*, %union.tree_node** %this_block, align 8
  %15 = load %union.tree_node*, %union.tree_node** %cur_block, align 8
  %cmp10 = icmp ne %union.tree_node* %14, %15
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = load %union.tree_node*, %union.tree_node** %cur_block, align 8
  %18 = load %union.tree_node*, %union.tree_node** %this_block, align 8
  call void @change_scope(%struct.rtx_def* %16, %union.tree_node* %17, %union.tree_node* %18)
  %19 = load %union.tree_node*, %union.tree_node** %this_block, align 8
  store %union.tree_node* %19, %union.tree_node** %cur_block, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.13, %if.then.8, %if.then
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_scopes, align 8
  %tobool16 = icmp ne %struct.varray_head_tag* %22, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.body
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_scopes, align 8
  %24 = bitcast %struct.varray_head_tag* %23 to i8*
  call void @free(i8* %24) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @insn_scopes, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %call19 = call %struct.rtx_def* @emit_note(i8* null, i32 -99)
  store %struct.rtx_def* %call19, %struct.rtx_def** %note, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %26 = load %union.tree_node*, %union.tree_node** %cur_block, align 8
  %27 = load %struct.function*, %struct.function** @cfun, align 8
  %decl20 = getelementptr inbounds %struct.function, %struct.function* %27, i32 0, i32 6
  %28 = load %union.tree_node*, %union.tree_node** %decl20, align 8
  %decl21 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %initial22 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 12
  %29 = load %union.tree_node*, %union.tree_node** %initial22, align 8
  call void @change_scope(%struct.rtx_def* %25, %union.tree_node* %26, %union.tree_node* %29)
  %30 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call23 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %30)
  call void @reorder_blocks()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_block_levels(%union.tree_node* %block, i32 %level) #0 {
entry:
  %block.addr = alloca %union.tree_node*, align 8
  %level.addr = alloca i32, align 4
  store %union.tree_node* %block, %union.tree_node** %block.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %level.addr, align 4
  %2 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %block1 = bitcast %union.tree_node* %2 to %struct.tree_block*
  %block_num = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1, i32 0, i32 1
  %bf.load = load i32, i32* %block_num, align 8
  %bf.value = and i32 %1, 1073741823
  %bf.shl = shl i32 %bf.value, 2
  %bf.clear = and i32 %bf.load, 3
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %block_num, align 8
  %3 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %block2 = bitcast %union.tree_node* %3 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block2, i32 0, i32 3
  %4 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  %5 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %5, 1
  call void @set_block_levels(%union.tree_node* %4, i32 %add)
  %6 = load %union.tree_node*, %union.tree_node** %block.addr, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %7, %union.tree_node** %block.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @change_scope(%struct.rtx_def* %orig_insn, %union.tree_node* %s1, %union.tree_node* %s2) #0 {
entry:
  %orig_insn.addr = alloca %struct.rtx_def*, align 8
  %s1.addr = alloca %union.tree_node*, align 8
  %s2.addr = alloca %union.tree_node*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %com = alloca %union.tree_node*, align 8
  %ts1 = alloca %union.tree_node*, align 8
  %ts2 = alloca %union.tree_node*, align 8
  %s = alloca %union.tree_node*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig_insn, %struct.rtx_def** %orig_insn.addr, align 8
  store %union.tree_node* %s1, %union.tree_node** %s1.addr, align 8
  store %union.tree_node* %s2, %union.tree_node** %s2.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig_insn.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  store %union.tree_node* null, %union.tree_node** %com, align 8
  %1 = load %union.tree_node*, %union.tree_node** %s1.addr, align 8
  store %union.tree_node* %1, %union.tree_node** %ts1, align 8
  %2 = load %union.tree_node*, %union.tree_node** %s2.addr, align 8
  store %union.tree_node* %2, %union.tree_node** %ts2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %entry
  %3 = load %union.tree_node*, %union.tree_node** %ts1, align 8
  %4 = load %union.tree_node*, %union.tree_node** %ts2, align 8
  %cmp = icmp ne %union.tree_node* %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %union.tree_node*, %union.tree_node** %ts1, align 8
  %cmp1 = icmp eq %union.tree_node* %5, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load %union.tree_node*, %union.tree_node** %ts2, align 8
  %cmp2 = icmp eq %union.tree_node* %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.change_scope, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %union.tree_node*, %union.tree_node** %ts1, align 8
  %block = bitcast %union.tree_node* %7 to %struct.tree_block*
  %block_num = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 1
  %bf.load = load i32, i32* %block_num, align 8
  %bf.lshr = lshr i32 %bf.load, 2
  %8 = load %union.tree_node*, %union.tree_node** %ts2, align 8
  %block3 = bitcast %union.tree_node* %8 to %struct.tree_block*
  %block_num4 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block3, i32 0, i32 1
  %bf.load5 = load i32, i32* %block_num4, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 2
  %cmp7 = icmp sgt i32 %bf.lshr, %bf.lshr6
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %ts1, align 8
  %block9 = bitcast %union.tree_node* %9 to %struct.tree_block*
  %supercontext = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block9, i32 0, i32 4
  %10 = load %union.tree_node*, %union.tree_node** %supercontext, align 8
  store %union.tree_node* %10, %union.tree_node** %ts1, align 8
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** %ts1, align 8
  %block10 = bitcast %union.tree_node* %11 to %struct.tree_block*
  %block_num11 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block10, i32 0, i32 1
  %bf.load12 = load i32, i32* %block_num11, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 2
  %12 = load %union.tree_node*, %union.tree_node** %ts2, align 8
  %block14 = bitcast %union.tree_node* %12 to %struct.tree_block*
  %block_num15 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block14, i32 0, i32 1
  %bf.load16 = load i32, i32* %block_num15, align 8
  %bf.lshr17 = lshr i32 %bf.load16, 2
  %cmp18 = icmp slt i32 %bf.lshr13, %bf.lshr17
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.else
  %13 = load %union.tree_node*, %union.tree_node** %ts2, align 8
  %block20 = bitcast %union.tree_node* %13 to %struct.tree_block*
  %supercontext21 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block20, i32 0, i32 4
  %14 = load %union.tree_node*, %union.tree_node** %supercontext21, align 8
  store %union.tree_node* %14, %union.tree_node** %ts2, align 8
  br label %if.end.27

if.else.22:                                       ; preds = %if.else
  %15 = load %union.tree_node*, %union.tree_node** %ts1, align 8
  %block23 = bitcast %union.tree_node* %15 to %struct.tree_block*
  %supercontext24 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block23, i32 0, i32 4
  %16 = load %union.tree_node*, %union.tree_node** %supercontext24, align 8
  store %union.tree_node* %16, %union.tree_node** %ts1, align 8
  %17 = load %union.tree_node*, %union.tree_node** %ts2, align 8
  %block25 = bitcast %union.tree_node* %17 to %struct.tree_block*
  %supercontext26 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block25, i32 0, i32 4
  %18 = load %union.tree_node*, %union.tree_node** %supercontext26, align 8
  store %union.tree_node* %18, %union.tree_node** %ts2, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.22, %if.then.19
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %union.tree_node*, %union.tree_node** %ts1, align 8
  store %union.tree_node* %19, %union.tree_node** %com, align 8
  %20 = load %union.tree_node*, %union.tree_node** %s1.addr, align 8
  store %union.tree_node* %20, %union.tree_node** %s, align 8
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.31, %while.end
  %21 = load %union.tree_node*, %union.tree_node** %s, align 8
  %22 = load %union.tree_node*, %union.tree_node** %com, align 8
  %cmp30 = icmp ne %union.tree_node* %21, %22
  br i1 %cmp30, label %while.body.31, label %while.end.34

while.body.31:                                    ; preds = %while.cond.29
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call %struct.rtx_def* @emit_note_before(i32 -97, %struct.rtx_def* %23)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %24 = load %union.tree_node*, %union.tree_node** %s, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rttree = bitcast %union.rtunion_def* %arrayidx to %union.tree_node**
  store %union.tree_node* %24, %union.tree_node** %rttree, align 8
  %26 = load %union.tree_node*, %union.tree_node** %s, align 8
  %block32 = bitcast %union.tree_node* %26 to %struct.tree_block*
  %supercontext33 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block32, i32 0, i32 4
  %27 = load %union.tree_node*, %union.tree_node** %supercontext33, align 8
  store %union.tree_node* %27, %union.tree_node** %s, align 8
  br label %while.cond.29

while.end.34:                                     ; preds = %while.cond.29
  %28 = load %union.tree_node*, %union.tree_node** %s2.addr, align 8
  store %union.tree_node* %28, %union.tree_node** %s, align 8
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.37, %while.end.34
  %29 = load %union.tree_node*, %union.tree_node** %s, align 8
  %30 = load %union.tree_node*, %union.tree_node** %com, align 8
  %cmp36 = icmp ne %union.tree_node* %29, %30
  br i1 %cmp36, label %while.body.37, label %while.end.44

while.body.37:                                    ; preds = %while.cond.35
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call38 = call %struct.rtx_def* @emit_note_before(i32 -98, %struct.rtx_def* %31)
  store %struct.rtx_def* %call38, %struct.rtx_def** %insn, align 8
  %32 = load %union.tree_node*, %union.tree_node** %s, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 3
  %rttree41 = bitcast %union.rtunion_def* %arrayidx40 to %union.tree_node**
  store %union.tree_node* %32, %union.tree_node** %rttree41, align 8
  %34 = load %union.tree_node*, %union.tree_node** %s, align 8
  %block42 = bitcast %union.tree_node* %34 to %struct.tree_block*
  %supercontext43 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block42, i32 0, i32 4
  %35 = load %union.tree_node*, %union.tree_node** %supercontext43, align 8
  store %union.tree_node* %35, %union.tree_node** %s, align 8
  br label %while.cond.35

while.end.44:                                     ; preds = %while.cond.35
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare %struct.rtx_def* @emit_note(i8*, i32) #1

declare void @reorder_blocks() #1

; Function Attrs: nounwind uwtable
define void @verify_insn_chain() #0 {
entry:
  %x = alloca %struct.rtx_def*, align 8
  %prevx = alloca %struct.rtx_def*, align 8
  %nextx = alloca %struct.rtx_def*, align 8
  %insn_cnt1 = alloca i32, align 4
  %insn_cnt2 = alloca i32, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %prevx, align 8
  store i32 1, i32* %insn_cnt1, align 4
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp ne %struct.rtx_def* %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %prevx, align 8
  %cmp1 = icmp ne %struct.rtx_def* %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 519, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.verify_insn_chain, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %prevx, align 8
  %5 = load i32, i32* %insn_cnt1, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %insn_cnt1, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %prevx, align 8
  %call5 = call %struct.rtx_def* @get_last_insn()
  %cmp6 = icmp ne %struct.rtx_def* %8, %call5
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 522, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.verify_insn_chain, i32 0, i32 0)) #5
  unreachable

if.end.8:                                         ; preds = %for.end
  store %struct.rtx_def* null, %struct.rtx_def** %nextx, align 8
  store i32 1, i32* %insn_cnt2, align 4
  %call9 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call9, %struct.rtx_def** %x, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.19, %if.end.8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp11 = icmp ne %struct.rtx_def* %9, null
  br i1 %cmp11, label %for.body.12, label %for.end.24

for.body.12:                                      ; preds = %for.cond.10
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 2
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %nextx, align 8
  %cmp16 = icmp ne %struct.rtx_def* %11, %12
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body.12
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 528, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.verify_insn_chain, i32 0, i32 0)) #5
  unreachable

if.end.18:                                        ; preds = %for.body.12
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end.18
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %nextx, align 8
  %14 = load i32, i32* %insn_cnt2, align 4
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, i32* %insn_cnt2, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %x, align 8
  br label %for.cond.10

for.end.24:                                       ; preds = %for.cond.10
  %17 = load i32, i32* %insn_cnt1, align 4
  %18 = load i32, i32* %insn_cnt2, align 4
  %cmp25 = icmp ne i32 %17, %18
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.end.24
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 531, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.verify_insn_chain, i32 0, i32 0)) #5
  unreachable

if.end.27:                                        ; preds = %for.end.24
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

declare %struct.rtx_def* @get_last_insn() #1

; Function Attrs: nounwind uwtable
define void @cfg_layout_initialize() #0 {
entry:
  call void @alloc_aux_for_blocks(i32 32)
  call void @scope_to_insns_initialize()
  call void @record_effective_endpoints()
  ret void
}

declare void @alloc_aux_for_blocks(i32) #1

; Function Attrs: nounwind uwtable
define internal void @record_effective_endpoints() #0 {
entry:
  %next_insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %next_insn, align 8
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
  %5 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 10
  %7 = load i8*, i8** %aux, align 8
  %8 = bitcast i8* %7 to %struct.reorder_block_def*
  %eff_head = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %8, i32 0, i32 0
  store %struct.rtx_def* %5, %struct.rtx_def** %eff_head, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call2 = call %struct.rtx_def* @skip_insns_after_block(%struct.basic_block_def* %9)
  store %struct.rtx_def* %call2, %struct.rtx_def** %end, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 10
  %12 = load i8*, i8** %aux3, align 8
  %13 = bitcast i8* %12 to %struct.reorder_block_def*
  %eff_end = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %13, i32 0, i32 1
  store %struct.rtx_def* %10, %struct.rtx_def** %eff_end, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %next_insn, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next_insn, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** @function_tail_eff_head, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cfg_layout_finalize() #0 {
entry:
  call void @fixup_fallthru_exit_predecessor()
  call void @fixup_reorder_chain()
  call void @scope_to_insns_finalize()
  call void @free_aux_for_blocks()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fixup_fallthru_exit_predecessor() #0 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %c = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* null, %struct.basic_block_def** %bb, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  store %struct.edge_def* %0, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 6
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 2
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %5, %struct.basic_block_def** %bb, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 0
  %7 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %7, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %tobool2 = icmp ne %struct.basic_block_def* %8, null
  br i1 %tobool2, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %for.end
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 10
  %10 = load i8*, i8** %aux, align 8
  %11 = bitcast i8* %10 to %struct.reorder_block_def*
  %next = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %11, i32 0, i32 2
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool3 = icmp ne %struct.basic_block_def* %12, null
  br i1 %tobool3, label %if.then.4, label %if.end.26

if.then.4:                                        ; preds = %land.lhs.true
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %bb5 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb5, i32 0, i64 0
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %14, %struct.basic_block_def** %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.4
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %aux6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 10
  %16 = load i8*, i8** %aux6, align 8
  %17 = bitcast i8* %16 to %struct.reorder_block_def*
  %next7 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %17, i32 0, i32 2
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %next7, align 8
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %cmp = icmp ne %struct.basic_block_def* %18, %19
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %aux8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 10
  %21 = load i8*, i8** %aux8, align 8
  %22 = bitcast i8* %21 to %struct.reorder_block_def*
  %next9 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %22, i32 0, i32 2
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %next9, align 8
  store %struct.basic_block_def* %23, %struct.basic_block_def** %c, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 10
  %25 = load i8*, i8** %aux10, align 8
  %26 = bitcast i8* %25 to %struct.reorder_block_def*
  %next11 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %26, i32 0, i32 2
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %next11, align 8
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %aux12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 10
  %29 = load i8*, i8** %aux12, align 8
  %30 = bitcast i8* %29 to %struct.reorder_block_def*
  %next13 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %30, i32 0, i32 2
  store %struct.basic_block_def* %27, %struct.basic_block_def** %next13, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.18, %while.end
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %aux15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 10
  %32 = load i8*, i8** %aux15, align 8
  %33 = bitcast i8* %32 to %struct.reorder_block_def*
  %next16 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %33, i32 0, i32 2
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %next16, align 8
  %tobool17 = icmp ne %struct.basic_block_def* %34, null
  br i1 %tobool17, label %while.body.18, label %while.end.21

while.body.18:                                    ; preds = %while.cond.14
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %aux19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 10
  %36 = load i8*, i8** %aux19, align 8
  %37 = bitcast i8* %36 to %struct.reorder_block_def*
  %next20 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %37, i32 0, i32 2
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %next20, align 8
  store %struct.basic_block_def* %38, %struct.basic_block_def** %c, align 8
  br label %while.cond.14

while.end.21:                                     ; preds = %while.cond.14
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %aux22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 10
  %41 = load i8*, i8** %aux22, align 8
  %42 = bitcast i8* %41 to %struct.reorder_block_def*
  %next23 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %42, i32 0, i32 2
  store %struct.basic_block_def* %39, %struct.basic_block_def** %next23, align 8
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 10
  %44 = load i8*, i8** %aux24, align 8
  %45 = bitcast i8* %44 to %struct.reorder_block_def*
  %next25 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %45, i32 0, i32 2
  store %struct.basic_block_def* null, %struct.basic_block_def** %next25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %while.end.21, %land.lhs.true, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fixup_reorder_chain() #0 {
entry:
  %bb = alloca %struct.basic_block_def*, align 8
  %last_bb = alloca %struct.basic_block_def*, align 8
  %index = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %old_n_basic_blocks = alloca i32, align 4
  %last_e = alloca %struct.rtx_def*, align 8
  %curr_h = alloca %struct.rtx_def*, align 8
  %e_fall = alloca %struct.edge_def*, align 8
  %e_taken = alloca %struct.edge_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %bb_end_insn = alloca %struct.rtx_def*, align 8
  %nb = alloca %struct.basic_block_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  store i32 %0, i32* %old_n_basic_blocks, align 4
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 0
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %last_bb, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %last_bb, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 10
  %4 = load i8*, i8** %aux, align 8
  %5 = bitcast i8* %4 to %struct.reorder_block_def*
  %next = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %5, i32 0, i32 2
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %bb, align 8
  store i32 1, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %cmp = icmp ne %struct.basic_block_def* %7, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %last_bb, align 8
  %aux2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 10
  %9 = load i8*, i8** %aux2, align 8
  %10 = bitcast i8* %9 to %struct.reorder_block_def*
  %eff_end = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %eff_end, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %last_e, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 10
  %13 = load i8*, i8** %aux3, align 8
  %14 = bitcast i8* %13 to %struct.reorder_block_def*
  %eff_head = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %14, i32 0, i32 0
  %15 = load %struct.rtx_def*, %struct.rtx_def** %eff_head, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %curr_h, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %curr_h, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %last_e, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  store %struct.rtx_def* %16, %struct.rtx_def** %rtx, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %last_e, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %curr_h, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %18, %struct.rtx_def** %rtx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  store %struct.basic_block_def* %20, %struct.basic_block_def** %last_bb, align 8
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 10
  %22 = load i8*, i8** %aux8, align 8
  %23 = bitcast i8* %22 to %struct.reorder_block_def*
  %next9 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %23, i32 0, i32 2
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %next9, align 8
  store %struct.basic_block_def* %24, %struct.basic_block_def** %bb, align 8
  %25 = load i32, i32* %index, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load i32, i32* %index, align 4
  %27 = load i32, i32* @n_basic_blocks, align 4
  %cmp10 = icmp ne i32 %26, %27
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 353, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.fixup_reorder_chain, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %for.end
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %last_bb, align 8
  %aux11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 10
  %29 = load i8*, i8** %aux11, align 8
  %30 = bitcast i8* %29 to %struct.reorder_block_def*
  %eff_end12 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %30, i32 0, i32 1
  %31 = load %struct.rtx_def*, %struct.rtx_def** %eff_end12, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %insn, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** @function_tail_eff_head, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 2
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  store %struct.rtx_def* %32, %struct.rtx_def** %rtx15, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** @function_tail_eff_head, align 8
  %tobool = icmp ne %struct.rtx_def* %34, null
  br i1 %tobool, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** @function_tail_eff_head, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  store %struct.rtx_def* %35, %struct.rtx_def** %rtx19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.20
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 2
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %tobool24 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 2
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @set_last_insn(%struct.rtx_def* %41)
  %42 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data28 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %42, i32 0, i32 4
  %bb29 = bitcast %union.varray_data_tag* %data28 to [1 x %struct.basic_block_def*]*
  %arrayidx30 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb29, i32 0, i64 0
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx30, align 8
  store %struct.basic_block_def* %43, %struct.basic_block_def** %bb, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.148, %while.end
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %tobool32 = icmp ne %struct.basic_block_def* %44, null
  br i1 %tobool32, label %for.body.33, label %for.end.151

for.body.33:                                      ; preds = %for.cond.31
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 5
  %46 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %cmp34 = icmp eq %struct.edge_def* %46, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body.33
  br label %for.inc.148

if.end.36:                                        ; preds = %for.body.33
  store %struct.edge_def* null, %struct.edge_def** %e_fall, align 8
  store %struct.edge_def* null, %struct.edge_def** %e_taken, align 8
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 5
  %48 = load %struct.edge_def*, %struct.edge_def** %succ37, align 8
  store %struct.edge_def* %48, %struct.edge_def** %e, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.49, %if.end.36
  %49 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool39 = icmp ne %struct.edge_def* %49, null
  br i1 %tobool39, label %for.body.40, label %for.end.50

for.body.40:                                      ; preds = %for.cond.38
  %50 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i32 0, i32 6
  %51 = load i32, i32* %flags, align 4
  %and = and i32 %51, 1
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %for.body.40
  %52 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %52, %struct.edge_def** %e_fall, align 8
  br label %if.end.48

if.else:                                          ; preds = %for.body.40
  %53 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 6
  %54 = load i32, i32* %flags43, align 4
  %and44 = and i32 %54, 8
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.else
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %55, %struct.edge_def** %e_taken, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.42
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %56 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %56, i32 0, i32 1
  %57 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %57, %struct.edge_def** %e, align 8
  br label %for.cond.38

for.end.50:                                       ; preds = %for.cond.38
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 1
  %59 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %bb_end_insn, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %bb_end_insn, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load = load i32, i32* %61, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp51 = icmp eq i32 %bf.clear, 33
  br i1 %cmp51, label %if.then.52, label %if.else.110

if.then.52:                                       ; preds = %for.end.50
  %62 = load %struct.rtx_def*, %struct.rtx_def** %bb_end_insn, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %62)
  %tobool53 = icmp ne i32 %call, 0
  br i1 %tobool53, label %if.then.54, label %if.else.101

if.then.54:                                       ; preds = %if.then.52
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %63, i32 0, i32 10
  %64 = load i8*, i8** %aux55, align 8
  %65 = bitcast i8* %64 to %struct.reorder_block_def*
  %next56 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %65, i32 0, i32 2
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %next56, align 8
  %67 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %67, i32 0, i32 3
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp57 = icmp eq %struct.basic_block_def* %66, %68
  br i1 %cmp57, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.54
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i32 0, i32 10
  %70 = load i8*, i8** %aux58, align 8
  %71 = bitcast i8* %70 to %struct.reorder_block_def*
  %next59 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %71, i32 0, i32 2
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %next59, align 8
  %tobool60 = icmp ne %struct.basic_block_def* %72, null
  br i1 %tobool60, label %if.end.64, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %73 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %dest61 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 3
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %dest61, align 8
  %cmp62 = icmp eq %struct.basic_block_def* %74, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true, %if.then.54
  br label %for.inc.148

if.end.64:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i32 0, i32 10
  %76 = load i8*, i8** %aux65, align 8
  %77 = bitcast i8* %76 to %struct.reorder_block_def*
  %next66 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %77, i32 0, i32 2
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %next66, align 8
  %79 = load %struct.edge_def*, %struct.edge_def** %e_taken, align 8
  %dest67 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %79, i32 0, i32 3
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %dest67, align 8
  %cmp68 = icmp ne %struct.basic_block_def* %78, %80
  br i1 %cmp68, label %if.then.69, label %if.else.89

if.then.69:                                       ; preds = %if.end.64
  %81 = load %struct.rtx_def*, %struct.rtx_def** %bb_end_insn, align 8
  %call70 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %81, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call70, %struct.rtx_def** %note, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool71 = icmp ne %struct.rtx_def* %82, null
  br i1 %tobool71, label %land.lhs.true.72, label %if.end.88

land.lhs.true.72:                                 ; preds = %if.then.69
  %83 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx77 to i64*
  %85 = load i64, i64* %rtwint, align 8
  %cmp78 = icmp slt i64 %85, 5000
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.88

land.lhs.true.79:                                 ; preds = %land.lhs.true.72
  %86 = load %struct.rtx_def*, %struct.rtx_def** %bb_end_insn, align 8
  %87 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %dest80 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %87, i32 0, i32 3
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %dest80, align 8
  %call81 = call %struct.rtx_def* @label_for_bb(%struct.basic_block_def* %88)
  %call82 = call i32 @invert_jump(%struct.rtx_def* %86, %struct.rtx_def* %call81, i32 0)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %land.lhs.true.79
  %89 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %flags85 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %89, i32 0, i32 6
  %90 = load i32, i32* %flags85, align 4
  %and86 = and i32 %90, -2
  store i32 %and86, i32* %flags85, align 4
  %91 = load %struct.edge_def*, %struct.edge_def** %e_taken, align 8
  %flags87 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %91, i32 0, i32 6
  %92 = load i32, i32* %flags87, align 4
  %or = or i32 %92, 1
  store i32 %or, i32* %flags87, align 4
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @update_br_prob_note(%struct.basic_block_def* %93)
  %94 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  store %struct.edge_def* %94, %struct.edge_def** %e, align 8
  %95 = load %struct.edge_def*, %struct.edge_def** %e_taken, align 8
  store %struct.edge_def* %95, %struct.edge_def** %e_fall, align 8
  %96 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %96, %struct.edge_def** %e_taken, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %land.lhs.true.79, %land.lhs.true.72, %if.then.69
  br label %if.end.100

if.else.89:                                       ; preds = %if.end.64
  %97 = load %struct.rtx_def*, %struct.rtx_def** %bb_end_insn, align 8
  %98 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %dest90 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %98, i32 0, i32 3
  %99 = load %struct.basic_block_def*, %struct.basic_block_def** %dest90, align 8
  %call91 = call %struct.rtx_def* @label_for_bb(%struct.basic_block_def* %99)
  %call92 = call i32 @invert_jump(%struct.rtx_def* %97, %struct.rtx_def* %call91, i32 0)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.99

if.then.94:                                       ; preds = %if.else.89
  %100 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %flags95 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %100, i32 0, i32 6
  %101 = load i32, i32* %flags95, align 4
  %and96 = and i32 %101, -2
  store i32 %and96, i32* %flags95, align 4
  %102 = load %struct.edge_def*, %struct.edge_def** %e_taken, align 8
  %flags97 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %102, i32 0, i32 6
  %103 = load i32, i32* %flags97, align 4
  %or98 = or i32 %103, 1
  store i32 %or98, i32* %flags97, align 4
  %104 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @update_br_prob_note(%struct.basic_block_def* %104)
  br label %for.inc.148

if.end.99:                                        ; preds = %if.else.89
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.88
  br label %if.end.109

if.else.101:                                      ; preds = %if.then.52
  %105 = load %struct.rtx_def*, %struct.rtx_def** %bb_end_insn, align 8
  %call102 = call i32 @returnjump_p(%struct.rtx_def* %105)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.else.101
  br label %for.inc.148

if.else.105:                                      ; preds = %if.else.101
  %106 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %tobool106 = icmp ne %struct.edge_def* %106, null
  br i1 %tobool106, label %if.end.108, label %if.then.107

if.then.107:                                      ; preds = %if.else.105
  br label %for.inc.148

if.end.108:                                       ; preds = %if.else.105
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 447, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.fixup_reorder_chain, i32 0, i32 0)) #5
  unreachable

if.end.109:                                       ; preds = %if.end.100
  br label %if.end.128

if.else.110:                                      ; preds = %for.end.50
  %107 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %tobool111 = icmp ne %struct.edge_def* %107, null
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %if.else.110
  br label %for.inc.148

if.end.113:                                       ; preds = %if.else.110
  %108 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux114 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %108, i32 0, i32 10
  %109 = load i8*, i8** %aux114, align 8
  %110 = bitcast i8* %109 to %struct.reorder_block_def*
  %next115 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %110, i32 0, i32 2
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %next115, align 8
  %112 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %dest116 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %112, i32 0, i32 3
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %dest116, align 8
  %cmp117 = icmp eq %struct.basic_block_def* %111, %113
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.113
  br label %for.inc.148

if.end.119:                                       ; preds = %if.end.113
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux120 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %114, i32 0, i32 10
  %115 = load i8*, i8** %aux120, align 8
  %116 = bitcast i8* %115 to %struct.reorder_block_def*
  %next121 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %116, i32 0, i32 2
  %117 = load %struct.basic_block_def*, %struct.basic_block_def** %next121, align 8
  %tobool122 = icmp ne %struct.basic_block_def* %117, null
  br i1 %tobool122, label %if.end.127, label %land.lhs.true.123

land.lhs.true.123:                                ; preds = %if.end.119
  %118 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %dest124 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %118, i32 0, i32 3
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %dest124, align 8
  %cmp125 = icmp eq %struct.basic_block_def* %119, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %land.lhs.true.123
  br label %for.inc.148

if.end.127:                                       ; preds = %land.lhs.true.123, %if.end.119
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.109
  %120 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  %call129 = call %struct.basic_block_def* @force_nonfallthru(%struct.edge_def* %120)
  store %struct.basic_block_def* %call129, %struct.basic_block_def** %nb, align 8
  %121 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  %tobool130 = icmp ne %struct.basic_block_def* %121, null
  br i1 %tobool130, label %if.then.131, label %if.end.147

if.then.131:                                      ; preds = %if.end.128
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  call void @alloc_aux_for_block(%struct.basic_block_def* %122, i32 32)
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %123, i32 0, i32 0
  %124 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %125 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  %aux132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %125, i32 0, i32 10
  %126 = load i8*, i8** %aux132, align 8
  %127 = bitcast i8* %126 to %struct.reorder_block_def*
  %eff_head133 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %127, i32 0, i32 0
  store %struct.rtx_def* %124, %struct.rtx_def** %eff_head133, align 8
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  %end134 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %128, i32 0, i32 1
  %129 = load %struct.rtx_def*, %struct.rtx_def** %end134, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 2
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  %131 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  %aux138 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %131, i32 0, i32 10
  %132 = load i8*, i8** %aux138, align 8
  %133 = bitcast i8* %132 to %struct.reorder_block_def*
  %eff_end139 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %133, i32 0, i32 1
  store %struct.rtx_def* %130, %struct.rtx_def** %eff_end139, align 8
  %134 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  %aux140 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %134, i32 0, i32 10
  %135 = load i8*, i8** %aux140, align 8
  %136 = bitcast i8* %135 to %struct.reorder_block_def*
  %visited = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %136, i32 0, i32 3
  store i32 1, i32* %visited, align 4
  %137 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux141 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %137, i32 0, i32 10
  %138 = load i8*, i8** %aux141, align 8
  %139 = bitcast i8* %138 to %struct.reorder_block_def*
  %next142 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %139, i32 0, i32 2
  %140 = load %struct.basic_block_def*, %struct.basic_block_def** %next142, align 8
  %141 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  %aux143 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %141, i32 0, i32 10
  %142 = load i8*, i8** %aux143, align 8
  %143 = bitcast i8* %142 to %struct.reorder_block_def*
  %next144 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %143, i32 0, i32 2
  store %struct.basic_block_def* %140, %struct.basic_block_def** %next144, align 8
  %144 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  %145 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux145 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %145, i32 0, i32 10
  %146 = load i8*, i8** %aux145, align 8
  %147 = bitcast i8* %146 to %struct.reorder_block_def*
  %next146 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %147, i32 0, i32 2
  store %struct.basic_block_def* %144, %struct.basic_block_def** %next146, align 8
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %nb, align 8
  store %struct.basic_block_def* %148, %struct.basic_block_def** %bb, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.131, %if.end.128
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147, %if.then.126, %if.then.118, %if.then.112, %if.then.107, %if.then.104, %if.then.94, %if.then.63, %if.then.35
  %149 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux149 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %149, i32 0, i32 10
  %150 = load i8*, i8** %aux149, align 8
  %151 = bitcast i8* %150 to %struct.reorder_block_def*
  %next150 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %151, i32 0, i32 2
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %next150, align 8
  store %struct.basic_block_def* %152, %struct.basic_block_def** %bb, align 8
  br label %for.cond.31

for.end.151:                                      ; preds = %for.cond.31
  %153 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data152 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %153, i32 0, i32 4
  %bb153 = bitcast %union.varray_data_tag* %data152 to [1 x %struct.basic_block_def*]*
  %arrayidx154 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb153, i32 0, i64 0
  %154 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx154, align 8
  store %struct.basic_block_def* %154, %struct.basic_block_def** %bb, align 8
  store i32 0, i32* %index, align 4
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool155 = icmp ne %struct._IO_FILE* %155, null
  br i1 %tobool155, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %for.end.151
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %for.end.151
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.173, %if.end.158
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %tobool160 = icmp ne %struct.basic_block_def* %157, null
  br i1 %tobool160, label %for.body.161, label %for.end.177

for.body.161:                                     ; preds = %for.cond.159
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool162 = icmp ne %struct._IO_FILE* %158, null
  br i1 %tobool162, label %if.then.163, label %if.end.168

if.then.163:                                      ; preds = %for.body.161
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %160 = load i32, i32* %index, align 4
  %161 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index164 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %161, i32 0, i32 11
  %162 = load i32, i32* %index164, align 4
  %163 = load i32, i32* %old_n_basic_blocks, align 4
  %cmp165 = icmp sge i32 %162, %163
  %cond = select i1 %cmp165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)
  %164 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index166 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %164, i32 0, i32 11
  %165 = load i32, i32* %index166, align 4
  %166 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %166, i32 0, i32 14
  %167 = load i32, i32* %frequency, align 4
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 %160, i8* %cond, i32 %165, i32 %167)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.163, %for.body.161
  %168 = load i32, i32* %index, align 4
  %169 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index169 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %169, i32 0, i32 11
  store i32 %168, i32* %index169, align 4
  %170 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %171 = load i32, i32* %index, align 4
  %idxprom = sext i32 %171 to i64
  %172 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data170 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %172, i32 0, i32 4
  %bb171 = bitcast %union.varray_data_tag* %data170 to [1 x %struct.basic_block_def*]*
  %arrayidx172 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb171, i32 0, i64 %idxprom
  store %struct.basic_block_def* %170, %struct.basic_block_def** %arrayidx172, align 8
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.168
  %173 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux174 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %173, i32 0, i32 10
  %174 = load i8*, i8** %aux174, align 8
  %175 = bitcast i8* %174 to %struct.reorder_block_def*
  %next175 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %175, i32 0, i32 2
  %176 = load %struct.basic_block_def*, %struct.basic_block_def** %next175, align 8
  store %struct.basic_block_def* %176, %struct.basic_block_def** %bb, align 8
  %177 = load i32, i32* %index, align 4
  %inc176 = add nsw i32 %177, 1
  store i32 %inc176, i32* %index, align 4
  br label %for.cond.159

for.end.177:                                      ; preds = %for.cond.159
  ret void
}

declare void @free_aux_for_blocks() #1

declare %struct.rtx_def* @emit_note_before(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @skip_insns_after_block(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %last_insn = alloca %struct.rtx_def*, align 8
  %next_head = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %next_head, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp ne i32 %add, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index1, align 4
  %add2 = add nsw i32 %4, 1
  %idxprom = sext i32 %add2 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 0
  %7 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %next_head, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %last_insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.then.43, %sw.default, %sw.bb.13, %sw.bb.12, %sw.bb, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  %cmp5 = icmp ne %struct.rtx_def* %11, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %next_head, align 8
  %cmp6 = icmp eq %struct.rtx_def* %12, %13
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  br label %for.end

if.end.8:                                         ; preds = %for.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default.48 [
    i32 35, label %sw.bb
    i32 37, label %sw.bb.9
    i32 36, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end.8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %last_insn, align 8
  br label %for.cond

sw.bb.9:                                          ; preds = %if.end.8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %18 = load i32, i32* %rtint, align 4
  switch i32 %18, label %sw.default [
    i32 -95, label %sw.bb.12
    i32 -97, label %sw.bb.12
    i32 -99, label %sw.bb.13
    i32 -88, label %sw.bb.13
  ]

sw.bb.12:                                         ; preds = %sw.bb.9, %sw.bb.9
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %last_insn, align 8
  br label %for.cond

sw.bb.13:                                         ; preds = %sw.bb.9, %sw.bb.9
  br label %for.cond

sw.default:                                       ; preds = %sw.bb.9
  br label %for.cond

sw.bb.14:                                         ; preds = %if.end.8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 2
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %tobool = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %sw.bb.14
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 2
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load21 = load i32, i32* %24, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 33
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.47

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 2
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load31 = load i32, i32* %28, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 44
  br i1 %cmp33, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.24
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 2
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 3
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load40 = load i32, i32* %32, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 45
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %lor.lhs.false, %land.lhs.true.24
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 2
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %insn, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %last_insn, align 8
  br label %for.cond

if.end.47:                                        ; preds = %lor.lhs.false, %land.lhs.true, %sw.bb.14
  br label %sw.epilog

sw.default.48:                                    ; preds = %if.end.8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.48, %if.end.47
  br label %for.end

for.end:                                          ; preds = %sw.epilog, %if.then.7, %for.cond
  %36 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %insn, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.end
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end50 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 1
  %39 = load %struct.rtx_def*, %struct.rtx_def** %end50, align 8
  %cmp51 = icmp ne %struct.rtx_def* %37, %39
  br i1 %cmp51, label %for.body.52, label %for.end.67

for.body.52:                                      ; preds = %for.cond.49
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %prev, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load56 = load i32, i32* %43, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 37
  br i1 %cmp58, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %for.body.52
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 4
  %rtint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %45 = load i32, i32* %rtint62, align 4
  switch i32 %45, label %sw.default.64 [
    i32 -95, label %sw.bb.63
    i32 -97, label %sw.bb.63
    i32 -99, label %sw.bb.63
    i32 -88, label %sw.bb.63
  ]

sw.bb.63:                                         ; preds = %if.then.59, %if.then.59, %if.then.59, %if.then.59
  br label %for.inc

sw.default.64:                                    ; preds = %if.then.59
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @reorder_insns(%struct.rtx_def* %46, %struct.rtx_def* %47, %struct.rtx_def* %48)
  br label %sw.epilog.65

sw.epilog.65:                                     ; preds = %sw.default.64
  br label %if.end.66

if.end.66:                                        ; preds = %sw.epilog.65, %for.body.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.66, %sw.bb.63
  %49 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %insn, align 8
  br label %for.cond.49

for.end.67:                                       ; preds = %for.cond.49
  %50 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  ret %struct.rtx_def* %50
}

declare void @reorder_insns(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @set_last_insn(%struct.rtx_def*) #1

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare i32 @invert_jump(%struct.rtx_def*, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @label_for_bb(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %label, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call2 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %8)
  store %struct.rtx_def* %call2, %struct.rtx_def** %label, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head3, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 10
  %12 = load i8*, i8** %aux, align 8
  %13 = bitcast i8* %12 to %struct.reorder_block_def*
  %eff_head = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %eff_head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp4 = icmp eq %struct.rtx_def* %10, %15
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 10
  %18 = load i8*, i8** %aux6, align 8
  %19 = bitcast i8* %18 to %struct.reorder_block_def*
  %eff_head7 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %19, i32 0, i32 0
  store %struct.rtx_def* %16, %struct.rtx_def** %eff_head7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %20 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  ret %struct.rtx_def* %20
}

declare void @update_br_prob_note(%struct.basic_block_def*) #1

declare i32 @returnjump_p(%struct.rtx_def*) #1

declare %struct.basic_block_def* @force_nonfallthru(%struct.edge_def*) #1

declare void @alloc_aux_for_block(%struct.basic_block_def*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct.rtx_def* @block_label(%struct.basic_block_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
